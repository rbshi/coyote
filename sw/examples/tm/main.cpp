#include "common.hpp"


/* Params */
constexpr auto const mstrNodeId = 0;
constexpr auto const targetRegion = 0;
constexpr auto const qpId = 0;
constexpr auto const port = 18488;

int main(int argc, char *argv[]) {

  // Read arguments
  boost::program_options::options_description programDescription("Options:");
  programDescription.add_options()("node,d", boost::program_options::value<uint32_t>(), "Node ID")
                                  ("tcpaddr,t", boost::program_options::value<string>(), "TCP conn IP")
                                  ("ibvaddr,i", boost::program_options::value<string>(), "IBV conn IP")
                                  ("cnttxn,c", boost::program_options::value<uint32_t>(), "Number of transactions")
                                  ("fname,f", boost::program_options::value<string>(), "Instruction binary filename");
  boost::program_options::variables_map commandLineArgs;
  boost::program_options::store(boost::program_options::parse_command_line(argc, argv, programDescription), commandLineArgs);
  boost::program_options::notify(commandLineArgs);

  bool mstr = true;
  uint32_t node_id = commandLineArgs["node"].as<uint32_t>();
  string tcp_mstr_ip;
  if(commandLineArgs.count("tcpaddr") > 0) {
      tcp_mstr_ip = commandLineArgs["tcpaddr"].as<string>();
      mstr = false;
  }
  string ibv_ip = commandLineArgs["ibvaddr"].as<string>();

  uint32_t cnt_txn = commandLineArgs["cnttxn"].as<uint32_t>();
  string fname_task = commandLineArgs["fname"].as<string>();

  uint64_t insoffs = (((uint64_t)512 << 10) << 10);

  PR_HEADER("PARAMS");
  std::cout << "Node ID: " << node_id << std::endl;
  if(!mstr) { std::cout << "TCP master IP address: " << tcp_mstr_ip << std::endl; }
  std::cout << "IBV IP address: " << ibv_ip << std::endl;
  // get fpga handle
  cProcess cproc(0, getpid());

  initTxnCmd(cproc, cnt_txn, fname_task, insoffs);
  txnManCnfg(cproc, node_id, cnt_txn, insoffs);

  // Create  queue pairs
  ibvQpMap<ibvQpConnBpss> ictx;
  ictx.addQpair(qpId, 0, &cproc, ibv_ip);
  mstr ? ictx.exchangeQpMaster(port) : ictx.exchangeQpSlave(tcp_mstr_ip.c_str(), port);
  ibvQpConnBpss *iqp = ictx.getQpairConn(qpId);
  iqp->ibvClear();

  // RDMA flow
  // [flowid:qpn:len:en]
  cproc.setCSR(((uint64_t)1 + ((uint64_t)1024<<1) + ((uint64_t)0<<33) + ((uint64_t)1 << 57)) , static_cast<uint32_t>(TXNENGRegs::FlowMstr));
  cproc.setCSR(((uint64_t)1 + ((uint64_t)1024<<1) + ((uint64_t)0<<33) + ((uint64_t)0 << 57)) , static_cast<uint32_t>(TXNENGRegs::FlowSlve));

  // Sync up
  std::cout << "\e[1mSyncing ...\e[0m" << std::endl;
  iqp->ibvSync(mstr);

  txnManStart(cproc);
  sleep(2);
  txnManPrtStatus(cproc);

  // Reset
  iqp->ibvClear();
  iqp->ibvSync(mstr);

  // Done
  if (mstr) {
      iqp->sendAck(1);
      iqp->closeAck();
  } else {
      iqp->readAck();
      iqp->closeConnection();
  }

  return EXIT_SUCCESS;
}

