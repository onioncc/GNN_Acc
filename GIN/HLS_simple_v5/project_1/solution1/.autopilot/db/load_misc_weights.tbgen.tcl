set moduleName load_misc_weights
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {load_misc_weights}
set C_modelType { void 0 }
set C_modelArgList {
	{ mem int 32 regular {axi_master 0}  }
	{ eps_in int 64 regular  }
	{ graph_pred_weight_in int 64 regular  }
	{ graph_pred_bias_in int 64 regular  }
	{ node_embedding_table_in int 64 regular  }
	{ edge_embedding_table_in int 64 regular  }
	{ mlp_eps_V int 32 regular {array 5 { 0 3 } 0 1 } {global 1}  }
	{ graph_pred_bias_V_0 int 32 regular {pointer 1} {global 1}  }
	{ graph_pred_weights_V int 32 regular {array 300 { 0 3 } 0 1 } {global 1}  }
	{ node_embedding_table_V int 32 regular {array 51900 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V int 32 regular {array 19500 { 3 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "eps_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "graph_pred_weight_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "graph_pred_bias_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "node_embedding_table_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "edge_embedding_table_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_eps_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_eps.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 4,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "graph_pred_bias_V_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "graph_pred_bias.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "graph_pred_weights_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "graph_pred_weights.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_table_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 172,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 64,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_mem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_mem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_mem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_mem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_BUSER sc_in sc_lv 1 signal 0 } 
	{ eps_in sc_in sc_lv 64 signal 1 } 
	{ graph_pred_weight_in sc_in sc_lv 64 signal 2 } 
	{ graph_pred_bias_in sc_in sc_lv 64 signal 3 } 
	{ node_embedding_table_in sc_in sc_lv 64 signal 4 } 
	{ edge_embedding_table_in sc_in sc_lv 64 signal 5 } 
	{ mlp_eps_V_address0 sc_out sc_lv 3 signal 6 } 
	{ mlp_eps_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ mlp_eps_V_we0 sc_out sc_logic 1 signal 6 } 
	{ mlp_eps_V_d0 sc_out sc_lv 32 signal 6 } 
	{ graph_pred_bias_V_0 sc_out sc_lv 32 signal 7 } 
	{ graph_pred_bias_V_0_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ graph_pred_weights_V_address0 sc_out sc_lv 9 signal 8 } 
	{ graph_pred_weights_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ graph_pred_weights_V_we0 sc_out sc_logic 1 signal 8 } 
	{ graph_pred_weights_V_d0 sc_out sc_lv 32 signal 8 } 
	{ node_embedding_table_V_address1 sc_out sc_lv 16 signal 9 } 
	{ node_embedding_table_V_ce1 sc_out sc_logic 1 signal 9 } 
	{ node_embedding_table_V_we1 sc_out sc_logic 1 signal 9 } 
	{ node_embedding_table_V_d1 sc_out sc_lv 32 signal 9 } 
	{ edge_embedding_table_V_address1 sc_out sc_lv 15 signal 10 } 
	{ edge_embedding_table_V_ce1 sc_out sc_logic 1 signal 10 } 
	{ edge_embedding_table_V_we1 sc_out sc_logic 1 signal 10 } 
	{ edge_embedding_table_V_d1 sc_out sc_lv 32 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWID" }} , 
 	{ "name": "m_axi_mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_mem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_mem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_mem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_mem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_mem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_mem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_mem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_mem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_mem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WVALID" }} , 
 	{ "name": "m_axi_mem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WREADY" }} , 
 	{ "name": "m_axi_mem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "WDATA" }} , 
 	{ "name": "m_axi_mem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_mem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WLAST" }} , 
 	{ "name": "m_axi_mem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WID" }} , 
 	{ "name": "m_axi_mem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WUSER" }} , 
 	{ "name": "m_axi_mem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_mem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_mem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_mem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARID" }} , 
 	{ "name": "m_axi_mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_mem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_mem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_mem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_mem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_mem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_mem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_mem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_mem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_mem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RVALID" }} , 
 	{ "name": "m_axi_mem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RREADY" }} , 
 	{ "name": "m_axi_mem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "RDATA" }} , 
 	{ "name": "m_axi_mem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RLAST" }} , 
 	{ "name": "m_axi_mem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RID" }} , 
 	{ "name": "m_axi_mem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RUSER" }} , 
 	{ "name": "m_axi_mem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "RRESP" }} , 
 	{ "name": "m_axi_mem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BVALID" }} , 
 	{ "name": "m_axi_mem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BREADY" }} , 
 	{ "name": "m_axi_mem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "BRESP" }} , 
 	{ "name": "m_axi_mem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BID" }} , 
 	{ "name": "m_axi_mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BUSER" }} , 
 	{ "name": "eps_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "eps_in", "role": "default" }} , 
 	{ "name": "graph_pred_weight_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "graph_pred_weight_in", "role": "default" }} , 
 	{ "name": "graph_pred_bias_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "graph_pred_bias_in", "role": "default" }} , 
 	{ "name": "node_embedding_table_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "node_embedding_table_in", "role": "default" }} , 
 	{ "name": "edge_embedding_table_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "edge_embedding_table_in", "role": "default" }} , 
 	{ "name": "mlp_eps_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "address0" }} , 
 	{ "name": "mlp_eps_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "ce0" }} , 
 	{ "name": "mlp_eps_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "we0" }} , 
 	{ "name": "mlp_eps_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "d0" }} , 
 	{ "name": "graph_pred_bias_V_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "graph_pred_bias_V_0", "role": "default" }} , 
 	{ "name": "graph_pred_bias_V_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "graph_pred_bias_V_0", "role": "ap_vld" }} , 
 	{ "name": "graph_pred_weights_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "graph_pred_weights_V", "role": "address0" }} , 
 	{ "name": "graph_pred_weights_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "graph_pred_weights_V", "role": "ce0" }} , 
 	{ "name": "graph_pred_weights_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "graph_pred_weights_V", "role": "we0" }} , 
 	{ "name": "graph_pred_weights_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "graph_pred_weights_V", "role": "d0" }} , 
 	{ "name": "node_embedding_table_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "node_embedding_table_V", "role": "address1" }} , 
 	{ "name": "node_embedding_table_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_table_V", "role": "ce1" }} , 
 	{ "name": "node_embedding_table_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_table_V", "role": "we1" }} , 
 	{ "name": "node_embedding_table_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_table_V", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "load_misc_weights",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "71744", "EstimateLatencyMax" : "71744",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "mem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "eps_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "graph_pred_weight_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "graph_pred_bias_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "node_embedding_table_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_embedding_table_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_eps_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "graph_pred_bias_V_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "graph_pred_weights_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_table_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_10ns_9ns_16_4_1_U1514", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_7ns_10ns_9ns_15_4_1_U1515", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_misc_weights {
		mem {Type I LastRead 34 FirstWrite -1}
		eps_in {Type I LastRead 0 FirstWrite -1}
		graph_pred_weight_in {Type I LastRead 6 FirstWrite -1}
		graph_pred_bias_in {Type I LastRead 6 FirstWrite -1}
		node_embedding_table_in {Type I LastRead 6 FirstWrite -1}
		edge_embedding_table_in {Type I LastRead 6 FirstWrite -1}
		mlp_eps_V {Type O LastRead -1 FirstWrite 9}
		graph_pred_bias_V_0 {Type O LastRead -1 FirstWrite 15}
		graph_pred_weights_V {Type O LastRead -1 FirstWrite 18}
		node_embedding_table_V {Type O LastRead -1 FirstWrite 27}
		edge_embedding_table_V {Type O LastRead -1 FirstWrite 35}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "71744", "Max" : "71744"}
	, {"Name" : "Interval", "Min" : "71744", "Max" : "71744"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
]}

set Spec2ImplPortList { 
	mem { m_axi {  { m_axi_mem_AWVALID VALID 1 1 }  { m_axi_mem_AWREADY READY 0 1 }  { m_axi_mem_AWADDR ADDR 1 64 }  { m_axi_mem_AWID ID 1 1 }  { m_axi_mem_AWLEN LEN 1 32 }  { m_axi_mem_AWSIZE SIZE 1 3 }  { m_axi_mem_AWBURST BURST 1 2 }  { m_axi_mem_AWLOCK LOCK 1 2 }  { m_axi_mem_AWCACHE CACHE 1 4 }  { m_axi_mem_AWPROT PROT 1 3 }  { m_axi_mem_AWQOS QOS 1 4 }  { m_axi_mem_AWREGION REGION 1 4 }  { m_axi_mem_AWUSER USER 1 1 }  { m_axi_mem_WVALID VALID 1 1 }  { m_axi_mem_WREADY READY 0 1 }  { m_axi_mem_WDATA DATA 1 32 }  { m_axi_mem_WSTRB STRB 1 4 }  { m_axi_mem_WLAST LAST 1 1 }  { m_axi_mem_WID ID 1 1 }  { m_axi_mem_WUSER USER 1 1 }  { m_axi_mem_ARVALID VALID 1 1 }  { m_axi_mem_ARREADY READY 0 1 }  { m_axi_mem_ARADDR ADDR 1 64 }  { m_axi_mem_ARID ID 1 1 }  { m_axi_mem_ARLEN LEN 1 32 }  { m_axi_mem_ARSIZE SIZE 1 3 }  { m_axi_mem_ARBURST BURST 1 2 }  { m_axi_mem_ARLOCK LOCK 1 2 }  { m_axi_mem_ARCACHE CACHE 1 4 }  { m_axi_mem_ARPROT PROT 1 3 }  { m_axi_mem_ARQOS QOS 1 4 }  { m_axi_mem_ARREGION REGION 1 4 }  { m_axi_mem_ARUSER USER 1 1 }  { m_axi_mem_RVALID VALID 0 1 }  { m_axi_mem_RREADY READY 1 1 }  { m_axi_mem_RDATA DATA 0 32 }  { m_axi_mem_RLAST LAST 0 1 }  { m_axi_mem_RID ID 0 1 }  { m_axi_mem_RUSER USER 0 1 }  { m_axi_mem_RRESP RESP 0 2 }  { m_axi_mem_BVALID VALID 0 1 }  { m_axi_mem_BREADY READY 1 1 }  { m_axi_mem_BRESP RESP 0 2 }  { m_axi_mem_BID ID 0 1 }  { m_axi_mem_BUSER USER 0 1 } } }
	eps_in { ap_none {  { eps_in in_data 0 64 } } }
	graph_pred_weight_in { ap_none {  { graph_pred_weight_in in_data 0 64 } } }
	graph_pred_bias_in { ap_none {  { graph_pred_bias_in in_data 0 64 } } }
	node_embedding_table_in { ap_none {  { node_embedding_table_in in_data 0 64 } } }
	edge_embedding_table_in { ap_none {  { edge_embedding_table_in in_data 0 64 } } }
	mlp_eps_V { ap_memory {  { mlp_eps_V_address0 mem_address 1 3 }  { mlp_eps_V_ce0 mem_ce 1 1 }  { mlp_eps_V_we0 mem_we 1 1 }  { mlp_eps_V_d0 mem_din 1 32 } } }
	graph_pred_bias_V_0 { ap_vld {  { graph_pred_bias_V_0 out_data 1 32 }  { graph_pred_bias_V_0_ap_vld out_vld 1 1 } } }
	graph_pred_weights_V { ap_memory {  { graph_pred_weights_V_address0 mem_address 1 9 }  { graph_pred_weights_V_ce0 mem_ce 1 1 }  { graph_pred_weights_V_we0 mem_we 1 1 }  { graph_pred_weights_V_d0 mem_din 1 32 } } }
	node_embedding_table_V { ap_memory {  { node_embedding_table_V_address1 MemPortADDR2 1 16 }  { node_embedding_table_V_ce1 MemPortCE2 1 1 }  { node_embedding_table_V_we1 MemPortWE2 1 1 }  { node_embedding_table_V_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V { ap_memory {  { edge_embedding_table_V_address1 MemPortADDR2 1 15 }  { edge_embedding_table_V_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_d1 MemPortDIN2 1 32 } } }
}
set moduleName load_misc_weights
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {load_misc_weights}
set C_modelType { void 0 }
set C_modelArgList {
	{ mem int 32 regular {axi_master 0}  }
	{ eps_in int 64 regular  }
	{ graph_pred_weight_in int 64 regular  }
	{ graph_pred_bias_in int 64 regular  }
	{ node_embedding_table_in int 64 regular  }
	{ edge_embedding_table_in int 64 regular  }
	{ mlp_eps_V int 32 regular {array 5 { 0 3 } 0 1 } {global 1}  }
	{ graph_pred_bias_V_0 int 32 regular {pointer 1} {global 1}  }
	{ graph_pred_weights_V int 32 regular {array 300 { 0 3 } 0 1 } {global 1}  }
	{ node_embedding_table_V int 32 regular {array 51900 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V int 32 regular {array 19500 { 3 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "eps_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "graph_pred_weight_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "graph_pred_bias_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "node_embedding_table_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "edge_embedding_table_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_eps_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_eps.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 4,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "graph_pred_bias_V_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "graph_pred_bias.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "graph_pred_weights_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "graph_pred_weights.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_table_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 172,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 64,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 74
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_mem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_mem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_mem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_mem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_BUSER sc_in sc_lv 1 signal 0 } 
	{ eps_in sc_in sc_lv 64 signal 1 } 
	{ graph_pred_weight_in sc_in sc_lv 64 signal 2 } 
	{ graph_pred_bias_in sc_in sc_lv 64 signal 3 } 
	{ node_embedding_table_in sc_in sc_lv 64 signal 4 } 
	{ edge_embedding_table_in sc_in sc_lv 64 signal 5 } 
	{ mlp_eps_V_address0 sc_out sc_lv 3 signal 6 } 
	{ mlp_eps_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ mlp_eps_V_we0 sc_out sc_logic 1 signal 6 } 
	{ mlp_eps_V_d0 sc_out sc_lv 32 signal 6 } 
	{ graph_pred_bias_V_0 sc_out sc_lv 32 signal 7 } 
	{ graph_pred_bias_V_0_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ graph_pred_weights_V_address0 sc_out sc_lv 9 signal 8 } 
	{ graph_pred_weights_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ graph_pred_weights_V_we0 sc_out sc_logic 1 signal 8 } 
	{ graph_pred_weights_V_d0 sc_out sc_lv 32 signal 8 } 
	{ node_embedding_table_V_address1 sc_out sc_lv 16 signal 9 } 
	{ node_embedding_table_V_ce1 sc_out sc_logic 1 signal 9 } 
	{ node_embedding_table_V_we1 sc_out sc_logic 1 signal 9 } 
	{ node_embedding_table_V_d1 sc_out sc_lv 32 signal 9 } 
	{ edge_embedding_table_V_address1 sc_out sc_lv 15 signal 10 } 
	{ edge_embedding_table_V_ce1 sc_out sc_logic 1 signal 10 } 
	{ edge_embedding_table_V_we1 sc_out sc_logic 1 signal 10 } 
	{ edge_embedding_table_V_d1 sc_out sc_lv 32 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWID" }} , 
 	{ "name": "m_axi_mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_mem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_mem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_mem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_mem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_mem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_mem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_mem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_mem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_mem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WVALID" }} , 
 	{ "name": "m_axi_mem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WREADY" }} , 
 	{ "name": "m_axi_mem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "WDATA" }} , 
 	{ "name": "m_axi_mem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_mem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WLAST" }} , 
 	{ "name": "m_axi_mem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WID" }} , 
 	{ "name": "m_axi_mem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WUSER" }} , 
 	{ "name": "m_axi_mem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_mem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_mem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_mem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARID" }} , 
 	{ "name": "m_axi_mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_mem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_mem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_mem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_mem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_mem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_mem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_mem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_mem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_mem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RVALID" }} , 
 	{ "name": "m_axi_mem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RREADY" }} , 
 	{ "name": "m_axi_mem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "RDATA" }} , 
 	{ "name": "m_axi_mem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RLAST" }} , 
 	{ "name": "m_axi_mem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RID" }} , 
 	{ "name": "m_axi_mem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RUSER" }} , 
 	{ "name": "m_axi_mem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "RRESP" }} , 
 	{ "name": "m_axi_mem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BVALID" }} , 
 	{ "name": "m_axi_mem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BREADY" }} , 
 	{ "name": "m_axi_mem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "BRESP" }} , 
 	{ "name": "m_axi_mem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BID" }} , 
 	{ "name": "m_axi_mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BUSER" }} , 
 	{ "name": "eps_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "eps_in", "role": "default" }} , 
 	{ "name": "graph_pred_weight_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "graph_pred_weight_in", "role": "default" }} , 
 	{ "name": "graph_pred_bias_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "graph_pred_bias_in", "role": "default" }} , 
 	{ "name": "node_embedding_table_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "node_embedding_table_in", "role": "default" }} , 
 	{ "name": "edge_embedding_table_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "edge_embedding_table_in", "role": "default" }} , 
 	{ "name": "mlp_eps_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "address0" }} , 
 	{ "name": "mlp_eps_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "ce0" }} , 
 	{ "name": "mlp_eps_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "we0" }} , 
 	{ "name": "mlp_eps_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "d0" }} , 
 	{ "name": "graph_pred_bias_V_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "graph_pred_bias_V_0", "role": "default" }} , 
 	{ "name": "graph_pred_bias_V_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "graph_pred_bias_V_0", "role": "ap_vld" }} , 
 	{ "name": "graph_pred_weights_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "graph_pred_weights_V", "role": "address0" }} , 
 	{ "name": "graph_pred_weights_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "graph_pred_weights_V", "role": "ce0" }} , 
 	{ "name": "graph_pred_weights_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "graph_pred_weights_V", "role": "we0" }} , 
 	{ "name": "graph_pred_weights_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "graph_pred_weights_V", "role": "d0" }} , 
 	{ "name": "node_embedding_table_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "node_embedding_table_V", "role": "address1" }} , 
 	{ "name": "node_embedding_table_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_table_V", "role": "ce1" }} , 
 	{ "name": "node_embedding_table_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_table_V", "role": "we1" }} , 
 	{ "name": "node_embedding_table_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_table_V", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "load_misc_weights",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "71744", "EstimateLatencyMax" : "71744",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "mem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "eps_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "graph_pred_weight_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "graph_pred_bias_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "node_embedding_table_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_embedding_table_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_eps_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "graph_pred_bias_V_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "graph_pred_weights_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_table_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_10ns_9ns_16_4_1_U1514", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_7ns_10ns_9ns_15_4_1_U1515", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_misc_weights {
		mem {Type I LastRead 34 FirstWrite -1}
		eps_in {Type I LastRead 0 FirstWrite -1}
		graph_pred_weight_in {Type I LastRead 6 FirstWrite -1}
		graph_pred_bias_in {Type I LastRead 6 FirstWrite -1}
		node_embedding_table_in {Type I LastRead 6 FirstWrite -1}
		edge_embedding_table_in {Type I LastRead 6 FirstWrite -1}
		mlp_eps_V {Type O LastRead -1 FirstWrite 9}
		graph_pred_bias_V_0 {Type O LastRead -1 FirstWrite 15}
		graph_pred_weights_V {Type O LastRead -1 FirstWrite 18}
		node_embedding_table_V {Type O LastRead -1 FirstWrite 27}
		edge_embedding_table_V {Type O LastRead -1 FirstWrite 35}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "71744", "Max" : "71744"}
	, {"Name" : "Interval", "Min" : "71744", "Max" : "71744"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
]}

set Spec2ImplPortList { 
	mem { m_axi {  { m_axi_mem_AWVALID VALID 1 1 }  { m_axi_mem_AWREADY READY 0 1 }  { m_axi_mem_AWADDR ADDR 1 64 }  { m_axi_mem_AWID ID 1 1 }  { m_axi_mem_AWLEN LEN 1 32 }  { m_axi_mem_AWSIZE SIZE 1 3 }  { m_axi_mem_AWBURST BURST 1 2 }  { m_axi_mem_AWLOCK LOCK 1 2 }  { m_axi_mem_AWCACHE CACHE 1 4 }  { m_axi_mem_AWPROT PROT 1 3 }  { m_axi_mem_AWQOS QOS 1 4 }  { m_axi_mem_AWREGION REGION 1 4 }  { m_axi_mem_AWUSER USER 1 1 }  { m_axi_mem_WVALID VALID 1 1 }  { m_axi_mem_WREADY READY 0 1 }  { m_axi_mem_WDATA DATA 1 32 }  { m_axi_mem_WSTRB STRB 1 4 }  { m_axi_mem_WLAST LAST 1 1 }  { m_axi_mem_WID ID 1 1 }  { m_axi_mem_WUSER USER 1 1 }  { m_axi_mem_ARVALID VALID 1 1 }  { m_axi_mem_ARREADY READY 0 1 }  { m_axi_mem_ARADDR ADDR 1 64 }  { m_axi_mem_ARID ID 1 1 }  { m_axi_mem_ARLEN LEN 1 32 }  { m_axi_mem_ARSIZE SIZE 1 3 }  { m_axi_mem_ARBURST BURST 1 2 }  { m_axi_mem_ARLOCK LOCK 1 2 }  { m_axi_mem_ARCACHE CACHE 1 4 }  { m_axi_mem_ARPROT PROT 1 3 }  { m_axi_mem_ARQOS QOS 1 4 }  { m_axi_mem_ARREGION REGION 1 4 }  { m_axi_mem_ARUSER USER 1 1 }  { m_axi_mem_RVALID VALID 0 1 }  { m_axi_mem_RREADY READY 1 1 }  { m_axi_mem_RDATA DATA 0 32 }  { m_axi_mem_RLAST LAST 0 1 }  { m_axi_mem_RID ID 0 1 }  { m_axi_mem_RUSER USER 0 1 }  { m_axi_mem_RRESP RESP 0 2 }  { m_axi_mem_BVALID VALID 0 1 }  { m_axi_mem_BREADY READY 1 1 }  { m_axi_mem_BRESP RESP 0 2 }  { m_axi_mem_BID ID 0 1 }  { m_axi_mem_BUSER USER 0 1 } } }
	eps_in { ap_none {  { eps_in in_data 0 64 } } }
	graph_pred_weight_in { ap_none {  { graph_pred_weight_in in_data 0 64 } } }
	graph_pred_bias_in { ap_none {  { graph_pred_bias_in in_data 0 64 } } }
	node_embedding_table_in { ap_none {  { node_embedding_table_in in_data 0 64 } } }
	edge_embedding_table_in { ap_none {  { edge_embedding_table_in in_data 0 64 } } }
	mlp_eps_V { ap_memory {  { mlp_eps_V_address0 mem_address 1 3 }  { mlp_eps_V_ce0 mem_ce 1 1 }  { mlp_eps_V_we0 mem_we 1 1 }  { mlp_eps_V_d0 mem_din 1 32 } } }
	graph_pred_bias_V_0 { ap_vld {  { graph_pred_bias_V_0 out_data 1 32 }  { graph_pred_bias_V_0_ap_vld out_vld 1 1 } } }
	graph_pred_weights_V { ap_memory {  { graph_pred_weights_V_address0 mem_address 1 9 }  { graph_pred_weights_V_ce0 mem_ce 1 1 }  { graph_pred_weights_V_we0 mem_we 1 1 }  { graph_pred_weights_V_d0 mem_din 1 32 } } }
	node_embedding_table_V { ap_memory {  { node_embedding_table_V_address1 MemPortADDR2 1 16 }  { node_embedding_table_V_ce1 MemPortCE2 1 1 }  { node_embedding_table_V_we1 MemPortWE2 1 1 }  { node_embedding_table_V_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V { ap_memory {  { edge_embedding_table_V_address1 MemPortADDR2 1 15 }  { edge_embedding_table_V_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_d1 MemPortDIN2 1 32 } } }
}
set moduleName load_misc_weights
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {load_misc_weights}
set C_modelType { void 0 }
set C_modelArgList {
	{ mem int 32 regular {axi_master 0}  }
	{ eps_in int 64 regular  }
	{ graph_pred_weight_in int 64 regular  }
	{ graph_pred_bias_in int 64 regular  }
	{ node_embedding_table_in int 64 regular  }
	{ edge_embedding_table_in int 64 regular  }
	{ mlp_eps_V int 32 regular {array 5 { 0 3 } 0 1 } {global 1}  }
	{ graph_pred_bias_V_0 int 32 regular {pointer 1} {global 1}  }
	{ graph_pred_weights_V int 32 regular {array 300 { 0 3 } 0 1 } {global 1}  }
	{ node_embedding_table_V int 32 regular {array 51900 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_0 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_1 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_2 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_3 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_4 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_5 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_6 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_7 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_8 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_9 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_10 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_11 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_12 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_13 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_14 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_15 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_16 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_17 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_18 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_19 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_20 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_21 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_22 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_23 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_24 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_25 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_26 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_27 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_28 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_29 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_30 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_31 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_32 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_33 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_34 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_35 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_36 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_37 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_38 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_39 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_40 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_41 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_42 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_43 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_44 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_45 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_46 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_47 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_48 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_49 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_50 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_51 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_52 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_53 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_54 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_55 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_56 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_57 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_58 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_59 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_60 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_61 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_62 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_63 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
	{ edge_embedding_table_V_64 int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "eps_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "graph_pred_weight_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "graph_pred_bias_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "node_embedding_table_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "edge_embedding_table_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_eps_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_eps.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 4,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "graph_pred_bias_V_0", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "graph_pred_bias.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "graph_pred_weights_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "graph_pred_weights.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_table_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 172,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 4,"up" : 4,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 5,"up" : 5,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 6,"up" : 6,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 7,"up" : 7,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 8,"up" : 8,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 9,"up" : 9,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 10,"up" : 10,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 11,"up" : 11,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 12,"up" : 12,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 13,"up" : 13,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 14,"up" : 14,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 15,"up" : 15,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_16", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 16,"up" : 16,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_17", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 17,"up" : 17,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_18", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 18,"up" : 18,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_19", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 19,"up" : 19,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_20", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 20,"up" : 20,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_21", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 21,"up" : 21,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_22", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 22,"up" : 22,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_23", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 23,"up" : 23,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_24", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 24,"up" : 24,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_25", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 25,"up" : 25,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_26", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 26,"up" : 26,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_27", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 27,"up" : 27,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_28", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 28,"up" : 28,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_29", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 29,"up" : 29,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_30", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 30,"up" : 30,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_31", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 31,"up" : 31,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_32", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 32,"up" : 32,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_33", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 33,"up" : 33,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_34", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 34,"up" : 34,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_35", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 35,"up" : 35,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_36", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 36,"up" : 36,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_37", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 37,"up" : 37,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_38", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 38,"up" : 38,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_39", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 39,"up" : 39,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_40", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 40,"up" : 40,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_41", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 41,"up" : 41,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_42", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 42,"up" : 42,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_43", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 43,"up" : 43,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_44", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 44,"up" : 44,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_45", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 45,"up" : 45,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_46", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 46,"up" : 46,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_47", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 47,"up" : 47,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_48", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 48,"up" : 48,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_49", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 49,"up" : 49,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_50", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 50,"up" : 50,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_51", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 51,"up" : 51,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_52", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 52,"up" : 52,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_53", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 53,"up" : 53,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_54", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 54,"up" : 54,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_55", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 55,"up" : 55,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_56", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 56,"up" : 56,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_57", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 57,"up" : 57,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_58", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 58,"up" : 58,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_59", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 59,"up" : 59,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_60", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 60,"up" : 60,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_61", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 61,"up" : 61,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_62", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 62,"up" : 62,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_63", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 63,"up" : 63,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V_64", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 64,"up" : 64,"step" : 2},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 330
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_mem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_mem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_mem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_mem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_BUSER sc_in sc_lv 1 signal 0 } 
	{ eps_in sc_in sc_lv 64 signal 1 } 
	{ graph_pred_weight_in sc_in sc_lv 64 signal 2 } 
	{ graph_pred_bias_in sc_in sc_lv 64 signal 3 } 
	{ node_embedding_table_in sc_in sc_lv 64 signal 4 } 
	{ edge_embedding_table_in sc_in sc_lv 64 signal 5 } 
	{ mlp_eps_V_address0 sc_out sc_lv 3 signal 6 } 
	{ mlp_eps_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ mlp_eps_V_we0 sc_out sc_logic 1 signal 6 } 
	{ mlp_eps_V_d0 sc_out sc_lv 32 signal 6 } 
	{ graph_pred_bias_V_0 sc_out sc_lv 32 signal 7 } 
	{ graph_pred_bias_V_0_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ graph_pred_weights_V_address0 sc_out sc_lv 9 signal 8 } 
	{ graph_pred_weights_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ graph_pred_weights_V_we0 sc_out sc_logic 1 signal 8 } 
	{ graph_pred_weights_V_d0 sc_out sc_lv 32 signal 8 } 
	{ node_embedding_table_V_address1 sc_out sc_lv 16 signal 9 } 
	{ node_embedding_table_V_ce1 sc_out sc_logic 1 signal 9 } 
	{ node_embedding_table_V_we1 sc_out sc_logic 1 signal 9 } 
	{ node_embedding_table_V_d1 sc_out sc_lv 32 signal 9 } 
	{ edge_embedding_table_V_0_address1 sc_out sc_lv 9 signal 10 } 
	{ edge_embedding_table_V_0_ce1 sc_out sc_logic 1 signal 10 } 
	{ edge_embedding_table_V_0_we1 sc_out sc_logic 1 signal 10 } 
	{ edge_embedding_table_V_0_d1 sc_out sc_lv 32 signal 10 } 
	{ edge_embedding_table_V_1_address1 sc_out sc_lv 9 signal 11 } 
	{ edge_embedding_table_V_1_ce1 sc_out sc_logic 1 signal 11 } 
	{ edge_embedding_table_V_1_we1 sc_out sc_logic 1 signal 11 } 
	{ edge_embedding_table_V_1_d1 sc_out sc_lv 32 signal 11 } 
	{ edge_embedding_table_V_2_address1 sc_out sc_lv 9 signal 12 } 
	{ edge_embedding_table_V_2_ce1 sc_out sc_logic 1 signal 12 } 
	{ edge_embedding_table_V_2_we1 sc_out sc_logic 1 signal 12 } 
	{ edge_embedding_table_V_2_d1 sc_out sc_lv 32 signal 12 } 
	{ edge_embedding_table_V_3_address1 sc_out sc_lv 9 signal 13 } 
	{ edge_embedding_table_V_3_ce1 sc_out sc_logic 1 signal 13 } 
	{ edge_embedding_table_V_3_we1 sc_out sc_logic 1 signal 13 } 
	{ edge_embedding_table_V_3_d1 sc_out sc_lv 32 signal 13 } 
	{ edge_embedding_table_V_4_address1 sc_out sc_lv 9 signal 14 } 
	{ edge_embedding_table_V_4_ce1 sc_out sc_logic 1 signal 14 } 
	{ edge_embedding_table_V_4_we1 sc_out sc_logic 1 signal 14 } 
	{ edge_embedding_table_V_4_d1 sc_out sc_lv 32 signal 14 } 
	{ edge_embedding_table_V_5_address1 sc_out sc_lv 9 signal 15 } 
	{ edge_embedding_table_V_5_ce1 sc_out sc_logic 1 signal 15 } 
	{ edge_embedding_table_V_5_we1 sc_out sc_logic 1 signal 15 } 
	{ edge_embedding_table_V_5_d1 sc_out sc_lv 32 signal 15 } 
	{ edge_embedding_table_V_6_address1 sc_out sc_lv 9 signal 16 } 
	{ edge_embedding_table_V_6_ce1 sc_out sc_logic 1 signal 16 } 
	{ edge_embedding_table_V_6_we1 sc_out sc_logic 1 signal 16 } 
	{ edge_embedding_table_V_6_d1 sc_out sc_lv 32 signal 16 } 
	{ edge_embedding_table_V_7_address1 sc_out sc_lv 9 signal 17 } 
	{ edge_embedding_table_V_7_ce1 sc_out sc_logic 1 signal 17 } 
	{ edge_embedding_table_V_7_we1 sc_out sc_logic 1 signal 17 } 
	{ edge_embedding_table_V_7_d1 sc_out sc_lv 32 signal 17 } 
	{ edge_embedding_table_V_8_address1 sc_out sc_lv 9 signal 18 } 
	{ edge_embedding_table_V_8_ce1 sc_out sc_logic 1 signal 18 } 
	{ edge_embedding_table_V_8_we1 sc_out sc_logic 1 signal 18 } 
	{ edge_embedding_table_V_8_d1 sc_out sc_lv 32 signal 18 } 
	{ edge_embedding_table_V_9_address1 sc_out sc_lv 9 signal 19 } 
	{ edge_embedding_table_V_9_ce1 sc_out sc_logic 1 signal 19 } 
	{ edge_embedding_table_V_9_we1 sc_out sc_logic 1 signal 19 } 
	{ edge_embedding_table_V_9_d1 sc_out sc_lv 32 signal 19 } 
	{ edge_embedding_table_V_10_address1 sc_out sc_lv 9 signal 20 } 
	{ edge_embedding_table_V_10_ce1 sc_out sc_logic 1 signal 20 } 
	{ edge_embedding_table_V_10_we1 sc_out sc_logic 1 signal 20 } 
	{ edge_embedding_table_V_10_d1 sc_out sc_lv 32 signal 20 } 
	{ edge_embedding_table_V_11_address1 sc_out sc_lv 9 signal 21 } 
	{ edge_embedding_table_V_11_ce1 sc_out sc_logic 1 signal 21 } 
	{ edge_embedding_table_V_11_we1 sc_out sc_logic 1 signal 21 } 
	{ edge_embedding_table_V_11_d1 sc_out sc_lv 32 signal 21 } 
	{ edge_embedding_table_V_12_address1 sc_out sc_lv 9 signal 22 } 
	{ edge_embedding_table_V_12_ce1 sc_out sc_logic 1 signal 22 } 
	{ edge_embedding_table_V_12_we1 sc_out sc_logic 1 signal 22 } 
	{ edge_embedding_table_V_12_d1 sc_out sc_lv 32 signal 22 } 
	{ edge_embedding_table_V_13_address1 sc_out sc_lv 9 signal 23 } 
	{ edge_embedding_table_V_13_ce1 sc_out sc_logic 1 signal 23 } 
	{ edge_embedding_table_V_13_we1 sc_out sc_logic 1 signal 23 } 
	{ edge_embedding_table_V_13_d1 sc_out sc_lv 32 signal 23 } 
	{ edge_embedding_table_V_14_address1 sc_out sc_lv 9 signal 24 } 
	{ edge_embedding_table_V_14_ce1 sc_out sc_logic 1 signal 24 } 
	{ edge_embedding_table_V_14_we1 sc_out sc_logic 1 signal 24 } 
	{ edge_embedding_table_V_14_d1 sc_out sc_lv 32 signal 24 } 
	{ edge_embedding_table_V_15_address1 sc_out sc_lv 9 signal 25 } 
	{ edge_embedding_table_V_15_ce1 sc_out sc_logic 1 signal 25 } 
	{ edge_embedding_table_V_15_we1 sc_out sc_logic 1 signal 25 } 
	{ edge_embedding_table_V_15_d1 sc_out sc_lv 32 signal 25 } 
	{ edge_embedding_table_V_16_address1 sc_out sc_lv 9 signal 26 } 
	{ edge_embedding_table_V_16_ce1 sc_out sc_logic 1 signal 26 } 
	{ edge_embedding_table_V_16_we1 sc_out sc_logic 1 signal 26 } 
	{ edge_embedding_table_V_16_d1 sc_out sc_lv 32 signal 26 } 
	{ edge_embedding_table_V_17_address1 sc_out sc_lv 9 signal 27 } 
	{ edge_embedding_table_V_17_ce1 sc_out sc_logic 1 signal 27 } 
	{ edge_embedding_table_V_17_we1 sc_out sc_logic 1 signal 27 } 
	{ edge_embedding_table_V_17_d1 sc_out sc_lv 32 signal 27 } 
	{ edge_embedding_table_V_18_address1 sc_out sc_lv 9 signal 28 } 
	{ edge_embedding_table_V_18_ce1 sc_out sc_logic 1 signal 28 } 
	{ edge_embedding_table_V_18_we1 sc_out sc_logic 1 signal 28 } 
	{ edge_embedding_table_V_18_d1 sc_out sc_lv 32 signal 28 } 
	{ edge_embedding_table_V_19_address1 sc_out sc_lv 9 signal 29 } 
	{ edge_embedding_table_V_19_ce1 sc_out sc_logic 1 signal 29 } 
	{ edge_embedding_table_V_19_we1 sc_out sc_logic 1 signal 29 } 
	{ edge_embedding_table_V_19_d1 sc_out sc_lv 32 signal 29 } 
	{ edge_embedding_table_V_20_address1 sc_out sc_lv 9 signal 30 } 
	{ edge_embedding_table_V_20_ce1 sc_out sc_logic 1 signal 30 } 
	{ edge_embedding_table_V_20_we1 sc_out sc_logic 1 signal 30 } 
	{ edge_embedding_table_V_20_d1 sc_out sc_lv 32 signal 30 } 
	{ edge_embedding_table_V_21_address1 sc_out sc_lv 9 signal 31 } 
	{ edge_embedding_table_V_21_ce1 sc_out sc_logic 1 signal 31 } 
	{ edge_embedding_table_V_21_we1 sc_out sc_logic 1 signal 31 } 
	{ edge_embedding_table_V_21_d1 sc_out sc_lv 32 signal 31 } 
	{ edge_embedding_table_V_22_address1 sc_out sc_lv 9 signal 32 } 
	{ edge_embedding_table_V_22_ce1 sc_out sc_logic 1 signal 32 } 
	{ edge_embedding_table_V_22_we1 sc_out sc_logic 1 signal 32 } 
	{ edge_embedding_table_V_22_d1 sc_out sc_lv 32 signal 32 } 
	{ edge_embedding_table_V_23_address1 sc_out sc_lv 9 signal 33 } 
	{ edge_embedding_table_V_23_ce1 sc_out sc_logic 1 signal 33 } 
	{ edge_embedding_table_V_23_we1 sc_out sc_logic 1 signal 33 } 
	{ edge_embedding_table_V_23_d1 sc_out sc_lv 32 signal 33 } 
	{ edge_embedding_table_V_24_address1 sc_out sc_lv 9 signal 34 } 
	{ edge_embedding_table_V_24_ce1 sc_out sc_logic 1 signal 34 } 
	{ edge_embedding_table_V_24_we1 sc_out sc_logic 1 signal 34 } 
	{ edge_embedding_table_V_24_d1 sc_out sc_lv 32 signal 34 } 
	{ edge_embedding_table_V_25_address1 sc_out sc_lv 9 signal 35 } 
	{ edge_embedding_table_V_25_ce1 sc_out sc_logic 1 signal 35 } 
	{ edge_embedding_table_V_25_we1 sc_out sc_logic 1 signal 35 } 
	{ edge_embedding_table_V_25_d1 sc_out sc_lv 32 signal 35 } 
	{ edge_embedding_table_V_26_address1 sc_out sc_lv 9 signal 36 } 
	{ edge_embedding_table_V_26_ce1 sc_out sc_logic 1 signal 36 } 
	{ edge_embedding_table_V_26_we1 sc_out sc_logic 1 signal 36 } 
	{ edge_embedding_table_V_26_d1 sc_out sc_lv 32 signal 36 } 
	{ edge_embedding_table_V_27_address1 sc_out sc_lv 9 signal 37 } 
	{ edge_embedding_table_V_27_ce1 sc_out sc_logic 1 signal 37 } 
	{ edge_embedding_table_V_27_we1 sc_out sc_logic 1 signal 37 } 
	{ edge_embedding_table_V_27_d1 sc_out sc_lv 32 signal 37 } 
	{ edge_embedding_table_V_28_address1 sc_out sc_lv 9 signal 38 } 
	{ edge_embedding_table_V_28_ce1 sc_out sc_logic 1 signal 38 } 
	{ edge_embedding_table_V_28_we1 sc_out sc_logic 1 signal 38 } 
	{ edge_embedding_table_V_28_d1 sc_out sc_lv 32 signal 38 } 
	{ edge_embedding_table_V_29_address1 sc_out sc_lv 9 signal 39 } 
	{ edge_embedding_table_V_29_ce1 sc_out sc_logic 1 signal 39 } 
	{ edge_embedding_table_V_29_we1 sc_out sc_logic 1 signal 39 } 
	{ edge_embedding_table_V_29_d1 sc_out sc_lv 32 signal 39 } 
	{ edge_embedding_table_V_30_address1 sc_out sc_lv 9 signal 40 } 
	{ edge_embedding_table_V_30_ce1 sc_out sc_logic 1 signal 40 } 
	{ edge_embedding_table_V_30_we1 sc_out sc_logic 1 signal 40 } 
	{ edge_embedding_table_V_30_d1 sc_out sc_lv 32 signal 40 } 
	{ edge_embedding_table_V_31_address1 sc_out sc_lv 9 signal 41 } 
	{ edge_embedding_table_V_31_ce1 sc_out sc_logic 1 signal 41 } 
	{ edge_embedding_table_V_31_we1 sc_out sc_logic 1 signal 41 } 
	{ edge_embedding_table_V_31_d1 sc_out sc_lv 32 signal 41 } 
	{ edge_embedding_table_V_32_address1 sc_out sc_lv 9 signal 42 } 
	{ edge_embedding_table_V_32_ce1 sc_out sc_logic 1 signal 42 } 
	{ edge_embedding_table_V_32_we1 sc_out sc_logic 1 signal 42 } 
	{ edge_embedding_table_V_32_d1 sc_out sc_lv 32 signal 42 } 
	{ edge_embedding_table_V_33_address1 sc_out sc_lv 9 signal 43 } 
	{ edge_embedding_table_V_33_ce1 sc_out sc_logic 1 signal 43 } 
	{ edge_embedding_table_V_33_we1 sc_out sc_logic 1 signal 43 } 
	{ edge_embedding_table_V_33_d1 sc_out sc_lv 32 signal 43 } 
	{ edge_embedding_table_V_34_address1 sc_out sc_lv 9 signal 44 } 
	{ edge_embedding_table_V_34_ce1 sc_out sc_logic 1 signal 44 } 
	{ edge_embedding_table_V_34_we1 sc_out sc_logic 1 signal 44 } 
	{ edge_embedding_table_V_34_d1 sc_out sc_lv 32 signal 44 } 
	{ edge_embedding_table_V_35_address1 sc_out sc_lv 9 signal 45 } 
	{ edge_embedding_table_V_35_ce1 sc_out sc_logic 1 signal 45 } 
	{ edge_embedding_table_V_35_we1 sc_out sc_logic 1 signal 45 } 
	{ edge_embedding_table_V_35_d1 sc_out sc_lv 32 signal 45 } 
	{ edge_embedding_table_V_36_address1 sc_out sc_lv 9 signal 46 } 
	{ edge_embedding_table_V_36_ce1 sc_out sc_logic 1 signal 46 } 
	{ edge_embedding_table_V_36_we1 sc_out sc_logic 1 signal 46 } 
	{ edge_embedding_table_V_36_d1 sc_out sc_lv 32 signal 46 } 
	{ edge_embedding_table_V_37_address1 sc_out sc_lv 9 signal 47 } 
	{ edge_embedding_table_V_37_ce1 sc_out sc_logic 1 signal 47 } 
	{ edge_embedding_table_V_37_we1 sc_out sc_logic 1 signal 47 } 
	{ edge_embedding_table_V_37_d1 sc_out sc_lv 32 signal 47 } 
	{ edge_embedding_table_V_38_address1 sc_out sc_lv 9 signal 48 } 
	{ edge_embedding_table_V_38_ce1 sc_out sc_logic 1 signal 48 } 
	{ edge_embedding_table_V_38_we1 sc_out sc_logic 1 signal 48 } 
	{ edge_embedding_table_V_38_d1 sc_out sc_lv 32 signal 48 } 
	{ edge_embedding_table_V_39_address1 sc_out sc_lv 9 signal 49 } 
	{ edge_embedding_table_V_39_ce1 sc_out sc_logic 1 signal 49 } 
	{ edge_embedding_table_V_39_we1 sc_out sc_logic 1 signal 49 } 
	{ edge_embedding_table_V_39_d1 sc_out sc_lv 32 signal 49 } 
	{ edge_embedding_table_V_40_address1 sc_out sc_lv 9 signal 50 } 
	{ edge_embedding_table_V_40_ce1 sc_out sc_logic 1 signal 50 } 
	{ edge_embedding_table_V_40_we1 sc_out sc_logic 1 signal 50 } 
	{ edge_embedding_table_V_40_d1 sc_out sc_lv 32 signal 50 } 
	{ edge_embedding_table_V_41_address1 sc_out sc_lv 9 signal 51 } 
	{ edge_embedding_table_V_41_ce1 sc_out sc_logic 1 signal 51 } 
	{ edge_embedding_table_V_41_we1 sc_out sc_logic 1 signal 51 } 
	{ edge_embedding_table_V_41_d1 sc_out sc_lv 32 signal 51 } 
	{ edge_embedding_table_V_42_address1 sc_out sc_lv 9 signal 52 } 
	{ edge_embedding_table_V_42_ce1 sc_out sc_logic 1 signal 52 } 
	{ edge_embedding_table_V_42_we1 sc_out sc_logic 1 signal 52 } 
	{ edge_embedding_table_V_42_d1 sc_out sc_lv 32 signal 52 } 
	{ edge_embedding_table_V_43_address1 sc_out sc_lv 9 signal 53 } 
	{ edge_embedding_table_V_43_ce1 sc_out sc_logic 1 signal 53 } 
	{ edge_embedding_table_V_43_we1 sc_out sc_logic 1 signal 53 } 
	{ edge_embedding_table_V_43_d1 sc_out sc_lv 32 signal 53 } 
	{ edge_embedding_table_V_44_address1 sc_out sc_lv 9 signal 54 } 
	{ edge_embedding_table_V_44_ce1 sc_out sc_logic 1 signal 54 } 
	{ edge_embedding_table_V_44_we1 sc_out sc_logic 1 signal 54 } 
	{ edge_embedding_table_V_44_d1 sc_out sc_lv 32 signal 54 } 
	{ edge_embedding_table_V_45_address1 sc_out sc_lv 9 signal 55 } 
	{ edge_embedding_table_V_45_ce1 sc_out sc_logic 1 signal 55 } 
	{ edge_embedding_table_V_45_we1 sc_out sc_logic 1 signal 55 } 
	{ edge_embedding_table_V_45_d1 sc_out sc_lv 32 signal 55 } 
	{ edge_embedding_table_V_46_address1 sc_out sc_lv 9 signal 56 } 
	{ edge_embedding_table_V_46_ce1 sc_out sc_logic 1 signal 56 } 
	{ edge_embedding_table_V_46_we1 sc_out sc_logic 1 signal 56 } 
	{ edge_embedding_table_V_46_d1 sc_out sc_lv 32 signal 56 } 
	{ edge_embedding_table_V_47_address1 sc_out sc_lv 9 signal 57 } 
	{ edge_embedding_table_V_47_ce1 sc_out sc_logic 1 signal 57 } 
	{ edge_embedding_table_V_47_we1 sc_out sc_logic 1 signal 57 } 
	{ edge_embedding_table_V_47_d1 sc_out sc_lv 32 signal 57 } 
	{ edge_embedding_table_V_48_address1 sc_out sc_lv 9 signal 58 } 
	{ edge_embedding_table_V_48_ce1 sc_out sc_logic 1 signal 58 } 
	{ edge_embedding_table_V_48_we1 sc_out sc_logic 1 signal 58 } 
	{ edge_embedding_table_V_48_d1 sc_out sc_lv 32 signal 58 } 
	{ edge_embedding_table_V_49_address1 sc_out sc_lv 9 signal 59 } 
	{ edge_embedding_table_V_49_ce1 sc_out sc_logic 1 signal 59 } 
	{ edge_embedding_table_V_49_we1 sc_out sc_logic 1 signal 59 } 
	{ edge_embedding_table_V_49_d1 sc_out sc_lv 32 signal 59 } 
	{ edge_embedding_table_V_50_address1 sc_out sc_lv 9 signal 60 } 
	{ edge_embedding_table_V_50_ce1 sc_out sc_logic 1 signal 60 } 
	{ edge_embedding_table_V_50_we1 sc_out sc_logic 1 signal 60 } 
	{ edge_embedding_table_V_50_d1 sc_out sc_lv 32 signal 60 } 
	{ edge_embedding_table_V_51_address1 sc_out sc_lv 9 signal 61 } 
	{ edge_embedding_table_V_51_ce1 sc_out sc_logic 1 signal 61 } 
	{ edge_embedding_table_V_51_we1 sc_out sc_logic 1 signal 61 } 
	{ edge_embedding_table_V_51_d1 sc_out sc_lv 32 signal 61 } 
	{ edge_embedding_table_V_52_address1 sc_out sc_lv 9 signal 62 } 
	{ edge_embedding_table_V_52_ce1 sc_out sc_logic 1 signal 62 } 
	{ edge_embedding_table_V_52_we1 sc_out sc_logic 1 signal 62 } 
	{ edge_embedding_table_V_52_d1 sc_out sc_lv 32 signal 62 } 
	{ edge_embedding_table_V_53_address1 sc_out sc_lv 9 signal 63 } 
	{ edge_embedding_table_V_53_ce1 sc_out sc_logic 1 signal 63 } 
	{ edge_embedding_table_V_53_we1 sc_out sc_logic 1 signal 63 } 
	{ edge_embedding_table_V_53_d1 sc_out sc_lv 32 signal 63 } 
	{ edge_embedding_table_V_54_address1 sc_out sc_lv 9 signal 64 } 
	{ edge_embedding_table_V_54_ce1 sc_out sc_logic 1 signal 64 } 
	{ edge_embedding_table_V_54_we1 sc_out sc_logic 1 signal 64 } 
	{ edge_embedding_table_V_54_d1 sc_out sc_lv 32 signal 64 } 
	{ edge_embedding_table_V_55_address1 sc_out sc_lv 9 signal 65 } 
	{ edge_embedding_table_V_55_ce1 sc_out sc_logic 1 signal 65 } 
	{ edge_embedding_table_V_55_we1 sc_out sc_logic 1 signal 65 } 
	{ edge_embedding_table_V_55_d1 sc_out sc_lv 32 signal 65 } 
	{ edge_embedding_table_V_56_address1 sc_out sc_lv 9 signal 66 } 
	{ edge_embedding_table_V_56_ce1 sc_out sc_logic 1 signal 66 } 
	{ edge_embedding_table_V_56_we1 sc_out sc_logic 1 signal 66 } 
	{ edge_embedding_table_V_56_d1 sc_out sc_lv 32 signal 66 } 
	{ edge_embedding_table_V_57_address1 sc_out sc_lv 9 signal 67 } 
	{ edge_embedding_table_V_57_ce1 sc_out sc_logic 1 signal 67 } 
	{ edge_embedding_table_V_57_we1 sc_out sc_logic 1 signal 67 } 
	{ edge_embedding_table_V_57_d1 sc_out sc_lv 32 signal 67 } 
	{ edge_embedding_table_V_58_address1 sc_out sc_lv 9 signal 68 } 
	{ edge_embedding_table_V_58_ce1 sc_out sc_logic 1 signal 68 } 
	{ edge_embedding_table_V_58_we1 sc_out sc_logic 1 signal 68 } 
	{ edge_embedding_table_V_58_d1 sc_out sc_lv 32 signal 68 } 
	{ edge_embedding_table_V_59_address1 sc_out sc_lv 9 signal 69 } 
	{ edge_embedding_table_V_59_ce1 sc_out sc_logic 1 signal 69 } 
	{ edge_embedding_table_V_59_we1 sc_out sc_logic 1 signal 69 } 
	{ edge_embedding_table_V_59_d1 sc_out sc_lv 32 signal 69 } 
	{ edge_embedding_table_V_60_address1 sc_out sc_lv 9 signal 70 } 
	{ edge_embedding_table_V_60_ce1 sc_out sc_logic 1 signal 70 } 
	{ edge_embedding_table_V_60_we1 sc_out sc_logic 1 signal 70 } 
	{ edge_embedding_table_V_60_d1 sc_out sc_lv 32 signal 70 } 
	{ edge_embedding_table_V_61_address1 sc_out sc_lv 9 signal 71 } 
	{ edge_embedding_table_V_61_ce1 sc_out sc_logic 1 signal 71 } 
	{ edge_embedding_table_V_61_we1 sc_out sc_logic 1 signal 71 } 
	{ edge_embedding_table_V_61_d1 sc_out sc_lv 32 signal 71 } 
	{ edge_embedding_table_V_62_address1 sc_out sc_lv 9 signal 72 } 
	{ edge_embedding_table_V_62_ce1 sc_out sc_logic 1 signal 72 } 
	{ edge_embedding_table_V_62_we1 sc_out sc_logic 1 signal 72 } 
	{ edge_embedding_table_V_62_d1 sc_out sc_lv 32 signal 72 } 
	{ edge_embedding_table_V_63_address1 sc_out sc_lv 9 signal 73 } 
	{ edge_embedding_table_V_63_ce1 sc_out sc_logic 1 signal 73 } 
	{ edge_embedding_table_V_63_we1 sc_out sc_logic 1 signal 73 } 
	{ edge_embedding_table_V_63_d1 sc_out sc_lv 32 signal 73 } 
	{ edge_embedding_table_V_64_address1 sc_out sc_lv 9 signal 74 } 
	{ edge_embedding_table_V_64_ce1 sc_out sc_logic 1 signal 74 } 
	{ edge_embedding_table_V_64_we1 sc_out sc_logic 1 signal 74 } 
	{ edge_embedding_table_V_64_d1 sc_out sc_lv 32 signal 74 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWID" }} , 
 	{ "name": "m_axi_mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_mem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_mem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_mem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_mem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_mem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_mem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_mem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_mem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_mem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WVALID" }} , 
 	{ "name": "m_axi_mem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WREADY" }} , 
 	{ "name": "m_axi_mem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "WDATA" }} , 
 	{ "name": "m_axi_mem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_mem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WLAST" }} , 
 	{ "name": "m_axi_mem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WID" }} , 
 	{ "name": "m_axi_mem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WUSER" }} , 
 	{ "name": "m_axi_mem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_mem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_mem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_mem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARID" }} , 
 	{ "name": "m_axi_mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_mem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_mem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_mem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_mem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_mem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_mem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_mem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_mem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_mem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RVALID" }} , 
 	{ "name": "m_axi_mem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RREADY" }} , 
 	{ "name": "m_axi_mem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "RDATA" }} , 
 	{ "name": "m_axi_mem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RLAST" }} , 
 	{ "name": "m_axi_mem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RID" }} , 
 	{ "name": "m_axi_mem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RUSER" }} , 
 	{ "name": "m_axi_mem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "RRESP" }} , 
 	{ "name": "m_axi_mem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BVALID" }} , 
 	{ "name": "m_axi_mem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BREADY" }} , 
 	{ "name": "m_axi_mem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "BRESP" }} , 
 	{ "name": "m_axi_mem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BID" }} , 
 	{ "name": "m_axi_mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BUSER" }} , 
 	{ "name": "eps_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "eps_in", "role": "default" }} , 
 	{ "name": "graph_pred_weight_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "graph_pred_weight_in", "role": "default" }} , 
 	{ "name": "graph_pred_bias_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "graph_pred_bias_in", "role": "default" }} , 
 	{ "name": "node_embedding_table_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "node_embedding_table_in", "role": "default" }} , 
 	{ "name": "edge_embedding_table_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "edge_embedding_table_in", "role": "default" }} , 
 	{ "name": "mlp_eps_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "address0" }} , 
 	{ "name": "mlp_eps_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "ce0" }} , 
 	{ "name": "mlp_eps_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "we0" }} , 
 	{ "name": "mlp_eps_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "d0" }} , 
 	{ "name": "graph_pred_bias_V_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "graph_pred_bias_V_0", "role": "default" }} , 
 	{ "name": "graph_pred_bias_V_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "graph_pred_bias_V_0", "role": "ap_vld" }} , 
 	{ "name": "graph_pred_weights_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "graph_pred_weights_V", "role": "address0" }} , 
 	{ "name": "graph_pred_weights_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "graph_pred_weights_V", "role": "ce0" }} , 
 	{ "name": "graph_pred_weights_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "graph_pred_weights_V", "role": "we0" }} , 
 	{ "name": "graph_pred_weights_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "graph_pred_weights_V", "role": "d0" }} , 
 	{ "name": "node_embedding_table_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "node_embedding_table_V", "role": "address1" }} , 
 	{ "name": "node_embedding_table_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_table_V", "role": "ce1" }} , 
 	{ "name": "node_embedding_table_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_table_V", "role": "we1" }} , 
 	{ "name": "node_embedding_table_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_table_V", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_0", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_0", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_0", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_0", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_1", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_1", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_1", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_1", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_2", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_2", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_2", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_2", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_3", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_3", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_3", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_3", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_4", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_4", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_4", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_4", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_5", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_5", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_5", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_5", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_6", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_6", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_6", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_6", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_7", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_7", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_7", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_7", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_8", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_8", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_8", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_8", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_9", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_9", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_9", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_9", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_10", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_10", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_10", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_10", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_11", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_11", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_11", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_11", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_12", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_12", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_12", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_12", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_13", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_13", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_13", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_13", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_14", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_14", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_14", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_14", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_15", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_15", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_15", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_15", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_16", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_16", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_16_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_16", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_16_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_16", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_17", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_17", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_17_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_17", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_17_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_17", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_18", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_18", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_18_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_18", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_18", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_19_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_19", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_19_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_19", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_19_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_19", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_19_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_19", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_20_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_20", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_20_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_20", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_20_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_20", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_20_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_20", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_21_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_21", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_21_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_21", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_21_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_21", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_21_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_21", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_22_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_22", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_22_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_22", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_22_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_22", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_22_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_22", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_23_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_23", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_23_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_23", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_23_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_23", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_23_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_23", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_24_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_24", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_24_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_24", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_24_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_24", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_24_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_24", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_25_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_25", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_25_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_25", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_25_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_25", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_25_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_25", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_26_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_26", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_26_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_26", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_26_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_26", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_26_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_26", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_27_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_27", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_27_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_27", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_27_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_27", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_27_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_27", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_28_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_28", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_28_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_28", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_28_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_28", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_28_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_28", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_29_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_29", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_29_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_29", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_29_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_29", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_29_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_29", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_30_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_30", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_30_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_30", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_30_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_30", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_30_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_30", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_31_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_31", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_31_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_31", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_31_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_31", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_31_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_31", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_32_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_32", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_32_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_32", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_32_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_32", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_32_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_32", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_33_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_33", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_33_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_33", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_33_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_33", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_33_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_33", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_34_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_34", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_34_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_34", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_34_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_34", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_34_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_34", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_35_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_35", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_35_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_35", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_35_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_35", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_35_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_35", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_36_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_36", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_36_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_36", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_36_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_36", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_36_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_36", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_37_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_37", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_37_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_37", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_37_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_37", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_37_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_37", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_38_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_38", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_38_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_38", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_38_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_38", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_38_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_38", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_39_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_39", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_39_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_39", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_39_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_39", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_39_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_39", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_40_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_40", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_40_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_40", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_40_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_40", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_40_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_40", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_41_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_41", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_41_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_41", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_41_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_41", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_41_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_41", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_42_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_42", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_42_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_42", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_42_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_42", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_42_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_42", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_43_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_43", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_43_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_43", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_43_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_43", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_43_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_43", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_44_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_44", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_44_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_44", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_44_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_44", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_44_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_44", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_45_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_45", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_45_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_45", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_45_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_45", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_45_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_45", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_46_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_46", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_46_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_46", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_46_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_46", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_46_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_46", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_47_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_47", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_47_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_47", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_47_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_47", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_47_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_47", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_48_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_48", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_48_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_48", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_48_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_48", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_48_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_48", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_49_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_49", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_49_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_49", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_49_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_49", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_49_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_49", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_50_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_50", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_50_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_50", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_50_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_50", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_50_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_50", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_51_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_51", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_51_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_51", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_51_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_51", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_51_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_51", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_52_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_52", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_52_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_52", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_52_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_52", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_52_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_52", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_53_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_53", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_53_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_53", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_53_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_53", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_53_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_53", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_54_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_54", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_54_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_54", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_54_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_54", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_54_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_54", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_55_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_55", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_55_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_55", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_55_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_55", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_55_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_55", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_56_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_56", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_56_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_56", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_56_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_56", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_56_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_56", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_57_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_57", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_57_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_57", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_57_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_57", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_57_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_57", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_58_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_58", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_58_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_58", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_58_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_58", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_58_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_58", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_59_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_59", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_59_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_59", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_59_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_59", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_59_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_59", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_60_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_60", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_60_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_60", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_60_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_60", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_60_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_60", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_61_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_61", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_61_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_61", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_61_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_61", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_61_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_61", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_62_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_62", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_62_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_62", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_62_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_62", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_62_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_62", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_63_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_63", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_63_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_63", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_63_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_63", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_63_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_63", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_64_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "edge_embedding_table_V_64", "role": "address1" }} , 
 	{ "name": "edge_embedding_table_V_64_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_64", "role": "ce1" }} , 
 	{ "name": "edge_embedding_table_V_64_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V_64", "role": "we1" }} , 
 	{ "name": "edge_embedding_table_V_64_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V_64", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "load_misc_weights",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "71743", "EstimateLatencyMax" : "71743",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "mem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "eps_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "graph_pred_weight_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "graph_pred_bias_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "node_embedding_table_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_embedding_table_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_eps_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "graph_pred_bias_V_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "graph_pred_weights_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_table_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_47", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_48", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_49", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_50", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_51", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_52", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_53", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_54", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_55", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_56", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_57", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_58", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_59", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_60", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_61", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_62", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_63", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_embedding_table_V_64", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_10ns_9ns_16_4_1_U1514", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_misc_weights {
		mem {Type I LastRead 33 FirstWrite -1}
		eps_in {Type I LastRead 0 FirstWrite -1}
		graph_pred_weight_in {Type I LastRead 6 FirstWrite -1}
		graph_pred_bias_in {Type I LastRead 6 FirstWrite -1}
		node_embedding_table_in {Type I LastRead 6 FirstWrite -1}
		edge_embedding_table_in {Type I LastRead 6 FirstWrite -1}
		mlp_eps_V {Type O LastRead -1 FirstWrite 9}
		graph_pred_bias_V_0 {Type O LastRead -1 FirstWrite 15}
		graph_pred_weights_V {Type O LastRead -1 FirstWrite 18}
		node_embedding_table_V {Type O LastRead -1 FirstWrite 27}
		edge_embedding_table_V_0 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_1 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_2 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_3 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_4 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_5 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_6 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_7 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_8 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_9 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_10 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_11 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_12 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_13 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_14 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_15 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_16 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_17 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_18 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_19 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_20 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_21 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_22 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_23 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_24 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_25 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_26 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_27 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_28 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_29 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_30 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_31 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_32 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_33 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_34 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_35 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_36 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_37 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_38 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_39 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_40 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_41 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_42 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_43 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_44 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_45 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_46 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_47 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_48 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_49 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_50 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_51 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_52 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_53 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_54 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_55 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_56 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_57 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_58 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_59 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_60 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_61 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_62 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_63 {Type O LastRead -1 FirstWrite 34}
		edge_embedding_table_V_64 {Type O LastRead -1 FirstWrite 34}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "71743", "Max" : "71743"}
	, {"Name" : "Interval", "Min" : "71743", "Max" : "71743"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
]}

set Spec2ImplPortList { 
	mem { m_axi {  { m_axi_mem_AWVALID VALID 1 1 }  { m_axi_mem_AWREADY READY 0 1 }  { m_axi_mem_AWADDR ADDR 1 64 }  { m_axi_mem_AWID ID 1 1 }  { m_axi_mem_AWLEN LEN 1 32 }  { m_axi_mem_AWSIZE SIZE 1 3 }  { m_axi_mem_AWBURST BURST 1 2 }  { m_axi_mem_AWLOCK LOCK 1 2 }  { m_axi_mem_AWCACHE CACHE 1 4 }  { m_axi_mem_AWPROT PROT 1 3 }  { m_axi_mem_AWQOS QOS 1 4 }  { m_axi_mem_AWREGION REGION 1 4 }  { m_axi_mem_AWUSER USER 1 1 }  { m_axi_mem_WVALID VALID 1 1 }  { m_axi_mem_WREADY READY 0 1 }  { m_axi_mem_WDATA DATA 1 32 }  { m_axi_mem_WSTRB STRB 1 4 }  { m_axi_mem_WLAST LAST 1 1 }  { m_axi_mem_WID ID 1 1 }  { m_axi_mem_WUSER USER 1 1 }  { m_axi_mem_ARVALID VALID 1 1 }  { m_axi_mem_ARREADY READY 0 1 }  { m_axi_mem_ARADDR ADDR 1 64 }  { m_axi_mem_ARID ID 1 1 }  { m_axi_mem_ARLEN LEN 1 32 }  { m_axi_mem_ARSIZE SIZE 1 3 }  { m_axi_mem_ARBURST BURST 1 2 }  { m_axi_mem_ARLOCK LOCK 1 2 }  { m_axi_mem_ARCACHE CACHE 1 4 }  { m_axi_mem_ARPROT PROT 1 3 }  { m_axi_mem_ARQOS QOS 1 4 }  { m_axi_mem_ARREGION REGION 1 4 }  { m_axi_mem_ARUSER USER 1 1 }  { m_axi_mem_RVALID VALID 0 1 }  { m_axi_mem_RREADY READY 1 1 }  { m_axi_mem_RDATA DATA 0 32 }  { m_axi_mem_RLAST LAST 0 1 }  { m_axi_mem_RID ID 0 1 }  { m_axi_mem_RUSER USER 0 1 }  { m_axi_mem_RRESP RESP 0 2 }  { m_axi_mem_BVALID VALID 0 1 }  { m_axi_mem_BREADY READY 1 1 }  { m_axi_mem_BRESP RESP 0 2 }  { m_axi_mem_BID ID 0 1 }  { m_axi_mem_BUSER USER 0 1 } } }
	eps_in { ap_none {  { eps_in in_data 0 64 } } }
	graph_pred_weight_in { ap_none {  { graph_pred_weight_in in_data 0 64 } } }
	graph_pred_bias_in { ap_none {  { graph_pred_bias_in in_data 0 64 } } }
	node_embedding_table_in { ap_none {  { node_embedding_table_in in_data 0 64 } } }
	edge_embedding_table_in { ap_none {  { edge_embedding_table_in in_data 0 64 } } }
	mlp_eps_V { ap_memory {  { mlp_eps_V_address0 mem_address 1 3 }  { mlp_eps_V_ce0 mem_ce 1 1 }  { mlp_eps_V_we0 mem_we 1 1 }  { mlp_eps_V_d0 mem_din 1 32 } } }
	graph_pred_bias_V_0 { ap_vld {  { graph_pred_bias_V_0 out_data 1 32 }  { graph_pred_bias_V_0_ap_vld out_vld 1 1 } } }
	graph_pred_weights_V { ap_memory {  { graph_pred_weights_V_address0 mem_address 1 9 }  { graph_pred_weights_V_ce0 mem_ce 1 1 }  { graph_pred_weights_V_we0 mem_we 1 1 }  { graph_pred_weights_V_d0 mem_din 1 32 } } }
	node_embedding_table_V { ap_memory {  { node_embedding_table_V_address1 MemPortADDR2 1 16 }  { node_embedding_table_V_ce1 MemPortCE2 1 1 }  { node_embedding_table_V_we1 MemPortWE2 1 1 }  { node_embedding_table_V_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_0 { ap_memory {  { edge_embedding_table_V_0_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_0_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_0_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_0_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_1 { ap_memory {  { edge_embedding_table_V_1_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_1_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_1_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_1_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_2 { ap_memory {  { edge_embedding_table_V_2_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_2_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_2_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_2_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_3 { ap_memory {  { edge_embedding_table_V_3_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_3_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_3_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_3_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_4 { ap_memory {  { edge_embedding_table_V_4_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_4_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_4_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_4_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_5 { ap_memory {  { edge_embedding_table_V_5_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_5_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_5_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_5_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_6 { ap_memory {  { edge_embedding_table_V_6_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_6_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_6_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_6_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_7 { ap_memory {  { edge_embedding_table_V_7_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_7_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_7_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_7_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_8 { ap_memory {  { edge_embedding_table_V_8_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_8_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_8_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_8_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_9 { ap_memory {  { edge_embedding_table_V_9_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_9_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_9_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_9_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_10 { ap_memory {  { edge_embedding_table_V_10_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_10_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_10_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_10_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_11 { ap_memory {  { edge_embedding_table_V_11_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_11_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_11_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_11_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_12 { ap_memory {  { edge_embedding_table_V_12_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_12_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_12_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_12_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_13 { ap_memory {  { edge_embedding_table_V_13_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_13_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_13_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_13_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_14 { ap_memory {  { edge_embedding_table_V_14_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_14_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_14_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_14_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_15 { ap_memory {  { edge_embedding_table_V_15_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_15_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_15_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_15_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_16 { ap_memory {  { edge_embedding_table_V_16_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_16_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_16_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_16_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_17 { ap_memory {  { edge_embedding_table_V_17_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_17_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_17_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_17_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_18 { ap_memory {  { edge_embedding_table_V_18_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_18_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_18_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_18_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_19 { ap_memory {  { edge_embedding_table_V_19_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_19_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_19_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_19_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_20 { ap_memory {  { edge_embedding_table_V_20_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_20_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_20_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_20_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_21 { ap_memory {  { edge_embedding_table_V_21_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_21_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_21_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_21_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_22 { ap_memory {  { edge_embedding_table_V_22_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_22_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_22_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_22_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_23 { ap_memory {  { edge_embedding_table_V_23_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_23_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_23_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_23_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_24 { ap_memory {  { edge_embedding_table_V_24_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_24_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_24_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_24_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_25 { ap_memory {  { edge_embedding_table_V_25_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_25_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_25_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_25_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_26 { ap_memory {  { edge_embedding_table_V_26_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_26_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_26_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_26_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_27 { ap_memory {  { edge_embedding_table_V_27_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_27_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_27_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_27_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_28 { ap_memory {  { edge_embedding_table_V_28_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_28_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_28_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_28_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_29 { ap_memory {  { edge_embedding_table_V_29_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_29_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_29_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_29_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_30 { ap_memory {  { edge_embedding_table_V_30_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_30_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_30_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_30_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_31 { ap_memory {  { edge_embedding_table_V_31_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_31_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_31_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_31_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_32 { ap_memory {  { edge_embedding_table_V_32_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_32_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_32_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_32_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_33 { ap_memory {  { edge_embedding_table_V_33_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_33_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_33_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_33_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_34 { ap_memory {  { edge_embedding_table_V_34_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_34_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_34_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_34_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_35 { ap_memory {  { edge_embedding_table_V_35_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_35_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_35_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_35_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_36 { ap_memory {  { edge_embedding_table_V_36_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_36_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_36_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_36_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_37 { ap_memory {  { edge_embedding_table_V_37_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_37_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_37_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_37_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_38 { ap_memory {  { edge_embedding_table_V_38_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_38_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_38_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_38_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_39 { ap_memory {  { edge_embedding_table_V_39_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_39_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_39_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_39_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_40 { ap_memory {  { edge_embedding_table_V_40_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_40_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_40_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_40_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_41 { ap_memory {  { edge_embedding_table_V_41_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_41_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_41_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_41_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_42 { ap_memory {  { edge_embedding_table_V_42_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_42_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_42_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_42_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_43 { ap_memory {  { edge_embedding_table_V_43_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_43_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_43_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_43_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_44 { ap_memory {  { edge_embedding_table_V_44_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_44_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_44_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_44_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_45 { ap_memory {  { edge_embedding_table_V_45_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_45_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_45_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_45_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_46 { ap_memory {  { edge_embedding_table_V_46_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_46_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_46_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_46_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_47 { ap_memory {  { edge_embedding_table_V_47_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_47_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_47_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_47_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_48 { ap_memory {  { edge_embedding_table_V_48_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_48_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_48_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_48_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_49 { ap_memory {  { edge_embedding_table_V_49_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_49_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_49_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_49_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_50 { ap_memory {  { edge_embedding_table_V_50_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_50_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_50_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_50_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_51 { ap_memory {  { edge_embedding_table_V_51_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_51_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_51_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_51_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_52 { ap_memory {  { edge_embedding_table_V_52_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_52_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_52_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_52_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_53 { ap_memory {  { edge_embedding_table_V_53_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_53_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_53_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_53_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_54 { ap_memory {  { edge_embedding_table_V_54_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_54_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_54_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_54_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_55 { ap_memory {  { edge_embedding_table_V_55_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_55_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_55_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_55_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_56 { ap_memory {  { edge_embedding_table_V_56_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_56_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_56_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_56_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_57 { ap_memory {  { edge_embedding_table_V_57_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_57_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_57_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_57_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_58 { ap_memory {  { edge_embedding_table_V_58_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_58_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_58_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_58_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_59 { ap_memory {  { edge_embedding_table_V_59_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_59_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_59_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_59_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_60 { ap_memory {  { edge_embedding_table_V_60_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_60_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_60_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_60_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_61 { ap_memory {  { edge_embedding_table_V_61_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_61_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_61_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_61_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_62 { ap_memory {  { edge_embedding_table_V_62_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_62_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_62_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_62_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_63 { ap_memory {  { edge_embedding_table_V_63_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_63_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_63_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_63_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V_64 { ap_memory {  { edge_embedding_table_V_64_address1 MemPortADDR2 1 9 }  { edge_embedding_table_V_64_ce1 MemPortCE2 1 1 }  { edge_embedding_table_V_64_we1 MemPortWE2 1 1 }  { edge_embedding_table_V_64_d1 MemPortDIN2 1 32 } } }
}
