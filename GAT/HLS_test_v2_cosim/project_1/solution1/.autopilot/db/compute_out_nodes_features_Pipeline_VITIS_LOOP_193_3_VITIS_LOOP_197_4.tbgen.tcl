set moduleName compute_out_nodes_features_Pipeline_VITIS_LOOP_193_3_VITIS_LOOP_197_4
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
set C_modelName {compute_out_nodes_features_Pipeline_VITIS_LOOP_193_3_VITIS_LOOP_197_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ bound int 36 regular  }
	{ mul_ln195_1 int 18 regular  }
	{ zext_ln190 int 3 regular  }
	{ all_attention_coefficients_V int 28 regular {array 160000 { 1 3 } 1 1 } {global 0}  }
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
	{ out_nodes_features_sum_V int 28 regular {array 16 { 1 0 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bound", "interface" : "wire", "bitwidth" : 36, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln195_1", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln190", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "all_attention_coefficients_V", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
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
 	{ "Name" : "out_nodes_features_sum_V", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 67
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bound sc_in sc_lv 36 signal 0 } 
	{ mul_ln195_1 sc_in sc_lv 18 signal 1 } 
	{ zext_ln190 sc_in sc_lv 3 signal 2 } 
	{ all_attention_coefficients_V_address0 sc_out sc_lv 18 signal 3 } 
	{ all_attention_coefficients_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ all_attention_coefficients_V_q0 sc_in sc_lv 28 signal 3 } 
	{ nodes_features_proj_V_0_address0 sc_out sc_lv 10 signal 4 } 
	{ nodes_features_proj_V_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ nodes_features_proj_V_0_q0 sc_in sc_lv 28 signal 4 } 
	{ nodes_features_proj_V_1_address0 sc_out sc_lv 10 signal 5 } 
	{ nodes_features_proj_V_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ nodes_features_proj_V_1_q0 sc_in sc_lv 28 signal 5 } 
	{ nodes_features_proj_V_2_address0 sc_out sc_lv 10 signal 6 } 
	{ nodes_features_proj_V_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ nodes_features_proj_V_2_q0 sc_in sc_lv 28 signal 6 } 
	{ nodes_features_proj_V_3_address0 sc_out sc_lv 10 signal 7 } 
	{ nodes_features_proj_V_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ nodes_features_proj_V_3_q0 sc_in sc_lv 28 signal 7 } 
	{ nodes_features_proj_V_4_address0 sc_out sc_lv 10 signal 8 } 
	{ nodes_features_proj_V_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ nodes_features_proj_V_4_q0 sc_in sc_lv 28 signal 8 } 
	{ nodes_features_proj_V_5_address0 sc_out sc_lv 10 signal 9 } 
	{ nodes_features_proj_V_5_ce0 sc_out sc_logic 1 signal 9 } 
	{ nodes_features_proj_V_5_q0 sc_in sc_lv 28 signal 9 } 
	{ nodes_features_proj_V_6_address0 sc_out sc_lv 10 signal 10 } 
	{ nodes_features_proj_V_6_ce0 sc_out sc_logic 1 signal 10 } 
	{ nodes_features_proj_V_6_q0 sc_in sc_lv 28 signal 10 } 
	{ nodes_features_proj_V_7_address0 sc_out sc_lv 10 signal 11 } 
	{ nodes_features_proj_V_7_ce0 sc_out sc_logic 1 signal 11 } 
	{ nodes_features_proj_V_7_q0 sc_in sc_lv 28 signal 11 } 
	{ nodes_features_proj_V_8_address0 sc_out sc_lv 10 signal 12 } 
	{ nodes_features_proj_V_8_ce0 sc_out sc_logic 1 signal 12 } 
	{ nodes_features_proj_V_8_q0 sc_in sc_lv 28 signal 12 } 
	{ nodes_features_proj_V_9_address0 sc_out sc_lv 10 signal 13 } 
	{ nodes_features_proj_V_9_ce0 sc_out sc_logic 1 signal 13 } 
	{ nodes_features_proj_V_9_q0 sc_in sc_lv 28 signal 13 } 
	{ nodes_features_proj_V_10_address0 sc_out sc_lv 10 signal 14 } 
	{ nodes_features_proj_V_10_ce0 sc_out sc_logic 1 signal 14 } 
	{ nodes_features_proj_V_10_q0 sc_in sc_lv 28 signal 14 } 
	{ nodes_features_proj_V_11_address0 sc_out sc_lv 10 signal 15 } 
	{ nodes_features_proj_V_11_ce0 sc_out sc_logic 1 signal 15 } 
	{ nodes_features_proj_V_11_q0 sc_in sc_lv 28 signal 15 } 
	{ nodes_features_proj_V_12_address0 sc_out sc_lv 10 signal 16 } 
	{ nodes_features_proj_V_12_ce0 sc_out sc_logic 1 signal 16 } 
	{ nodes_features_proj_V_12_q0 sc_in sc_lv 28 signal 16 } 
	{ nodes_features_proj_V_13_address0 sc_out sc_lv 10 signal 17 } 
	{ nodes_features_proj_V_13_ce0 sc_out sc_logic 1 signal 17 } 
	{ nodes_features_proj_V_13_q0 sc_in sc_lv 28 signal 17 } 
	{ nodes_features_proj_V_14_address0 sc_out sc_lv 10 signal 18 } 
	{ nodes_features_proj_V_14_ce0 sc_out sc_logic 1 signal 18 } 
	{ nodes_features_proj_V_14_q0 sc_in sc_lv 28 signal 18 } 
	{ nodes_features_proj_V_15_address0 sc_out sc_lv 10 signal 19 } 
	{ nodes_features_proj_V_15_ce0 sc_out sc_logic 1 signal 19 } 
	{ nodes_features_proj_V_15_q0 sc_in sc_lv 28 signal 19 } 
	{ out_nodes_features_sum_V_address0 sc_out sc_lv 4 signal 20 } 
	{ out_nodes_features_sum_V_ce0 sc_out sc_logic 1 signal 20 } 
	{ out_nodes_features_sum_V_q0 sc_in sc_lv 28 signal 20 } 
	{ out_nodes_features_sum_V_address1 sc_out sc_lv 4 signal 20 } 
	{ out_nodes_features_sum_V_ce1 sc_out sc_logic 1 signal 20 } 
	{ out_nodes_features_sum_V_we1 sc_out sc_logic 1 signal 20 } 
	{ out_nodes_features_sum_V_d1 sc_out sc_lv 28 signal 20 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bound", "direction": "in", "datatype": "sc_lv", "bitwidth":36, "type": "signal", "bundle":{"name": "bound", "role": "default" }} , 
 	{ "name": "mul_ln195_1", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "mul_ln195_1", "role": "default" }} , 
 	{ "name": "zext_ln190", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "zext_ln190", "role": "default" }} , 
 	{ "name": "all_attention_coefficients_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "all_attention_coefficients_V", "role": "address0" }} , 
 	{ "name": "all_attention_coefficients_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V", "role": "ce0" }} , 
 	{ "name": "all_attention_coefficients_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V", "role": "q0" }} , 
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
 	{ "name": "out_nodes_features_sum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_nodes_features_sum_V", "role": "address0" }} , 
 	{ "name": "out_nodes_features_sum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_sum_V", "role": "ce0" }} , 
 	{ "name": "out_nodes_features_sum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_sum_V", "role": "q0" }} , 
 	{ "name": "out_nodes_features_sum_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_nodes_features_sum_V", "role": "address1" }} , 
 	{ "name": "out_nodes_features_sum_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_sum_V", "role": "ce1" }} , 
 	{ "name": "out_nodes_features_sum_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_nodes_features_sum_V", "role": "we1" }} , 
 	{ "name": "out_nodes_features_sum_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "out_nodes_features_sum_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "compute_out_nodes_features_Pipeline_VITIS_LOOP_193_3_VITIS_LOOP_197_4",
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
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_117", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_120", "FromFinalSV" : "4", "FromAddress" : "out_nodes_features_sum_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_131", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_131", "ToFinalSV" : "5", "ToAddress" : "out_nodes_features_sum_V_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "4", "II" : "1", "Pragma" : "(GAT_compute.cpp:200:21)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_131", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_131", "FromFinalSV" : "5", "FromAddress" : "out_nodes_features_sum_V_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_117", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_120", "ToFinalSV" : "4", "ToAddress" : "out_nodes_features_sum_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "4", "II" : "1", "Pragma" : "(GAT_compute.cpp:200:21)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state4_pp0_iter3_stage0", "ap_enable_state5_pp0_iter4_stage0", "ap_enable_state6_pp0_iter5_stage0"]}],
		"Port" : [
			{"Name" : "bound", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln195_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln190", "Type" : "None", "Direction" : "I"},
			{"Name" : "all_attention_coefficients_V", "Type" : "Memory", "Direction" : "I"},
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
			{"Name" : "out_nodes_features_sum_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_193_3_VITIS_LOOP_197_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_28_1_1_U1069", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_28s_28s_46_1_1_U1070", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_out_nodes_features_Pipeline_VITIS_LOOP_193_3_VITIS_LOOP_197_4 {
		bound {Type I LastRead 0 FirstWrite -1}
		mul_ln195_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln190 {Type I LastRead 0 FirstWrite -1}
		all_attention_coefficients_V {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_0 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_1 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_2 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_3 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_4 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_5 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_6 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_7 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_8 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_9 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_10 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_11 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_12 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_13 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_14 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_15 {Type I LastRead 2 FirstWrite -1}
		out_nodes_features_sum_V {Type IO LastRead 3 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bound { ap_none {  { bound in_data 0 36 } } }
	mul_ln195_1 { ap_none {  { mul_ln195_1 in_data 0 18 } } }
	zext_ln190 { ap_none {  { zext_ln190 in_data 0 3 } } }
	all_attention_coefficients_V { ap_memory {  { all_attention_coefficients_V_address0 mem_address 1 18 }  { all_attention_coefficients_V_ce0 mem_ce 1 1 }  { all_attention_coefficients_V_q0 mem_dout 0 28 } } }
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
	out_nodes_features_sum_V { ap_memory {  { out_nodes_features_sum_V_address0 mem_address 1 4 }  { out_nodes_features_sum_V_ce0 mem_ce 1 1 }  { out_nodes_features_sum_V_q0 mem_dout 0 28 }  { out_nodes_features_sum_V_address1 MemPortADDR2 1 4 }  { out_nodes_features_sum_V_ce1 MemPortCE2 1 1 }  { out_nodes_features_sum_V_we1 MemPortWE2 1 1 }  { out_nodes_features_sum_V_d1 MemPortDIN2 1 28 } } }
}
