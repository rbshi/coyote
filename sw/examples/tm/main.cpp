#include "common.hpp"

int main(int argc, char *argv[]) {

  // Read arguments
  // TODO: simplify
  boost::program_options::options_description programDescription("Options:");
  programDescription.add_options()("txncnt,c", boost::program_options::value<uint32_t>(), "txncnt")
                                  ("nodeid,i", boost::program_options::value<uint32_t>(), "Node ID")
                                  ("ibvaddr,a", boost::program_options::value<string>(), "IBV conn IP")
                                  ("bfname,b", boost::program_options::value<string>(), "Instruction bin name");
  boost::program_options::variables_map commandLineArgs;
  boost::program_options::store(boost::program_options::parse_command_line(argc, argv, programDescription), commandLineArgs);
  boost::program_options::notify(commandLineArgs);

  uint32_t txncnt = commandLineArgs["txncnt"].as<uint32_t>();
  string bin_fname = commandLineArgs["bfname"].as<string>();

  uint64_t insoffs = (((uint64_t)512 << 10) << 10);

  // RDMA
  uint32_t node_id = nIdMaster;
  string mstr_ip_addr = defMstrIp;
  uint32_t port = defPort;

  constexpr auto const defIbvIp = "192.168.98.97";
  string ibv_ip = defIbvIp;

  if(commandLineArgs.count("nodeid") > 0) node_id = commandLineArgs["nodeid"].as<uint32_t>();
  if(commandLineArgs.count("ibvaddr") > 0) ibv_ip = commandLineArgs["ibvaddr"].as<string>();
  bool mstr = node_id == nIdMaster;
  uint32_t ibv_ip_addr = baseIpAddress + node_id;

  std::cout << "-- PARAMS -------------------------------------" << std::endl;
  std::cout << "-----------------------------------------------" << std::endl;
  std::cout << "Node ID: " << node_id << std::endl;

  // get fpga handle
  cProc cproc(0, getpid());
  cproc.changeIpAddress(ibv_ip_addr);
  cproc.changeBoardNumber(node_id);

  initTxnCmd(cproc, txncnt, bin_fname, insoffs);
  txnManCnfg(cproc, node_id, txncnt, insoffs);

  // Create  queue pairs
  ibvQpMap ictx;
  // ictx.addQpair(qpId, &cproc, node_id, 1); // 1 page, will not be used
  ictx.addQpair(qpId, 0, node_id, ibv_ip, 1); // 1 page, will not be used
  mstr ? ictx.exchangeQpMaster(port) : ictx.exchangeQpSlave(mstr_ip_addr.c_str(), port);
  ibvQpConn *iqp = ictx.getQpairConn(qpId);
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

  cproc.printNetDebug();

  return EXIT_SUCCESS;
}






























