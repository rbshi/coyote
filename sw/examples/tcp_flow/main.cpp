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

#include "cBench.hpp"
#include "cProc.hpp"
#include "cDefs.hpp"

using namespace std;
using namespace fpga;

#define CTRLOFS_TCP 0

enum class TCPRegs : uint32_t {
  Ctrl       = CTRLOFS_TCP + 0,
  ListenPort = CTRLOFS_TCP + 1,
  CntNotif   = CTRLOFS_TCP + 4,
  CntNotifLen= CTRLOFS_TCP + 5,
  CntRdPkg   = CTRLOFS_TCP + 6,
  CntRxMeta  = CTRLOFS_TCP + 7,
  CntTxMeta  = CTRLOFS_TCP + 8,
  CntTxStat  = CTRLOFS_TCP + 9,
  CntSink    = CTRLOFS_TCP + 10,
  CntSrc     = CTRLOFS_TCP + 11
};

int main(int argc, char *argv[]) {

  std::cout << "Program start" << std::endl;

  boost::program_options::options_description programDescription("Options:");
  programDescription.add_options()
        ("nodeid,i", boost::program_options::value<uint32_t>(), "Node ID")
        ("lisport,p", boost::program_options::value<uint32_t>(), "Listen Port")
        ("startsvr,s", boost::program_options::value<uint32_t>(), "Start server");
  boost::program_options::variables_map commandLineArgs;
  boost::program_options::store(boost::program_options::parse_command_line(argc, argv, programDescription), commandLineArgs);
  boost::program_options::notify(commandLineArgs);

  uint32_t nodeid = 0;
  uint32_t lisport = 5001;
  uint32_t startsvr = 0;

  if(commandLineArgs.count("nodeid") > 0) nodeid = commandLineArgs["nodeid"].as<uint32_t>();
  if(commandLineArgs.count("lisport") > 0) lisport = commandLineArgs["lisport"].as<uint32_t>();
  if(commandLineArgs.count("startsvr") > 0) startsvr = commandLineArgs["startsvr"].as<uint32_t>();

  // get fpga handle
  cProc cproc(0, getpid());
  cproc.changeIpAddress(baseIpAddress+1, 0);

  if(startsvr) {
    cproc.setCSR(lisport, static_cast<uint32_t>(TCPRegs::ListenPort));
    cproc.setCSR(1, static_cast<uint32_t>(TCPRegs::Ctrl));    
  }

  std::cout << "ListenPort    = " << cproc.getCSR(static_cast<uint32_t>(TCPRegs::ListenPort)) << std::endl;

  do {
    std::cout << '\n' << "Press a key to continue..." << std::endl;
  } while (std::cin.get() != '\n');

  std::cout << "CntNotif    = " << cproc.getCSR(static_cast<uint32_t>(TCPRegs::CntNotif   )) << std::endl;
  std::cout << "CntNotifLen = " << cproc.getCSR(static_cast<uint32_t>(TCPRegs::CntNotifLen)) << std::endl;
  std::cout << "CntRdPkg    = " << cproc.getCSR(static_cast<uint32_t>(TCPRegs::CntRdPkg   )) << std::endl;
  std::cout << "CntRxMeta   = " << cproc.getCSR(static_cast<uint32_t>(TCPRegs::CntRxMeta  )) << std::endl;
  std::cout << "CntTxMeta   = " << cproc.getCSR(static_cast<uint32_t>(TCPRegs::CntTxMeta  )) << std::endl;
  std::cout << "CntTxStat   = " << cproc.getCSR(static_cast<uint32_t>(TCPRegs::CntTxStat  )) << std::endl;
  std::cout << "CntSink     = " << cproc.getCSR(static_cast<uint32_t>(TCPRegs::CntSink    )) << std::endl;
  std::cout << "CntSrc      = " << cproc.getCSR(static_cast<uint32_t>(TCPRegs::CntSrc     )) << std::endl;

  cproc.printNetDebug(0);
  cproc.printNetDebug(1);

  return EXIT_SUCCESS;
}






























