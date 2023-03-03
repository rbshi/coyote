#include <iostream>
#include <string>
#include <malloc.h>
#include <time.h> 
#include <sys/time.h>  
#include <chrono>
#include <fstream>
#include <fcntl.h>
#include <unistd.h>
#include <iomanip>
#ifdef EN_AVX
#include <x86intrin.h>
#endif
#include <boost/program_options.hpp>
#include <numeric>
#include <stdlib.h>
#include <cassert>

#include "cBench.hpp"
#include "cProcess.hpp"

using namespace std;
using namespace fpga;

/* Def params */
constexpr auto const targetRegion = 0;
constexpr auto const nBenchRuns = 1;  

/**
 * @brief Benchmark API
 * 
 */
enum class CTLR : uint32_t {
    INITEN = 0,
    INITDONE = 1,
    START = 2,
    RDHOSTADDR = 3,
    WRHOSTADDR = 4,
    LEN = 5,
    CNT = 6,
    PID = 7,
    RDDONE = 8,
    WRDONE = 9,
    FACTORTHROU = 10
};

/**
 * @brief Average it out
 * 
 */
double vctr_avg(std::vector<double> const& v) {
    return 1.0 * std::accumulate(v.begin(), v.end(), 0LL) / v.size();
}

/**
 * @brief Throughput and latency tests, read and write
 * 
 */
int main(int argc, char *argv[])  
{
    // ---------------------------------------------------------------
    // Args 
    // ---------------------------------------------------------------
    boost::program_options::options_description programDescription("Options:");
    programDescription.add_options()
    ("nPage,n", boost::program_options::value<uint32_t>(), "Number of Pages")
    ("dupFactor,d", boost::program_options::value<uint32_t>(), "Duplication factor")
    ("throuFactor,t", boost::program_options::value<uint32_t>(), "Store throughput factor")
    ("nBenchRun,r", boost::program_options::value<uint32_t>(), "Number of bench run");
    boost::program_options::variables_map commandLineArgs;
    boost::program_options::store(boost::program_options::parse_command_line(argc, argv, programDescription), commandLineArgs);
    boost::program_options::notify(commandLineArgs);
    
    uint32_t n_page = commandLineArgs["nPage"].as<uint32_t>();
    uint32_t dup_factor = commandLineArgs["dupFactor"].as<uint32_t>();
    uint32_t throu_factor = commandLineArgs["throuFactor"].as<uint32_t>();
    uint32_t n_bench_run = commandLineArgs["nBenchRun"].as<uint32_t>();

    assert(n_page%16==0 && "n_page should be an multiple of 16.");
    assert(n_page%dup_factor==0 && "n_page should be an multiple of dup_factor.");

    uint32_t pg_size = 4096; // change me for 16K
    uint32_t huge_pg_size = 2 * 1024 * 1024;
    uint32_t pg_size_ratio = huge_pg_size / pg_size;
    uint32_t n_hugepage_req = (n_page + pg_size_ratio -1) / pg_size_ratio;
    uint32_t n_hugepage_rsp = (n_page * 16 + huge_pg_size-1)/huge_pg_size;

    std::cout << "Page allocation: n_hugepage_req=" << n_hugepage_req << "\tn_hugepage_rsp:" << n_hugepage_rsp << std::endl;

    // Handles and alloc
    cProcess cproc(targetRegion, getpid());
    void* reqMem = cproc.getMem({CoyoteAlloc::HOST_2M, n_hugepage_req});
    void* rspMem = cproc.getMem({CoyoteAlloc::HOST_2M, n_hugepage_rsp});

    // random initialize pages with dup_factor
    char* reqMemChar = (char*) reqMem;
    int urand=open("/dev/urandom", O_RDONLY);
    int res = read(urand, reqMem, pg_size*n_page/dup_factor);
    for (int j = 1; j < dup_factor; j++) {
        memcpy(reqMemChar+j*pg_size*n_page/dup_factor, reqMemChar, pg_size*n_page/dup_factor);
    }
    close(urand);

    // double check
    for (int j = 1; j < dup_factor; j++) {
        assert(memcmp(reqMem, reqMem+j*pg_size*n_page/dup_factor, pg_size*n_page/dup_factor)==0);
    }
    
    // init dedup module
    cproc.setCSR(1, static_cast<uint32_t>(CTLR::INITEN));
    cproc.setCSR(pg_size, static_cast<uint32_t>(CTLR::LEN));
    cproc.setCSR(n_page, static_cast<uint32_t>(CTLR::CNT)); // 64 pages in each command batch
    cproc.setCSR(cproc.getCpid(), static_cast<uint32_t>(CTLR::PID));
    cproc.setCSR(throu_factor, static_cast<uint32_t>(CTLR::FACTORTHROU));

    // confirm the init is done
    while(!cproc.getCSR(static_cast<uint32_t>(CTLR::INITDONE))) {
        std::cout << "Waiting for initialization of BloomFilter and HashTable for SHA3 values" << std::endl;
        usleep(1);
    }
    std::cout << "Initialization done. Workload started." << std::endl;

    cproc.setCSR(reinterpret_cast<uint64_t>(reqMem), static_cast<uint32_t>(CTLR::RDHOSTADDR));
    cproc.setCSR(reinterpret_cast<uint64_t>(rspMem), static_cast<uint32_t>(CTLR::WRHOSTADDR));

    // cBench bench(n_bench_run, true, true);

    // auto benchmark_lat = [&]() {    
    //     cproc.setCSR(1, static_cast<uint32_t>(CTLR::START));
    //     while(cproc.getCSR(static_cast<uint32_t>(CTLR::WRDONE)) != n_page/16);
    // };

    // bench.runtime(benchmark_lat);
    // bench.printOut();

    cproc.setCSR(1, static_cast<uint32_t>(CTLR::START));
    // while(cproc.getCSR(static_cast<uint32_t>(CTLR::WRDONE)) != n_page/16);
    sleep(1);

    std::cout << "RDDONE:" << cproc.getCSR(static_cast<uint32_t>(CTLR::RDDONE)) << std::endl;
    std::cout << "WRDONE:" << cproc.getCSR(static_cast<uint32_t>(CTLR::WRDONE)) << std::endl; 

    /** parse and print the page response */
    uint64_t* rspMemUInt64 = (uint64_t*) rspMem;
    for (int i=0; i < n_page; i++) {
        bool isExist = (rspMemUInt64[i*2] & 0x01) ? true : false;
        uint64_t pgIdx = rspMemUInt64[i*2] >> 1;
        uint64_t pgPtr = rspMemUInt64[i*2+1];
        std::cout << "pgIdx:" << pgIdx << "\tpgPtr:" << pgPtr << "\tisExist:" << isExist << std::endl;
    }

    cproc.clearCompleted();

    return EXIT_SUCCESS;
}
