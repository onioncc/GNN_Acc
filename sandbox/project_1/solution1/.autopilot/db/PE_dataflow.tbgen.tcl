set moduleName PE_dataflow
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {PE_dataflow}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 32 regular {axi_master 0}  }
	{ weights int 64 regular  }
	{ data_in_local_0 int 32 regular {array 10 { 1 3 } 1 1 }  }
	{ data_in_local_1 int 32 regular {array 10 { 1 3 } 1 1 }  }
	{ data_in_local_2 int 32 regular {array 10 { 1 3 } 1 1 }  }
	{ data_in_local_3 int 32 regular {array 10 { 1 3 } 1 1 }  }
	{ data_out_local_0 int 32 regular {array 20 { 0 3 } 0 1 }  }
	{ data_out_local_1 int 32 regular {array 20 { 0 3 } 0 1 }  }
	{ data_out_local_2 int 32 regular {array 20 { 0 3 } 0 1 }  }
	{ data_out_local_3 int 32 regular {array 20 { 0 3 } 0 1 }  }
	{ d_out int 5 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weights", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_local_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_local_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_local_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_in_local_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_local_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_local_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_local_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_out_local_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_out", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 136
set portList { 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ weights sc_in sc_lv 64 signal 1 } 
	{ data_in_local_0_address0 sc_out sc_lv 4 signal 2 } 
	{ data_in_local_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_in_local_0_d0 sc_out sc_lv 32 signal 2 } 
	{ data_in_local_0_q0 sc_in sc_lv 32 signal 2 } 
	{ data_in_local_0_we0 sc_out sc_logic 1 signal 2 } 
	{ data_in_local_0_address1 sc_out sc_lv 4 signal 2 } 
	{ data_in_local_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ data_in_local_0_d1 sc_out sc_lv 32 signal 2 } 
	{ data_in_local_0_q1 sc_in sc_lv 32 signal 2 } 
	{ data_in_local_0_we1 sc_out sc_logic 1 signal 2 } 
	{ data_in_local_1_address0 sc_out sc_lv 4 signal 3 } 
	{ data_in_local_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_in_local_1_d0 sc_out sc_lv 32 signal 3 } 
	{ data_in_local_1_q0 sc_in sc_lv 32 signal 3 } 
	{ data_in_local_1_we0 sc_out sc_logic 1 signal 3 } 
	{ data_in_local_1_address1 sc_out sc_lv 4 signal 3 } 
	{ data_in_local_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ data_in_local_1_d1 sc_out sc_lv 32 signal 3 } 
	{ data_in_local_1_q1 sc_in sc_lv 32 signal 3 } 
	{ data_in_local_1_we1 sc_out sc_logic 1 signal 3 } 
	{ data_in_local_2_address0 sc_out sc_lv 4 signal 4 } 
	{ data_in_local_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ data_in_local_2_d0 sc_out sc_lv 32 signal 4 } 
	{ data_in_local_2_q0 sc_in sc_lv 32 signal 4 } 
	{ data_in_local_2_we0 sc_out sc_logic 1 signal 4 } 
	{ data_in_local_2_address1 sc_out sc_lv 4 signal 4 } 
	{ data_in_local_2_ce1 sc_out sc_logic 1 signal 4 } 
	{ data_in_local_2_d1 sc_out sc_lv 32 signal 4 } 
	{ data_in_local_2_q1 sc_in sc_lv 32 signal 4 } 
	{ data_in_local_2_we1 sc_out sc_logic 1 signal 4 } 
	{ data_in_local_3_address0 sc_out sc_lv 4 signal 5 } 
	{ data_in_local_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ data_in_local_3_d0 sc_out sc_lv 32 signal 5 } 
	{ data_in_local_3_q0 sc_in sc_lv 32 signal 5 } 
	{ data_in_local_3_we0 sc_out sc_logic 1 signal 5 } 
	{ data_in_local_3_address1 sc_out sc_lv 4 signal 5 } 
	{ data_in_local_3_ce1 sc_out sc_logic 1 signal 5 } 
	{ data_in_local_3_d1 sc_out sc_lv 32 signal 5 } 
	{ data_in_local_3_q1 sc_in sc_lv 32 signal 5 } 
	{ data_in_local_3_we1 sc_out sc_logic 1 signal 5 } 
	{ data_out_local_0_address0 sc_out sc_lv 5 signal 6 } 
	{ data_out_local_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ data_out_local_0_d0 sc_out sc_lv 32 signal 6 } 
	{ data_out_local_0_q0 sc_in sc_lv 32 signal 6 } 
	{ data_out_local_0_we0 sc_out sc_logic 1 signal 6 } 
	{ data_out_local_0_address1 sc_out sc_lv 5 signal 6 } 
	{ data_out_local_0_ce1 sc_out sc_logic 1 signal 6 } 
	{ data_out_local_0_d1 sc_out sc_lv 32 signal 6 } 
	{ data_out_local_0_q1 sc_in sc_lv 32 signal 6 } 
	{ data_out_local_0_we1 sc_out sc_logic 1 signal 6 } 
	{ data_out_local_1_address0 sc_out sc_lv 5 signal 7 } 
	{ data_out_local_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ data_out_local_1_d0 sc_out sc_lv 32 signal 7 } 
	{ data_out_local_1_q0 sc_in sc_lv 32 signal 7 } 
	{ data_out_local_1_we0 sc_out sc_logic 1 signal 7 } 
	{ data_out_local_1_address1 sc_out sc_lv 5 signal 7 } 
	{ data_out_local_1_ce1 sc_out sc_logic 1 signal 7 } 
	{ data_out_local_1_d1 sc_out sc_lv 32 signal 7 } 
	{ data_out_local_1_q1 sc_in sc_lv 32 signal 7 } 
	{ data_out_local_1_we1 sc_out sc_logic 1 signal 7 } 
	{ data_out_local_2_address0 sc_out sc_lv 5 signal 8 } 
	{ data_out_local_2_ce0 sc_out sc_logic 1 signal 8 } 
	{ data_out_local_2_d0 sc_out sc_lv 32 signal 8 } 
	{ data_out_local_2_q0 sc_in sc_lv 32 signal 8 } 
	{ data_out_local_2_we0 sc_out sc_logic 1 signal 8 } 
	{ data_out_local_2_address1 sc_out sc_lv 5 signal 8 } 
	{ data_out_local_2_ce1 sc_out sc_logic 1 signal 8 } 
	{ data_out_local_2_d1 sc_out sc_lv 32 signal 8 } 
	{ data_out_local_2_q1 sc_in sc_lv 32 signal 8 } 
	{ data_out_local_2_we1 sc_out sc_logic 1 signal 8 } 
	{ data_out_local_3_address0 sc_out sc_lv 5 signal 9 } 
	{ data_out_local_3_ce0 sc_out sc_logic 1 signal 9 } 
	{ data_out_local_3_d0 sc_out sc_lv 32 signal 9 } 
	{ data_out_local_3_q0 sc_in sc_lv 32 signal 9 } 
	{ data_out_local_3_we0 sc_out sc_logic 1 signal 9 } 
	{ data_out_local_3_address1 sc_out sc_lv 5 signal 9 } 
	{ data_out_local_3_ce1 sc_out sc_logic 1 signal 9 } 
	{ data_out_local_3_d1 sc_out sc_lv 32 signal 9 } 
	{ data_out_local_3_q1 sc_in sc_lv 32 signal 9 } 
	{ data_out_local_3_we1 sc_out sc_logic 1 signal 9 } 
	{ d_out sc_in sc_lv 5 signal 10 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ weights_ap_vld sc_in sc_logic 1 invld 1 } 
	{ d_out_ap_vld sc_in sc_logic 1 invld 10 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "weights", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weights", "role": "default" }} , 
 	{ "name": "data_in_local_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_in_local_0", "role": "address0" }} , 
 	{ "name": "data_in_local_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_local_0", "role": "ce0" }} , 
 	{ "name": "data_in_local_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_local_0", "role": "d0" }} , 
 	{ "name": "data_in_local_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_local_0", "role": "q0" }} , 
 	{ "name": "data_in_local_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_local_0", "role": "we0" }} , 
 	{ "name": "data_in_local_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_in_local_0", "role": "address1" }} , 
 	{ "name": "data_in_local_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_local_0", "role": "ce1" }} , 
 	{ "name": "data_in_local_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_local_0", "role": "d1" }} , 
 	{ "name": "data_in_local_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_local_0", "role": "q1" }} , 
 	{ "name": "data_in_local_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_local_0", "role": "we1" }} , 
 	{ "name": "data_in_local_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_in_local_1", "role": "address0" }} , 
 	{ "name": "data_in_local_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_local_1", "role": "ce0" }} , 
 	{ "name": "data_in_local_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_local_1", "role": "d0" }} , 
 	{ "name": "data_in_local_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_local_1", "role": "q0" }} , 
 	{ "name": "data_in_local_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_local_1", "role": "we0" }} , 
 	{ "name": "data_in_local_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_in_local_1", "role": "address1" }} , 
 	{ "name": "data_in_local_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_local_1", "role": "ce1" }} , 
 	{ "name": "data_in_local_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_local_1", "role": "d1" }} , 
 	{ "name": "data_in_local_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_local_1", "role": "q1" }} , 
 	{ "name": "data_in_local_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_local_1", "role": "we1" }} , 
 	{ "name": "data_in_local_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_in_local_2", "role": "address0" }} , 
 	{ "name": "data_in_local_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_local_2", "role": "ce0" }} , 
 	{ "name": "data_in_local_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_local_2", "role": "d0" }} , 
 	{ "name": "data_in_local_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_local_2", "role": "q0" }} , 
 	{ "name": "data_in_local_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_local_2", "role": "we0" }} , 
 	{ "name": "data_in_local_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_in_local_2", "role": "address1" }} , 
 	{ "name": "data_in_local_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_local_2", "role": "ce1" }} , 
 	{ "name": "data_in_local_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_local_2", "role": "d1" }} , 
 	{ "name": "data_in_local_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_local_2", "role": "q1" }} , 
 	{ "name": "data_in_local_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_local_2", "role": "we1" }} , 
 	{ "name": "data_in_local_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_in_local_3", "role": "address0" }} , 
 	{ "name": "data_in_local_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_local_3", "role": "ce0" }} , 
 	{ "name": "data_in_local_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_local_3", "role": "d0" }} , 
 	{ "name": "data_in_local_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_local_3", "role": "q0" }} , 
 	{ "name": "data_in_local_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_local_3", "role": "we0" }} , 
 	{ "name": "data_in_local_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_in_local_3", "role": "address1" }} , 
 	{ "name": "data_in_local_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_local_3", "role": "ce1" }} , 
 	{ "name": "data_in_local_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_local_3", "role": "d1" }} , 
 	{ "name": "data_in_local_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in_local_3", "role": "q1" }} , 
 	{ "name": "data_in_local_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_local_3", "role": "we1" }} , 
 	{ "name": "data_out_local_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_out_local_0", "role": "address0" }} , 
 	{ "name": "data_out_local_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local_0", "role": "ce0" }} , 
 	{ "name": "data_out_local_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local_0", "role": "d0" }} , 
 	{ "name": "data_out_local_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local_0", "role": "q0" }} , 
 	{ "name": "data_out_local_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local_0", "role": "we0" }} , 
 	{ "name": "data_out_local_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_out_local_0", "role": "address1" }} , 
 	{ "name": "data_out_local_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local_0", "role": "ce1" }} , 
 	{ "name": "data_out_local_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local_0", "role": "d1" }} , 
 	{ "name": "data_out_local_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local_0", "role": "q1" }} , 
 	{ "name": "data_out_local_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local_0", "role": "we1" }} , 
 	{ "name": "data_out_local_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_out_local_1", "role": "address0" }} , 
 	{ "name": "data_out_local_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local_1", "role": "ce0" }} , 
 	{ "name": "data_out_local_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local_1", "role": "d0" }} , 
 	{ "name": "data_out_local_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local_1", "role": "q0" }} , 
 	{ "name": "data_out_local_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local_1", "role": "we0" }} , 
 	{ "name": "data_out_local_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_out_local_1", "role": "address1" }} , 
 	{ "name": "data_out_local_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local_1", "role": "ce1" }} , 
 	{ "name": "data_out_local_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local_1", "role": "d1" }} , 
 	{ "name": "data_out_local_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local_1", "role": "q1" }} , 
 	{ "name": "data_out_local_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local_1", "role": "we1" }} , 
 	{ "name": "data_out_local_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_out_local_2", "role": "address0" }} , 
 	{ "name": "data_out_local_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local_2", "role": "ce0" }} , 
 	{ "name": "data_out_local_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local_2", "role": "d0" }} , 
 	{ "name": "data_out_local_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local_2", "role": "q0" }} , 
 	{ "name": "data_out_local_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local_2", "role": "we0" }} , 
 	{ "name": "data_out_local_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_out_local_2", "role": "address1" }} , 
 	{ "name": "data_out_local_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local_2", "role": "ce1" }} , 
 	{ "name": "data_out_local_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local_2", "role": "d1" }} , 
 	{ "name": "data_out_local_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local_2", "role": "q1" }} , 
 	{ "name": "data_out_local_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local_2", "role": "we1" }} , 
 	{ "name": "data_out_local_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_out_local_3", "role": "address0" }} , 
 	{ "name": "data_out_local_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local_3", "role": "ce0" }} , 
 	{ "name": "data_out_local_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local_3", "role": "d0" }} , 
 	{ "name": "data_out_local_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local_3", "role": "q0" }} , 
 	{ "name": "data_out_local_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local_3", "role": "we0" }} , 
 	{ "name": "data_out_local_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_out_local_3", "role": "address1" }} , 
 	{ "name": "data_out_local_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local_3", "role": "ce1" }} , 
 	{ "name": "data_out_local_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local_3", "role": "d1" }} , 
 	{ "name": "data_out_local_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local_3", "role": "q1" }} , 
 	{ "name": "data_out_local_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local_3", "role": "we1" }} , 
 	{ "name": "d_out", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "d_out", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "weights_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "weights", "role": "ap_vld" }} , 
 	{ "name": "d_out_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "d_out", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "6", "8", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "PE_dataflow",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24", "EstimateLatencyMax" : "24",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "load_weight_U0"},
			{"ID" : "2", "Name" : "PE_110_U0"},
			{"ID" : "4", "Name" : "PE11_U0"},
			{"ID" : "6", "Name" : "PE12_U0"},
			{"ID" : "8", "Name" : "PE13_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "PE_110_U0"},
			{"ID" : "4", "Name" : "PE11_U0"},
			{"ID" : "6", "Name" : "PE12_U0"},
			{"ID" : "8", "Name" : "PE13_U0"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "load_weight_U0", "Port" : "gmem"}]},
			{"Name" : "weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in_local_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "PE_110_U0", "Port" : "data_in_0"}]},
			{"Name" : "data_in_local_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "PE11_U0", "Port" : "data_in7"}]},
			{"Name" : "data_in_local_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "PE12_U0", "Port" : "data_in8"}]},
			{"Name" : "data_in_local_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "PE13_U0", "Port" : "data_in9"}]},
			{"Name" : "data_out_local_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "PE_110_U0", "Port" : "data_out_local_0"}]},
			{"Name" : "data_out_local_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "PE11_U0", "Port" : "data_out_local10"}]},
			{"Name" : "data_out_local_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "PE12_U0", "Port" : "data_out_local11"}]},
			{"Name" : "data_out_local_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "PE13_U0", "Port" : "data_out_local12"}]},
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.load_weight_U0", "Parent" : "0",
		"CDFG" : "load_weight",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "weight_buf", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "10", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "weight_buf_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "11", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE_110_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "PE_110",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "weights_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "10", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "weights_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_out_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "12", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "weights_out_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_in_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_out_local_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "11", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "13", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE_110_U0.mul_32s_32s_32_1_1_U6", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE11_U0", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "PE11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "weights_in_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "12", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "weights_in_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_out_V4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "14", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "weights_out_V4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_in7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_out_local10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "13", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "15", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE11_U0.mul_32s_32s_32_1_1_U14", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE12_U0", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "PE12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "weights_in_V1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "14", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "weights_in_V1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_out_V5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "weights_out_V5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_in8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_out_local11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "15", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "8", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE12_U0.mul_32s_32s_32_1_1_U21", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.PE13_U0", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "PE13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "weights_in_V2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "weights_in_V2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_in9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_out_local12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.PE13_U0.mul_32s_32s_32_1_1_U28", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_buf_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_stream_0_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c13_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_stream_1_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_stream_2_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.d_out_c15_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE_dataflow {
		gmem {Type I LastRead 9 FirstWrite -1}
		weights {Type I LastRead 0 FirstWrite -1}
		data_in_local_0 {Type I LastRead 1 FirstWrite -1}
		data_in_local_1 {Type I LastRead 1 FirstWrite -1}
		data_in_local_2 {Type I LastRead 1 FirstWrite -1}
		data_in_local_3 {Type I LastRead 1 FirstWrite -1}
		data_out_local_0 {Type O LastRead -1 FirstWrite 2}
		data_out_local_1 {Type O LastRead -1 FirstWrite 2}
		data_out_local_2 {Type O LastRead -1 FirstWrite 2}
		data_out_local_3 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}}
	load_weight {
		gmem {Type I LastRead 9 FirstWrite -1}
		weight_buf {Type O LastRead -1 FirstWrite 10}
		weights {Type I LastRead 0 FirstWrite -1}
		d_out {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	PE_110 {
		weights_in {Type I LastRead 2 FirstWrite -1}
		weights_out_V {Type O LastRead -1 FirstWrite 2}
		data_in_0 {Type I LastRead 1 FirstWrite -1}
		data_out_local_0 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	PE11 {
		weights_in_V {Type I LastRead 2 FirstWrite -1}
		weights_out_V4 {Type O LastRead -1 FirstWrite 2}
		data_in7 {Type I LastRead 1 FirstWrite -1}
		data_out_local10 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	PE12 {
		weights_in_V1 {Type I LastRead 2 FirstWrite -1}
		weights_out_V5 {Type O LastRead -1 FirstWrite 2}
		data_in8 {Type I LastRead 1 FirstWrite -1}
		data_out_local11 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	PE13 {
		weights_in_V2 {Type I LastRead 2 FirstWrite -1}
		data_in9 {Type I LastRead 1 FirstWrite -1}
		data_out_local12 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "24", "Max" : "24"}
	, {"Name" : "Interval", "Min" : "21", "Max" : "21"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN LEN 1 32 }  { m_axi_gmem_AWSIZE SIZE 1 3 }  { m_axi_gmem_AWBURST BURST 1 2 }  { m_axi_gmem_AWLOCK LOCK 1 2 }  { m_axi_gmem_AWCACHE CACHE 1 4 }  { m_axi_gmem_AWPROT PROT 1 3 }  { m_axi_gmem_AWQOS QOS 1 4 }  { m_axi_gmem_AWREGION REGION 1 4 }  { m_axi_gmem_AWUSER USER 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA DATA 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER USER 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN LEN 1 32 }  { m_axi_gmem_ARSIZE SIZE 1 3 }  { m_axi_gmem_ARBURST BURST 1 2 }  { m_axi_gmem_ARLOCK LOCK 1 2 }  { m_axi_gmem_ARCACHE CACHE 1 4 }  { m_axi_gmem_ARPROT PROT 1 3 }  { m_axi_gmem_ARQOS QOS 1 4 }  { m_axi_gmem_ARREGION REGION 1 4 }  { m_axi_gmem_ARUSER USER 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA DATA 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER USER 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER USER 0 1 } } }
	weights { ap_none {  { weights in_data 0 64 }  { weights_ap_vld in_vld 0 1 } } }
	data_in_local_0 { ap_memory {  { data_in_local_0_address0 mem_address 1 4 }  { data_in_local_0_ce0 mem_ce 1 1 }  { data_in_local_0_d0 mem_din 1 32 }  { data_in_local_0_q0 mem_dout 0 32 }  { data_in_local_0_we0 mem_we 1 1 }  { data_in_local_0_address1 mem_address 1 4 }  { data_in_local_0_ce1 mem_ce 1 1 }  { data_in_local_0_d1 mem_din 1 32 }  { data_in_local_0_q1 mem_dout 0 32 }  { data_in_local_0_we1 mem_we 1 1 } } }
	data_in_local_1 { ap_memory {  { data_in_local_1_address0 mem_address 1 4 }  { data_in_local_1_ce0 mem_ce 1 1 }  { data_in_local_1_d0 mem_din 1 32 }  { data_in_local_1_q0 mem_dout 0 32 }  { data_in_local_1_we0 mem_we 1 1 }  { data_in_local_1_address1 mem_address 1 4 }  { data_in_local_1_ce1 mem_ce 1 1 }  { data_in_local_1_d1 mem_din 1 32 }  { data_in_local_1_q1 mem_dout 0 32 }  { data_in_local_1_we1 mem_we 1 1 } } }
	data_in_local_2 { ap_memory {  { data_in_local_2_address0 mem_address 1 4 }  { data_in_local_2_ce0 mem_ce 1 1 }  { data_in_local_2_d0 mem_din 1 32 }  { data_in_local_2_q0 mem_dout 0 32 }  { data_in_local_2_we0 mem_we 1 1 }  { data_in_local_2_address1 mem_address 1 4 }  { data_in_local_2_ce1 mem_ce 1 1 }  { data_in_local_2_d1 mem_din 1 32 }  { data_in_local_2_q1 mem_dout 0 32 }  { data_in_local_2_we1 mem_we 1 1 } } }
	data_in_local_3 { ap_memory {  { data_in_local_3_address0 mem_address 1 4 }  { data_in_local_3_ce0 mem_ce 1 1 }  { data_in_local_3_d0 mem_din 1 32 }  { data_in_local_3_q0 mem_dout 0 32 }  { data_in_local_3_we0 mem_we 1 1 }  { data_in_local_3_address1 mem_address 1 4 }  { data_in_local_3_ce1 mem_ce 1 1 }  { data_in_local_3_d1 mem_din 1 32 }  { data_in_local_3_q1 mem_dout 0 32 }  { data_in_local_3_we1 mem_we 1 1 } } }
	data_out_local_0 { ap_memory {  { data_out_local_0_address0 mem_address 1 5 }  { data_out_local_0_ce0 mem_ce 1 1 }  { data_out_local_0_d0 mem_din 1 32 }  { data_out_local_0_q0 mem_dout 0 32 }  { data_out_local_0_we0 mem_we 1 1 }  { data_out_local_0_address1 mem_address 1 5 }  { data_out_local_0_ce1 mem_ce 1 1 }  { data_out_local_0_d1 mem_din 1 32 }  { data_out_local_0_q1 mem_dout 0 32 }  { data_out_local_0_we1 mem_we 1 1 } } }
	data_out_local_1 { ap_memory {  { data_out_local_1_address0 mem_address 1 5 }  { data_out_local_1_ce0 mem_ce 1 1 }  { data_out_local_1_d0 mem_din 1 32 }  { data_out_local_1_q0 mem_dout 0 32 }  { data_out_local_1_we0 mem_we 1 1 }  { data_out_local_1_address1 mem_address 1 5 }  { data_out_local_1_ce1 mem_ce 1 1 }  { data_out_local_1_d1 mem_din 1 32 }  { data_out_local_1_q1 mem_dout 0 32 }  { data_out_local_1_we1 mem_we 1 1 } } }
	data_out_local_2 { ap_memory {  { data_out_local_2_address0 mem_address 1 5 }  { data_out_local_2_ce0 mem_ce 1 1 }  { data_out_local_2_d0 mem_din 1 32 }  { data_out_local_2_q0 mem_dout 0 32 }  { data_out_local_2_we0 mem_we 1 1 }  { data_out_local_2_address1 mem_address 1 5 }  { data_out_local_2_ce1 mem_ce 1 1 }  { data_out_local_2_d1 mem_din 1 32 }  { data_out_local_2_q1 mem_dout 0 32 }  { data_out_local_2_we1 mem_we 1 1 } } }
	data_out_local_3 { ap_memory {  { data_out_local_3_address0 mem_address 1 5 }  { data_out_local_3_ce0 mem_ce 1 1 }  { data_out_local_3_d0 mem_din 1 32 }  { data_out_local_3_q0 mem_dout 0 32 }  { data_out_local_3_we0 mem_we 1 1 }  { data_out_local_3_address1 mem_address 1 5 }  { data_out_local_3_ce1 mem_ce 1 1 }  { data_out_local_3_d1 mem_din 1 32 }  { data_out_local_3_q1 mem_dout 0 32 }  { data_out_local_3_we1 mem_we 1 1 } } }
	d_out { ap_none {  { d_out in_data 0 5 }  { d_out_ap_vld in_vld 0 1 } } }
}
