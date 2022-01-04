set moduleName compute_all_scores
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
set C_modelName {compute_all_scores}
set C_modelType { void 0 }
set C_modelArgList {
	{ scores_target_V_0 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_1 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_2 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_3 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_4 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_5 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_6 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_7 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_8 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_9 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_10 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_11 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_12 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_13 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_14 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_15 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_16 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_17 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V_18 int 28 regular {array 4 { 1 3 } 1 1 } {global 0}  }
	{ scores_source_V int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_0 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_1 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_2 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_3 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_4 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_5 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_6 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_7 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_8 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_9 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_10 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_11 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_12 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_13 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_14 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_15 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_16 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_17 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_18 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "scores_target_V_0", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_1", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_2", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_3", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_4", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_5", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_6", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_7", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_8", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_9", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_10", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_11", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_12", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_13", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_14", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_15", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_16", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_17", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V_18", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_source_V", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_0", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_1", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_2", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_3", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_4", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_5", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_6", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_7", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_8", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_9", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_10", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_11", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_12", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_13", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_14", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_15", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_16", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_17", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_18", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 142
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ scores_target_V_0_address0 sc_out sc_lv 2 signal 0 } 
	{ scores_target_V_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ scores_target_V_0_q0 sc_in sc_lv 28 signal 0 } 
	{ scores_target_V_1_address0 sc_out sc_lv 2 signal 1 } 
	{ scores_target_V_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ scores_target_V_1_q0 sc_in sc_lv 28 signal 1 } 
	{ scores_target_V_2_address0 sc_out sc_lv 2 signal 2 } 
	{ scores_target_V_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ scores_target_V_2_q0 sc_in sc_lv 28 signal 2 } 
	{ scores_target_V_3_address0 sc_out sc_lv 2 signal 3 } 
	{ scores_target_V_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ scores_target_V_3_q0 sc_in sc_lv 28 signal 3 } 
	{ scores_target_V_4_address0 sc_out sc_lv 2 signal 4 } 
	{ scores_target_V_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ scores_target_V_4_q0 sc_in sc_lv 28 signal 4 } 
	{ scores_target_V_5_address0 sc_out sc_lv 2 signal 5 } 
	{ scores_target_V_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ scores_target_V_5_q0 sc_in sc_lv 28 signal 5 } 
	{ scores_target_V_6_address0 sc_out sc_lv 2 signal 6 } 
	{ scores_target_V_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ scores_target_V_6_q0 sc_in sc_lv 28 signal 6 } 
	{ scores_target_V_7_address0 sc_out sc_lv 2 signal 7 } 
	{ scores_target_V_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ scores_target_V_7_q0 sc_in sc_lv 28 signal 7 } 
	{ scores_target_V_8_address0 sc_out sc_lv 2 signal 8 } 
	{ scores_target_V_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ scores_target_V_8_q0 sc_in sc_lv 28 signal 8 } 
	{ scores_target_V_9_address0 sc_out sc_lv 2 signal 9 } 
	{ scores_target_V_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ scores_target_V_9_q0 sc_in sc_lv 28 signal 9 } 
	{ scores_target_V_10_address0 sc_out sc_lv 2 signal 10 } 
	{ scores_target_V_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ scores_target_V_10_q0 sc_in sc_lv 28 signal 10 } 
	{ scores_target_V_11_address0 sc_out sc_lv 2 signal 11 } 
	{ scores_target_V_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ scores_target_V_11_q0 sc_in sc_lv 28 signal 11 } 
	{ scores_target_V_12_address0 sc_out sc_lv 2 signal 12 } 
	{ scores_target_V_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ scores_target_V_12_q0 sc_in sc_lv 28 signal 12 } 
	{ scores_target_V_13_address0 sc_out sc_lv 2 signal 13 } 
	{ scores_target_V_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ scores_target_V_13_q0 sc_in sc_lv 28 signal 13 } 
	{ scores_target_V_14_address0 sc_out sc_lv 2 signal 14 } 
	{ scores_target_V_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ scores_target_V_14_q0 sc_in sc_lv 28 signal 14 } 
	{ scores_target_V_15_address0 sc_out sc_lv 2 signal 15 } 
	{ scores_target_V_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ scores_target_V_15_q0 sc_in sc_lv 28 signal 15 } 
	{ scores_target_V_16_address0 sc_out sc_lv 2 signal 16 } 
	{ scores_target_V_16_ce0 sc_out sc_logic 1 signal 16 } 
	{ scores_target_V_16_q0 sc_in sc_lv 28 signal 16 } 
	{ scores_target_V_17_address0 sc_out sc_lv 2 signal 17 } 
	{ scores_target_V_17_ce0 sc_out sc_logic 1 signal 17 } 
	{ scores_target_V_17_q0 sc_in sc_lv 28 signal 17 } 
	{ scores_target_V_18_address0 sc_out sc_lv 2 signal 18 } 
	{ scores_target_V_18_ce0 sc_out sc_logic 1 signal 18 } 
	{ scores_target_V_18_q0 sc_in sc_lv 28 signal 18 } 
	{ scores_source_V_address0 sc_out sc_lv 9 signal 19 } 
	{ scores_source_V_ce0 sc_out sc_logic 1 signal 19 } 
	{ scores_source_V_q0 sc_in sc_lv 28 signal 19 } 
	{ all_scores_V_0_address1 sc_out sc_lv 9 signal 20 } 
	{ all_scores_V_0_ce1 sc_out sc_logic 1 signal 20 } 
	{ all_scores_V_0_we1 sc_out sc_logic 1 signal 20 } 
	{ all_scores_V_0_d1 sc_out sc_lv 28 signal 20 } 
	{ all_scores_V_1_address1 sc_out sc_lv 9 signal 21 } 
	{ all_scores_V_1_ce1 sc_out sc_logic 1 signal 21 } 
	{ all_scores_V_1_we1 sc_out sc_logic 1 signal 21 } 
	{ all_scores_V_1_d1 sc_out sc_lv 28 signal 21 } 
	{ all_scores_V_2_address1 sc_out sc_lv 9 signal 22 } 
	{ all_scores_V_2_ce1 sc_out sc_logic 1 signal 22 } 
	{ all_scores_V_2_we1 sc_out sc_logic 1 signal 22 } 
	{ all_scores_V_2_d1 sc_out sc_lv 28 signal 22 } 
	{ all_scores_V_3_address1 sc_out sc_lv 9 signal 23 } 
	{ all_scores_V_3_ce1 sc_out sc_logic 1 signal 23 } 
	{ all_scores_V_3_we1 sc_out sc_logic 1 signal 23 } 
	{ all_scores_V_3_d1 sc_out sc_lv 28 signal 23 } 
	{ all_scores_V_4_address1 sc_out sc_lv 9 signal 24 } 
	{ all_scores_V_4_ce1 sc_out sc_logic 1 signal 24 } 
	{ all_scores_V_4_we1 sc_out sc_logic 1 signal 24 } 
	{ all_scores_V_4_d1 sc_out sc_lv 28 signal 24 } 
	{ all_scores_V_5_address1 sc_out sc_lv 9 signal 25 } 
	{ all_scores_V_5_ce1 sc_out sc_logic 1 signal 25 } 
	{ all_scores_V_5_we1 sc_out sc_logic 1 signal 25 } 
	{ all_scores_V_5_d1 sc_out sc_lv 28 signal 25 } 
	{ all_scores_V_6_address1 sc_out sc_lv 9 signal 26 } 
	{ all_scores_V_6_ce1 sc_out sc_logic 1 signal 26 } 
	{ all_scores_V_6_we1 sc_out sc_logic 1 signal 26 } 
	{ all_scores_V_6_d1 sc_out sc_lv 28 signal 26 } 
	{ all_scores_V_7_address1 sc_out sc_lv 9 signal 27 } 
	{ all_scores_V_7_ce1 sc_out sc_logic 1 signal 27 } 
	{ all_scores_V_7_we1 sc_out sc_logic 1 signal 27 } 
	{ all_scores_V_7_d1 sc_out sc_lv 28 signal 27 } 
	{ all_scores_V_8_address1 sc_out sc_lv 9 signal 28 } 
	{ all_scores_V_8_ce1 sc_out sc_logic 1 signal 28 } 
	{ all_scores_V_8_we1 sc_out sc_logic 1 signal 28 } 
	{ all_scores_V_8_d1 sc_out sc_lv 28 signal 28 } 
	{ all_scores_V_9_address1 sc_out sc_lv 9 signal 29 } 
	{ all_scores_V_9_ce1 sc_out sc_logic 1 signal 29 } 
	{ all_scores_V_9_we1 sc_out sc_logic 1 signal 29 } 
	{ all_scores_V_9_d1 sc_out sc_lv 28 signal 29 } 
	{ all_scores_V_10_address1 sc_out sc_lv 9 signal 30 } 
	{ all_scores_V_10_ce1 sc_out sc_logic 1 signal 30 } 
	{ all_scores_V_10_we1 sc_out sc_logic 1 signal 30 } 
	{ all_scores_V_10_d1 sc_out sc_lv 28 signal 30 } 
	{ all_scores_V_11_address1 sc_out sc_lv 9 signal 31 } 
	{ all_scores_V_11_ce1 sc_out sc_logic 1 signal 31 } 
	{ all_scores_V_11_we1 sc_out sc_logic 1 signal 31 } 
	{ all_scores_V_11_d1 sc_out sc_lv 28 signal 31 } 
	{ all_scores_V_12_address1 sc_out sc_lv 9 signal 32 } 
	{ all_scores_V_12_ce1 sc_out sc_logic 1 signal 32 } 
	{ all_scores_V_12_we1 sc_out sc_logic 1 signal 32 } 
	{ all_scores_V_12_d1 sc_out sc_lv 28 signal 32 } 
	{ all_scores_V_13_address1 sc_out sc_lv 9 signal 33 } 
	{ all_scores_V_13_ce1 sc_out sc_logic 1 signal 33 } 
	{ all_scores_V_13_we1 sc_out sc_logic 1 signal 33 } 
	{ all_scores_V_13_d1 sc_out sc_lv 28 signal 33 } 
	{ all_scores_V_14_address1 sc_out sc_lv 9 signal 34 } 
	{ all_scores_V_14_ce1 sc_out sc_logic 1 signal 34 } 
	{ all_scores_V_14_we1 sc_out sc_logic 1 signal 34 } 
	{ all_scores_V_14_d1 sc_out sc_lv 28 signal 34 } 
	{ all_scores_V_15_address1 sc_out sc_lv 9 signal 35 } 
	{ all_scores_V_15_ce1 sc_out sc_logic 1 signal 35 } 
	{ all_scores_V_15_we1 sc_out sc_logic 1 signal 35 } 
	{ all_scores_V_15_d1 sc_out sc_lv 28 signal 35 } 
	{ all_scores_V_16_address1 sc_out sc_lv 9 signal 36 } 
	{ all_scores_V_16_ce1 sc_out sc_logic 1 signal 36 } 
	{ all_scores_V_16_we1 sc_out sc_logic 1 signal 36 } 
	{ all_scores_V_16_d1 sc_out sc_lv 28 signal 36 } 
	{ all_scores_V_17_address1 sc_out sc_lv 9 signal 37 } 
	{ all_scores_V_17_ce1 sc_out sc_logic 1 signal 37 } 
	{ all_scores_V_17_we1 sc_out sc_logic 1 signal 37 } 
	{ all_scores_V_17_d1 sc_out sc_lv 28 signal 37 } 
	{ all_scores_V_18_address1 sc_out sc_lv 9 signal 38 } 
	{ all_scores_V_18_ce1 sc_out sc_logic 1 signal 38 } 
	{ all_scores_V_18_we1 sc_out sc_logic 1 signal 38 } 
	{ all_scores_V_18_d1 sc_out sc_lv 28 signal 38 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "scores_target_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_0", "role": "address0" }} , 
 	{ "name": "scores_target_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_0", "role": "ce0" }} , 
 	{ "name": "scores_target_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_0", "role": "q0" }} , 
 	{ "name": "scores_target_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_1", "role": "address0" }} , 
 	{ "name": "scores_target_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_1", "role": "ce0" }} , 
 	{ "name": "scores_target_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_1", "role": "q0" }} , 
 	{ "name": "scores_target_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_2", "role": "address0" }} , 
 	{ "name": "scores_target_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_2", "role": "ce0" }} , 
 	{ "name": "scores_target_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_2", "role": "q0" }} , 
 	{ "name": "scores_target_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_3", "role": "address0" }} , 
 	{ "name": "scores_target_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_3", "role": "ce0" }} , 
 	{ "name": "scores_target_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_3", "role": "q0" }} , 
 	{ "name": "scores_target_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_4", "role": "address0" }} , 
 	{ "name": "scores_target_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_4", "role": "ce0" }} , 
 	{ "name": "scores_target_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_4", "role": "q0" }} , 
 	{ "name": "scores_target_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_5", "role": "address0" }} , 
 	{ "name": "scores_target_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_5", "role": "ce0" }} , 
 	{ "name": "scores_target_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_5", "role": "q0" }} , 
 	{ "name": "scores_target_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_6", "role": "address0" }} , 
 	{ "name": "scores_target_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_6", "role": "ce0" }} , 
 	{ "name": "scores_target_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_6", "role": "q0" }} , 
 	{ "name": "scores_target_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_7", "role": "address0" }} , 
 	{ "name": "scores_target_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_7", "role": "ce0" }} , 
 	{ "name": "scores_target_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_7", "role": "q0" }} , 
 	{ "name": "scores_target_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_8", "role": "address0" }} , 
 	{ "name": "scores_target_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_8", "role": "ce0" }} , 
 	{ "name": "scores_target_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_8", "role": "q0" }} , 
 	{ "name": "scores_target_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_9", "role": "address0" }} , 
 	{ "name": "scores_target_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_9", "role": "ce0" }} , 
 	{ "name": "scores_target_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_9", "role": "q0" }} , 
 	{ "name": "scores_target_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_10", "role": "address0" }} , 
 	{ "name": "scores_target_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_10", "role": "ce0" }} , 
 	{ "name": "scores_target_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_10", "role": "q0" }} , 
 	{ "name": "scores_target_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_11", "role": "address0" }} , 
 	{ "name": "scores_target_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_11", "role": "ce0" }} , 
 	{ "name": "scores_target_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_11", "role": "q0" }} , 
 	{ "name": "scores_target_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_12", "role": "address0" }} , 
 	{ "name": "scores_target_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_12", "role": "ce0" }} , 
 	{ "name": "scores_target_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_12", "role": "q0" }} , 
 	{ "name": "scores_target_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_13", "role": "address0" }} , 
 	{ "name": "scores_target_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_13", "role": "ce0" }} , 
 	{ "name": "scores_target_V_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_13", "role": "q0" }} , 
 	{ "name": "scores_target_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_14", "role": "address0" }} , 
 	{ "name": "scores_target_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_14", "role": "ce0" }} , 
 	{ "name": "scores_target_V_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_14", "role": "q0" }} , 
 	{ "name": "scores_target_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_15", "role": "address0" }} , 
 	{ "name": "scores_target_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_15", "role": "ce0" }} , 
 	{ "name": "scores_target_V_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_15", "role": "q0" }} , 
 	{ "name": "scores_target_V_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_16", "role": "address0" }} , 
 	{ "name": "scores_target_V_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_16", "role": "ce0" }} , 
 	{ "name": "scores_target_V_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_16", "role": "q0" }} , 
 	{ "name": "scores_target_V_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_17", "role": "address0" }} , 
 	{ "name": "scores_target_V_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_17", "role": "ce0" }} , 
 	{ "name": "scores_target_V_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_17", "role": "q0" }} , 
 	{ "name": "scores_target_V_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scores_target_V_18", "role": "address0" }} , 
 	{ "name": "scores_target_V_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V_18", "role": "ce0" }} , 
 	{ "name": "scores_target_V_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V_18", "role": "q0" }} , 
 	{ "name": "scores_source_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "scores_source_V", "role": "address0" }} , 
 	{ "name": "scores_source_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_source_V", "role": "ce0" }} , 
 	{ "name": "scores_source_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_source_V", "role": "q0" }} , 
 	{ "name": "all_scores_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_0", "role": "address1" }} , 
 	{ "name": "all_scores_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_0", "role": "ce1" }} , 
 	{ "name": "all_scores_V_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_0", "role": "we1" }} , 
 	{ "name": "all_scores_V_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_0", "role": "d1" }} , 
 	{ "name": "all_scores_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_1", "role": "address1" }} , 
 	{ "name": "all_scores_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_1", "role": "ce1" }} , 
 	{ "name": "all_scores_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_1", "role": "we1" }} , 
 	{ "name": "all_scores_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_1", "role": "d1" }} , 
 	{ "name": "all_scores_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_2", "role": "address1" }} , 
 	{ "name": "all_scores_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_2", "role": "ce1" }} , 
 	{ "name": "all_scores_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_2", "role": "we1" }} , 
 	{ "name": "all_scores_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_2", "role": "d1" }} , 
 	{ "name": "all_scores_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_3", "role": "address1" }} , 
 	{ "name": "all_scores_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_3", "role": "ce1" }} , 
 	{ "name": "all_scores_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_3", "role": "we1" }} , 
 	{ "name": "all_scores_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_3", "role": "d1" }} , 
 	{ "name": "all_scores_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_4", "role": "address1" }} , 
 	{ "name": "all_scores_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_4", "role": "ce1" }} , 
 	{ "name": "all_scores_V_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_4", "role": "we1" }} , 
 	{ "name": "all_scores_V_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_4", "role": "d1" }} , 
 	{ "name": "all_scores_V_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_5", "role": "address1" }} , 
 	{ "name": "all_scores_V_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_5", "role": "ce1" }} , 
 	{ "name": "all_scores_V_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_5", "role": "we1" }} , 
 	{ "name": "all_scores_V_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_5", "role": "d1" }} , 
 	{ "name": "all_scores_V_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_6", "role": "address1" }} , 
 	{ "name": "all_scores_V_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_6", "role": "ce1" }} , 
 	{ "name": "all_scores_V_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_6", "role": "we1" }} , 
 	{ "name": "all_scores_V_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_6", "role": "d1" }} , 
 	{ "name": "all_scores_V_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_7", "role": "address1" }} , 
 	{ "name": "all_scores_V_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_7", "role": "ce1" }} , 
 	{ "name": "all_scores_V_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_7", "role": "we1" }} , 
 	{ "name": "all_scores_V_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_7", "role": "d1" }} , 
 	{ "name": "all_scores_V_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_8", "role": "address1" }} , 
 	{ "name": "all_scores_V_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_8", "role": "ce1" }} , 
 	{ "name": "all_scores_V_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_8", "role": "we1" }} , 
 	{ "name": "all_scores_V_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_8", "role": "d1" }} , 
 	{ "name": "all_scores_V_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_9", "role": "address1" }} , 
 	{ "name": "all_scores_V_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_9", "role": "ce1" }} , 
 	{ "name": "all_scores_V_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_9", "role": "we1" }} , 
 	{ "name": "all_scores_V_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_9", "role": "d1" }} , 
 	{ "name": "all_scores_V_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_10", "role": "address1" }} , 
 	{ "name": "all_scores_V_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_10", "role": "ce1" }} , 
 	{ "name": "all_scores_V_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_10", "role": "we1" }} , 
 	{ "name": "all_scores_V_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_10", "role": "d1" }} , 
 	{ "name": "all_scores_V_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_11", "role": "address1" }} , 
 	{ "name": "all_scores_V_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_11", "role": "ce1" }} , 
 	{ "name": "all_scores_V_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_11", "role": "we1" }} , 
 	{ "name": "all_scores_V_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_11", "role": "d1" }} , 
 	{ "name": "all_scores_V_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_12", "role": "address1" }} , 
 	{ "name": "all_scores_V_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_12", "role": "ce1" }} , 
 	{ "name": "all_scores_V_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_12", "role": "we1" }} , 
 	{ "name": "all_scores_V_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_12", "role": "d1" }} , 
 	{ "name": "all_scores_V_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_13", "role": "address1" }} , 
 	{ "name": "all_scores_V_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_13", "role": "ce1" }} , 
 	{ "name": "all_scores_V_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_13", "role": "we1" }} , 
 	{ "name": "all_scores_V_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_13", "role": "d1" }} , 
 	{ "name": "all_scores_V_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_14", "role": "address1" }} , 
 	{ "name": "all_scores_V_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_14", "role": "ce1" }} , 
 	{ "name": "all_scores_V_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_14", "role": "we1" }} , 
 	{ "name": "all_scores_V_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_14", "role": "d1" }} , 
 	{ "name": "all_scores_V_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_15", "role": "address1" }} , 
 	{ "name": "all_scores_V_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_15", "role": "ce1" }} , 
 	{ "name": "all_scores_V_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_15", "role": "we1" }} , 
 	{ "name": "all_scores_V_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_15", "role": "d1" }} , 
 	{ "name": "all_scores_V_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_16", "role": "address1" }} , 
 	{ "name": "all_scores_V_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_16", "role": "ce1" }} , 
 	{ "name": "all_scores_V_16_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_16", "role": "we1" }} , 
 	{ "name": "all_scores_V_16_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_16", "role": "d1" }} , 
 	{ "name": "all_scores_V_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_17", "role": "address1" }} , 
 	{ "name": "all_scores_V_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_17", "role": "ce1" }} , 
 	{ "name": "all_scores_V_17_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_17", "role": "we1" }} , 
 	{ "name": "all_scores_V_17_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_17", "role": "d1" }} , 
 	{ "name": "all_scores_V_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_18", "role": "address1" }} , 
 	{ "name": "all_scores_V_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_18", "role": "ce1" }} , 
 	{ "name": "all_scores_V_18_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_18", "role": "we1" }} , 
 	{ "name": "all_scores_V_18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_18", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "compute_all_scores",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "86", "EstimateLatencyMax" : "86",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "scores_target_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_source_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_18", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_88_1_VITIS_LOOP_89_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3ns_7ns_5ns_9_4_1_U1195", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1196", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1197", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1198", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1199", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1200", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1201", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1202", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1203", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1204", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1205", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1206", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1207", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1208", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1209", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1210", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1211", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1212", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1213", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1214", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_all_scores {
		scores_target_V_0 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_1 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_2 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_3 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_4 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_5 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_6 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_7 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_8 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_9 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_10 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_11 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_12 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_13 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_14 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_15 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_16 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_17 {Type I LastRead 3 FirstWrite -1}
		scores_target_V_18 {Type I LastRead 3 FirstWrite -1}
		scores_source_V {Type I LastRead 3 FirstWrite -1}
		all_scores_V_0 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_1 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_2 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_3 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_4 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_5 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_6 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_7 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_8 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_9 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_10 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_11 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_12 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_13 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_14 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_15 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_16 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_17 {Type O LastRead -1 FirstWrite 9}
		all_scores_V_18 {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "86", "Max" : "86"}
	, {"Name" : "Interval", "Min" : "86", "Max" : "86"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	scores_target_V_0 { ap_memory {  { scores_target_V_0_address0 mem_address 1 2 }  { scores_target_V_0_ce0 mem_ce 1 1 }  { scores_target_V_0_q0 mem_dout 0 28 } } }
	scores_target_V_1 { ap_memory {  { scores_target_V_1_address0 mem_address 1 2 }  { scores_target_V_1_ce0 mem_ce 1 1 }  { scores_target_V_1_q0 mem_dout 0 28 } } }
	scores_target_V_2 { ap_memory {  { scores_target_V_2_address0 mem_address 1 2 }  { scores_target_V_2_ce0 mem_ce 1 1 }  { scores_target_V_2_q0 mem_dout 0 28 } } }
	scores_target_V_3 { ap_memory {  { scores_target_V_3_address0 mem_address 1 2 }  { scores_target_V_3_ce0 mem_ce 1 1 }  { scores_target_V_3_q0 mem_dout 0 28 } } }
	scores_target_V_4 { ap_memory {  { scores_target_V_4_address0 mem_address 1 2 }  { scores_target_V_4_ce0 mem_ce 1 1 }  { scores_target_V_4_q0 mem_dout 0 28 } } }
	scores_target_V_5 { ap_memory {  { scores_target_V_5_address0 mem_address 1 2 }  { scores_target_V_5_ce0 mem_ce 1 1 }  { scores_target_V_5_q0 mem_dout 0 28 } } }
	scores_target_V_6 { ap_memory {  { scores_target_V_6_address0 mem_address 1 2 }  { scores_target_V_6_ce0 mem_ce 1 1 }  { scores_target_V_6_q0 mem_dout 0 28 } } }
	scores_target_V_7 { ap_memory {  { scores_target_V_7_address0 mem_address 1 2 }  { scores_target_V_7_ce0 mem_ce 1 1 }  { scores_target_V_7_q0 mem_dout 0 28 } } }
	scores_target_V_8 { ap_memory {  { scores_target_V_8_address0 mem_address 1 2 }  { scores_target_V_8_ce0 mem_ce 1 1 }  { scores_target_V_8_q0 mem_dout 0 28 } } }
	scores_target_V_9 { ap_memory {  { scores_target_V_9_address0 mem_address 1 2 }  { scores_target_V_9_ce0 mem_ce 1 1 }  { scores_target_V_9_q0 mem_dout 0 28 } } }
	scores_target_V_10 { ap_memory {  { scores_target_V_10_address0 mem_address 1 2 }  { scores_target_V_10_ce0 mem_ce 1 1 }  { scores_target_V_10_q0 mem_dout 0 28 } } }
	scores_target_V_11 { ap_memory {  { scores_target_V_11_address0 mem_address 1 2 }  { scores_target_V_11_ce0 mem_ce 1 1 }  { scores_target_V_11_q0 mem_dout 0 28 } } }
	scores_target_V_12 { ap_memory {  { scores_target_V_12_address0 mem_address 1 2 }  { scores_target_V_12_ce0 mem_ce 1 1 }  { scores_target_V_12_q0 mem_dout 0 28 } } }
	scores_target_V_13 { ap_memory {  { scores_target_V_13_address0 mem_address 1 2 }  { scores_target_V_13_ce0 mem_ce 1 1 }  { scores_target_V_13_q0 mem_dout 0 28 } } }
	scores_target_V_14 { ap_memory {  { scores_target_V_14_address0 mem_address 1 2 }  { scores_target_V_14_ce0 mem_ce 1 1 }  { scores_target_V_14_q0 mem_dout 0 28 } } }
	scores_target_V_15 { ap_memory {  { scores_target_V_15_address0 mem_address 1 2 }  { scores_target_V_15_ce0 mem_ce 1 1 }  { scores_target_V_15_q0 mem_dout 0 28 } } }
	scores_target_V_16 { ap_memory {  { scores_target_V_16_address0 mem_address 1 2 }  { scores_target_V_16_ce0 mem_ce 1 1 }  { scores_target_V_16_q0 mem_dout 0 28 } } }
	scores_target_V_17 { ap_memory {  { scores_target_V_17_address0 mem_address 1 2 }  { scores_target_V_17_ce0 mem_ce 1 1 }  { scores_target_V_17_q0 mem_dout 0 28 } } }
	scores_target_V_18 { ap_memory {  { scores_target_V_18_address0 mem_address 1 2 }  { scores_target_V_18_ce0 mem_ce 1 1 }  { scores_target_V_18_q0 mem_dout 0 28 } } }
	scores_source_V { ap_memory {  { scores_source_V_address0 mem_address 1 9 }  { scores_source_V_ce0 mem_ce 1 1 }  { scores_source_V_q0 mem_dout 0 28 } } }
	all_scores_V_0 { ap_memory {  { all_scores_V_0_address1 MemPortADDR2 1 9 }  { all_scores_V_0_ce1 MemPortCE2 1 1 }  { all_scores_V_0_we1 MemPortWE2 1 1 }  { all_scores_V_0_d1 MemPortDIN2 1 28 } } }
	all_scores_V_1 { ap_memory {  { all_scores_V_1_address1 MemPortADDR2 1 9 }  { all_scores_V_1_ce1 MemPortCE2 1 1 }  { all_scores_V_1_we1 MemPortWE2 1 1 }  { all_scores_V_1_d1 MemPortDIN2 1 28 } } }
	all_scores_V_2 { ap_memory {  { all_scores_V_2_address1 MemPortADDR2 1 9 }  { all_scores_V_2_ce1 MemPortCE2 1 1 }  { all_scores_V_2_we1 MemPortWE2 1 1 }  { all_scores_V_2_d1 MemPortDIN2 1 28 } } }
	all_scores_V_3 { ap_memory {  { all_scores_V_3_address1 MemPortADDR2 1 9 }  { all_scores_V_3_ce1 MemPortCE2 1 1 }  { all_scores_V_3_we1 MemPortWE2 1 1 }  { all_scores_V_3_d1 MemPortDIN2 1 28 } } }
	all_scores_V_4 { ap_memory {  { all_scores_V_4_address1 MemPortADDR2 1 9 }  { all_scores_V_4_ce1 MemPortCE2 1 1 }  { all_scores_V_4_we1 MemPortWE2 1 1 }  { all_scores_V_4_d1 MemPortDIN2 1 28 } } }
	all_scores_V_5 { ap_memory {  { all_scores_V_5_address1 MemPortADDR2 1 9 }  { all_scores_V_5_ce1 MemPortCE2 1 1 }  { all_scores_V_5_we1 MemPortWE2 1 1 }  { all_scores_V_5_d1 MemPortDIN2 1 28 } } }
	all_scores_V_6 { ap_memory {  { all_scores_V_6_address1 MemPortADDR2 1 9 }  { all_scores_V_6_ce1 MemPortCE2 1 1 }  { all_scores_V_6_we1 MemPortWE2 1 1 }  { all_scores_V_6_d1 MemPortDIN2 1 28 } } }
	all_scores_V_7 { ap_memory {  { all_scores_V_7_address1 MemPortADDR2 1 9 }  { all_scores_V_7_ce1 MemPortCE2 1 1 }  { all_scores_V_7_we1 MemPortWE2 1 1 }  { all_scores_V_7_d1 MemPortDIN2 1 28 } } }
	all_scores_V_8 { ap_memory {  { all_scores_V_8_address1 MemPortADDR2 1 9 }  { all_scores_V_8_ce1 MemPortCE2 1 1 }  { all_scores_V_8_we1 MemPortWE2 1 1 }  { all_scores_V_8_d1 MemPortDIN2 1 28 } } }
	all_scores_V_9 { ap_memory {  { all_scores_V_9_address1 MemPortADDR2 1 9 }  { all_scores_V_9_ce1 MemPortCE2 1 1 }  { all_scores_V_9_we1 MemPortWE2 1 1 }  { all_scores_V_9_d1 MemPortDIN2 1 28 } } }
	all_scores_V_10 { ap_memory {  { all_scores_V_10_address1 MemPortADDR2 1 9 }  { all_scores_V_10_ce1 MemPortCE2 1 1 }  { all_scores_V_10_we1 MemPortWE2 1 1 }  { all_scores_V_10_d1 MemPortDIN2 1 28 } } }
	all_scores_V_11 { ap_memory {  { all_scores_V_11_address1 MemPortADDR2 1 9 }  { all_scores_V_11_ce1 MemPortCE2 1 1 }  { all_scores_V_11_we1 MemPortWE2 1 1 }  { all_scores_V_11_d1 MemPortDIN2 1 28 } } }
	all_scores_V_12 { ap_memory {  { all_scores_V_12_address1 MemPortADDR2 1 9 }  { all_scores_V_12_ce1 MemPortCE2 1 1 }  { all_scores_V_12_we1 MemPortWE2 1 1 }  { all_scores_V_12_d1 MemPortDIN2 1 28 } } }
	all_scores_V_13 { ap_memory {  { all_scores_V_13_address1 MemPortADDR2 1 9 }  { all_scores_V_13_ce1 MemPortCE2 1 1 }  { all_scores_V_13_we1 MemPortWE2 1 1 }  { all_scores_V_13_d1 MemPortDIN2 1 28 } } }
	all_scores_V_14 { ap_memory {  { all_scores_V_14_address1 MemPortADDR2 1 9 }  { all_scores_V_14_ce1 MemPortCE2 1 1 }  { all_scores_V_14_we1 MemPortWE2 1 1 }  { all_scores_V_14_d1 MemPortDIN2 1 28 } } }
	all_scores_V_15 { ap_memory {  { all_scores_V_15_address1 MemPortADDR2 1 9 }  { all_scores_V_15_ce1 MemPortCE2 1 1 }  { all_scores_V_15_we1 MemPortWE2 1 1 }  { all_scores_V_15_d1 MemPortDIN2 1 28 } } }
	all_scores_V_16 { ap_memory {  { all_scores_V_16_address1 MemPortADDR2 1 9 }  { all_scores_V_16_ce1 MemPortCE2 1 1 }  { all_scores_V_16_we1 MemPortWE2 1 1 }  { all_scores_V_16_d1 MemPortDIN2 1 28 } } }
	all_scores_V_17 { ap_memory {  { all_scores_V_17_address1 MemPortADDR2 1 9 }  { all_scores_V_17_ce1 MemPortCE2 1 1 }  { all_scores_V_17_we1 MemPortWE2 1 1 }  { all_scores_V_17_d1 MemPortDIN2 1 28 } } }
	all_scores_V_18 { ap_memory {  { all_scores_V_18_address1 MemPortADDR2 1 9 }  { all_scores_V_18_ce1 MemPortCE2 1 1 }  { all_scores_V_18_we1 MemPortWE2 1 1 }  { all_scores_V_18_d1 MemPortDIN2 1 28 } } }
}
