set moduleName global_mean_pooling
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
set C_modelName {global_mean_pooling}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_of_nodes int 32 regular  }
	{ out_nodes_features_skip_concat_bias_V_0 int 28 regular {array 200 { 1 3 } 1 1 } {global 0}  }
	{ out_nodes_features_skip_concat_bias_V_1 int 28 regular {array 200 { 1 3 } 1 1 } {global 0}  }
	{ out_nodes_features_skip_concat_bias_V_2 int 28 regular {array 200 { 1 3 } 1 1 } {global 0}  }
	{ out_nodes_features_skip_concat_bias_V_3 int 28 regular {array 200 { 1 3 } 1 1 } {global 0}  }
	{ out_nodes_features_skip_concat_bias_V_4 int 28 regular {array 200 { 1 3 } 1 1 } {global 0}  }
	{ out_nodes_features_skip_concat_bias_V_5 int 28 regular {array 200 { 1 3 } 1 1 } {global 0}  }
	{ out_nodes_features_skip_concat_bias_V_6 int 28 regular {array 200 { 1 3 } 1 1 } {global 0}  }
	{ out_nodes_features_skip_concat_bias_V_7 int 28 regular {array 200 { 1 3 } 1 1 } {global 0}  }
	{ out_nodes_features_skip_concat_bias_V_8 int 28 regular {array 200 { 1 3 } 1 1 } {global 0}  }
	{ out_nodes_features_skip_concat_bias_V_9 int 28 regular {array 200 { 1 3 } 1 1 } {global 0}  }
	{ out_nodes_features_skip_concat_bias_V_10 int 28 regular {array 200 { 1 3 } 1 1 } {global 0}  }
	{ out_nodes_features_skip_concat_bias_V_11 int 28 regular {array 200 { 1 3 } 1 1 } {global 0}  }
	{ out_nodes_features_skip_concat_bias_V_12 int 28 regular {array 200 { 1 3 } 1 1 } {global 0}  }
	{ out_nodes_features_skip_concat_bias_V_13 int 28 regular {array 200 { 1 3 } 1 1 } {global 0}  }
	{ out_nodes_features_skip_concat_bias_V_14 int 28 regular {array 200 { 1 3 } 1 1 } {global 0}  }
	{ out_nodes_features_skip_concat_bias_V_15 int 28 regular {array 200 { 1 3 } 1 1 } {global 0}  }
	{ h_graph_V int 28 regular {array 200 { 3 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_of_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_nodes_features_skip_concat_bias_V_0", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "out_nodes_features_skip_concat_bias_V_1", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "out_nodes_features_skip_concat_bias_V_2", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "out_nodes_features_skip_concat_bias_V_3", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "out_nodes_features_skip_concat_bias_V_4", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "out_nodes_features_skip_concat_bias_V_5", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "out_nodes_features_skip_concat_bias_V_6", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "out_nodes_features_skip_concat_bias_V_7", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "out_nodes_features_skip_concat_bias_V_8", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "out_nodes_features_skip_concat_bias_V_9", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "out_nodes_features_skip_concat_bias_V_10", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "out_nodes_features_skip_concat_bias_V_11", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "out_nodes_features_skip_concat_bias_V_12", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "out_nodes_features_skip_concat_bias_V_13", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "out_nodes_features_skip_concat_bias_V_14", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "out_nodes_features_skip_concat_bias_V_15", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "h_graph_V", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_of_nodes sc_in sc_lv 32 signal 0 } 
	{ out_nodes_features_skip_concat_bias_V_0_address0 sc_out sc_lv 8 signal 1 } 
	{ out_nodes_features_skip_concat_bias_V_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ out_nodes_features_skip_concat_bias_V_0_q0 sc_in sc_lv 28 signal 1 } 
	{ out_nodes_features_skip_concat_bias_V_1_address0 sc_out sc_lv 8 signal 2 } 
	{ out_nodes_features_skip_concat_bias_V_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_nodes_features_skip_concat_bias_V_1_q0 sc_in sc_lv 28 signal 2 } 
	{ out_nodes_features_skip_concat_bias_V_2_address0 sc_out sc_lv 8 signal 3 } 
	{ out_nodes_features_skip_concat_bias_V_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ out_nodes_features_skip_concat_bias_V_2_q0 sc_in sc_lv 28 signal 3 } 
	{ out_nodes_features_skip_concat_bias_V_3_address0 sc_out sc_lv 8 signal 4 } 
	{ out_nodes_features_skip_concat_bias_V_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ out_nodes_features_skip_concat_bias_V_3_q0 sc_in sc_lv 28 signal 4 } 
	{ out_nodes_features_skip_concat_bias_V_4_address0 sc_out sc_lv 8 signal 5 } 
	{ out_nodes_features_skip_concat_bias_V_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ out_nodes_features_skip_concat_bias_V_4_q0 sc_in sc_lv 28 signal 5 } 
	{ out_nodes_features_skip_concat_bias_V_5_address0 sc_out sc_lv 8 signal 6 } 
	{ out_nodes_features_skip_concat_bias_V_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ out_nodes_features_skip_concat_bias_V_5_q0 sc_in sc_lv 28 signal 6 } 
	{ out_nodes_features_skip_concat_bias_V_6_address0 sc_out sc_lv 8 signal 7 } 
	{ out_nodes_features_skip_concat_bias_V_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ out_nodes_features_skip_concat_bias_V_6_q0 sc_in sc_lv 28 signal 7 } 
	{ out_nodes_features_skip_concat_bias_V_7_address0 sc_out sc_lv 8 signal 8 } 
	{ out_nodes_features_skip_concat_bias_V_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ out_nodes_features_skip_concat_bias_V_7_q0 sc_in sc_lv 28 signal 8 } 
	{ out_nodes_features_skip_concat_bias_V_8_address0 sc_out sc_lv 8 signal 9 } 
	{ out_nodes_features_skip_concat_bias_V_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ out_nodes_features_skip_concat_bias_V_8_q0 sc_in sc_lv 28 signal 9 } 
	{ out_nodes_features_skip_concat_bias_V_9_address0 sc_out sc_lv 8 signal 10 } 
	{ out_nodes_features_skip_concat_bias_V_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ out_nodes_features_skip_concat_bias_V_9_q0 sc_in sc_lv 28 signal 10 } 
	{ out_nodes_features_skip_concat_bias_V_10_address0 sc_out sc_lv 8 signal 11 } 
	{ out_nodes_features_skip_concat_bias_V_10_ce0 sc_out sc_logic 1 signal 11 } 
	{ out_nodes_features_skip_concat_bias_V_10_q0 sc_in sc_lv 28 signal 11 } 
	{ out_nodes_features_skip_concat_bias_V_11_address0 sc_out sc_lv 8 signal 12 } 
	{ out_nodes_features_skip_concat_bias_V_11_ce0 sc_out sc_logic 1 signal 12 } 
	{ out_nodes_features_skip_concat_bias_V_11_q0 sc_in sc_lv 28 signal 12 } 
	{ out_nodes_features_skip_concat_bias_V_12_address0 sc_out sc_lv 8 signal 13 } 
	{ out_nodes_features_skip_concat_bias_V_12_ce0 sc_out sc_logic 1 signal 13 } 
	{ out_nodes_features_skip_concat_bias_V_12_q0 sc_in sc_lv 28 signal 13 } 
	{ out_nodes_features_skip_concat_bias_V_13_address0 sc_out sc_lv 8 signal 14 } 
	{ out_nodes_features_skip_concat_bias_V_13_ce0 sc_out sc_logic 1 signal 14 } 
	{ out_nodes_features_skip_concat_bias_V_13_q0 sc_in sc_lv 28 signal 14 } 
	{ out_nodes_features_skip_concat_bias_V_14_address0 sc_out sc_lv 8 signal 15 } 
	{ out_nodes_features_skip_concat_bias_V_14_ce0 sc_out sc_logic 1 signal 15 } 
	{ out_nodes_features_skip_concat_bias_V_14_q0 sc_in sc_lv 28 signal 15 } 
	{ out_nodes_features_skip_concat_bias_V_15_address0 sc_out sc_lv 8 signal 16 } 
	{ out_nodes_features_skip_concat_bias_V_15_ce0 sc_out sc_logic 1 signal 16 } 
	{ out_nodes_features_skip_concat_bias_V_15_q0 sc_in sc_lv 28 signal 16 } 
	{ h_graph_V_address1 sc_out sc_lv 8 signal 17 } 
	{ h_graph_V_ce1 sc_out sc_logic 1 signal 17 } 
	{ h_graph_V_we1 sc_out sc_logic 1 signal 17 } 
	{ h_graph_V_d1 sc_out sc_lv 28 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_of_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_of_nodes", "role": "default" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_0", "role": "address0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_0", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_0", "role": "q0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_1", "role": "address0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_1", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_1", "role": "q0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_2", "role": "address0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_2", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_2", "role": "q0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_3", "role": "address0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_3", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_3", "role": "q0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_4", "role": "address0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_4", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_4", "role": "q0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_5", "role": "address0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_5", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_5", "role": "q0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_6", "role": "address0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_6", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_6", "role": "q0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_7", "role": "address0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_7", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_7", "role": "q0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_8", "role": "address0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_8", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_8", "role": "q0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_9", "role": "address0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_9", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_9", "role": "q0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_10", "role": "address0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_10", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_10", "role": "q0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_11", "role": "address0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_11", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_11", "role": "q0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_12", "role": "address0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_12", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_12", "role": "q0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_13", "role": "address0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_13", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_13", "role": "q0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_14", "role": "address0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_14", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_14", "role": "q0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_15", "role": "address0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_15", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_skip_concat_bias_V_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_skip_concat_bias_V_15", "role": "q0" }} , 
 	{ "name": "h_graph_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "h_graph_V", "role": "address1" }} , 
 	{ "name": "h_graph_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_graph_V", "role": "ce1" }} , 
 	{ "name": "h_graph_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "h_graph_V", "role": "we1" }} , 
 	{ "name": "h_graph_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "h_graph_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "global_mean_pooling",
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
			{"Name" : "num_of_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Port" : "out_nodes_features_skip_concat_bias_V_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_nodes_features_skip_concat_bias_V_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Port" : "out_nodes_features_skip_concat_bias_V_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_nodes_features_skip_concat_bias_V_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Port" : "out_nodes_features_skip_concat_bias_V_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_nodes_features_skip_concat_bias_V_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Port" : "out_nodes_features_skip_concat_bias_V_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_nodes_features_skip_concat_bias_V_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Port" : "out_nodes_features_skip_concat_bias_V_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_nodes_features_skip_concat_bias_V_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Port" : "out_nodes_features_skip_concat_bias_V_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_nodes_features_skip_concat_bias_V_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Port" : "out_nodes_features_skip_concat_bias_V_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_nodes_features_skip_concat_bias_V_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Port" : "out_nodes_features_skip_concat_bias_V_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_nodes_features_skip_concat_bias_V_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Port" : "out_nodes_features_skip_concat_bias_V_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_nodes_features_skip_concat_bias_V_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Port" : "out_nodes_features_skip_concat_bias_V_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_nodes_features_skip_concat_bias_V_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Port" : "out_nodes_features_skip_concat_bias_V_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_nodes_features_skip_concat_bias_V_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Port" : "out_nodes_features_skip_concat_bias_V_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_nodes_features_skip_concat_bias_V_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Port" : "out_nodes_features_skip_concat_bias_V_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_nodes_features_skip_concat_bias_V_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Port" : "out_nodes_features_skip_concat_bias_V_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_nodes_features_skip_concat_bias_V_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Port" : "out_nodes_features_skip_concat_bias_V_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_nodes_features_skip_concat_bias_V_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Port" : "out_nodes_features_skip_concat_bias_V_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "h_graph_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_290_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "53", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state53"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "global_mean_pooling_Pipeline_VITIS_LOOP_292_2",
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
			{"Name" : "num_of_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln712_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_nodes_features_skip_concat_bias_V_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_292_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_Pipeline_VITIS_LOOP_292_2_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_46ns_28s_28_50_seq_1_U1989", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	global_mean_pooling {
		num_of_nodes {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_0 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_1 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_2 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_3 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_4 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_5 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_6 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_7 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_8 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_9 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_10 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_11 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_12 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_13 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_14 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_15 {Type I LastRead 0 FirstWrite -1}
		h_graph_V {Type O LastRead -1 FirstWrite 52}}
	global_mean_pooling_Pipeline_VITIS_LOOP_292_2 {
		num_of_nodes {Type I LastRead 0 FirstWrite -1}
		trunc_ln712_1 {Type I LastRead 0 FirstWrite -1}
		sum_V_out {Type O LastRead -1 FirstWrite 1}
		out_nodes_features_skip_concat_bias_V_0 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_1 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_2 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_3 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_4 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_5 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_6 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_7 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_8 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_9 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_10 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_11 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_12 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_13 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_14 {Type I LastRead 0 FirstWrite -1}
		out_nodes_features_skip_concat_bias_V_15 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	num_of_nodes { ap_none {  { num_of_nodes in_data 0 32 } } }
	out_nodes_features_skip_concat_bias_V_0 { ap_memory {  { out_nodes_features_skip_concat_bias_V_0_address0 mem_address 1 8 }  { out_nodes_features_skip_concat_bias_V_0_ce0 mem_ce 1 1 }  { out_nodes_features_skip_concat_bias_V_0_q0 mem_dout 0 28 } } }
	out_nodes_features_skip_concat_bias_V_1 { ap_memory {  { out_nodes_features_skip_concat_bias_V_1_address0 mem_address 1 8 }  { out_nodes_features_skip_concat_bias_V_1_ce0 mem_ce 1 1 }  { out_nodes_features_skip_concat_bias_V_1_q0 mem_dout 0 28 } } }
	out_nodes_features_skip_concat_bias_V_2 { ap_memory {  { out_nodes_features_skip_concat_bias_V_2_address0 mem_address 1 8 }  { out_nodes_features_skip_concat_bias_V_2_ce0 mem_ce 1 1 }  { out_nodes_features_skip_concat_bias_V_2_q0 mem_dout 0 28 } } }
	out_nodes_features_skip_concat_bias_V_3 { ap_memory {  { out_nodes_features_skip_concat_bias_V_3_address0 mem_address 1 8 }  { out_nodes_features_skip_concat_bias_V_3_ce0 mem_ce 1 1 }  { out_nodes_features_skip_concat_bias_V_3_q0 mem_dout 0 28 } } }
	out_nodes_features_skip_concat_bias_V_4 { ap_memory {  { out_nodes_features_skip_concat_bias_V_4_address0 mem_address 1 8 }  { out_nodes_features_skip_concat_bias_V_4_ce0 mem_ce 1 1 }  { out_nodes_features_skip_concat_bias_V_4_q0 mem_dout 0 28 } } }
	out_nodes_features_skip_concat_bias_V_5 { ap_memory {  { out_nodes_features_skip_concat_bias_V_5_address0 mem_address 1 8 }  { out_nodes_features_skip_concat_bias_V_5_ce0 mem_ce 1 1 }  { out_nodes_features_skip_concat_bias_V_5_q0 mem_dout 0 28 } } }
	out_nodes_features_skip_concat_bias_V_6 { ap_memory {  { out_nodes_features_skip_concat_bias_V_6_address0 mem_address 1 8 }  { out_nodes_features_skip_concat_bias_V_6_ce0 mem_ce 1 1 }  { out_nodes_features_skip_concat_bias_V_6_q0 mem_dout 0 28 } } }
	out_nodes_features_skip_concat_bias_V_7 { ap_memory {  { out_nodes_features_skip_concat_bias_V_7_address0 mem_address 1 8 }  { out_nodes_features_skip_concat_bias_V_7_ce0 mem_ce 1 1 }  { out_nodes_features_skip_concat_bias_V_7_q0 mem_dout 0 28 } } }
	out_nodes_features_skip_concat_bias_V_8 { ap_memory {  { out_nodes_features_skip_concat_bias_V_8_address0 mem_address 1 8 }  { out_nodes_features_skip_concat_bias_V_8_ce0 mem_ce 1 1 }  { out_nodes_features_skip_concat_bias_V_8_q0 mem_dout 0 28 } } }
	out_nodes_features_skip_concat_bias_V_9 { ap_memory {  { out_nodes_features_skip_concat_bias_V_9_address0 mem_address 1 8 }  { out_nodes_features_skip_concat_bias_V_9_ce0 mem_ce 1 1 }  { out_nodes_features_skip_concat_bias_V_9_q0 mem_dout 0 28 } } }
	out_nodes_features_skip_concat_bias_V_10 { ap_memory {  { out_nodes_features_skip_concat_bias_V_10_address0 mem_address 1 8 }  { out_nodes_features_skip_concat_bias_V_10_ce0 mem_ce 1 1 }  { out_nodes_features_skip_concat_bias_V_10_q0 mem_dout 0 28 } } }
	out_nodes_features_skip_concat_bias_V_11 { ap_memory {  { out_nodes_features_skip_concat_bias_V_11_address0 mem_address 1 8 }  { out_nodes_features_skip_concat_bias_V_11_ce0 mem_ce 1 1 }  { out_nodes_features_skip_concat_bias_V_11_q0 mem_dout 0 28 } } }
	out_nodes_features_skip_concat_bias_V_12 { ap_memory {  { out_nodes_features_skip_concat_bias_V_12_address0 mem_address 1 8 }  { out_nodes_features_skip_concat_bias_V_12_ce0 mem_ce 1 1 }  { out_nodes_features_skip_concat_bias_V_12_q0 mem_dout 0 28 } } }
	out_nodes_features_skip_concat_bias_V_13 { ap_memory {  { out_nodes_features_skip_concat_bias_V_13_address0 mem_address 1 8 }  { out_nodes_features_skip_concat_bias_V_13_ce0 mem_ce 1 1 }  { out_nodes_features_skip_concat_bias_V_13_q0 mem_dout 0 28 } } }
	out_nodes_features_skip_concat_bias_V_14 { ap_memory {  { out_nodes_features_skip_concat_bias_V_14_address0 mem_address 1 8 }  { out_nodes_features_skip_concat_bias_V_14_ce0 mem_ce 1 1 }  { out_nodes_features_skip_concat_bias_V_14_q0 mem_dout 0 28 } } }
	out_nodes_features_skip_concat_bias_V_15 { ap_memory {  { out_nodes_features_skip_concat_bias_V_15_address0 mem_address 1 8 }  { out_nodes_features_skip_concat_bias_V_15_ce0 mem_ce 1 1 }  { out_nodes_features_skip_concat_bias_V_15_q0 mem_dout 0 28 } } }
	h_graph_V { ap_memory {  { h_graph_V_address1 MemPortADDR2 1 8 }  { h_graph_V_ce1 MemPortCE2 1 1 }  { h_graph_V_we1 MemPortWE2 1 1 }  { h_graph_V_d1 MemPortDIN2 1 28 } } }
}
