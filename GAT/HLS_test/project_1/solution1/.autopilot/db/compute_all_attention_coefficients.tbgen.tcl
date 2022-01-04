set moduleName compute_all_attention_coefficients
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
set C_modelName {compute_all_attention_coefficients}
set C_modelType { void 0 }
set C_modelArgList {
	{ all_scores_V_18 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ attention_coefficients_sum_V int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_0 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_1 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_2 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_3 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_4 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_5 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_6 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_7 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_8 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_9 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_10 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_11 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_12 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_13 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_14 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_15 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_16 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V_17 int 28 regular {array 400 { 1 3 } 1 1 } {global 0}  }
	{ all_attention_coefficients_V_0 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_1 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_2 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_3 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_4 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_5 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_6 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_7 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_8 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_9 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_10 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_11 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_12 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_13 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_14 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_15 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_16 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_17 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_attention_coefficients_V_18 int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "all_scores_V_18", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "attention_coefficients_sum_V", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_0", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_1", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_2", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_3", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_4", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_5", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_6", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_7", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_8", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_9", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_10", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_11", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_12", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_13", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_14", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_15", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_16", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_17", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_0", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_1", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_2", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_3", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_4", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_5", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_6", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_7", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_8", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_9", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_10", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_11", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_12", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_13", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_14", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_15", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_16", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_17", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_attention_coefficients_V_18", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 148
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ all_scores_V_18_address0 sc_out sc_lv 9 signal 0 } 
	{ all_scores_V_18_ce0 sc_out sc_logic 1 signal 0 } 
	{ all_scores_V_18_q0 sc_in sc_lv 28 signal 0 } 
	{ attention_coefficients_sum_V_address0 sc_out sc_lv 9 signal 1 } 
	{ attention_coefficients_sum_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ attention_coefficients_sum_V_q0 sc_in sc_lv 28 signal 1 } 
	{ all_scores_V_0_address0 sc_out sc_lv 9 signal 2 } 
	{ all_scores_V_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ all_scores_V_0_q0 sc_in sc_lv 28 signal 2 } 
	{ all_scores_V_1_address0 sc_out sc_lv 9 signal 3 } 
	{ all_scores_V_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ all_scores_V_1_q0 sc_in sc_lv 28 signal 3 } 
	{ all_scores_V_2_address0 sc_out sc_lv 9 signal 4 } 
	{ all_scores_V_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ all_scores_V_2_q0 sc_in sc_lv 28 signal 4 } 
	{ all_scores_V_3_address0 sc_out sc_lv 9 signal 5 } 
	{ all_scores_V_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ all_scores_V_3_q0 sc_in sc_lv 28 signal 5 } 
	{ all_scores_V_4_address0 sc_out sc_lv 9 signal 6 } 
	{ all_scores_V_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ all_scores_V_4_q0 sc_in sc_lv 28 signal 6 } 
	{ all_scores_V_5_address0 sc_out sc_lv 9 signal 7 } 
	{ all_scores_V_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ all_scores_V_5_q0 sc_in sc_lv 28 signal 7 } 
	{ all_scores_V_6_address0 sc_out sc_lv 9 signal 8 } 
	{ all_scores_V_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ all_scores_V_6_q0 sc_in sc_lv 28 signal 8 } 
	{ all_scores_V_7_address0 sc_out sc_lv 9 signal 9 } 
	{ all_scores_V_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ all_scores_V_7_q0 sc_in sc_lv 28 signal 9 } 
	{ all_scores_V_8_address0 sc_out sc_lv 9 signal 10 } 
	{ all_scores_V_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ all_scores_V_8_q0 sc_in sc_lv 28 signal 10 } 
	{ all_scores_V_9_address0 sc_out sc_lv 9 signal 11 } 
	{ all_scores_V_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ all_scores_V_9_q0 sc_in sc_lv 28 signal 11 } 
	{ all_scores_V_10_address0 sc_out sc_lv 9 signal 12 } 
	{ all_scores_V_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ all_scores_V_10_q0 sc_in sc_lv 28 signal 12 } 
	{ all_scores_V_11_address0 sc_out sc_lv 9 signal 13 } 
	{ all_scores_V_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ all_scores_V_11_q0 sc_in sc_lv 28 signal 13 } 
	{ all_scores_V_12_address0 sc_out sc_lv 9 signal 14 } 
	{ all_scores_V_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ all_scores_V_12_q0 sc_in sc_lv 28 signal 14 } 
	{ all_scores_V_13_address0 sc_out sc_lv 9 signal 15 } 
	{ all_scores_V_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ all_scores_V_13_q0 sc_in sc_lv 28 signal 15 } 
	{ all_scores_V_14_address0 sc_out sc_lv 9 signal 16 } 
	{ all_scores_V_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ all_scores_V_14_q0 sc_in sc_lv 28 signal 16 } 
	{ all_scores_V_15_address0 sc_out sc_lv 9 signal 17 } 
	{ all_scores_V_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ all_scores_V_15_q0 sc_in sc_lv 28 signal 17 } 
	{ all_scores_V_16_address0 sc_out sc_lv 9 signal 18 } 
	{ all_scores_V_16_ce0 sc_out sc_logic 1 signal 18 } 
	{ all_scores_V_16_q0 sc_in sc_lv 28 signal 18 } 
	{ all_scores_V_17_address0 sc_out sc_lv 9 signal 19 } 
	{ all_scores_V_17_ce0 sc_out sc_logic 1 signal 19 } 
	{ all_scores_V_17_q0 sc_in sc_lv 28 signal 19 } 
	{ all_attention_coefficients_V_0_address1 sc_out sc_lv 9 signal 20 } 
	{ all_attention_coefficients_V_0_ce1 sc_out sc_logic 1 signal 20 } 
	{ all_attention_coefficients_V_0_we1 sc_out sc_logic 1 signal 20 } 
	{ all_attention_coefficients_V_0_d1 sc_out sc_lv 28 signal 20 } 
	{ all_attention_coefficients_V_1_address1 sc_out sc_lv 9 signal 21 } 
	{ all_attention_coefficients_V_1_ce1 sc_out sc_logic 1 signal 21 } 
	{ all_attention_coefficients_V_1_we1 sc_out sc_logic 1 signal 21 } 
	{ all_attention_coefficients_V_1_d1 sc_out sc_lv 28 signal 21 } 
	{ all_attention_coefficients_V_2_address1 sc_out sc_lv 9 signal 22 } 
	{ all_attention_coefficients_V_2_ce1 sc_out sc_logic 1 signal 22 } 
	{ all_attention_coefficients_V_2_we1 sc_out sc_logic 1 signal 22 } 
	{ all_attention_coefficients_V_2_d1 sc_out sc_lv 28 signal 22 } 
	{ all_attention_coefficients_V_3_address1 sc_out sc_lv 9 signal 23 } 
	{ all_attention_coefficients_V_3_ce1 sc_out sc_logic 1 signal 23 } 
	{ all_attention_coefficients_V_3_we1 sc_out sc_logic 1 signal 23 } 
	{ all_attention_coefficients_V_3_d1 sc_out sc_lv 28 signal 23 } 
	{ all_attention_coefficients_V_4_address1 sc_out sc_lv 9 signal 24 } 
	{ all_attention_coefficients_V_4_ce1 sc_out sc_logic 1 signal 24 } 
	{ all_attention_coefficients_V_4_we1 sc_out sc_logic 1 signal 24 } 
	{ all_attention_coefficients_V_4_d1 sc_out sc_lv 28 signal 24 } 
	{ all_attention_coefficients_V_5_address1 sc_out sc_lv 9 signal 25 } 
	{ all_attention_coefficients_V_5_ce1 sc_out sc_logic 1 signal 25 } 
	{ all_attention_coefficients_V_5_we1 sc_out sc_logic 1 signal 25 } 
	{ all_attention_coefficients_V_5_d1 sc_out sc_lv 28 signal 25 } 
	{ all_attention_coefficients_V_6_address1 sc_out sc_lv 9 signal 26 } 
	{ all_attention_coefficients_V_6_ce1 sc_out sc_logic 1 signal 26 } 
	{ all_attention_coefficients_V_6_we1 sc_out sc_logic 1 signal 26 } 
	{ all_attention_coefficients_V_6_d1 sc_out sc_lv 28 signal 26 } 
	{ all_attention_coefficients_V_7_address1 sc_out sc_lv 9 signal 27 } 
	{ all_attention_coefficients_V_7_ce1 sc_out sc_logic 1 signal 27 } 
	{ all_attention_coefficients_V_7_we1 sc_out sc_logic 1 signal 27 } 
	{ all_attention_coefficients_V_7_d1 sc_out sc_lv 28 signal 27 } 
	{ all_attention_coefficients_V_8_address1 sc_out sc_lv 9 signal 28 } 
	{ all_attention_coefficients_V_8_ce1 sc_out sc_logic 1 signal 28 } 
	{ all_attention_coefficients_V_8_we1 sc_out sc_logic 1 signal 28 } 
	{ all_attention_coefficients_V_8_d1 sc_out sc_lv 28 signal 28 } 
	{ all_attention_coefficients_V_9_address1 sc_out sc_lv 9 signal 29 } 
	{ all_attention_coefficients_V_9_ce1 sc_out sc_logic 1 signal 29 } 
	{ all_attention_coefficients_V_9_we1 sc_out sc_logic 1 signal 29 } 
	{ all_attention_coefficients_V_9_d1 sc_out sc_lv 28 signal 29 } 
	{ all_attention_coefficients_V_10_address1 sc_out sc_lv 9 signal 30 } 
	{ all_attention_coefficients_V_10_ce1 sc_out sc_logic 1 signal 30 } 
	{ all_attention_coefficients_V_10_we1 sc_out sc_logic 1 signal 30 } 
	{ all_attention_coefficients_V_10_d1 sc_out sc_lv 28 signal 30 } 
	{ all_attention_coefficients_V_11_address1 sc_out sc_lv 9 signal 31 } 
	{ all_attention_coefficients_V_11_ce1 sc_out sc_logic 1 signal 31 } 
	{ all_attention_coefficients_V_11_we1 sc_out sc_logic 1 signal 31 } 
	{ all_attention_coefficients_V_11_d1 sc_out sc_lv 28 signal 31 } 
	{ all_attention_coefficients_V_12_address1 sc_out sc_lv 9 signal 32 } 
	{ all_attention_coefficients_V_12_ce1 sc_out sc_logic 1 signal 32 } 
	{ all_attention_coefficients_V_12_we1 sc_out sc_logic 1 signal 32 } 
	{ all_attention_coefficients_V_12_d1 sc_out sc_lv 28 signal 32 } 
	{ all_attention_coefficients_V_13_address1 sc_out sc_lv 9 signal 33 } 
	{ all_attention_coefficients_V_13_ce1 sc_out sc_logic 1 signal 33 } 
	{ all_attention_coefficients_V_13_we1 sc_out sc_logic 1 signal 33 } 
	{ all_attention_coefficients_V_13_d1 sc_out sc_lv 28 signal 33 } 
	{ all_attention_coefficients_V_14_address1 sc_out sc_lv 9 signal 34 } 
	{ all_attention_coefficients_V_14_ce1 sc_out sc_logic 1 signal 34 } 
	{ all_attention_coefficients_V_14_we1 sc_out sc_logic 1 signal 34 } 
	{ all_attention_coefficients_V_14_d1 sc_out sc_lv 28 signal 34 } 
	{ all_attention_coefficients_V_15_address1 sc_out sc_lv 9 signal 35 } 
	{ all_attention_coefficients_V_15_ce1 sc_out sc_logic 1 signal 35 } 
	{ all_attention_coefficients_V_15_we1 sc_out sc_logic 1 signal 35 } 
	{ all_attention_coefficients_V_15_d1 sc_out sc_lv 28 signal 35 } 
	{ all_attention_coefficients_V_16_address1 sc_out sc_lv 9 signal 36 } 
	{ all_attention_coefficients_V_16_ce1 sc_out sc_logic 1 signal 36 } 
	{ all_attention_coefficients_V_16_we1 sc_out sc_logic 1 signal 36 } 
	{ all_attention_coefficients_V_16_d1 sc_out sc_lv 28 signal 36 } 
	{ all_attention_coefficients_V_17_address1 sc_out sc_lv 9 signal 37 } 
	{ all_attention_coefficients_V_17_ce1 sc_out sc_logic 1 signal 37 } 
	{ all_attention_coefficients_V_17_we1 sc_out sc_logic 1 signal 37 } 
	{ all_attention_coefficients_V_17_d1 sc_out sc_lv 28 signal 37 } 
	{ all_attention_coefficients_V_18_address1 sc_out sc_lv 9 signal 38 } 
	{ all_attention_coefficients_V_18_ce1 sc_out sc_logic 1 signal 38 } 
	{ all_attention_coefficients_V_18_we1 sc_out sc_logic 1 signal 38 } 
	{ all_attention_coefficients_V_18_d1 sc_out sc_lv 28 signal 38 } 
	{ grp_exp_28_10_s_fu_5940_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_exp_28_10_s_fu_5940_p_dout0 sc_in sc_lv 28 signal -1 } 
	{ grp_exp_28_10_s_fu_5940_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_exp_28_10_s_fu_5940_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_exp_28_10_s_fu_5940_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_exp_28_10_s_fu_5940_p_idle sc_in sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "all_scores_V_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_18", "role": "address0" }} , 
 	{ "name": "all_scores_V_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_18", "role": "ce0" }} , 
 	{ "name": "all_scores_V_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_18", "role": "q0" }} , 
 	{ "name": "attention_coefficients_sum_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "attention_coefficients_sum_V", "role": "address0" }} , 
 	{ "name": "attention_coefficients_sum_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attention_coefficients_sum_V", "role": "ce0" }} , 
 	{ "name": "attention_coefficients_sum_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "attention_coefficients_sum_V", "role": "q0" }} , 
 	{ "name": "all_scores_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_0", "role": "address0" }} , 
 	{ "name": "all_scores_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_0", "role": "ce0" }} , 
 	{ "name": "all_scores_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_0", "role": "q0" }} , 
 	{ "name": "all_scores_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_1", "role": "address0" }} , 
 	{ "name": "all_scores_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_1", "role": "ce0" }} , 
 	{ "name": "all_scores_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_1", "role": "q0" }} , 
 	{ "name": "all_scores_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_2", "role": "address0" }} , 
 	{ "name": "all_scores_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_2", "role": "ce0" }} , 
 	{ "name": "all_scores_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_2", "role": "q0" }} , 
 	{ "name": "all_scores_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_3", "role": "address0" }} , 
 	{ "name": "all_scores_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_3", "role": "ce0" }} , 
 	{ "name": "all_scores_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_3", "role": "q0" }} , 
 	{ "name": "all_scores_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_4", "role": "address0" }} , 
 	{ "name": "all_scores_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_4", "role": "ce0" }} , 
 	{ "name": "all_scores_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_4", "role": "q0" }} , 
 	{ "name": "all_scores_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_5", "role": "address0" }} , 
 	{ "name": "all_scores_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_5", "role": "ce0" }} , 
 	{ "name": "all_scores_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_5", "role": "q0" }} , 
 	{ "name": "all_scores_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_6", "role": "address0" }} , 
 	{ "name": "all_scores_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_6", "role": "ce0" }} , 
 	{ "name": "all_scores_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_6", "role": "q0" }} , 
 	{ "name": "all_scores_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_7", "role": "address0" }} , 
 	{ "name": "all_scores_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_7", "role": "ce0" }} , 
 	{ "name": "all_scores_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_7", "role": "q0" }} , 
 	{ "name": "all_scores_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_8", "role": "address0" }} , 
 	{ "name": "all_scores_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_8", "role": "ce0" }} , 
 	{ "name": "all_scores_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_8", "role": "q0" }} , 
 	{ "name": "all_scores_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_9", "role": "address0" }} , 
 	{ "name": "all_scores_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_9", "role": "ce0" }} , 
 	{ "name": "all_scores_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_9", "role": "q0" }} , 
 	{ "name": "all_scores_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_10", "role": "address0" }} , 
 	{ "name": "all_scores_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_10", "role": "ce0" }} , 
 	{ "name": "all_scores_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_10", "role": "q0" }} , 
 	{ "name": "all_scores_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_11", "role": "address0" }} , 
 	{ "name": "all_scores_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_11", "role": "ce0" }} , 
 	{ "name": "all_scores_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_11", "role": "q0" }} , 
 	{ "name": "all_scores_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_12", "role": "address0" }} , 
 	{ "name": "all_scores_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_12", "role": "ce0" }} , 
 	{ "name": "all_scores_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_12", "role": "q0" }} , 
 	{ "name": "all_scores_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_13", "role": "address0" }} , 
 	{ "name": "all_scores_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_13", "role": "ce0" }} , 
 	{ "name": "all_scores_V_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_13", "role": "q0" }} , 
 	{ "name": "all_scores_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_14", "role": "address0" }} , 
 	{ "name": "all_scores_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_14", "role": "ce0" }} , 
 	{ "name": "all_scores_V_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_14", "role": "q0" }} , 
 	{ "name": "all_scores_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_15", "role": "address0" }} , 
 	{ "name": "all_scores_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_15", "role": "ce0" }} , 
 	{ "name": "all_scores_V_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_15", "role": "q0" }} , 
 	{ "name": "all_scores_V_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_16", "role": "address0" }} , 
 	{ "name": "all_scores_V_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_16", "role": "ce0" }} , 
 	{ "name": "all_scores_V_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_16", "role": "q0" }} , 
 	{ "name": "all_scores_V_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_17", "role": "address0" }} , 
 	{ "name": "all_scores_V_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_17", "role": "ce0" }} , 
 	{ "name": "all_scores_V_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_17", "role": "q0" }} , 
 	{ "name": "all_attention_coefficients_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_0", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_0", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_0", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_0", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_1", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_1", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_1", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_1", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_2", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_2", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_2", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_2", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_3", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_3", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_3", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_3", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_4", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_4", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_4", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_4", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_5", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_5", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_5", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_5", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_6", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_6", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_6", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_6", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_7", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_7", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_7", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_7", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_8", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_8", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_8", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_8", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_9", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_9", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_9", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_9", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_10", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_10", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_10", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_10", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_11", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_11", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_11", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_11", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_12", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_12", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_12", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_12", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_13", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_13", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_13", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_13", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_14", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_14", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_14", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_14", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_15", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_15", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_15", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_15", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_16", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_16", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_16_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_16", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_16_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_16", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_17", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_17", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_17_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_17", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_17_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_17", "role": "d1" }} , 
 	{ "name": "all_attention_coefficients_V_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_18", "role": "address1" }} , 
 	{ "name": "all_attention_coefficients_V_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_18", "role": "ce1" }} , 
 	{ "name": "all_attention_coefficients_V_18_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_18", "role": "we1" }} , 
 	{ "name": "all_attention_coefficients_V_18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V_18", "role": "d1" }} , 
 	{ "name": "grp_exp_28_10_s_fu_5940_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_exp_28_10_s_fu_5940_p_din1", "role": "default" }} , 
 	{ "name": "grp_exp_28_10_s_fu_5940_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_exp_28_10_s_fu_5940_p_dout0", "role": "default" }} , 
 	{ "name": "grp_exp_28_10_s_fu_5940_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_exp_28_10_s_fu_5940_p_start", "role": "default" }} , 
 	{ "name": "grp_exp_28_10_s_fu_5940_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_exp_28_10_s_fu_5940_p_ready", "role": "default" }} , 
 	{ "name": "grp_exp_28_10_s_fu_5940_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_exp_28_10_s_fu_5940_p_done", "role": "default" }} , 
 	{ "name": "grp_exp_28_10_s_fu_5940_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_exp_28_10_s_fu_5940_p_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "compute_all_attention_coefficients",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1519", "EstimateLatencyMax" : "1519",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "attention_coefficients_sum_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_attention_coefficients_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_attention_coefficients_V_18", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_125_1_VITIS_LOOP_126_2_VITIS_LOOP_127_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter74", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter74", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_3ns_8ns_9_1_1_U2521", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_3ns_8ns_9_1_1_U2522", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_46ns_28s_28_50_1_U2523", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3ns_7ns_5ns_9_4_1_U2524", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_all_attention_coefficients {
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}
		all_scores_V_18 {Type I LastRead 3 FirstWrite -1}
		attention_coefficients_sum_V {Type I LastRead 22 FirstWrite -1}
		all_scores_V_0 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_1 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_2 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_3 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_4 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_5 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_6 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_7 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_8 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_9 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_10 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_11 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_12 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_13 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_14 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_15 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_16 {Type I LastRead 3 FirstWrite -1}
		all_scores_V_17 {Type I LastRead 3 FirstWrite -1}
		all_attention_coefficients_V_0 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_1 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_2 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_3 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_4 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_5 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_6 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_7 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_8 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_9 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_10 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_11 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_12 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_13 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_14 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_15 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_16 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_17 {Type O LastRead -1 FirstWrite 74}
		all_attention_coefficients_V_18 {Type O LastRead -1 FirstWrite 74}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1519", "Max" : "1519"}
	, {"Name" : "Interval", "Min" : "1519", "Max" : "1519"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	all_scores_V_18 { ap_memory {  { all_scores_V_18_address0 mem_address 1 9 }  { all_scores_V_18_ce0 mem_ce 1 1 }  { all_scores_V_18_q0 mem_dout 0 28 } } }
	attention_coefficients_sum_V { ap_memory {  { attention_coefficients_sum_V_address0 mem_address 1 9 }  { attention_coefficients_sum_V_ce0 mem_ce 1 1 }  { attention_coefficients_sum_V_q0 mem_dout 0 28 } } }
	all_scores_V_0 { ap_memory {  { all_scores_V_0_address0 mem_address 1 9 }  { all_scores_V_0_ce0 mem_ce 1 1 }  { all_scores_V_0_q0 mem_dout 0 28 } } }
	all_scores_V_1 { ap_memory {  { all_scores_V_1_address0 mem_address 1 9 }  { all_scores_V_1_ce0 mem_ce 1 1 }  { all_scores_V_1_q0 mem_dout 0 28 } } }
	all_scores_V_2 { ap_memory {  { all_scores_V_2_address0 mem_address 1 9 }  { all_scores_V_2_ce0 mem_ce 1 1 }  { all_scores_V_2_q0 mem_dout 0 28 } } }
	all_scores_V_3 { ap_memory {  { all_scores_V_3_address0 mem_address 1 9 }  { all_scores_V_3_ce0 mem_ce 1 1 }  { all_scores_V_3_q0 mem_dout 0 28 } } }
	all_scores_V_4 { ap_memory {  { all_scores_V_4_address0 mem_address 1 9 }  { all_scores_V_4_ce0 mem_ce 1 1 }  { all_scores_V_4_q0 mem_dout 0 28 } } }
	all_scores_V_5 { ap_memory {  { all_scores_V_5_address0 mem_address 1 9 }  { all_scores_V_5_ce0 mem_ce 1 1 }  { all_scores_V_5_q0 mem_dout 0 28 } } }
	all_scores_V_6 { ap_memory {  { all_scores_V_6_address0 mem_address 1 9 }  { all_scores_V_6_ce0 mem_ce 1 1 }  { all_scores_V_6_q0 mem_dout 0 28 } } }
	all_scores_V_7 { ap_memory {  { all_scores_V_7_address0 mem_address 1 9 }  { all_scores_V_7_ce0 mem_ce 1 1 }  { all_scores_V_7_q0 mem_dout 0 28 } } }
	all_scores_V_8 { ap_memory {  { all_scores_V_8_address0 mem_address 1 9 }  { all_scores_V_8_ce0 mem_ce 1 1 }  { all_scores_V_8_q0 mem_dout 0 28 } } }
	all_scores_V_9 { ap_memory {  { all_scores_V_9_address0 mem_address 1 9 }  { all_scores_V_9_ce0 mem_ce 1 1 }  { all_scores_V_9_q0 mem_dout 0 28 } } }
	all_scores_V_10 { ap_memory {  { all_scores_V_10_address0 mem_address 1 9 }  { all_scores_V_10_ce0 mem_ce 1 1 }  { all_scores_V_10_q0 mem_dout 0 28 } } }
	all_scores_V_11 { ap_memory {  { all_scores_V_11_address0 mem_address 1 9 }  { all_scores_V_11_ce0 mem_ce 1 1 }  { all_scores_V_11_q0 mem_dout 0 28 } } }
	all_scores_V_12 { ap_memory {  { all_scores_V_12_address0 mem_address 1 9 }  { all_scores_V_12_ce0 mem_ce 1 1 }  { all_scores_V_12_q0 mem_dout 0 28 } } }
	all_scores_V_13 { ap_memory {  { all_scores_V_13_address0 mem_address 1 9 }  { all_scores_V_13_ce0 mem_ce 1 1 }  { all_scores_V_13_q0 mem_dout 0 28 } } }
	all_scores_V_14 { ap_memory {  { all_scores_V_14_address0 mem_address 1 9 }  { all_scores_V_14_ce0 mem_ce 1 1 }  { all_scores_V_14_q0 mem_dout 0 28 } } }
	all_scores_V_15 { ap_memory {  { all_scores_V_15_address0 mem_address 1 9 }  { all_scores_V_15_ce0 mem_ce 1 1 }  { all_scores_V_15_q0 mem_dout 0 28 } } }
	all_scores_V_16 { ap_memory {  { all_scores_V_16_address0 mem_address 1 9 }  { all_scores_V_16_ce0 mem_ce 1 1 }  { all_scores_V_16_q0 mem_dout 0 28 } } }
	all_scores_V_17 { ap_memory {  { all_scores_V_17_address0 mem_address 1 9 }  { all_scores_V_17_ce0 mem_ce 1 1 }  { all_scores_V_17_q0 mem_dout 0 28 } } }
	all_attention_coefficients_V_0 { ap_memory {  { all_attention_coefficients_V_0_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_0_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_0_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_0_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_1 { ap_memory {  { all_attention_coefficients_V_1_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_1_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_1_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_1_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_2 { ap_memory {  { all_attention_coefficients_V_2_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_2_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_2_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_2_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_3 { ap_memory {  { all_attention_coefficients_V_3_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_3_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_3_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_3_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_4 { ap_memory {  { all_attention_coefficients_V_4_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_4_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_4_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_4_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_5 { ap_memory {  { all_attention_coefficients_V_5_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_5_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_5_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_5_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_6 { ap_memory {  { all_attention_coefficients_V_6_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_6_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_6_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_6_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_7 { ap_memory {  { all_attention_coefficients_V_7_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_7_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_7_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_7_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_8 { ap_memory {  { all_attention_coefficients_V_8_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_8_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_8_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_8_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_9 { ap_memory {  { all_attention_coefficients_V_9_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_9_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_9_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_9_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_10 { ap_memory {  { all_attention_coefficients_V_10_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_10_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_10_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_10_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_11 { ap_memory {  { all_attention_coefficients_V_11_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_11_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_11_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_11_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_12 { ap_memory {  { all_attention_coefficients_V_12_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_12_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_12_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_12_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_13 { ap_memory {  { all_attention_coefficients_V_13_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_13_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_13_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_13_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_14 { ap_memory {  { all_attention_coefficients_V_14_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_14_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_14_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_14_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_15 { ap_memory {  { all_attention_coefficients_V_15_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_15_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_15_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_15_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_16 { ap_memory {  { all_attention_coefficients_V_16_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_16_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_16_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_16_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_17 { ap_memory {  { all_attention_coefficients_V_17_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_17_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_17_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_17_d1 MemPortDIN2 1 28 } } }
	all_attention_coefficients_V_18 { ap_memory {  { all_attention_coefficients_V_18_address1 MemPortADDR2 1 9 }  { all_attention_coefficients_V_18_ce1 MemPortCE2 1 1 }  { all_attention_coefficients_V_18_we1 MemPortWE2 1 1 }  { all_attention_coefficients_V_18_d1 MemPortDIN2 1 28 } } }
}
