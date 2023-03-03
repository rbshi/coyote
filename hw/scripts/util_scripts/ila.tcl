# CMAC TX
create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_cmac_tx
set_property -dict [list CONFIG.C_PROBE10_WIDTH {32} CONFIG.C_PROBE9_WIDTH {32} CONFIG.C_PROBE8_WIDTH {32} CONFIG.C_PROBE7_WIDTH {32} CONFIG.C_PROBE5_WIDTH {4} CONFIG.C_NUM_OF_PROBES {15} CONFIG.Component_Name {ila_cmac_tx} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.C_PROBE14_MU_CNT {2} CONFIG.C_PROBE13_MU_CNT {2} CONFIG.C_PROBE12_MU_CNT {2} CONFIG.C_PROBE11_MU_CNT {2} CONFIG.C_PROBE10_MU_CNT {2} CONFIG.C_PROBE9_MU_CNT {2} CONFIG.C_PROBE8_MU_CNT {2} CONFIG.C_PROBE7_MU_CNT {2} CONFIG.C_PROBE6_MU_CNT {2} CONFIG.C_PROBE5_MU_CNT {2} CONFIG.C_PROBE4_MU_CNT {2} CONFIG.C_PROBE3_MU_CNT {2} CONFIG.C_PROBE2_MU_CNT {2} CONFIG.C_PROBE1_MU_CNT {2} CONFIG.C_PROBE0_MU_CNT {2} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_cmac_tx]

# CMAC RX
create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_cmac_rx
set_property -dict [list CONFIG.C_PROBE17_WIDTH {6} CONFIG.C_PROBE16_WIDTH {7} CONFIG.C_PROBE15_WIDTH {20} CONFIG.C_PROBE14_WIDTH {32} CONFIG.C_PROBE13_WIDTH {32} CONFIG.C_PROBE12_WIDTH {32} CONFIG.C_PROBE11_WIDTH {32} CONFIG.C_PROBE10_WIDTH {80} CONFIG.C_PROBE9_WIDTH {3} CONFIG.C_PROBE5_WIDTH {4} CONFIG.C_NUM_OF_PROBES {19} CONFIG.Component_Name {ila_cmac_rx} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.C_PROBE18_MU_CNT {2} CONFIG.C_PROBE17_MU_CNT {2} CONFIG.C_PROBE16_MU_CNT {2} CONFIG.C_PROBE15_MU_CNT {2} CONFIG.C_PROBE14_MU_CNT {2} CONFIG.C_PROBE13_MU_CNT {2} CONFIG.C_PROBE12_MU_CNT {2} CONFIG.C_PROBE11_MU_CNT {2} CONFIG.C_PROBE10_MU_CNT {2} CONFIG.C_PROBE9_MU_CNT {2} CONFIG.C_PROBE8_MU_CNT {2} CONFIG.C_PROBE7_MU_CNT {2} CONFIG.C_PROBE6_MU_CNT {2} CONFIG.C_PROBE5_MU_CNT {2} CONFIG.C_PROBE4_MU_CNT {2} CONFIG.C_PROBE3_MU_CNT {2} CONFIG.C_PROBE2_MU_CNT {2} CONFIG.C_PROBE1_MU_CNT {2} CONFIG.C_PROBE0_MU_CNT {2} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_cmac_rx]

# NETWORK STACK
create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_network_stack
set_property -dict [list CONFIG.C_PROBE35_WIDTH {256} CONFIG.C_PROBE30_WIDTH {256} CONFIG.C_PROBE29_WIDTH {512} CONFIG.C_PROBE21_WIDTH {4} CONFIG.C_PROBE19_WIDTH {28} CONFIG.C_PROBE18_WIDTH {48} CONFIG.C_PROBE14_WIDTH {4} CONFIG.C_PROBE12_WIDTH {28} CONFIG.C_PROBE11_WIDTH {48} CONFIG.C_NUM_OF_PROBES {36} CONFIG.Component_Name {ila_network_stack} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.C_PROBE35_MU_CNT {2} CONFIG.C_PROBE34_MU_CNT {2} CONFIG.C_PROBE33_MU_CNT {2} CONFIG.C_PROBE32_MU_CNT {2} CONFIG.C_PROBE31_MU_CNT {2} CONFIG.C_PROBE30_MU_CNT {2} CONFIG.C_PROBE29_MU_CNT {2} CONFIG.C_PROBE28_MU_CNT {2} CONFIG.C_PROBE27_MU_CNT {2} CONFIG.C_PROBE26_MU_CNT {2} CONFIG.C_PROBE25_MU_CNT {2} CONFIG.C_PROBE24_MU_CNT {2} CONFIG.C_PROBE23_MU_CNT {2} CONFIG.C_PROBE22_MU_CNT {2} CONFIG.C_PROBE21_MU_CNT {2} CONFIG.C_PROBE20_MU_CNT {2} CONFIG.C_PROBE19_MU_CNT {2} CONFIG.C_PROBE18_MU_CNT {2} CONFIG.C_PROBE17_MU_CNT {2} CONFIG.C_PROBE16_MU_CNT {2} CONFIG.C_PROBE15_MU_CNT {2} CONFIG.C_PROBE14_MU_CNT {2} CONFIG.C_PROBE13_MU_CNT {2} CONFIG.C_PROBE12_MU_CNT {2} CONFIG.C_PROBE11_MU_CNT {2} CONFIG.C_PROBE10_MU_CNT {2} CONFIG.C_PROBE9_MU_CNT {2} CONFIG.C_PROBE8_MU_CNT {2} CONFIG.C_PROBE7_MU_CNT {2} CONFIG.C_PROBE6_MU_CNT {2} CONFIG.C_PROBE5_MU_CNT {2} CONFIG.C_PROBE4_MU_CNT {2} CONFIG.C_PROBE3_MU_CNT {2} CONFIG.C_PROBE2_MU_CNT {2} CONFIG.C_PROBE1_MU_CNT {2} CONFIG.C_PROBE0_MU_CNT {2} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_network_stack]

# CDMA RD unaglined
create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_ddr_rd
set_property -dict [list CONFIG.C_PROBE10_WIDTH {512} CONFIG.C_PROBE9_WIDTH {64} CONFIG.C_PROBE5_WIDTH {28} CONFIG.C_PROBE4_WIDTH {28} CONFIG.C_PROBE3_WIDTH {23} CONFIG.C_PROBE2_WIDTH {23} CONFIG.C_NUM_OF_PROBES {12} CONFIG.Component_Name {ila_ddr_rd} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.C_PROBE11_MU_CNT {2} CONFIG.C_PROBE10_MU_CNT {2} CONFIG.C_PROBE9_MU_CNT {2} CONFIG.C_PROBE8_MU_CNT {2} CONFIG.C_PROBE7_MU_CNT {2} CONFIG.C_PROBE6_MU_CNT {2} CONFIG.C_PROBE5_MU_CNT {2} CONFIG.C_PROBE4_MU_CNT {2} CONFIG.C_PROBE3_MU_CNT {2} CONFIG.C_PROBE2_MU_CNT {2} CONFIG.C_PROBE1_MU_CNT {2} CONFIG.C_PROBE0_MU_CNT {2} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_ddr_rd]

# CDMA WR unaglined
create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_ddr_wr
set_property -dict [list CONFIG.C_PROBE9_WIDTH {512} CONFIG.C_PROBE8_WIDTH {64} CONFIG.C_PROBE4_WIDTH {28} CONFIG.C_PROBE3_WIDTH {28} CONFIG.C_PROBE2_WIDTH {23} CONFIG.C_PROBE1_WIDTH {23} CONFIG.C_PROBE0_WIDTH {3} CONFIG.C_NUM_OF_PROBES {11} CONFIG.Component_Name {ila_ddr_wr} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.C_PROBE10_MU_CNT {2} CONFIG.C_PROBE9_MU_CNT {2} CONFIG.C_PROBE8_MU_CNT {2} CONFIG.C_PROBE7_MU_CNT {2} CONFIG.C_PROBE6_MU_CNT {2} CONFIG.C_PROBE5_MU_CNT {2} CONFIG.C_PROBE4_MU_CNT {2} CONFIG.C_PROBE3_MU_CNT {2} CONFIG.C_PROBE2_MU_CNT {2} CONFIG.C_PROBE1_MU_CNT {2} CONFIG.C_PROBE0_MU_CNT {2} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_ddr_wr]

# RD CREDITS
create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_rd_cred
set_property -dict [list CONFIG.C_PROBE12_WIDTH {16} CONFIG.C_PROBE11_WIDTH {16} CONFIG.C_PROBE6_WIDTH {23} CONFIG.C_PROBE5_WIDTH {23} CONFIG.C_PROBE4_WIDTH {8} CONFIG.C_PROBE3_WIDTH {28} CONFIG.C_NUM_OF_PROBES {13} CONFIG.Component_Name {ila_rd_cred} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.C_PROBE12_MU_CNT {2} CONFIG.C_PROBE11_MU_CNT {2} CONFIG.C_PROBE10_MU_CNT {2} CONFIG.C_PROBE9_MU_CNT {2} CONFIG.C_PROBE8_MU_CNT {2} CONFIG.C_PROBE7_MU_CNT {2} CONFIG.C_PROBE6_MU_CNT {2} CONFIG.C_PROBE5_MU_CNT {2} CONFIG.C_PROBE4_MU_CNT {2} CONFIG.C_PROBE3_MU_CNT {2} CONFIG.C_PROBE2_MU_CNT {2} CONFIG.C_PROBE1_MU_CNT {2} CONFIG.C_PROBE0_MU_CNT {2} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_rd_cred]

# WR CREDITS
create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_wr_cred
set_property -dict [list CONFIG.C_PROBE9_WIDTH {16} CONFIG.C_PROBE8_WIDTH {16} CONFIG.C_PROBE6_WIDTH {23} CONFIG.C_PROBE5_WIDTH {23} CONFIG.C_PROBE2_WIDTH {28} CONFIG.C_NUM_OF_PROBES {10} CONFIG.Component_Name {ila_wr_cred} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.C_PROBE9_MU_CNT {2} CONFIG.C_PROBE8_MU_CNT {2} CONFIG.C_PROBE7_MU_CNT {2} CONFIG.C_PROBE6_MU_CNT {2} CONFIG.C_PROBE5_MU_CNT {2} CONFIG.C_PROBE4_MU_CNT {2} CONFIG.C_PROBE3_MU_CNT {2} CONFIG.C_PROBE2_MU_CNT {2} CONFIG.C_PROBE1_MU_CNT {2} CONFIG.C_PROBE0_MU_CNT {2} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_wr_cred]

# TLB WR
create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_fsm_wr
set_property -dict [list CONFIG.C_PROBE25_WIDTH {16} CONFIG.C_PROBE15_WIDTH {40} CONFIG.C_PROBE14_WIDTH {40} CONFIG.C_PROBE13_WIDTH {28} CONFIG.C_PROBE9_WIDTH {6} CONFIG.C_PROBE8_WIDTH {28} CONFIG.C_PROBE7_WIDTH {48} CONFIG.C_PROBE6_WIDTH {64} CONFIG.C_PROBE5_WIDTH {64} CONFIG.C_PROBE4_WIDTH {6} CONFIG.C_PROBE2_WIDTH {48} CONFIG.C_PROBE1_WIDTH {28} CONFIG.C_PROBE0_WIDTH {4} CONFIG.C_NUM_OF_PROBES {30} CONFIG.Component_Name {ila_fsm_wr} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.C_PROBE29_MU_CNT {2} CONFIG.C_PROBE28_MU_CNT {2} CONFIG.C_PROBE27_MU_CNT {2} CONFIG.C_PROBE26_MU_CNT {2} CONFIG.C_PROBE25_MU_CNT {2} CONFIG.C_PROBE24_MU_CNT {2} CONFIG.C_PROBE23_MU_CNT {2} CONFIG.C_PROBE22_MU_CNT {2} CONFIG.C_PROBE21_MU_CNT {2} CONFIG.C_PROBE20_MU_CNT {2} CONFIG.C_PROBE19_MU_CNT {2} CONFIG.C_PROBE18_MU_CNT {2} CONFIG.C_PROBE17_MU_CNT {2} CONFIG.C_PROBE16_MU_CNT {2} CONFIG.C_PROBE15_MU_CNT {2} CONFIG.C_PROBE14_MU_CNT {2} CONFIG.C_PROBE13_MU_CNT {2} CONFIG.C_PROBE12_MU_CNT {2} CONFIG.C_PROBE11_MU_CNT {2} CONFIG.C_PROBE10_MU_CNT {2} CONFIG.C_PROBE9_MU_CNT {2} CONFIG.C_PROBE8_MU_CNT {2} CONFIG.C_PROBE7_MU_CNT {2} CONFIG.C_PROBE6_MU_CNT {2} CONFIG.C_PROBE5_MU_CNT {2} CONFIG.C_PROBE4_MU_CNT {2} CONFIG.C_PROBE3_MU_CNT {2} CONFIG.C_PROBE2_MU_CNT {2} CONFIG.C_PROBE1_MU_CNT {2} CONFIG.C_PROBE0_MU_CNT {2} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_fsm_wr]

# TLB RD
create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_fsm_rd
set_property -dict [list CONFIG.C_PROBE22_WIDTH {16} CONFIG.C_PROBE15_WIDTH {40} CONFIG.C_PROBE14_WIDTH {40} CONFIG.C_PROBE13_WIDTH {28} CONFIG.C_PROBE9_WIDTH {6} CONFIG.C_PROBE8_WIDTH {28} CONFIG.C_PROBE7_WIDTH {48} CONFIG.C_PROBE6_WIDTH {64} CONFIG.C_PROBE5_WIDTH {64} CONFIG.C_PROBE4_WIDTH {6} CONFIG.C_PROBE2_WIDTH {48} CONFIG.C_PROBE1_WIDTH {28} CONFIG.C_PROBE0_WIDTH {4} CONFIG.C_NUM_OF_PROBES {26} CONFIG.Component_Name {ila_fsm_rd} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.C_PROBE25_MU_CNT {2} CONFIG.C_PROBE24_MU_CNT {2} CONFIG.C_PROBE23_MU_CNT {2} CONFIG.C_PROBE22_MU_CNT {2} CONFIG.C_PROBE21_MU_CNT {2} CONFIG.C_PROBE20_MU_CNT {2} CONFIG.C_PROBE19_MU_CNT {2} CONFIG.C_PROBE18_MU_CNT {2} CONFIG.C_PROBE17_MU_CNT {2} CONFIG.C_PROBE16_MU_CNT {2} CONFIG.C_PROBE15_MU_CNT {2} CONFIG.C_PROBE14_MU_CNT {2} CONFIG.C_PROBE13_MU_CNT {2} CONFIG.C_PROBE12_MU_CNT {2} CONFIG.C_PROBE11_MU_CNT {2} CONFIG.C_PROBE10_MU_CNT {2} CONFIG.C_PROBE9_MU_CNT {2} CONFIG.C_PROBE8_MU_CNT {2} CONFIG.C_PROBE7_MU_CNT {2} CONFIG.C_PROBE6_MU_CNT {2} CONFIG.C_PROBE5_MU_CNT {2} CONFIG.C_PROBE4_MU_CNT {2} CONFIG.C_PROBE3_MU_CNT {2} CONFIG.C_PROBE2_MU_CNT {2} CONFIG.C_PROBE1_MU_CNT {2} CONFIG.C_PROBE0_MU_CNT {2} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_fsm_rd]

# LINK
create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_link
set_property -dict [list CONFIG.C_PROBE1_WIDTH {4} CONFIG.C_NUM_OF_PROBES {2} CONFIG.Component_Name {ila_link} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.C_PROBE1_MU_CNT {2} CONFIG.C_PROBE0_MU_CNT {2} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_link]

# VIO STATISTICS
create_ip -name vio -vendor xilinx.com -library ip -version 3.0 -module_name vio_network_statistic
set_property -dict [list CONFIG.C_PROBE_IN12_WIDTH {8} CONFIG.C_PROBE_IN11_WIDTH {16} CONFIG.C_PROBE_IN10_WIDTH {16} CONFIG.C_PROBE_IN9_WIDTH {16} CONFIG.C_PROBE_IN8_WIDTH {16} CONFIG.C_PROBE_IN7_WIDTH {16} CONFIG.C_PROBE_IN6_WIDTH {16} CONFIG.C_PROBE_IN5_WIDTH {16} CONFIG.C_PROBE_IN4_WIDTH {16} CONFIG.C_PROBE_IN3_WIDTH {16} CONFIG.C_PROBE_IN2_WIDTH {16} CONFIG.C_PROBE_IN1_WIDTH {16} CONFIG.C_PROBE_IN0_WIDTH {16} CONFIG.C_NUM_PROBE_OUT {0} CONFIG.C_NUM_PROBE_IN {13} CONFIG.Component_Name {vio_network_statistic}] [get_ips vio_network_statistic]

# VIO LINK
create_ip -name vio -vendor xilinx.com -library ip -version 3.0 -module_name vio_link
set_property -dict [list CONFIG.C_PROBE_IN1_WIDTH {4} CONFIG.C_NUM_PROBE_OUT {0} CONFIG.C_NUM_PROBE_IN {2} CONFIG.Component_Name {vio_link}] [get_ips vio_link]

# dedup test
create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_req
set_property -dict [list CONFIG.C_PROBE2_WIDTH {96} CONFIG.C_NUM_OF_PROBES {3} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_req]

create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_done
set_property -dict [list CONFIG.C_PROBE2_WIDTH {5} CONFIG.C_NUM_OF_PROBES {3} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_done]

create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_frgm512
set_property -dict [list CONFIG.C_PROBE3_WIDTH {512} CONFIG.C_NUM_OF_PROBES {4} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_frgm512]

create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_strm512
set_property -dict [list CONFIG.C_PROBE2_WIDTH {512} CONFIG.C_NUM_OF_PROBES {3} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_strm512]

create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_strm128
set_property -dict [list CONFIG.C_PROBE2_WIDTH {128} CONFIG.C_NUM_OF_PROBES {3} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_strm128]

create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_hostIntf
set_property -dict [list CONFIG.C_PROBE5_WIDTH {10} CONFIG.C_NUM_OF_PROBES {6} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_hostIntf]


create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_axi_wr
set_property -dict [list CONFIG.C_PROBE4_WIDTH {20} CONFIG.C_PROBE5_WIDTH {577} CONFIG.C_NUM_OF_PROBES {6} CONFIG.C_DATA_DEPTH {4096} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_axi_wr]

create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_axi_rd
set_property -dict [list CONFIG.C_PROBE4_WIDTH {20} CONFIG.C_PROBE5_WIDTH {513} CONFIG.C_NUM_OF_PROBES {6} CONFIG.C_DATA_DEPTH {4096} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_axi_rd]


create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_strm72
set_property -dict [list CONFIG.C_PROBE2_WIDTH {72} CONFIG.C_NUM_OF_PROBES {3} CONFIG.C_DATA_DEPTH {4096} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_strm72]

create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_strm256
set_property -dict [list CONFIG.C_PROBE2_WIDTH {72} CONFIG.C_NUM_OF_PROBES {3} CONFIG.C_DATA_DEPTH {4096} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_strm256]

create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_strm384
set_property -dict [list CONFIG.C_PROBE2_WIDTH {384} CONFIG.C_NUM_OF_PROBES {3} CONFIG.C_DATA_DEPTH {4096} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_strm384]

create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_dram_wr_cmd
set_property -dict [list CONFIG.C_PROBE2_WIDTH {32} CONFIG.C_PROBE3_WIDTH {32} CONFIG.C_PROBE4_WIDTH {32} CONFIG.C_PROBE9_WIDTH {32} CONFIG.C_NUM_OF_PROBES {10} CONFIG.C_DATA_DEPTH {4096} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_dram_wr_cmd]

create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_dram_rd_cmd
set_property -dict [list CONFIG.C_PROBE2_WIDTH {32} CONFIG.C_PROBE3_WIDTH {8} CONFIG.C_PROBE6_WIDTH {32} CONFIG.C_PROBE9_WIDTH {32} CONFIG.C_PROBE12_WIDTH {32} CONFIG.C_NUM_OF_PROBES {15} CONFIG.C_DATA_DEPTH {4096} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_dram_rd_cmd]

create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_dram_rd_cmd
set_property -dict [list CONFIG.C_PROBE2_WIDTH {32} CONFIG.C_PROBE3_WIDTH {8} CONFIG.C_PROBE6_WIDTH {32} CONFIG.C_PROBE9_WIDTH {32} CONFIG.C_PROBE12_WIDTH {32} CONFIG.C_NUM_OF_PROBES {15} CONFIG.C_DATA_DEPTH {4096} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_dram_rd_cmd]

create_ip -name ila -vendor xilinx.com -library ip -version 6.2 -module_name ila_mem
set_property -dict [list CONFIG.C_PROBE2_WIDTH {8} CONFIG.C_PROBE3_WIDTH {8} CONFIG.C_NUM_OF_PROBES {4} CONFIG.C_DATA_DEPTH {8192} CONFIG.C_EN_STRG_QUAL {1} CONFIG.C_ADV_TRIGGER {true} CONFIG.ALL_PROBE_SAME_MU_CNT {2}] [get_ips ila_mem]


  always @(posedge clk) begin
    if(streamMux_4_io_output_fire_4) begin
      _zz_mem_port0 <= mem[topFsm_idxBucket];
    end
  end

  always @(posedge clk) begin
    if(topFsm_memWrEn) begin
      mem[topFsm_memWrAddr] <= _zz_mem_port;
    end
  end



ila_axi_wr axi_wr (
  .clk(uclk),
  .probe0(axi_mem_0_awvalid),
  .probe1(axi_mem_0_awready),
  .probe2(axi_mem_0_wvalid),
  .probe3(axi_mem_0_wready),
  .probe4(axi_mem_0_awaddr),
  .probe5({axi_mem_0_wlast, axi_mem_0_wstrb, axi_mem_0_wdata})
);

ila_axi_rd axi_rd (
  .clk(uclk),
  .probe0(axi_mem_0_arvalid),
  .probe1(axi_mem_0_arready),
  .probe2(axi_mem_0_rvalid),
  .probe3(axi_mem_0_rready),
  .probe4(axi_mem_0_araddr),
  .probe5({axi_mem_0_rlast, axi_mem_0_rdata})
);

ila_dram_wr_cmd dramWrCmdQPush (
  .clk(clk),
  .probe0(dramWrCmdQ_io_push_valid),
  .probe1(dramWrCmdQ_io_push_ready),
  .probe2(dramWrCmdQ_io_push_payload_memOffs[31:0]),
  .probe3(dramWrCmdQ_io_push_payload_ptrVal[31:0]),
  .probe4(dramWrCmdQ_io_push_payload_hashVal[31:0]),
  .probe5(io_axiMem_aw_valid),
  .probe6(io_axiMem_aw_ready),
  .probe7(io_axiMem_w_valid),
  .probe8(io_axiMem_w_ready),
  .probe9(io_axiMem_w_payload_data[31:0])
);

ila_dram_rd_cmd dramRdCmdQPush (
  .clk(clk),
  .probe0(dramRdCmdQ_io_push_valid),
  .probe1(dramRdCmdQ_io_push_ready),
  .probe2(dramRdCmdQ_io_push_payload_memOffs[31:0]),
  .probe3(dramRdCmdQ_io_push_payload_nEntry),
  .probe4(lookUpCmdQ_io_push_valid),
  .probe5(lookUpCmdQ_io_push_ready),
  .probe6(lookUpCmdQ_io_push_payload_hashVal[31:0]),
  .probe7(io_axiMem_ar_valid),
  .probe8(io_axiMem_ar_ready),
  .probe9(io_axiMem_ar_payload_addr[31:0]),
  .probe10(io_axiMem_r_valid),
  .probe11(io_axiMem_r_ready),
  .probe12(io_axiMem_r_payload_data[31:0]),
  .probe13(io_axiMem_r_payload_last),
  .probe14(topFsm_RUN_fsms_0_rIsHashValMatch)
);

ila_hashtabio hashTabIo (
  .clk(clk),
  .probe0(io_cmd_valid),
  .probe1(io_cmd_ready),
  .probe2(io_cmd_payload_verb),
  .probe3(io_cmd_payload_hashVal[31:0]),
  .probe4(io_cmd_payload_isPostInst),
  .probe5(io_res_valid),
  .probe6(io_res_ready),
  .probe7(io_res_payload_isExist)
);

ila_mem ilaMem (
  .clk(clk),
  .probe0(streamMux_4_io_output_fire_4),
  .probe1(topFsm_memWrEn),
  .probe2(_zz_mem_port0),
  .probe3(_zz_mem_port)
);  


  ila_req wr_req (
    .clk(clk),
    .probe0(io_hostd_bpss_wr_req_valid),
    .probe1(io_hostd_bpss_wr_req_ready),
    .probe2(io_hostd_bpss_wr_req_payload_data)
  );

  ila_done wr_done (
    .clk(clk),
    .probe0(io_hostd_bpss_wr_done_valid),
    .probe1(io_hostd_bpss_wr_done_ready),
    .probe2(io_hostd_bpss_wr_done_payload_data)
  );

  ila_frgm512 host_src (
    .clk(clk),
    .probe0(io_hostd_axis_host_src_valid),
    .probe1(io_hostd_axis_host_src_ready),
    .probe2(io_hostd_axis_host_src_payload_tlast),
    .probe3(io_hostd_axis_host_src_payload_tdata)
  );

  ila_strm128 host_pg_resp (
    .clk(clk),
    .probe0(io_pgResp_valid),
    .probe1(io_pgResp_ready),
    .probe2(io_pgResp_payload)
  );

  ila_hostIntf hostIntf (
    .clk(clk),
    .probe0(pgRespQWide_io_pop_valid),
    .probe1(pgRespQWide_io_pop_ready),
    .probe2(pgRespQWide_io_push_valid),
    .probe3(pgRespQWide_io_push_ready),
    .probe4(io_pgResp_fire),
    .probe5(pgRespQWide_io_occupancy)
  );








