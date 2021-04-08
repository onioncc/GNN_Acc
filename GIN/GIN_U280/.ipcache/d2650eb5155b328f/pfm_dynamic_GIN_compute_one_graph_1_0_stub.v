// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Apr  2 16:44:28 2021
// Host        : flubber1 running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pfm_dynamic_GIN_compute_one_graph_1_0_stub.v
// Design      : pfm_dynamic_GIN_compute_one_graph_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "GIN_compute_one_graph,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_control_AWADDR, 
  s_axi_control_AWVALID, s_axi_control_AWREADY, s_axi_control_WDATA, s_axi_control_WSTRB, 
  s_axi_control_WVALID, s_axi_control_WREADY, s_axi_control_BRESP, s_axi_control_BVALID, 
  s_axi_control_BREADY, s_axi_control_ARADDR, s_axi_control_ARVALID, 
  s_axi_control_ARREADY, s_axi_control_RDATA, s_axi_control_RRESP, s_axi_control_RVALID, 
  s_axi_control_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_mem_AWADDR, m_axi_mem_AWLEN, 
  m_axi_mem_AWSIZE, m_axi_mem_AWBURST, m_axi_mem_AWLOCK, m_axi_mem_AWREGION, 
  m_axi_mem_AWCACHE, m_axi_mem_AWPROT, m_axi_mem_AWQOS, m_axi_mem_AWVALID, 
  m_axi_mem_AWREADY, m_axi_mem_WDATA, m_axi_mem_WSTRB, m_axi_mem_WLAST, m_axi_mem_WVALID, 
  m_axi_mem_WREADY, m_axi_mem_BRESP, m_axi_mem_BVALID, m_axi_mem_BREADY, m_axi_mem_ARADDR, 
  m_axi_mem_ARLEN, m_axi_mem_ARSIZE, m_axi_mem_ARBURST, m_axi_mem_ARLOCK, 
  m_axi_mem_ARREGION, m_axi_mem_ARCACHE, m_axi_mem_ARPROT, m_axi_mem_ARQOS, 
  m_axi_mem_ARVALID, m_axi_mem_ARREADY, m_axi_mem_RDATA, m_axi_mem_RRESP, m_axi_mem_RLAST, 
  m_axi_mem_RVALID, m_axi_mem_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_AWADDR[7:0],s_axi_control_AWVALID,s_axi_control_AWREADY,s_axi_control_WDATA[31:0],s_axi_control_WSTRB[3:0],s_axi_control_WVALID,s_axi_control_WREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_BREADY,s_axi_control_ARADDR[7:0],s_axi_control_ARVALID,s_axi_control_ARREADY,s_axi_control_RDATA[31:0],s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_mem_AWADDR[63:0],m_axi_mem_AWLEN[7:0],m_axi_mem_AWSIZE[2:0],m_axi_mem_AWBURST[1:0],m_axi_mem_AWLOCK[1:0],m_axi_mem_AWREGION[3:0],m_axi_mem_AWCACHE[3:0],m_axi_mem_AWPROT[2:0],m_axi_mem_AWQOS[3:0],m_axi_mem_AWVALID,m_axi_mem_AWREADY,m_axi_mem_WDATA[255:0],m_axi_mem_WSTRB[31:0],m_axi_mem_WLAST,m_axi_mem_WVALID,m_axi_mem_WREADY,m_axi_mem_BRESP[1:0],m_axi_mem_BVALID,m_axi_mem_BREADY,m_axi_mem_ARADDR[63:0],m_axi_mem_ARLEN[7:0],m_axi_mem_ARSIZE[2:0],m_axi_mem_ARBURST[1:0],m_axi_mem_ARLOCK[1:0],m_axi_mem_ARREGION[3:0],m_axi_mem_ARCACHE[3:0],m_axi_mem_ARPROT[2:0],m_axi_mem_ARQOS[3:0],m_axi_mem_ARVALID,m_axi_mem_ARREADY,m_axi_mem_RDATA[255:0],m_axi_mem_RRESP[1:0],m_axi_mem_RLAST,m_axi_mem_RVALID,m_axi_mem_RREADY" */;
  input [7:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [7:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [63:0]m_axi_mem_AWADDR;
  output [7:0]m_axi_mem_AWLEN;
  output [2:0]m_axi_mem_AWSIZE;
  output [1:0]m_axi_mem_AWBURST;
  output [1:0]m_axi_mem_AWLOCK;
  output [3:0]m_axi_mem_AWREGION;
  output [3:0]m_axi_mem_AWCACHE;
  output [2:0]m_axi_mem_AWPROT;
  output [3:0]m_axi_mem_AWQOS;
  output m_axi_mem_AWVALID;
  input m_axi_mem_AWREADY;
  output [255:0]m_axi_mem_WDATA;
  output [31:0]m_axi_mem_WSTRB;
  output m_axi_mem_WLAST;
  output m_axi_mem_WVALID;
  input m_axi_mem_WREADY;
  input [1:0]m_axi_mem_BRESP;
  input m_axi_mem_BVALID;
  output m_axi_mem_BREADY;
  output [63:0]m_axi_mem_ARADDR;
  output [7:0]m_axi_mem_ARLEN;
  output [2:0]m_axi_mem_ARSIZE;
  output [1:0]m_axi_mem_ARBURST;
  output [1:0]m_axi_mem_ARLOCK;
  output [3:0]m_axi_mem_ARREGION;
  output [3:0]m_axi_mem_ARCACHE;
  output [2:0]m_axi_mem_ARPROT;
  output [3:0]m_axi_mem_ARQOS;
  output m_axi_mem_ARVALID;
  input m_axi_mem_ARREADY;
  input [255:0]m_axi_mem_RDATA;
  input [1:0]m_axi_mem_RRESP;
  input m_axi_mem_RLAST;
  input m_axi_mem_RVALID;
  output m_axi_mem_RREADY;
endmodule
