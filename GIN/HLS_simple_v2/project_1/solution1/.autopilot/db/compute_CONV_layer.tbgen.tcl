set moduleName compute_CONV_layer
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
set C_modelName {compute_CONV_layer}
set C_modelType { void 0 }
set C_modelArgList {
	{ mem int 32 regular {axi_master 0}  }
	{ num_of_nodes int 32 regular  }
	{ num_of_edges int 32 regular  }
	{ layer int 3 regular  }
	{ gnn_node_mlp_1_weights_fixed int 64 regular  }
	{ gnn_node_mlp_1_bias_fixed int 64 regular  }
	{ gnn_node_mlp_2_weights_fixed int 64 regular  }
	{ gnn_node_mlp_2_bias_fixed int 64 regular  }
	{ edge_embedding_table_V int 32 regular {array 19500 { 1 3 } 1 1 } {global 0}  }
	{ edge_attr int 32 regular {array 6000 { 1 3 } 1 1 } {global 0}  }
	{ edge_list int 32 regular {array 4000 { 1 1 } 1 1 } {global 0}  }
	{ node_embedding_V int 32 regular {array 300000 { 1 0 } 1 1 } {global 2}  }
	{ mlp_eps_V int 32 regular {array 5 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_of_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_of_edges", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "layer", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "gnn_node_mlp_1_weights_fixed", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gnn_node_mlp_1_bias_fixed", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gnn_node_mlp_2_weights_fixed", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gnn_node_mlp_2_bias_fixed", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "edge_embedding_table_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 64,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_attr", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_attr","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 5999,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_list","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3999,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_eps_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_eps.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 4,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 80
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
	{ num_of_nodes sc_in sc_lv 32 signal 1 } 
	{ num_of_edges sc_in sc_lv 32 signal 2 } 
	{ layer sc_in sc_lv 3 signal 3 } 
	{ gnn_node_mlp_1_weights_fixed sc_in sc_lv 64 signal 4 } 
	{ gnn_node_mlp_1_bias_fixed sc_in sc_lv 64 signal 5 } 
	{ gnn_node_mlp_2_weights_fixed sc_in sc_lv 64 signal 6 } 
	{ gnn_node_mlp_2_bias_fixed sc_in sc_lv 64 signal 7 } 
	{ edge_embedding_table_V_address0 sc_out sc_lv 15 signal 8 } 
	{ edge_embedding_table_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ edge_embedding_table_V_q0 sc_in sc_lv 32 signal 8 } 
	{ edge_attr_address0 sc_out sc_lv 13 signal 9 } 
	{ edge_attr_ce0 sc_out sc_logic 1 signal 9 } 
	{ edge_attr_q0 sc_in sc_lv 32 signal 9 } 
	{ edge_list_address0 sc_out sc_lv 12 signal 10 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 10 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 10 } 
	{ edge_list_address1 sc_out sc_lv 12 signal 10 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 10 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 10 } 
	{ node_embedding_V_address0 sc_out sc_lv 19 signal 11 } 
	{ node_embedding_V_ce0 sc_out sc_logic 1 signal 11 } 
	{ node_embedding_V_q0 sc_in sc_lv 32 signal 11 } 
	{ node_embedding_V_address1 sc_out sc_lv 19 signal 11 } 
	{ node_embedding_V_ce1 sc_out sc_logic 1 signal 11 } 
	{ node_embedding_V_we1 sc_out sc_logic 1 signal 11 } 
	{ node_embedding_V_d1 sc_out sc_lv 32 signal 11 } 
	{ mlp_eps_V_address0 sc_out sc_lv 3 signal 12 } 
	{ mlp_eps_V_ce0 sc_out sc_logic 1 signal 12 } 
	{ mlp_eps_V_q0 sc_in sc_lv 32 signal 12 } 
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
 	{ "name": "num_of_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_of_nodes", "role": "default" }} , 
 	{ "name": "num_of_edges", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_of_edges", "role": "default" }} , 
 	{ "name": "layer", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer", "role": "default" }} , 
 	{ "name": "gnn_node_mlp_1_weights_fixed", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gnn_node_mlp_1_weights_fixed", "role": "default" }} , 
 	{ "name": "gnn_node_mlp_1_bias_fixed", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gnn_node_mlp_1_bias_fixed", "role": "default" }} , 
 	{ "name": "gnn_node_mlp_2_weights_fixed", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gnn_node_mlp_2_weights_fixed", "role": "default" }} , 
 	{ "name": "gnn_node_mlp_2_bias_fixed", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gnn_node_mlp_2_bias_fixed", "role": "default" }} , 
 	{ "name": "edge_embedding_table_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "address0" }} , 
 	{ "name": "edge_embedding_table_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "ce0" }} , 
 	{ "name": "edge_embedding_table_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "q0" }} , 
 	{ "name": "edge_attr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "edge_attr", "role": "address0" }} , 
 	{ "name": "edge_attr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_attr", "role": "ce0" }} , 
 	{ "name": "edge_attr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_attr", "role": "q0" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "node_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "address0" }} , 
 	{ "name": "node_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "q0" }} , 
 	{ "name": "node_embedding_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "address1" }} , 
 	{ "name": "node_embedding_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "we1" }} , 
 	{ "name": "node_embedding_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "d1" }} , 
 	{ "name": "mlp_eps_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "address0" }} , 
 	{ "name": "mlp_eps_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "ce0" }} , 
 	{ "name": "mlp_eps_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "250", "254", "259"],
		"CDFG" : "compute_CONV_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "250", "SubInstance" : "grp_load_mlp_weights_one_layer_fu_133", "Port" : "mem"}]},
			{"Name" : "num_of_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_of_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_1_weights_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_1_bias_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_2_weights_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_2_bias_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_embedding_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_compute_edge_embedding_fu_157", "Port" : "edge_embedding_V"},
					{"ID" : "259", "SubInstance" : "grp_message_passing_fu_173", "Port" : "edge_embedding_V"}]},
			{"Name" : "ed_feature_table_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_compute_edge_embedding_fu_157", "Port" : "ed_feature_table_1"}]},
			{"Name" : "edge_embedding_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_compute_edge_embedding_fu_157", "Port" : "edge_embedding_table_V"}]},
			{"Name" : "edge_attr", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "254", "SubInstance" : "grp_compute_edge_embedding_fu_157", "Port" : "edge_attr"}]},
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_MLP_fu_112", "Port" : "message_V"},
					{"ID" : "259", "SubInstance" : "grp_message_passing_fu_173", "Port" : "message_V"}]},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "259", "SubInstance" : "grp_message_passing_fu_173", "Port" : "edge_list"}]},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_MLP_fu_112", "Port" : "node_embedding_V"},
					{"ID" : "259", "SubInstance" : "grp_message_passing_fu_173", "Port" : "node_embedding_V"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_MLP_fu_112", "Port" : "mlp_1_bias_V"},
					{"ID" : "250", "SubInstance" : "grp_load_mlp_weights_one_layer_fu_133", "Port" : "mlp_1_bias_V"}]},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_MLP_fu_112", "Port" : "mlp_1_weights_V"},
					{"ID" : "250", "SubInstance" : "grp_load_mlp_weights_one_layer_fu_133", "Port" : "mlp_1_weights_V"}]},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_MLP_fu_112", "Port" : "mlp_2_bias_V"},
					{"ID" : "250", "SubInstance" : "grp_load_mlp_weights_one_layer_fu_133", "Port" : "mlp_2_bias_V"}]},
			{"Name" : "mlp_2_weights_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_MLP_fu_112", "Port" : "mlp_2_weights_V"},
					{"ID" : "250", "SubInstance" : "grp_load_mlp_weights_one_layer_fu_133", "Port" : "mlp_2_weights_V"}]},
			{"Name" : "mlp_eps_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_MLP_fu_112", "Port" : "mlp_eps_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.edge_embedding_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.message_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_bias_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_1_weights_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_bias_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_2_weights_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "159", "246", "247", "248", "249"],
		"CDFG" : "MLP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "num_of_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_eps_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "grp_MLP_batch_nodes_300_600_s_fu_926", "Port" : "mlp_1_weights_V"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "grp_MLP_batch_nodes_300_600_s_fu_926", "Port" : "mlp_1_bias_V"}]},
			{"Name" : "mlp_2_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_MLP_batch_nodes_600_300_s_fu_883", "Port" : "mlp_2_weights_V"}]},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_MLP_batch_nodes_600_300_s_fu_883", "Port" : "mlp_2_bias_V"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_1_V_0_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_1_V_1_U", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_1_V_2_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_1_V_3_U", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_1_V_4_U", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_1_V_5_U", "Parent" : "7"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_1_V_6_U", "Parent" : "7"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_1_V_7_U", "Parent" : "7"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_1_V_8_U", "Parent" : "7"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_1_V_9_U", "Parent" : "7"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_1_V_10_U", "Parent" : "7"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_1_V_11_U", "Parent" : "7"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_1_V_12_U", "Parent" : "7"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_1_V_13_U", "Parent" : "7"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_1_V_14_U", "Parent" : "7"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_1_V_15_U", "Parent" : "7"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_2_V_0_U", "Parent" : "7"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_2_V_1_U", "Parent" : "7"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_2_V_2_U", "Parent" : "7"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_2_V_3_U", "Parent" : "7"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_2_V_4_U", "Parent" : "7"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_2_V_5_U", "Parent" : "7"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_2_V_6_U", "Parent" : "7"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_2_V_7_U", "Parent" : "7"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_2_V_8_U", "Parent" : "7"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_2_V_9_U", "Parent" : "7"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_2_V_10_U", "Parent" : "7"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_2_V_11_U", "Parent" : "7"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_2_V_12_U", "Parent" : "7"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_2_V_13_U", "Parent" : "7"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_2_V_14_U", "Parent" : "7"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_2_V_15_U", "Parent" : "7"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_3_0_U", "Parent" : "7"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_3_1_U", "Parent" : "7"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_3_2_U", "Parent" : "7"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_3_3_U", "Parent" : "7"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_3_4_U", "Parent" : "7"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_3_5_U", "Parent" : "7"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_3_6_U", "Parent" : "7"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_3_7_U", "Parent" : "7"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_3_8_U", "Parent" : "7"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_3_9_U", "Parent" : "7"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_3_10_U", "Parent" : "7"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_3_11_U", "Parent" : "7"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_3_12_U", "Parent" : "7"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_3_13_U", "Parent" : "7"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_3_14_U", "Parent" : "7"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mlp_buf_3_15_U", "Parent" : "7"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883", "Parent" : "7", "Child" : ["57", "58", "60", "61", "63", "65", "67", "69", "71", "73", "75", "77", "79", "81", "83", "85", "87", "89", "91", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158"],
		"CDFG" : "MLP_batch_nodes_600_300_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "622", "EstimateLatencyMax" : "622",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "57", "Name" : "MLP_batch_nodes_600_300_entry162_U0"},
			{"ID" : "58", "Name" : "load_mlp_weight_vector_600_300_U0"},
			{"ID" : "60", "Name" : "MLP_batch_nodes_600_300_Block_split13_proc_U0"},
			{"ID" : "61", "Name" : "MLP_PE_600_300_58_U0"},
			{"ID" : "63", "Name" : "MLP_PE_600_300_59_U0"},
			{"ID" : "65", "Name" : "MLP_PE_600_300_60_U0"},
			{"ID" : "67", "Name" : "MLP_PE_600_300_61_U0"},
			{"ID" : "69", "Name" : "MLP_PE_600_300_62_U0"},
			{"ID" : "71", "Name" : "MLP_PE_600_300_63_U0"},
			{"ID" : "73", "Name" : "MLP_PE_600_300_64_U0"},
			{"ID" : "75", "Name" : "MLP_PE_600_300_65_U0"},
			{"ID" : "77", "Name" : "MLP_PE_600_300_66_U0"},
			{"ID" : "79", "Name" : "MLP_PE_600_300_67_U0"},
			{"ID" : "81", "Name" : "MLP_PE_600_300_68_U0"},
			{"ID" : "83", "Name" : "MLP_PE_600_300_69_U0"},
			{"ID" : "85", "Name" : "MLP_PE_600_300_70_U0"},
			{"ID" : "87", "Name" : "MLP_PE_600_300_71_U0"},
			{"ID" : "89", "Name" : "MLP_PE_600_300_72_U0"},
			{"ID" : "91", "Name" : "MLP_PE_600_300_73_U0"}],
		"OutputProcess" : [
			{"ID" : "61", "Name" : "MLP_PE_600_300_58_U0"},
			{"ID" : "63", "Name" : "MLP_PE_600_300_59_U0"},
			{"ID" : "65", "Name" : "MLP_PE_600_300_60_U0"},
			{"ID" : "67", "Name" : "MLP_PE_600_300_61_U0"},
			{"ID" : "69", "Name" : "MLP_PE_600_300_62_U0"},
			{"ID" : "71", "Name" : "MLP_PE_600_300_63_U0"},
			{"ID" : "73", "Name" : "MLP_PE_600_300_64_U0"},
			{"ID" : "75", "Name" : "MLP_PE_600_300_65_U0"},
			{"ID" : "77", "Name" : "MLP_PE_600_300_66_U0"},
			{"ID" : "79", "Name" : "MLP_PE_600_300_67_U0"},
			{"ID" : "81", "Name" : "MLP_PE_600_300_68_U0"},
			{"ID" : "83", "Name" : "MLP_PE_600_300_69_U0"},
			{"ID" : "85", "Name" : "MLP_PE_600_300_70_U0"},
			{"ID" : "87", "Name" : "MLP_PE_600_300_71_U0"},
			{"ID" : "89", "Name" : "MLP_PE_600_300_72_U0"},
			{"ID" : "91", "Name" : "MLP_PE_600_300_73_U0"}],
		"Port" : [
			{"Name" : "mlp_in_local", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "MLP_PE_600_300_58_U0", "Port" : "mlp_in_local"}]},
			{"Name" : "mlp_in_local1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "MLP_PE_600_300_59_U0", "Port" : "mlp_in_local1"}]},
			{"Name" : "mlp_in_local2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "MLP_PE_600_300_60_U0", "Port" : "mlp_in_local2"}]},
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "MLP_PE_600_300_61_U0", "Port" : "mlp_in_local3"}]},
			{"Name" : "mlp_in_local4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "MLP_PE_600_300_62_U0", "Port" : "mlp_in_local4"}]},
			{"Name" : "mlp_in_local5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "MLP_PE_600_300_63_U0", "Port" : "mlp_in_local5"}]},
			{"Name" : "mlp_in_local6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "MLP_PE_600_300_64_U0", "Port" : "mlp_in_local6"}]},
			{"Name" : "mlp_in_local7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "MLP_PE_600_300_65_U0", "Port" : "mlp_in_local7"}]},
			{"Name" : "mlp_in_local8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "MLP_PE_600_300_66_U0", "Port" : "mlp_in_local8"}]},
			{"Name" : "mlp_in_local9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "MLP_PE_600_300_67_U0", "Port" : "mlp_in_local9"}]},
			{"Name" : "mlp_in_local10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "MLP_PE_600_300_68_U0", "Port" : "mlp_in_local10"}]},
			{"Name" : "mlp_in_local11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "MLP_PE_600_300_69_U0", "Port" : "mlp_in_local11"}]},
			{"Name" : "mlp_in_local12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "MLP_PE_600_300_70_U0", "Port" : "mlp_in_local12"}]},
			{"Name" : "mlp_in_local13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "MLP_PE_600_300_71_U0", "Port" : "mlp_in_local13"}]},
			{"Name" : "mlp_in_local14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "MLP_PE_600_300_72_U0", "Port" : "mlp_in_local14"}]},
			{"Name" : "mlp_in_local15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "MLP_PE_600_300_73_U0", "Port" : "mlp_in_local15"}]},
			{"Name" : "mlp_out_local", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "MLP_PE_600_300_58_U0", "Port" : "mlp_out_local"}]},
			{"Name" : "mlp_out_local16", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "MLP_PE_600_300_59_U0", "Port" : "mlp_out_local16"}]},
			{"Name" : "mlp_out_local17", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "MLP_PE_600_300_60_U0", "Port" : "mlp_out_local17"}]},
			{"Name" : "mlp_out_local18", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "MLP_PE_600_300_61_U0", "Port" : "mlp_out_local18"}]},
			{"Name" : "mlp_out_local19", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "MLP_PE_600_300_62_U0", "Port" : "mlp_out_local19"}]},
			{"Name" : "mlp_out_local20", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "MLP_PE_600_300_63_U0", "Port" : "mlp_out_local20"}]},
			{"Name" : "mlp_out_local21", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "MLP_PE_600_300_64_U0", "Port" : "mlp_out_local21"}]},
			{"Name" : "mlp_out_local22", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "75", "SubInstance" : "MLP_PE_600_300_65_U0", "Port" : "mlp_out_local22"}]},
			{"Name" : "mlp_out_local23", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "MLP_PE_600_300_66_U0", "Port" : "mlp_out_local23"}]},
			{"Name" : "mlp_out_local24", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "MLP_PE_600_300_67_U0", "Port" : "mlp_out_local24"}]},
			{"Name" : "mlp_out_local25", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "81", "SubInstance" : "MLP_PE_600_300_68_U0", "Port" : "mlp_out_local25"}]},
			{"Name" : "mlp_out_local26", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "MLP_PE_600_300_69_U0", "Port" : "mlp_out_local26"}]},
			{"Name" : "mlp_out_local27", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "MLP_PE_600_300_70_U0", "Port" : "mlp_out_local27"}]},
			{"Name" : "mlp_out_local28", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "MLP_PE_600_300_71_U0", "Port" : "mlp_out_local28"}]},
			{"Name" : "mlp_out_local29", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "MLP_PE_600_300_72_U0", "Port" : "mlp_out_local29"}]},
			{"Name" : "mlp_out_local30", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "91", "SubInstance" : "MLP_PE_600_300_73_U0", "Port" : "mlp_out_local30"}]},
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_relu", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_2_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "load_mlp_weight_vector_600_300_U0", "Port" : "mlp_2_weights_V"}]},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "MLP_batch_nodes_600_300_Block_split13_proc_U0", "Port" : "mlp_2_bias_V"}]}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_batch_nodes_600_300_entry162_U0", "Parent" : "56",
		"CDFG" : "MLP_batch_nodes_600_300_entry162",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_relu", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "95", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.load_mlp_weight_vector_600_300_U0", "Parent" : "56", "Child" : ["59"],
		"CDFG" : "load_mlp_weight_vector_600_300_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "605", "EstimateLatencyMax" : "605",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_vector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_vector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_weights_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.load_mlp_weight_vector_600_300_U0.mul_mul_9ns_11ns_18_4_1_U303", "Parent" : "58"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_batch_nodes_600_300_Block_split13_proc_U0", "Parent" : "56",
		"CDFG" : "MLP_batch_nodes_600_300_Block_split13_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "61", "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_58_U0", "Parent" : "56", "Child" : ["62"],
		"CDFG" : "MLP_PE_600_300_58",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_0_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_0_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "95", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "101", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "63", "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "62", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_58_U0.mul_32s_31ns_54_1_1_U312", "Parent" : "61"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_59_U0", "Parent" : "56", "Child" : ["64"],
		"CDFG" : "MLP_PE_600_300_59",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "103", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "101", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "61", "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "65", "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_59_U0.mul_32s_31ns_54_1_1_U324", "Parent" : "63"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_60_U0", "Parent" : "56", "Child" : ["66"],
		"CDFG" : "MLP_PE_600_300_60",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "103", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "63", "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "66", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_60_U0.mul_32s_31ns_54_1_1_U335", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_61_U0", "Parent" : "56", "Child" : ["68"],
		"CDFG" : "MLP_PE_600_300_61",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_4_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_4_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "65", "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "68", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_61_U0.mul_32s_31ns_54_1_1_U346", "Parent" : "67"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_62_U0", "Parent" : "56", "Child" : ["70"],
		"CDFG" : "MLP_PE_600_300_62",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_4_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_4_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_5_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_5_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_62_U0.mul_32s_31ns_54_1_1_U357", "Parent" : "69"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_63_U0", "Parent" : "56", "Child" : ["72"],
		"CDFG" : "MLP_PE_600_300_63",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_5_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "69", "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_5_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_6_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_6_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "69", "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "69", "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "69", "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "122", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_63_U0.mul_32s_31ns_54_1_1_U368", "Parent" : "71"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_64_U0", "Parent" : "56", "Child" : ["74"],
		"CDFG" : "MLP_PE_600_300_64",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_6_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_6_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_7_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "123", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_7_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "122", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "125", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "75", "DependentChan" : "126", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_64_U0.mul_32s_31ns_54_1_1_U379", "Parent" : "73"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_65_U0", "Parent" : "56", "Child" : ["76"],
		"CDFG" : "MLP_PE_600_300_65",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_7_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "73", "DependentChan" : "123", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_7_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_8_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_8_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "73", "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "73", "DependentChan" : "125", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "73", "DependentChan" : "126", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "128", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "129", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "130", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_65_U0.mul_32s_31ns_54_1_1_U390", "Parent" : "75"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_66_U0", "Parent" : "56", "Child" : ["78"],
		"CDFG" : "MLP_PE_600_300_66",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_8_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_8_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_9_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "131", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_9_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "128", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "129", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "75", "DependentChan" : "130", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "79", "DependentChan" : "134", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_66_U0.mul_32s_31ns_54_1_1_U401", "Parent" : "77"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_67_U0", "Parent" : "56", "Child" : ["80"],
		"CDFG" : "MLP_PE_600_300_67",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_9_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "131", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_9_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_10_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "81", "DependentChan" : "135", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_10_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "134", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "81", "DependentChan" : "136", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "81", "DependentChan" : "137", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "81", "DependentChan" : "138", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_67_U0.mul_32s_31ns_54_1_1_U412", "Parent" : "79"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_68_U0", "Parent" : "56", "Child" : ["82"],
		"CDFG" : "MLP_PE_600_300_68",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_10_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "135", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_10_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_11_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "139", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_11_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "136", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "137", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "79", "DependentChan" : "138", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "140", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "141", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "142", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_68_U0.mul_32s_31ns_54_1_1_U423", "Parent" : "81"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_69_U0", "Parent" : "56", "Child" : ["84"],
		"CDFG" : "MLP_PE_600_300_69",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_11_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "81", "DependentChan" : "139", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_11_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_12_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "143", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_12_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "81", "DependentChan" : "140", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "81", "DependentChan" : "141", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "81", "DependentChan" : "142", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "144", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "145", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "146", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_69_U0.mul_32s_31ns_54_1_1_U434", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_70_U0", "Parent" : "56", "Child" : ["86"],
		"CDFG" : "MLP_PE_600_300_70",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_12_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "143", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_12_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_13_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "87", "DependentChan" : "147", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_13_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "144", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "145", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "146", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "87", "DependentChan" : "148", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "87", "DependentChan" : "149", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "87", "DependentChan" : "150", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_70_U0.mul_32s_31ns_54_1_1_U445", "Parent" : "85"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_71_U0", "Parent" : "56", "Child" : ["88"],
		"CDFG" : "MLP_PE_600_300_71",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_13_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "147", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_13_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_14_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "151", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_14_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "148", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "149", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "150", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "152", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "153", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "89", "DependentChan" : "154", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_71_U0.mul_32s_31ns_54_1_1_U456", "Parent" : "87"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_72_U0", "Parent" : "56", "Child" : ["90"],
		"CDFG" : "MLP_PE_600_300_72",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_14_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "87", "DependentChan" : "151", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_14_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_15_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "155", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_15_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "87", "DependentChan" : "152", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "87", "DependentChan" : "153", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "87", "DependentChan" : "154", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "156", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "157", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "91", "DependentChan" : "158", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_72_U0.mul_32s_31ns_54_1_1_U467", "Parent" : "89"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_73_U0", "Parent" : "56", "Child" : ["92"],
		"CDFG" : "MLP_PE_600_300_73",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_15_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "155", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_15_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "156", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "157", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "89", "DependentChan" : "158", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_73_U0.mul_32s_31ns_54_1_1_U478", "Parent" : "91"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c_U", "Parent" : "56"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c38_U", "Parent" : "56"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c_U", "Parent" : "56"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_0_V_V_U", "Parent" : "56"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c39_U", "Parent" : "56"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c_U", "Parent" : "56"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_1_V_V_U", "Parent" : "56"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c40_U", "Parent" : "56"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c41_U", "Parent" : "56"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c42_U", "Parent" : "56"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_2_V_V_U", "Parent" : "56"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c43_U", "Parent" : "56"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c44_U", "Parent" : "56"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c45_U", "Parent" : "56"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_3_V_V_U", "Parent" : "56"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c46_U", "Parent" : "56"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c47_U", "Parent" : "56"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c48_U", "Parent" : "56"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_4_V_V_U", "Parent" : "56"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c49_U", "Parent" : "56"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c50_U", "Parent" : "56"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c51_U", "Parent" : "56"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_5_V_V_U", "Parent" : "56"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c52_U", "Parent" : "56"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c53_U", "Parent" : "56"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c54_U", "Parent" : "56"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_6_V_V_U", "Parent" : "56"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c55_U", "Parent" : "56"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c56_U", "Parent" : "56"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c57_U", "Parent" : "56"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_7_V_V_U", "Parent" : "56"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c58_U", "Parent" : "56"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c59_U", "Parent" : "56"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c60_U", "Parent" : "56"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_8_V_V_U", "Parent" : "56"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c61_U", "Parent" : "56"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c62_U", "Parent" : "56"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c63_U", "Parent" : "56"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_9_V_V_U", "Parent" : "56"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c64_U", "Parent" : "56"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c65_U", "Parent" : "56"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c66_U", "Parent" : "56"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_10_V_V_U", "Parent" : "56"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c67_U", "Parent" : "56"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c68_U", "Parent" : "56"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c69_U", "Parent" : "56"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_11_V_V_U", "Parent" : "56"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c70_U", "Parent" : "56"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c71_U", "Parent" : "56"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c72_U", "Parent" : "56"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_12_V_V_U", "Parent" : "56"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c73_U", "Parent" : "56"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c74_U", "Parent" : "56"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c75_U", "Parent" : "56"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_13_V_V_U", "Parent" : "56"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c76_U", "Parent" : "56"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c77_U", "Parent" : "56"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c78_U", "Parent" : "56"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_14_V_V_U", "Parent" : "56"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c79_U", "Parent" : "56"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c80_U", "Parent" : "56"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c81_U", "Parent" : "56"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_15_V_V_U", "Parent" : "56"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c82_U", "Parent" : "56"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c83_U", "Parent" : "56"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c84_U", "Parent" : "56"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926", "Parent" : "7", "Child" : ["160", "161", "163", "164", "166", "168", "170", "172", "174", "176", "178", "180", "182", "184", "186", "188", "190", "192", "194", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245"],
		"CDFG" : "MLP_batch_nodes_300_600_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "322", "EstimateLatencyMax" : "322",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "160", "Name" : "MLP_batch_nodes_300_600_entry142_U0"},
			{"ID" : "161", "Name" : "load_mlp_weight_vector_300_600_U0"},
			{"ID" : "163", "Name" : "MLP_batch_nodes_300_600_Block_split13_proc_U0"},
			{"ID" : "164", "Name" : "MLP_PE_300_600_42_U0"},
			{"ID" : "166", "Name" : "MLP_PE_300_600_43_U0"},
			{"ID" : "168", "Name" : "MLP_PE_300_600_44_U0"},
			{"ID" : "170", "Name" : "MLP_PE_300_600_45_U0"},
			{"ID" : "172", "Name" : "MLP_PE_300_600_46_U0"},
			{"ID" : "174", "Name" : "MLP_PE_300_600_47_U0"},
			{"ID" : "176", "Name" : "MLP_PE_300_600_48_U0"},
			{"ID" : "178", "Name" : "MLP_PE_300_600_49_U0"},
			{"ID" : "180", "Name" : "MLP_PE_300_600_50_U0"},
			{"ID" : "182", "Name" : "MLP_PE_300_600_51_U0"},
			{"ID" : "184", "Name" : "MLP_PE_300_600_52_U0"},
			{"ID" : "186", "Name" : "MLP_PE_300_600_53_U0"},
			{"ID" : "188", "Name" : "MLP_PE_300_600_54_U0"},
			{"ID" : "190", "Name" : "MLP_PE_300_600_55_U0"},
			{"ID" : "192", "Name" : "MLP_PE_300_600_56_U0"},
			{"ID" : "194", "Name" : "MLP_PE_300_600_57_U0"}],
		"OutputProcess" : [
			{"ID" : "164", "Name" : "MLP_PE_300_600_42_U0"},
			{"ID" : "166", "Name" : "MLP_PE_300_600_43_U0"},
			{"ID" : "168", "Name" : "MLP_PE_300_600_44_U0"},
			{"ID" : "170", "Name" : "MLP_PE_300_600_45_U0"},
			{"ID" : "172", "Name" : "MLP_PE_300_600_46_U0"},
			{"ID" : "174", "Name" : "MLP_PE_300_600_47_U0"},
			{"ID" : "176", "Name" : "MLP_PE_300_600_48_U0"},
			{"ID" : "178", "Name" : "MLP_PE_300_600_49_U0"},
			{"ID" : "180", "Name" : "MLP_PE_300_600_50_U0"},
			{"ID" : "182", "Name" : "MLP_PE_300_600_51_U0"},
			{"ID" : "184", "Name" : "MLP_PE_300_600_52_U0"},
			{"ID" : "186", "Name" : "MLP_PE_300_600_53_U0"},
			{"ID" : "188", "Name" : "MLP_PE_300_600_54_U0"},
			{"ID" : "190", "Name" : "MLP_PE_300_600_55_U0"},
			{"ID" : "192", "Name" : "MLP_PE_300_600_56_U0"},
			{"ID" : "194", "Name" : "MLP_PE_300_600_57_U0"}],
		"Port" : [
			{"Name" : "mlp_in_local", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "MLP_PE_300_600_42_U0", "Port" : "mlp_in_local"}]},
			{"Name" : "mlp_in_local1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "166", "SubInstance" : "MLP_PE_300_600_43_U0", "Port" : "mlp_in_local1"}]},
			{"Name" : "mlp_in_local2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "MLP_PE_300_600_44_U0", "Port" : "mlp_in_local2"}]},
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "MLP_PE_300_600_45_U0", "Port" : "mlp_in_local3"}]},
			{"Name" : "mlp_in_local4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "MLP_PE_300_600_46_U0", "Port" : "mlp_in_local4"}]},
			{"Name" : "mlp_in_local5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "174", "SubInstance" : "MLP_PE_300_600_47_U0", "Port" : "mlp_in_local5"}]},
			{"Name" : "mlp_in_local6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "MLP_PE_300_600_48_U0", "Port" : "mlp_in_local6"}]},
			{"Name" : "mlp_in_local7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "MLP_PE_300_600_49_U0", "Port" : "mlp_in_local7"}]},
			{"Name" : "mlp_in_local8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "180", "SubInstance" : "MLP_PE_300_600_50_U0", "Port" : "mlp_in_local8"}]},
			{"Name" : "mlp_in_local9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "MLP_PE_300_600_51_U0", "Port" : "mlp_in_local9"}]},
			{"Name" : "mlp_in_local10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "MLP_PE_300_600_52_U0", "Port" : "mlp_in_local10"}]},
			{"Name" : "mlp_in_local11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "MLP_PE_300_600_53_U0", "Port" : "mlp_in_local11"}]},
			{"Name" : "mlp_in_local12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "MLP_PE_300_600_54_U0", "Port" : "mlp_in_local12"}]},
			{"Name" : "mlp_in_local13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "MLP_PE_300_600_55_U0", "Port" : "mlp_in_local13"}]},
			{"Name" : "mlp_in_local14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "192", "SubInstance" : "MLP_PE_300_600_56_U0", "Port" : "mlp_in_local14"}]},
			{"Name" : "mlp_in_local15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "MLP_PE_300_600_57_U0", "Port" : "mlp_in_local15"}]},
			{"Name" : "mlp_out_local", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "164", "SubInstance" : "MLP_PE_300_600_42_U0", "Port" : "mlp_out_local"}]},
			{"Name" : "mlp_out_local16", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "166", "SubInstance" : "MLP_PE_300_600_43_U0", "Port" : "mlp_out_local16"}]},
			{"Name" : "mlp_out_local17", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "MLP_PE_300_600_44_U0", "Port" : "mlp_out_local17"}]},
			{"Name" : "mlp_out_local18", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "MLP_PE_300_600_45_U0", "Port" : "mlp_out_local18"}]},
			{"Name" : "mlp_out_local19", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "MLP_PE_300_600_46_U0", "Port" : "mlp_out_local19"}]},
			{"Name" : "mlp_out_local20", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "174", "SubInstance" : "MLP_PE_300_600_47_U0", "Port" : "mlp_out_local20"}]},
			{"Name" : "mlp_out_local21", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "MLP_PE_300_600_48_U0", "Port" : "mlp_out_local21"}]},
			{"Name" : "mlp_out_local22", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "MLP_PE_300_600_49_U0", "Port" : "mlp_out_local22"}]},
			{"Name" : "mlp_out_local23", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "180", "SubInstance" : "MLP_PE_300_600_50_U0", "Port" : "mlp_out_local23"}]},
			{"Name" : "mlp_out_local24", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "MLP_PE_300_600_51_U0", "Port" : "mlp_out_local24"}]},
			{"Name" : "mlp_out_local25", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "MLP_PE_300_600_52_U0", "Port" : "mlp_out_local25"}]},
			{"Name" : "mlp_out_local26", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "186", "SubInstance" : "MLP_PE_300_600_53_U0", "Port" : "mlp_out_local26"}]},
			{"Name" : "mlp_out_local27", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "MLP_PE_300_600_54_U0", "Port" : "mlp_out_local27"}]},
			{"Name" : "mlp_out_local28", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "190", "SubInstance" : "MLP_PE_300_600_55_U0", "Port" : "mlp_out_local28"}]},
			{"Name" : "mlp_out_local29", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "192", "SubInstance" : "MLP_PE_300_600_56_U0", "Port" : "mlp_out_local29"}]},
			{"Name" : "mlp_out_local30", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "MLP_PE_300_600_57_U0", "Port" : "mlp_out_local30"}]},
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "161", "SubInstance" : "load_mlp_weight_vector_300_600_U0", "Port" : "mlp_1_weights_V"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "MLP_batch_nodes_300_600_Block_split13_proc_U0", "Port" : "mlp_1_bias_V"}]}]},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_batch_nodes_300_600_entry142_U0", "Parent" : "159",
		"CDFG" : "MLP_batch_nodes_300_600_entry142",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "196", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "197", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.load_mlp_weight_vector_300_600_U0", "Parent" : "159", "Child" : ["162"],
		"CDFG" : "load_mlp_weight_vector_300_600_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "305", "EstimateLatencyMax" : "305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_vector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "164", "DependentChan" : "198", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_vector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "196", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "164", "DependentChan" : "199", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.load_mlp_weight_vector_300_600_U0.mul_mul_10ns_10ns_18_4_1_U62", "Parent" : "161"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_batch_nodes_300_600_Block_split13_proc_U0", "Parent" : "159",
		"CDFG" : "MLP_batch_nodes_300_600_Block_split13_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "160", "DependentChan" : "197", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "164", "DependentChan" : "200", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_42_U0", "Parent" : "159", "Child" : ["165"],
		"CDFG" : "MLP_PE_300_600_42",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_0_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "198", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_0_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "166", "DependentChan" : "201", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "200", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "199", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "166", "DependentChan" : "202", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "166", "DependentChan" : "203", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_42_U0.mul_32s_32s_54_1_1_U71", "Parent" : "164"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_43_U0", "Parent" : "159", "Child" : ["167"],
		"CDFG" : "MLP_PE_300_600_43",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "164", "DependentChan" : "201", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "168", "DependentChan" : "204", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "164", "DependentChan" : "202", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "164", "DependentChan" : "203", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "168", "DependentChan" : "205", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "168", "DependentChan" : "206", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_43_U0.mul_32s_32s_54_1_1_U81", "Parent" : "166"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_44_U0", "Parent" : "159", "Child" : ["169"],
		"CDFG" : "MLP_PE_300_600_44",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "204", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "170", "DependentChan" : "207", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "205", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "166", "DependentChan" : "206", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "170", "DependentChan" : "208", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "170", "DependentChan" : "209", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_44_U0.mul_32s_32s_54_1_1_U90", "Parent" : "168"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_45_U0", "Parent" : "159", "Child" : ["171"],
		"CDFG" : "MLP_PE_300_600_45",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "168", "DependentChan" : "207", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_4_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "172", "DependentChan" : "210", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_4_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "168", "DependentChan" : "208", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "168", "DependentChan" : "209", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "172", "DependentChan" : "211", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "172", "DependentChan" : "212", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_45_U0.mul_32s_32s_54_1_1_U99", "Parent" : "170"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_46_U0", "Parent" : "159", "Child" : ["173"],
		"CDFG" : "MLP_PE_300_600_46",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_4_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "170", "DependentChan" : "210", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_4_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_5_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "174", "DependentChan" : "213", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_5_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "170", "DependentChan" : "211", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "170", "DependentChan" : "212", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "174", "DependentChan" : "214", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "174", "DependentChan" : "215", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_46_U0.mul_32s_32s_54_1_1_U108", "Parent" : "172"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_47_U0", "Parent" : "159", "Child" : ["175"],
		"CDFG" : "MLP_PE_300_600_47",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_5_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "213", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_5_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_6_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "176", "DependentChan" : "216", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_6_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "214", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "172", "DependentChan" : "215", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "176", "DependentChan" : "217", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "176", "DependentChan" : "218", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_47_U0.mul_32s_32s_54_1_1_U117", "Parent" : "174"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_48_U0", "Parent" : "159", "Child" : ["177"],
		"CDFG" : "MLP_PE_300_600_48",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_6_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "174", "DependentChan" : "216", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_6_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_7_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "178", "DependentChan" : "219", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_7_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "174", "DependentChan" : "217", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "174", "DependentChan" : "218", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "178", "DependentChan" : "220", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "178", "DependentChan" : "221", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_48_U0.mul_32s_32s_54_1_1_U126", "Parent" : "176"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_49_U0", "Parent" : "159", "Child" : ["179"],
		"CDFG" : "MLP_PE_300_600_49",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_7_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "219", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_7_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_8_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "180", "DependentChan" : "222", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_8_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "220", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "221", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "180", "DependentChan" : "223", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "180", "DependentChan" : "224", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_49_U0.mul_32s_32s_54_1_1_U135", "Parent" : "178"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_50_U0", "Parent" : "159", "Child" : ["181"],
		"CDFG" : "MLP_PE_300_600_50",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_8_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "178", "DependentChan" : "222", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_8_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_9_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "182", "DependentChan" : "225", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_9_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "178", "DependentChan" : "223", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "178", "DependentChan" : "224", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "182", "DependentChan" : "226", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "182", "DependentChan" : "227", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_50_U0.mul_32s_32s_54_1_1_U144", "Parent" : "180"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_51_U0", "Parent" : "159", "Child" : ["183"],
		"CDFG" : "MLP_PE_300_600_51",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_9_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "180", "DependentChan" : "225", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_9_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_10_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "184", "DependentChan" : "228", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_10_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "180", "DependentChan" : "226", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "180", "DependentChan" : "227", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "184", "DependentChan" : "229", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "184", "DependentChan" : "230", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_51_U0.mul_32s_32s_54_1_1_U153", "Parent" : "182"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_52_U0", "Parent" : "159", "Child" : ["185"],
		"CDFG" : "MLP_PE_300_600_52",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_10_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "182", "DependentChan" : "228", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_10_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_11_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "186", "DependentChan" : "231", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_11_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "182", "DependentChan" : "229", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "182", "DependentChan" : "230", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "186", "DependentChan" : "232", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "186", "DependentChan" : "233", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_52_U0.mul_32s_32s_54_1_1_U162", "Parent" : "184"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_53_U0", "Parent" : "159", "Child" : ["187"],
		"CDFG" : "MLP_PE_300_600_53",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_11_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "231", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_11_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_12_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "188", "DependentChan" : "234", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_12_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "232", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "184", "DependentChan" : "233", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "188", "DependentChan" : "235", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "188", "DependentChan" : "236", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_53_U0.mul_32s_32s_54_1_1_U171", "Parent" : "186"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_54_U0", "Parent" : "159", "Child" : ["189"],
		"CDFG" : "MLP_PE_300_600_54",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_12_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "186", "DependentChan" : "234", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_12_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_13_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "190", "DependentChan" : "237", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_13_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "186", "DependentChan" : "235", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "186", "DependentChan" : "236", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "190", "DependentChan" : "238", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "190", "DependentChan" : "239", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_54_U0.mul_32s_32s_54_1_1_U180", "Parent" : "188"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_55_U0", "Parent" : "159", "Child" : ["191"],
		"CDFG" : "MLP_PE_300_600_55",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_13_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "188", "DependentChan" : "237", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_13_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_14_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "192", "DependentChan" : "240", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_14_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "188", "DependentChan" : "238", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "188", "DependentChan" : "239", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "192", "DependentChan" : "241", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "192", "DependentChan" : "242", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_55_U0.mul_32s_32s_54_1_1_U189", "Parent" : "190"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_56_U0", "Parent" : "159", "Child" : ["193"],
		"CDFG" : "MLP_PE_300_600_56",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_14_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "240", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_14_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_15_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "194", "DependentChan" : "243", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_15_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "241", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "190", "DependentChan" : "242", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "194", "DependentChan" : "244", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "194", "DependentChan" : "245", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_56_U0.mul_32s_32s_54_1_1_U198", "Parent" : "192"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_57_U0", "Parent" : "159", "Child" : ["195"],
		"CDFG" : "MLP_PE_300_600_57",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_15_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "192", "DependentChan" : "243", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_15_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "192", "DependentChan" : "244", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "192", "DependentChan" : "245", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_57_U0.mul_32s_32s_54_1_1_U207", "Parent" : "194"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c_U", "Parent" : "159"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c38_U", "Parent" : "159"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_0_V_V_U", "Parent" : "159"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c39_U", "Parent" : "159"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c_U", "Parent" : "159"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_1_V_V_U", "Parent" : "159"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c40_U", "Parent" : "159"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c41_U", "Parent" : "159"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_2_V_V_U", "Parent" : "159"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c42_U", "Parent" : "159"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c43_U", "Parent" : "159"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_3_V_V_U", "Parent" : "159"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c44_U", "Parent" : "159"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c45_U", "Parent" : "159"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_4_V_V_U", "Parent" : "159"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c46_U", "Parent" : "159"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c47_U", "Parent" : "159"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_5_V_V_U", "Parent" : "159"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c48_U", "Parent" : "159"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c49_U", "Parent" : "159"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_6_V_V_U", "Parent" : "159"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c50_U", "Parent" : "159"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c51_U", "Parent" : "159"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_7_V_V_U", "Parent" : "159"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c52_U", "Parent" : "159"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c53_U", "Parent" : "159"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_8_V_V_U", "Parent" : "159"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c54_U", "Parent" : "159"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c55_U", "Parent" : "159"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_9_V_V_U", "Parent" : "159"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c56_U", "Parent" : "159"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c57_U", "Parent" : "159"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_10_V_V_U", "Parent" : "159"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c58_U", "Parent" : "159"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c59_U", "Parent" : "159"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_11_V_V_U", "Parent" : "159"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c60_U", "Parent" : "159"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c61_U", "Parent" : "159"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_12_V_V_U", "Parent" : "159"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c62_U", "Parent" : "159"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c63_U", "Parent" : "159"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_13_V_V_U", "Parent" : "159"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c64_U", "Parent" : "159"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c65_U", "Parent" : "159"},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_14_V_V_U", "Parent" : "159"},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c66_U", "Parent" : "159"},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c67_U", "Parent" : "159"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_15_V_V_U", "Parent" : "159"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c68_U", "Parent" : "159"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c69_U", "Parent" : "159"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mul_33s_32s_54_1_1_U587", "Parent" : "7"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mux_164_32_1_1_U588", "Parent" : "7"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mac_muladd_10ns_10ns_9ns_19_4_1_U589", "Parent" : "7"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_fu_112.mac_muladd_10ns_10ns_9ns_19_4_1_U590", "Parent" : "7"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_load_mlp_weights_one_layer_fu_133", "Parent" : "0", "Child" : ["251", "252", "253"],
		"CDFG" : "load_mlp_weights_one_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "371702", "EstimateLatencyMax" : "371702",
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
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_1_weights_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_1_bias_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_2_weights_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_2_bias_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_2_weights_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_mlp_weights_one_layer_fu_133.mul_3ns_11ns_13_1_1_U43", "Parent" : "250"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_mlp_weights_one_layer_fu_133.mul_3ns_19ns_21_1_1_U44", "Parent" : "250"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_mlp_weights_one_layer_fu_133.mul_3ns_10ns_12_1_1_U45", "Parent" : "250"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_edge_embedding_fu_157", "Parent" : "0", "Child" : ["255", "256", "257", "258"],
		"CDFG" : "compute_edge_embedding",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "num_of_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_embedding_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "ed_feature_table_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edge_embedding_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edge_attr", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_edge_embedding_fu_157.ed_feature_table_1_U", "Parent" : "254"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_edge_embedding_fu_157.mul_3ns_5ns_7_1_1_U19", "Parent" : "254"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_edge_embedding_fu_157.mul_7ns_10ns_15_1_1_U20", "Parent" : "254"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_edge_embedding_fu_157.mul_mul_20s_10ns_20_4_1_U21", "Parent" : "254"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_message_passing_fu_173", "Parent" : "0", "Child" : ["260", "261", "262", "263"],
		"CDFG" : "message_passing",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "num_of_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edge_embedding_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_message_passing_fu_173.mul_32ns_10ns_41_1_1_U31", "Parent" : "259"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_message_passing_fu_173.mac_muladd_20s_10ns_9ns_20_4_1_U32", "Parent" : "259"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_message_passing_fu_173.mac_muladd_19s_10ns_9ns_19_4_1_U33", "Parent" : "259"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_message_passing_fu_173.mac_muladd_19s_10ns_9ns_19_4_1_U34", "Parent" : "259"}]}


set ArgLastReadFirstWriteLatency {
	compute_CONV_layer {
		mem {Type I LastRead 13 FirstWrite -1}
		num_of_nodes {Type I LastRead 4 FirstWrite -1}
		num_of_edges {Type I LastRead 0 FirstWrite -1}
		layer {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_1_weights_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_1_bias_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_2_weights_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_2_bias_fixed {Type I LastRead 0 FirstWrite -1}
		edge_embedding_V {Type IO LastRead -1 FirstWrite -1}
		ed_feature_table_1 {Type I LastRead -1 FirstWrite -1}
		edge_embedding_table_V {Type I LastRead 9 FirstWrite -1}
		edge_attr {Type I LastRead 3 FirstWrite -1}
		message_V {Type IO LastRead -1 FirstWrite -1}
		edge_list {Type I LastRead 4 FirstWrite -1}
		node_embedding_V {Type IO LastRead 7 FirstWrite -1}
		mlp_1_bias_V {Type IO LastRead -1 FirstWrite -1}
		mlp_1_weights_V {Type IO LastRead -1 FirstWrite -1}
		mlp_2_bias_V {Type IO LastRead -1 FirstWrite -1}
		mlp_2_weights_V {Type IO LastRead -1 FirstWrite -1}
		mlp_eps_V {Type I LastRead 0 FirstWrite -1}}
	MLP {
		num_of_nodes {Type I LastRead 1 FirstWrite -1}
		layer {Type I LastRead 0 FirstWrite -1}
		mlp_eps_V {Type I LastRead 0 FirstWrite -1}
		node_embedding_V {Type IO LastRead 7 FirstWrite 11}
		message_V {Type I LastRead 8 FirstWrite -1}
		mlp_1_weights_V {Type I LastRead 4 FirstWrite -1}
		mlp_1_bias_V {Type I LastRead 0 FirstWrite -1}
		mlp_2_weights_V {Type I LastRead 4 FirstWrite -1}
		mlp_2_bias_V {Type I LastRead 0 FirstWrite -1}}
	MLP_batch_nodes_600_300_s {
		mlp_in_local {Type I LastRead 1 FirstWrite -1}
		mlp_in_local1 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local2 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local3 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local4 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local5 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local6 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local7 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local8 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local9 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local10 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local11 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local12 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local13 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local14 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local15 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local {Type O LastRead -1 FirstWrite 2}
		mlp_out_local16 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local17 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local18 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local19 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local20 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local21 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local22 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local23 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local24 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local25 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local26 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local27 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local28 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local29 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local30 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_weights_V {Type I LastRead 4 FirstWrite -1}
		mlp_2_bias_V {Type I LastRead 0 FirstWrite -1}}
	MLP_batch_nodes_600_300_entry162 {
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		d_out_out1 {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	load_mlp_weight_vector_600_300_s {
		mlp_weight_vector {Type O LastRead -1 FirstWrite 5}
		d_out {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		mlp_2_weights_V {Type I LastRead 4 FirstWrite -1}}
	MLP_batch_nodes_600_300_Block_split13_proc {
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_out_out {Type O LastRead -1 FirstWrite 1}
		mlp_2_bias_V {Type I LastRead 0 FirstWrite -1}}
	MLP_PE_600_300_58 {
		mlp_weight_fifo_0_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_1_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local {Type I LastRead 1 FirstWrite -1}
		mlp_out_local {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_59 {
		mlp_weight_fifo_1_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_2_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local1 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local16 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_60 {
		mlp_weight_fifo_2_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_3_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local2 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local17 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_61 {
		mlp_weight_fifo_3_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_4_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local3 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local18 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_62 {
		mlp_weight_fifo_4_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_5_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local4 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local19 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_63 {
		mlp_weight_fifo_5_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_6_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local5 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local20 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_64 {
		mlp_weight_fifo_6_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_7_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local6 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local21 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_65 {
		mlp_weight_fifo_7_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_8_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local7 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local22 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_66 {
		mlp_weight_fifo_8_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_9_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local8 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local23 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_67 {
		mlp_weight_fifo_9_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_10_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local9 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local24 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_68 {
		mlp_weight_fifo_10_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_11_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local10 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local25 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_69 {
		mlp_weight_fifo_11_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_12_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local11 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local26 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_70 {
		mlp_weight_fifo_12_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_13_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local12 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local27 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_71 {
		mlp_weight_fifo_13_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_14_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local13 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local28 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_72 {
		mlp_weight_fifo_14_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_15_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local14 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local29 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_73 {
		mlp_weight_fifo_15_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local15 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local30 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}}
	MLP_batch_nodes_300_600_s {
		mlp_in_local {Type I LastRead 1 FirstWrite -1}
		mlp_in_local1 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local2 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local3 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local4 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local5 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local6 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local7 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local8 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local9 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local10 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local11 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local12 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local13 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local14 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local15 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local {Type O LastRead -1 FirstWrite 2}
		mlp_out_local16 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local17 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local18 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local19 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local20 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local21 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local22 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local23 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local24 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local25 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local26 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local27 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local28 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local29 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local30 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_weights_V {Type I LastRead 4 FirstWrite -1}
		mlp_1_bias_V {Type I LastRead 0 FirstWrite -1}}
	MLP_batch_nodes_300_600_entry142 {
		d_out {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		d_out_out1 {Type O LastRead -1 FirstWrite 0}}
	load_mlp_weight_vector_300_600_s {
		mlp_weight_vector {Type O LastRead -1 FirstWrite 5}
		d_out {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		mlp_1_weights_V {Type I LastRead 4 FirstWrite -1}}
	MLP_batch_nodes_300_600_Block_split13_proc {
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_out_out {Type O LastRead -1 FirstWrite 1}
		mlp_1_bias_V {Type I LastRead 0 FirstWrite -1}}
	MLP_PE_300_600_42 {
		mlp_weight_fifo_0_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_1_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local {Type I LastRead 1 FirstWrite -1}
		mlp_out_local {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_43 {
		mlp_weight_fifo_1_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_2_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local1 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local16 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_44 {
		mlp_weight_fifo_2_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_3_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local2 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local17 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_45 {
		mlp_weight_fifo_3_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_4_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local3 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local18 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_46 {
		mlp_weight_fifo_4_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_5_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local4 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local19 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_47 {
		mlp_weight_fifo_5_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_6_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local5 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local20 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_48 {
		mlp_weight_fifo_6_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_7_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local6 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local21 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_49 {
		mlp_weight_fifo_7_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_8_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local7 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local22 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_50 {
		mlp_weight_fifo_8_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_9_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local8 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local23 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_51 {
		mlp_weight_fifo_9_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_10_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local9 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local24 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_52 {
		mlp_weight_fifo_10_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_11_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local10 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local25 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_53 {
		mlp_weight_fifo_11_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_12_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local11 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local26 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_54 {
		mlp_weight_fifo_12_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_13_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local12 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local27 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_55 {
		mlp_weight_fifo_13_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_14_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local13 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local28 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_56 {
		mlp_weight_fifo_14_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_15_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local14 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local29 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_57 {
		mlp_weight_fifo_15_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local15 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local30 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}}
	load_mlp_weights_one_layer {
		mem {Type I LastRead 13 FirstWrite -1}
		layer {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_1_weights_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_1_bias_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_2_weights_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_2_bias_fixed {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V {Type O LastRead -1 FirstWrite 10}
		mlp_1_weights_V {Type O LastRead -1 FirstWrite 13}
		mlp_2_bias_V {Type O LastRead -1 FirstWrite 11}
		mlp_2_weights_V {Type O LastRead -1 FirstWrite 14}}
	compute_edge_embedding {
		num_of_edges {Type I LastRead 0 FirstWrite -1}
		layer {Type I LastRead 0 FirstWrite -1}
		edge_embedding_V {Type IO LastRead 9 FirstWrite 1}
		ed_feature_table_1 {Type I LastRead -1 FirstWrite -1}
		edge_embedding_table_V {Type I LastRead 9 FirstWrite -1}
		edge_attr {Type I LastRead 3 FirstWrite -1}}
	message_passing {
		num_of_edges {Type I LastRead 0 FirstWrite -1}
		message_V {Type IO LastRead 7 FirstWrite 1}
		edge_list {Type I LastRead 4 FirstWrite -1}
		edge_embedding_V {Type I LastRead 7 FirstWrite -1}
		node_embedding_V {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mem { m_axi {  { m_axi_mem_AWVALID VALID 1 1 }  { m_axi_mem_AWREADY READY 0 1 }  { m_axi_mem_AWADDR ADDR 1 64 }  { m_axi_mem_AWID ID 1 1 }  { m_axi_mem_AWLEN LEN 1 32 }  { m_axi_mem_AWSIZE SIZE 1 3 }  { m_axi_mem_AWBURST BURST 1 2 }  { m_axi_mem_AWLOCK LOCK 1 2 }  { m_axi_mem_AWCACHE CACHE 1 4 }  { m_axi_mem_AWPROT PROT 1 3 }  { m_axi_mem_AWQOS QOS 1 4 }  { m_axi_mem_AWREGION REGION 1 4 }  { m_axi_mem_AWUSER USER 1 1 }  { m_axi_mem_WVALID VALID 1 1 }  { m_axi_mem_WREADY READY 0 1 }  { m_axi_mem_WDATA DATA 1 32 }  { m_axi_mem_WSTRB STRB 1 4 }  { m_axi_mem_WLAST LAST 1 1 }  { m_axi_mem_WID ID 1 1 }  { m_axi_mem_WUSER USER 1 1 }  { m_axi_mem_ARVALID VALID 1 1 }  { m_axi_mem_ARREADY READY 0 1 }  { m_axi_mem_ARADDR ADDR 1 64 }  { m_axi_mem_ARID ID 1 1 }  { m_axi_mem_ARLEN LEN 1 32 }  { m_axi_mem_ARSIZE SIZE 1 3 }  { m_axi_mem_ARBURST BURST 1 2 }  { m_axi_mem_ARLOCK LOCK 1 2 }  { m_axi_mem_ARCACHE CACHE 1 4 }  { m_axi_mem_ARPROT PROT 1 3 }  { m_axi_mem_ARQOS QOS 1 4 }  { m_axi_mem_ARREGION REGION 1 4 }  { m_axi_mem_ARUSER USER 1 1 }  { m_axi_mem_RVALID VALID 0 1 }  { m_axi_mem_RREADY READY 1 1 }  { m_axi_mem_RDATA DATA 0 32 }  { m_axi_mem_RLAST LAST 0 1 }  { m_axi_mem_RID ID 0 1 }  { m_axi_mem_RUSER USER 0 1 }  { m_axi_mem_RRESP RESP 0 2 }  { m_axi_mem_BVALID VALID 0 1 }  { m_axi_mem_BREADY READY 1 1 }  { m_axi_mem_BRESP RESP 0 2 }  { m_axi_mem_BID ID 0 1 }  { m_axi_mem_BUSER USER 0 1 } } }
	num_of_nodes { ap_none {  { num_of_nodes in_data 0 32 } } }
	num_of_edges { ap_none {  { num_of_edges in_data 0 32 } } }
	layer { ap_none {  { layer in_data 0 3 } } }
	gnn_node_mlp_1_weights_fixed { ap_none {  { gnn_node_mlp_1_weights_fixed in_data 0 64 } } }
	gnn_node_mlp_1_bias_fixed { ap_none {  { gnn_node_mlp_1_bias_fixed in_data 0 64 } } }
	gnn_node_mlp_2_weights_fixed { ap_none {  { gnn_node_mlp_2_weights_fixed in_data 0 64 } } }
	gnn_node_mlp_2_bias_fixed { ap_none {  { gnn_node_mlp_2_bias_fixed in_data 0 64 } } }
	edge_embedding_table_V { ap_memory {  { edge_embedding_table_V_address0 mem_address 1 15 }  { edge_embedding_table_V_ce0 mem_ce 1 1 }  { edge_embedding_table_V_q0 mem_dout 0 32 } } }
	edge_attr { ap_memory {  { edge_attr_address0 mem_address 1 13 }  { edge_attr_ce0 mem_ce 1 1 }  { edge_attr_q0 mem_dout 0 32 } } }
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 12 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 12 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	node_embedding_V { ap_memory {  { node_embedding_V_address0 mem_address 1 19 }  { node_embedding_V_ce0 mem_ce 1 1 }  { node_embedding_V_q0 mem_dout 0 32 }  { node_embedding_V_address1 MemPortADDR2 1 19 }  { node_embedding_V_ce1 MemPortCE2 1 1 }  { node_embedding_V_we1 MemPortWE2 1 1 }  { node_embedding_V_d1 MemPortDIN2 1 32 } } }
	mlp_eps_V { ap_memory {  { mlp_eps_V_address0 mem_address 1 3 }  { mlp_eps_V_ce0 mem_ce 1 1 }  { mlp_eps_V_q0 mem_dout 0 32 } } }
}
