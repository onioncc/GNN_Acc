set moduleName compute_scores_target
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {compute_scores_target}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_of_nodes int 32 regular  }
	{ layer int 3 regular  }
	{ scoring_fn_target_V_0 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_target_V_1 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_target_V_2 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_target_V_3 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_target_V_4 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_target_V_5 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_target_V_6 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_target_V_7 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_target_V_8 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_target_V_9 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_target_V_10 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_target_V_11 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_target_V_12 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_target_V_13 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_target_V_14 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_target_V_15 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_0 int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_1 int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_2 int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_3 int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_4 int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_5 int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_6 int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_7 int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_8 int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_9 int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_10 int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_11 int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_12 int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_13 int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_14 int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_15 int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V int 28 regular {array 800 { 3 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_of_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "layer", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "scoring_fn_target_V_0", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_1", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_2", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_3", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_4", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_5", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_6", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_7", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_8", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_9", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_10", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_11", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_12", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_13", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_14", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_15", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_0", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_1", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_2", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_3", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_4", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_5", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_6", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_7", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_8", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_9", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_10", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_11", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_12", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_13", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_14", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_15", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 108
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_of_nodes sc_in sc_lv 32 signal 0 } 
	{ layer sc_in sc_lv 3 signal 1 } 
	{ scoring_fn_target_V_0_address0 sc_out sc_lv 5 signal 2 } 
	{ scoring_fn_target_V_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ scoring_fn_target_V_0_q0 sc_in sc_lv 28 signal 2 } 
	{ scoring_fn_target_V_1_address0 sc_out sc_lv 5 signal 3 } 
	{ scoring_fn_target_V_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ scoring_fn_target_V_1_q0 sc_in sc_lv 28 signal 3 } 
	{ scoring_fn_target_V_2_address0 sc_out sc_lv 5 signal 4 } 
	{ scoring_fn_target_V_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ scoring_fn_target_V_2_q0 sc_in sc_lv 28 signal 4 } 
	{ scoring_fn_target_V_3_address0 sc_out sc_lv 5 signal 5 } 
	{ scoring_fn_target_V_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ scoring_fn_target_V_3_q0 sc_in sc_lv 28 signal 5 } 
	{ scoring_fn_target_V_4_address0 sc_out sc_lv 5 signal 6 } 
	{ scoring_fn_target_V_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ scoring_fn_target_V_4_q0 sc_in sc_lv 28 signal 6 } 
	{ scoring_fn_target_V_5_address0 sc_out sc_lv 5 signal 7 } 
	{ scoring_fn_target_V_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ scoring_fn_target_V_5_q0 sc_in sc_lv 28 signal 7 } 
	{ scoring_fn_target_V_6_address0 sc_out sc_lv 5 signal 8 } 
	{ scoring_fn_target_V_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ scoring_fn_target_V_6_q0 sc_in sc_lv 28 signal 8 } 
	{ scoring_fn_target_V_7_address0 sc_out sc_lv 5 signal 9 } 
	{ scoring_fn_target_V_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ scoring_fn_target_V_7_q0 sc_in sc_lv 28 signal 9 } 
	{ scoring_fn_target_V_8_address0 sc_out sc_lv 5 signal 10 } 
	{ scoring_fn_target_V_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ scoring_fn_target_V_8_q0 sc_in sc_lv 28 signal 10 } 
	{ scoring_fn_target_V_9_address0 sc_out sc_lv 5 signal 11 } 
	{ scoring_fn_target_V_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ scoring_fn_target_V_9_q0 sc_in sc_lv 28 signal 11 } 
	{ scoring_fn_target_V_10_address0 sc_out sc_lv 5 signal 12 } 
	{ scoring_fn_target_V_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ scoring_fn_target_V_10_q0 sc_in sc_lv 28 signal 12 } 
	{ scoring_fn_target_V_11_address0 sc_out sc_lv 5 signal 13 } 
	{ scoring_fn_target_V_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ scoring_fn_target_V_11_q0 sc_in sc_lv 28 signal 13 } 
	{ scoring_fn_target_V_12_address0 sc_out sc_lv 5 signal 14 } 
	{ scoring_fn_target_V_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ scoring_fn_target_V_12_q0 sc_in sc_lv 28 signal 14 } 
	{ scoring_fn_target_V_13_address0 sc_out sc_lv 5 signal 15 } 
	{ scoring_fn_target_V_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ scoring_fn_target_V_13_q0 sc_in sc_lv 28 signal 15 } 
	{ scoring_fn_target_V_14_address0 sc_out sc_lv 5 signal 16 } 
	{ scoring_fn_target_V_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ scoring_fn_target_V_14_q0 sc_in sc_lv 28 signal 16 } 
	{ scoring_fn_target_V_15_address0 sc_out sc_lv 5 signal 17 } 
	{ scoring_fn_target_V_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ scoring_fn_target_V_15_q0 sc_in sc_lv 28 signal 17 } 
	{ nodes_features_proj_V_0_address0 sc_out sc_lv 10 signal 18 } 
	{ nodes_features_proj_V_0_ce0 sc_out sc_logic 1 signal 18 } 
	{ nodes_features_proj_V_0_q0 sc_in sc_lv 28 signal 18 } 
	{ nodes_features_proj_V_1_address0 sc_out sc_lv 10 signal 19 } 
	{ nodes_features_proj_V_1_ce0 sc_out sc_logic 1 signal 19 } 
	{ nodes_features_proj_V_1_q0 sc_in sc_lv 28 signal 19 } 
	{ nodes_features_proj_V_2_address0 sc_out sc_lv 10 signal 20 } 
	{ nodes_features_proj_V_2_ce0 sc_out sc_logic 1 signal 20 } 
	{ nodes_features_proj_V_2_q0 sc_in sc_lv 28 signal 20 } 
	{ nodes_features_proj_V_3_address0 sc_out sc_lv 10 signal 21 } 
	{ nodes_features_proj_V_3_ce0 sc_out sc_logic 1 signal 21 } 
	{ nodes_features_proj_V_3_q0 sc_in sc_lv 28 signal 21 } 
	{ nodes_features_proj_V_4_address0 sc_out sc_lv 10 signal 22 } 
	{ nodes_features_proj_V_4_ce0 sc_out sc_logic 1 signal 22 } 
	{ nodes_features_proj_V_4_q0 sc_in sc_lv 28 signal 22 } 
	{ nodes_features_proj_V_5_address0 sc_out sc_lv 10 signal 23 } 
	{ nodes_features_proj_V_5_ce0 sc_out sc_logic 1 signal 23 } 
	{ nodes_features_proj_V_5_q0 sc_in sc_lv 28 signal 23 } 
	{ nodes_features_proj_V_6_address0 sc_out sc_lv 10 signal 24 } 
	{ nodes_features_proj_V_6_ce0 sc_out sc_logic 1 signal 24 } 
	{ nodes_features_proj_V_6_q0 sc_in sc_lv 28 signal 24 } 
	{ nodes_features_proj_V_7_address0 sc_out sc_lv 10 signal 25 } 
	{ nodes_features_proj_V_7_ce0 sc_out sc_logic 1 signal 25 } 
	{ nodes_features_proj_V_7_q0 sc_in sc_lv 28 signal 25 } 
	{ nodes_features_proj_V_8_address0 sc_out sc_lv 10 signal 26 } 
	{ nodes_features_proj_V_8_ce0 sc_out sc_logic 1 signal 26 } 
	{ nodes_features_proj_V_8_q0 sc_in sc_lv 28 signal 26 } 
	{ nodes_features_proj_V_9_address0 sc_out sc_lv 10 signal 27 } 
	{ nodes_features_proj_V_9_ce0 sc_out sc_logic 1 signal 27 } 
	{ nodes_features_proj_V_9_q0 sc_in sc_lv 28 signal 27 } 
	{ nodes_features_proj_V_10_address0 sc_out sc_lv 10 signal 28 } 
	{ nodes_features_proj_V_10_ce0 sc_out sc_logic 1 signal 28 } 
	{ nodes_features_proj_V_10_q0 sc_in sc_lv 28 signal 28 } 
	{ nodes_features_proj_V_11_address0 sc_out sc_lv 10 signal 29 } 
	{ nodes_features_proj_V_11_ce0 sc_out sc_logic 1 signal 29 } 
	{ nodes_features_proj_V_11_q0 sc_in sc_lv 28 signal 29 } 
	{ nodes_features_proj_V_12_address0 sc_out sc_lv 10 signal 30 } 
	{ nodes_features_proj_V_12_ce0 sc_out sc_logic 1 signal 30 } 
	{ nodes_features_proj_V_12_q0 sc_in sc_lv 28 signal 30 } 
	{ nodes_features_proj_V_13_address0 sc_out sc_lv 10 signal 31 } 
	{ nodes_features_proj_V_13_ce0 sc_out sc_logic 1 signal 31 } 
	{ nodes_features_proj_V_13_q0 sc_in sc_lv 28 signal 31 } 
	{ nodes_features_proj_V_14_address0 sc_out sc_lv 10 signal 32 } 
	{ nodes_features_proj_V_14_ce0 sc_out sc_logic 1 signal 32 } 
	{ nodes_features_proj_V_14_q0 sc_in sc_lv 28 signal 32 } 
	{ nodes_features_proj_V_15_address0 sc_out sc_lv 10 signal 33 } 
	{ nodes_features_proj_V_15_ce0 sc_out sc_logic 1 signal 33 } 
	{ nodes_features_proj_V_15_q0 sc_in sc_lv 28 signal 33 } 
	{ scores_target_V_address1 sc_out sc_lv 10 signal 34 } 
	{ scores_target_V_ce1 sc_out sc_logic 1 signal 34 } 
	{ scores_target_V_we1 sc_out sc_logic 1 signal 34 } 
	{ scores_target_V_d1 sc_out sc_lv 28 signal 34 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_of_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_of_nodes", "role": "default" }} , 
 	{ "name": "layer", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer", "role": "default" }} , 
 	{ "name": "scoring_fn_target_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_0", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_0", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_0", "role": "q0" }} , 
 	{ "name": "scoring_fn_target_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_1", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_1", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_1", "role": "q0" }} , 
 	{ "name": "scoring_fn_target_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_2", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_2", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_2", "role": "q0" }} , 
 	{ "name": "scoring_fn_target_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_3", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_3", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_3", "role": "q0" }} , 
 	{ "name": "scoring_fn_target_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_4", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_4", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_4", "role": "q0" }} , 
 	{ "name": "scoring_fn_target_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_5", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_5", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_5", "role": "q0" }} , 
 	{ "name": "scoring_fn_target_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_6", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_6", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_6", "role": "q0" }} , 
 	{ "name": "scoring_fn_target_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_7", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_7", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_7", "role": "q0" }} , 
 	{ "name": "scoring_fn_target_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_8", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_8", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_8", "role": "q0" }} , 
 	{ "name": "scoring_fn_target_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_9", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_9", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_9", "role": "q0" }} , 
 	{ "name": "scoring_fn_target_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_10", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_10", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_10", "role": "q0" }} , 
 	{ "name": "scoring_fn_target_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_11", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_11", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_11", "role": "q0" }} , 
 	{ "name": "scoring_fn_target_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_12", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_12", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_12", "role": "q0" }} , 
 	{ "name": "scoring_fn_target_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_13", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_13", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_13", "role": "q0" }} , 
 	{ "name": "scoring_fn_target_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_14", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_14", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_14", "role": "q0" }} , 
 	{ "name": "scoring_fn_target_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_15", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_15", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_15", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nodes_features_proj_V_0", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_0", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_0", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nodes_features_proj_V_1", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_1", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_1", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nodes_features_proj_V_2", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_2", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_2", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nodes_features_proj_V_3", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_3", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_3", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nodes_features_proj_V_4", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_4", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_4", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nodes_features_proj_V_5", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_5", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_5", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nodes_features_proj_V_6", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_6", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_6", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nodes_features_proj_V_7", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_7", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_7", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nodes_features_proj_V_8", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_8", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_8", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nodes_features_proj_V_9", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_9", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_9", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nodes_features_proj_V_10", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_10", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_10", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nodes_features_proj_V_11", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_11", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_11", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nodes_features_proj_V_12", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_12", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_12", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nodes_features_proj_V_13", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_13", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_13", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nodes_features_proj_V_14", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_14", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_14", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "nodes_features_proj_V_15", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_15", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_15", "role": "q0" }} , 
 	{ "name": "scores_target_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "scores_target_V", "role": "address1" }} , 
 	{ "name": "scores_target_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V", "role": "ce1" }} , 
 	{ "name": "scores_target_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V", "role": "we1" }} , 
 	{ "name": "scores_target_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "compute_scores_target",
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
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_75_1_VITIS_LOOP_76_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U963", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U964", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U965", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U966", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U967", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U968", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U969", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U970", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U971", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U972", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U973", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U974", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U975", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U976", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U977", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U978", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3ns_8ns_10ns_10_4_1_U979", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_scores_target {
		num_of_nodes {Type I LastRead 0 FirstWrite -1}
		layer {Type I LastRead 0 FirstWrite -1}
		scoring_fn_target_V_0 {Type I LastRead 2 FirstWrite -1}
		scoring_fn_target_V_1 {Type I LastRead 2 FirstWrite -1}
		scoring_fn_target_V_2 {Type I LastRead 2 FirstWrite -1}
		scoring_fn_target_V_3 {Type I LastRead 3 FirstWrite -1}
		scoring_fn_target_V_4 {Type I LastRead 3 FirstWrite -1}
		scoring_fn_target_V_5 {Type I LastRead 3 FirstWrite -1}
		scoring_fn_target_V_6 {Type I LastRead 4 FirstWrite -1}
		scoring_fn_target_V_7 {Type I LastRead 4 FirstWrite -1}
		scoring_fn_target_V_8 {Type I LastRead 4 FirstWrite -1}
		scoring_fn_target_V_9 {Type I LastRead 5 FirstWrite -1}
		scoring_fn_target_V_10 {Type I LastRead 5 FirstWrite -1}
		scoring_fn_target_V_11 {Type I LastRead 5 FirstWrite -1}
		scoring_fn_target_V_12 {Type I LastRead 6 FirstWrite -1}
		scoring_fn_target_V_13 {Type I LastRead 6 FirstWrite -1}
		scoring_fn_target_V_14 {Type I LastRead 6 FirstWrite -1}
		scoring_fn_target_V_15 {Type I LastRead 7 FirstWrite -1}
		nodes_features_proj_V_0 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_1 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_2 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_3 {Type I LastRead 3 FirstWrite -1}
		nodes_features_proj_V_4 {Type I LastRead 3 FirstWrite -1}
		nodes_features_proj_V_5 {Type I LastRead 3 FirstWrite -1}
		nodes_features_proj_V_6 {Type I LastRead 4 FirstWrite -1}
		nodes_features_proj_V_7 {Type I LastRead 4 FirstWrite -1}
		nodes_features_proj_V_8 {Type I LastRead 4 FirstWrite -1}
		nodes_features_proj_V_9 {Type I LastRead 5 FirstWrite -1}
		nodes_features_proj_V_10 {Type I LastRead 5 FirstWrite -1}
		nodes_features_proj_V_11 {Type I LastRead 5 FirstWrite -1}
		nodes_features_proj_V_12 {Type I LastRead 6 FirstWrite -1}
		nodes_features_proj_V_13 {Type I LastRead 6 FirstWrite -1}
		nodes_features_proj_V_14 {Type I LastRead 6 FirstWrite -1}
		nodes_features_proj_V_15 {Type I LastRead 7 FirstWrite -1}
		scores_target_V {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	num_of_nodes { ap_none {  { num_of_nodes in_data 0 32 } } }
	layer { ap_none {  { layer in_data 0 3 } } }
	scoring_fn_target_V_0 { ap_memory {  { scoring_fn_target_V_0_address0 mem_address 1 5 }  { scoring_fn_target_V_0_ce0 mem_ce 1 1 }  { scoring_fn_target_V_0_q0 mem_dout 0 28 } } }
	scoring_fn_target_V_1 { ap_memory {  { scoring_fn_target_V_1_address0 mem_address 1 5 }  { scoring_fn_target_V_1_ce0 mem_ce 1 1 }  { scoring_fn_target_V_1_q0 mem_dout 0 28 } } }
	scoring_fn_target_V_2 { ap_memory {  { scoring_fn_target_V_2_address0 mem_address 1 5 }  { scoring_fn_target_V_2_ce0 mem_ce 1 1 }  { scoring_fn_target_V_2_q0 mem_dout 0 28 } } }
	scoring_fn_target_V_3 { ap_memory {  { scoring_fn_target_V_3_address0 mem_address 1 5 }  { scoring_fn_target_V_3_ce0 mem_ce 1 1 }  { scoring_fn_target_V_3_q0 mem_dout 0 28 } } }
	scoring_fn_target_V_4 { ap_memory {  { scoring_fn_target_V_4_address0 mem_address 1 5 }  { scoring_fn_target_V_4_ce0 mem_ce 1 1 }  { scoring_fn_target_V_4_q0 mem_dout 0 28 } } }
	scoring_fn_target_V_5 { ap_memory {  { scoring_fn_target_V_5_address0 mem_address 1 5 }  { scoring_fn_target_V_5_ce0 mem_ce 1 1 }  { scoring_fn_target_V_5_q0 mem_dout 0 28 } } }
	scoring_fn_target_V_6 { ap_memory {  { scoring_fn_target_V_6_address0 mem_address 1 5 }  { scoring_fn_target_V_6_ce0 mem_ce 1 1 }  { scoring_fn_target_V_6_q0 mem_dout 0 28 } } }
	scoring_fn_target_V_7 { ap_memory {  { scoring_fn_target_V_7_address0 mem_address 1 5 }  { scoring_fn_target_V_7_ce0 mem_ce 1 1 }  { scoring_fn_target_V_7_q0 mem_dout 0 28 } } }
	scoring_fn_target_V_8 { ap_memory {  { scoring_fn_target_V_8_address0 mem_address 1 5 }  { scoring_fn_target_V_8_ce0 mem_ce 1 1 }  { scoring_fn_target_V_8_q0 mem_dout 0 28 } } }
	scoring_fn_target_V_9 { ap_memory {  { scoring_fn_target_V_9_address0 mem_address 1 5 }  { scoring_fn_target_V_9_ce0 mem_ce 1 1 }  { scoring_fn_target_V_9_q0 mem_dout 0 28 } } }
	scoring_fn_target_V_10 { ap_memory {  { scoring_fn_target_V_10_address0 mem_address 1 5 }  { scoring_fn_target_V_10_ce0 mem_ce 1 1 }  { scoring_fn_target_V_10_q0 mem_dout 0 28 } } }
	scoring_fn_target_V_11 { ap_memory {  { scoring_fn_target_V_11_address0 mem_address 1 5 }  { scoring_fn_target_V_11_ce0 mem_ce 1 1 }  { scoring_fn_target_V_11_q0 mem_dout 0 28 } } }
	scoring_fn_target_V_12 { ap_memory {  { scoring_fn_target_V_12_address0 mem_address 1 5 }  { scoring_fn_target_V_12_ce0 mem_ce 1 1 }  { scoring_fn_target_V_12_q0 mem_dout 0 28 } } }
	scoring_fn_target_V_13 { ap_memory {  { scoring_fn_target_V_13_address0 mem_address 1 5 }  { scoring_fn_target_V_13_ce0 mem_ce 1 1 }  { scoring_fn_target_V_13_q0 mem_dout 0 28 } } }
	scoring_fn_target_V_14 { ap_memory {  { scoring_fn_target_V_14_address0 mem_address 1 5 }  { scoring_fn_target_V_14_ce0 mem_ce 1 1 }  { scoring_fn_target_V_14_q0 mem_dout 0 28 } } }
	scoring_fn_target_V_15 { ap_memory {  { scoring_fn_target_V_15_address0 mem_address 1 5 }  { scoring_fn_target_V_15_ce0 mem_ce 1 1 }  { scoring_fn_target_V_15_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_0 { ap_memory {  { nodes_features_proj_V_0_address0 mem_address 1 10 }  { nodes_features_proj_V_0_ce0 mem_ce 1 1 }  { nodes_features_proj_V_0_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_1 { ap_memory {  { nodes_features_proj_V_1_address0 mem_address 1 10 }  { nodes_features_proj_V_1_ce0 mem_ce 1 1 }  { nodes_features_proj_V_1_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_2 { ap_memory {  { nodes_features_proj_V_2_address0 mem_address 1 10 }  { nodes_features_proj_V_2_ce0 mem_ce 1 1 }  { nodes_features_proj_V_2_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_3 { ap_memory {  { nodes_features_proj_V_3_address0 mem_address 1 10 }  { nodes_features_proj_V_3_ce0 mem_ce 1 1 }  { nodes_features_proj_V_3_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_4 { ap_memory {  { nodes_features_proj_V_4_address0 mem_address 1 10 }  { nodes_features_proj_V_4_ce0 mem_ce 1 1 }  { nodes_features_proj_V_4_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_5 { ap_memory {  { nodes_features_proj_V_5_address0 mem_address 1 10 }  { nodes_features_proj_V_5_ce0 mem_ce 1 1 }  { nodes_features_proj_V_5_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_6 { ap_memory {  { nodes_features_proj_V_6_address0 mem_address 1 10 }  { nodes_features_proj_V_6_ce0 mem_ce 1 1 }  { nodes_features_proj_V_6_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_7 { ap_memory {  { nodes_features_proj_V_7_address0 mem_address 1 10 }  { nodes_features_proj_V_7_ce0 mem_ce 1 1 }  { nodes_features_proj_V_7_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_8 { ap_memory {  { nodes_features_proj_V_8_address0 mem_address 1 10 }  { nodes_features_proj_V_8_ce0 mem_ce 1 1 }  { nodes_features_proj_V_8_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_9 { ap_memory {  { nodes_features_proj_V_9_address0 mem_address 1 10 }  { nodes_features_proj_V_9_ce0 mem_ce 1 1 }  { nodes_features_proj_V_9_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_10 { ap_memory {  { nodes_features_proj_V_10_address0 mem_address 1 10 }  { nodes_features_proj_V_10_ce0 mem_ce 1 1 }  { nodes_features_proj_V_10_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_11 { ap_memory {  { nodes_features_proj_V_11_address0 mem_address 1 10 }  { nodes_features_proj_V_11_ce0 mem_ce 1 1 }  { nodes_features_proj_V_11_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_12 { ap_memory {  { nodes_features_proj_V_12_address0 mem_address 1 10 }  { nodes_features_proj_V_12_ce0 mem_ce 1 1 }  { nodes_features_proj_V_12_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_13 { ap_memory {  { nodes_features_proj_V_13_address0 mem_address 1 10 }  { nodes_features_proj_V_13_ce0 mem_ce 1 1 }  { nodes_features_proj_V_13_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_14 { ap_memory {  { nodes_features_proj_V_14_address0 mem_address 1 10 }  { nodes_features_proj_V_14_ce0 mem_ce 1 1 }  { nodes_features_proj_V_14_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_15 { ap_memory {  { nodes_features_proj_V_15_address0 mem_address 1 10 }  { nodes_features_proj_V_15_ce0 mem_ce 1 1 }  { nodes_features_proj_V_15_q0 mem_dout 0 28 } } }
	scores_target_V { ap_memory {  { scores_target_V_address1 MemPortADDR2 1 10 }  { scores_target_V_ce1 MemPortCE2 1 1 }  { scores_target_V_we1 MemPortWE2 1 1 }  { scores_target_V_d1 MemPortDIN2 1 28 } } }
}
