set moduleName compute_attention_coefficients_sum
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
set C_modelName {compute_attention_coefficients_sum}
set C_modelType { void 0 }
set C_modelArgList {
	{ attention_coefficients_sum_V int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ all_scores_V_18 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_17 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_16 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_15 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_14 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_13 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_12 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_11 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_10 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_9 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_8 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_7 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_6 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_5 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_4 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_3 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_2 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_1 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ all_scores_V_0 int 28 regular {array 400 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_18 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_0 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_1 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_2 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_3 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_4 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_5 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_6 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_7 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_8 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_9 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_10 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_11 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_12 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_13 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_14 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_15 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_16 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_17 int 32 regular {array 100 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "attention_coefficients_sum_V", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V_18", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_17", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_16", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_15", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_14", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_13", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_12", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_11", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_10", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_9", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_8", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_7", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_6", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_5", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_4", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_3", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_2", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_1", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "all_scores_V_0", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 257
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ attention_coefficients_sum_V_address1 sc_out sc_lv 9 signal 0 } 
	{ attention_coefficients_sum_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ attention_coefficients_sum_V_we1 sc_out sc_logic 1 signal 0 } 
	{ attention_coefficients_sum_V_d1 sc_out sc_lv 28 signal 0 } 
	{ all_scores_V_18_address0 sc_out sc_lv 9 signal 1 } 
	{ all_scores_V_18_ce0 sc_out sc_logic 1 signal 1 } 
	{ all_scores_V_18_q0 sc_in sc_lv 28 signal 1 } 
	{ all_scores_V_18_address1 sc_out sc_lv 9 signal 1 } 
	{ all_scores_V_18_ce1 sc_out sc_logic 1 signal 1 } 
	{ all_scores_V_18_we1 sc_out sc_logic 1 signal 1 } 
	{ all_scores_V_18_d1 sc_out sc_lv 28 signal 1 } 
	{ all_scores_V_17_address0 sc_out sc_lv 9 signal 2 } 
	{ all_scores_V_17_ce0 sc_out sc_logic 1 signal 2 } 
	{ all_scores_V_17_q0 sc_in sc_lv 28 signal 2 } 
	{ all_scores_V_17_address1 sc_out sc_lv 9 signal 2 } 
	{ all_scores_V_17_ce1 sc_out sc_logic 1 signal 2 } 
	{ all_scores_V_17_we1 sc_out sc_logic 1 signal 2 } 
	{ all_scores_V_17_d1 sc_out sc_lv 28 signal 2 } 
	{ all_scores_V_16_address0 sc_out sc_lv 9 signal 3 } 
	{ all_scores_V_16_ce0 sc_out sc_logic 1 signal 3 } 
	{ all_scores_V_16_q0 sc_in sc_lv 28 signal 3 } 
	{ all_scores_V_16_address1 sc_out sc_lv 9 signal 3 } 
	{ all_scores_V_16_ce1 sc_out sc_logic 1 signal 3 } 
	{ all_scores_V_16_we1 sc_out sc_logic 1 signal 3 } 
	{ all_scores_V_16_d1 sc_out sc_lv 28 signal 3 } 
	{ all_scores_V_15_address0 sc_out sc_lv 9 signal 4 } 
	{ all_scores_V_15_ce0 sc_out sc_logic 1 signal 4 } 
	{ all_scores_V_15_q0 sc_in sc_lv 28 signal 4 } 
	{ all_scores_V_15_address1 sc_out sc_lv 9 signal 4 } 
	{ all_scores_V_15_ce1 sc_out sc_logic 1 signal 4 } 
	{ all_scores_V_15_we1 sc_out sc_logic 1 signal 4 } 
	{ all_scores_V_15_d1 sc_out sc_lv 28 signal 4 } 
	{ all_scores_V_14_address0 sc_out sc_lv 9 signal 5 } 
	{ all_scores_V_14_ce0 sc_out sc_logic 1 signal 5 } 
	{ all_scores_V_14_q0 sc_in sc_lv 28 signal 5 } 
	{ all_scores_V_14_address1 sc_out sc_lv 9 signal 5 } 
	{ all_scores_V_14_ce1 sc_out sc_logic 1 signal 5 } 
	{ all_scores_V_14_we1 sc_out sc_logic 1 signal 5 } 
	{ all_scores_V_14_d1 sc_out sc_lv 28 signal 5 } 
	{ all_scores_V_13_address0 sc_out sc_lv 9 signal 6 } 
	{ all_scores_V_13_ce0 sc_out sc_logic 1 signal 6 } 
	{ all_scores_V_13_q0 sc_in sc_lv 28 signal 6 } 
	{ all_scores_V_13_address1 sc_out sc_lv 9 signal 6 } 
	{ all_scores_V_13_ce1 sc_out sc_logic 1 signal 6 } 
	{ all_scores_V_13_we1 sc_out sc_logic 1 signal 6 } 
	{ all_scores_V_13_d1 sc_out sc_lv 28 signal 6 } 
	{ all_scores_V_12_address0 sc_out sc_lv 9 signal 7 } 
	{ all_scores_V_12_ce0 sc_out sc_logic 1 signal 7 } 
	{ all_scores_V_12_q0 sc_in sc_lv 28 signal 7 } 
	{ all_scores_V_12_address1 sc_out sc_lv 9 signal 7 } 
	{ all_scores_V_12_ce1 sc_out sc_logic 1 signal 7 } 
	{ all_scores_V_12_we1 sc_out sc_logic 1 signal 7 } 
	{ all_scores_V_12_d1 sc_out sc_lv 28 signal 7 } 
	{ all_scores_V_11_address0 sc_out sc_lv 9 signal 8 } 
	{ all_scores_V_11_ce0 sc_out sc_logic 1 signal 8 } 
	{ all_scores_V_11_q0 sc_in sc_lv 28 signal 8 } 
	{ all_scores_V_11_address1 sc_out sc_lv 9 signal 8 } 
	{ all_scores_V_11_ce1 sc_out sc_logic 1 signal 8 } 
	{ all_scores_V_11_we1 sc_out sc_logic 1 signal 8 } 
	{ all_scores_V_11_d1 sc_out sc_lv 28 signal 8 } 
	{ all_scores_V_10_address0 sc_out sc_lv 9 signal 9 } 
	{ all_scores_V_10_ce0 sc_out sc_logic 1 signal 9 } 
	{ all_scores_V_10_q0 sc_in sc_lv 28 signal 9 } 
	{ all_scores_V_10_address1 sc_out sc_lv 9 signal 9 } 
	{ all_scores_V_10_ce1 sc_out sc_logic 1 signal 9 } 
	{ all_scores_V_10_we1 sc_out sc_logic 1 signal 9 } 
	{ all_scores_V_10_d1 sc_out sc_lv 28 signal 9 } 
	{ all_scores_V_9_address0 sc_out sc_lv 9 signal 10 } 
	{ all_scores_V_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ all_scores_V_9_q0 sc_in sc_lv 28 signal 10 } 
	{ all_scores_V_9_address1 sc_out sc_lv 9 signal 10 } 
	{ all_scores_V_9_ce1 sc_out sc_logic 1 signal 10 } 
	{ all_scores_V_9_we1 sc_out sc_logic 1 signal 10 } 
	{ all_scores_V_9_d1 sc_out sc_lv 28 signal 10 } 
	{ all_scores_V_8_address0 sc_out sc_lv 9 signal 11 } 
	{ all_scores_V_8_ce0 sc_out sc_logic 1 signal 11 } 
	{ all_scores_V_8_q0 sc_in sc_lv 28 signal 11 } 
	{ all_scores_V_8_address1 sc_out sc_lv 9 signal 11 } 
	{ all_scores_V_8_ce1 sc_out sc_logic 1 signal 11 } 
	{ all_scores_V_8_we1 sc_out sc_logic 1 signal 11 } 
	{ all_scores_V_8_d1 sc_out sc_lv 28 signal 11 } 
	{ all_scores_V_7_address0 sc_out sc_lv 9 signal 12 } 
	{ all_scores_V_7_ce0 sc_out sc_logic 1 signal 12 } 
	{ all_scores_V_7_q0 sc_in sc_lv 28 signal 12 } 
	{ all_scores_V_7_address1 sc_out sc_lv 9 signal 12 } 
	{ all_scores_V_7_ce1 sc_out sc_logic 1 signal 12 } 
	{ all_scores_V_7_we1 sc_out sc_logic 1 signal 12 } 
	{ all_scores_V_7_d1 sc_out sc_lv 28 signal 12 } 
	{ all_scores_V_6_address0 sc_out sc_lv 9 signal 13 } 
	{ all_scores_V_6_ce0 sc_out sc_logic 1 signal 13 } 
	{ all_scores_V_6_q0 sc_in sc_lv 28 signal 13 } 
	{ all_scores_V_6_address1 sc_out sc_lv 9 signal 13 } 
	{ all_scores_V_6_ce1 sc_out sc_logic 1 signal 13 } 
	{ all_scores_V_6_we1 sc_out sc_logic 1 signal 13 } 
	{ all_scores_V_6_d1 sc_out sc_lv 28 signal 13 } 
	{ all_scores_V_5_address0 sc_out sc_lv 9 signal 14 } 
	{ all_scores_V_5_ce0 sc_out sc_logic 1 signal 14 } 
	{ all_scores_V_5_q0 sc_in sc_lv 28 signal 14 } 
	{ all_scores_V_5_address1 sc_out sc_lv 9 signal 14 } 
	{ all_scores_V_5_ce1 sc_out sc_logic 1 signal 14 } 
	{ all_scores_V_5_we1 sc_out sc_logic 1 signal 14 } 
	{ all_scores_V_5_d1 sc_out sc_lv 28 signal 14 } 
	{ all_scores_V_4_address0 sc_out sc_lv 9 signal 15 } 
	{ all_scores_V_4_ce0 sc_out sc_logic 1 signal 15 } 
	{ all_scores_V_4_q0 sc_in sc_lv 28 signal 15 } 
	{ all_scores_V_4_address1 sc_out sc_lv 9 signal 15 } 
	{ all_scores_V_4_ce1 sc_out sc_logic 1 signal 15 } 
	{ all_scores_V_4_we1 sc_out sc_logic 1 signal 15 } 
	{ all_scores_V_4_d1 sc_out sc_lv 28 signal 15 } 
	{ all_scores_V_3_address0 sc_out sc_lv 9 signal 16 } 
	{ all_scores_V_3_ce0 sc_out sc_logic 1 signal 16 } 
	{ all_scores_V_3_q0 sc_in sc_lv 28 signal 16 } 
	{ all_scores_V_3_address1 sc_out sc_lv 9 signal 16 } 
	{ all_scores_V_3_ce1 sc_out sc_logic 1 signal 16 } 
	{ all_scores_V_3_we1 sc_out sc_logic 1 signal 16 } 
	{ all_scores_V_3_d1 sc_out sc_lv 28 signal 16 } 
	{ all_scores_V_2_address0 sc_out sc_lv 9 signal 17 } 
	{ all_scores_V_2_ce0 sc_out sc_logic 1 signal 17 } 
	{ all_scores_V_2_q0 sc_in sc_lv 28 signal 17 } 
	{ all_scores_V_2_address1 sc_out sc_lv 9 signal 17 } 
	{ all_scores_V_2_ce1 sc_out sc_logic 1 signal 17 } 
	{ all_scores_V_2_we1 sc_out sc_logic 1 signal 17 } 
	{ all_scores_V_2_d1 sc_out sc_lv 28 signal 17 } 
	{ all_scores_V_1_address0 sc_out sc_lv 9 signal 18 } 
	{ all_scores_V_1_ce0 sc_out sc_logic 1 signal 18 } 
	{ all_scores_V_1_q0 sc_in sc_lv 28 signal 18 } 
	{ all_scores_V_1_address1 sc_out sc_lv 9 signal 18 } 
	{ all_scores_V_1_ce1 sc_out sc_logic 1 signal 18 } 
	{ all_scores_V_1_we1 sc_out sc_logic 1 signal 18 } 
	{ all_scores_V_1_d1 sc_out sc_lv 28 signal 18 } 
	{ all_scores_V_0_address0 sc_out sc_lv 9 signal 19 } 
	{ all_scores_V_0_ce0 sc_out sc_logic 1 signal 19 } 
	{ all_scores_V_0_q0 sc_in sc_lv 28 signal 19 } 
	{ all_scores_V_0_address1 sc_out sc_lv 9 signal 19 } 
	{ all_scores_V_0_ce1 sc_out sc_logic 1 signal 19 } 
	{ all_scores_V_0_we1 sc_out sc_logic 1 signal 19 } 
	{ all_scores_V_0_d1 sc_out sc_lv 28 signal 19 } 
	{ connectivity_mask_18_address0 sc_out sc_lv 7 signal 20 } 
	{ connectivity_mask_18_ce0 sc_out sc_logic 1 signal 20 } 
	{ connectivity_mask_18_q0 sc_in sc_lv 32 signal 20 } 
	{ connectivity_mask_18_address1 sc_out sc_lv 7 signal 20 } 
	{ connectivity_mask_18_ce1 sc_out sc_logic 1 signal 20 } 
	{ connectivity_mask_18_q1 sc_in sc_lv 32 signal 20 } 
	{ connectivity_mask_0_address0 sc_out sc_lv 7 signal 21 } 
	{ connectivity_mask_0_ce0 sc_out sc_logic 1 signal 21 } 
	{ connectivity_mask_0_q0 sc_in sc_lv 32 signal 21 } 
	{ connectivity_mask_0_address1 sc_out sc_lv 7 signal 21 } 
	{ connectivity_mask_0_ce1 sc_out sc_logic 1 signal 21 } 
	{ connectivity_mask_0_q1 sc_in sc_lv 32 signal 21 } 
	{ connectivity_mask_1_address0 sc_out sc_lv 7 signal 22 } 
	{ connectivity_mask_1_ce0 sc_out sc_logic 1 signal 22 } 
	{ connectivity_mask_1_q0 sc_in sc_lv 32 signal 22 } 
	{ connectivity_mask_1_address1 sc_out sc_lv 7 signal 22 } 
	{ connectivity_mask_1_ce1 sc_out sc_logic 1 signal 22 } 
	{ connectivity_mask_1_q1 sc_in sc_lv 32 signal 22 } 
	{ connectivity_mask_2_address0 sc_out sc_lv 7 signal 23 } 
	{ connectivity_mask_2_ce0 sc_out sc_logic 1 signal 23 } 
	{ connectivity_mask_2_q0 sc_in sc_lv 32 signal 23 } 
	{ connectivity_mask_2_address1 sc_out sc_lv 7 signal 23 } 
	{ connectivity_mask_2_ce1 sc_out sc_logic 1 signal 23 } 
	{ connectivity_mask_2_q1 sc_in sc_lv 32 signal 23 } 
	{ connectivity_mask_3_address0 sc_out sc_lv 7 signal 24 } 
	{ connectivity_mask_3_ce0 sc_out sc_logic 1 signal 24 } 
	{ connectivity_mask_3_q0 sc_in sc_lv 32 signal 24 } 
	{ connectivity_mask_3_address1 sc_out sc_lv 7 signal 24 } 
	{ connectivity_mask_3_ce1 sc_out sc_logic 1 signal 24 } 
	{ connectivity_mask_3_q1 sc_in sc_lv 32 signal 24 } 
	{ connectivity_mask_4_address0 sc_out sc_lv 7 signal 25 } 
	{ connectivity_mask_4_ce0 sc_out sc_logic 1 signal 25 } 
	{ connectivity_mask_4_q0 sc_in sc_lv 32 signal 25 } 
	{ connectivity_mask_4_address1 sc_out sc_lv 7 signal 25 } 
	{ connectivity_mask_4_ce1 sc_out sc_logic 1 signal 25 } 
	{ connectivity_mask_4_q1 sc_in sc_lv 32 signal 25 } 
	{ connectivity_mask_5_address0 sc_out sc_lv 7 signal 26 } 
	{ connectivity_mask_5_ce0 sc_out sc_logic 1 signal 26 } 
	{ connectivity_mask_5_q0 sc_in sc_lv 32 signal 26 } 
	{ connectivity_mask_5_address1 sc_out sc_lv 7 signal 26 } 
	{ connectivity_mask_5_ce1 sc_out sc_logic 1 signal 26 } 
	{ connectivity_mask_5_q1 sc_in sc_lv 32 signal 26 } 
	{ connectivity_mask_6_address0 sc_out sc_lv 7 signal 27 } 
	{ connectivity_mask_6_ce0 sc_out sc_logic 1 signal 27 } 
	{ connectivity_mask_6_q0 sc_in sc_lv 32 signal 27 } 
	{ connectivity_mask_6_address1 sc_out sc_lv 7 signal 27 } 
	{ connectivity_mask_6_ce1 sc_out sc_logic 1 signal 27 } 
	{ connectivity_mask_6_q1 sc_in sc_lv 32 signal 27 } 
	{ connectivity_mask_7_address0 sc_out sc_lv 7 signal 28 } 
	{ connectivity_mask_7_ce0 sc_out sc_logic 1 signal 28 } 
	{ connectivity_mask_7_q0 sc_in sc_lv 32 signal 28 } 
	{ connectivity_mask_7_address1 sc_out sc_lv 7 signal 28 } 
	{ connectivity_mask_7_ce1 sc_out sc_logic 1 signal 28 } 
	{ connectivity_mask_7_q1 sc_in sc_lv 32 signal 28 } 
	{ connectivity_mask_8_address0 sc_out sc_lv 7 signal 29 } 
	{ connectivity_mask_8_ce0 sc_out sc_logic 1 signal 29 } 
	{ connectivity_mask_8_q0 sc_in sc_lv 32 signal 29 } 
	{ connectivity_mask_8_address1 sc_out sc_lv 7 signal 29 } 
	{ connectivity_mask_8_ce1 sc_out sc_logic 1 signal 29 } 
	{ connectivity_mask_8_q1 sc_in sc_lv 32 signal 29 } 
	{ connectivity_mask_9_address0 sc_out sc_lv 7 signal 30 } 
	{ connectivity_mask_9_ce0 sc_out sc_logic 1 signal 30 } 
	{ connectivity_mask_9_q0 sc_in sc_lv 32 signal 30 } 
	{ connectivity_mask_9_address1 sc_out sc_lv 7 signal 30 } 
	{ connectivity_mask_9_ce1 sc_out sc_logic 1 signal 30 } 
	{ connectivity_mask_9_q1 sc_in sc_lv 32 signal 30 } 
	{ connectivity_mask_10_address0 sc_out sc_lv 7 signal 31 } 
	{ connectivity_mask_10_ce0 sc_out sc_logic 1 signal 31 } 
	{ connectivity_mask_10_q0 sc_in sc_lv 32 signal 31 } 
	{ connectivity_mask_10_address1 sc_out sc_lv 7 signal 31 } 
	{ connectivity_mask_10_ce1 sc_out sc_logic 1 signal 31 } 
	{ connectivity_mask_10_q1 sc_in sc_lv 32 signal 31 } 
	{ connectivity_mask_11_address0 sc_out sc_lv 7 signal 32 } 
	{ connectivity_mask_11_ce0 sc_out sc_logic 1 signal 32 } 
	{ connectivity_mask_11_q0 sc_in sc_lv 32 signal 32 } 
	{ connectivity_mask_11_address1 sc_out sc_lv 7 signal 32 } 
	{ connectivity_mask_11_ce1 sc_out sc_logic 1 signal 32 } 
	{ connectivity_mask_11_q1 sc_in sc_lv 32 signal 32 } 
	{ connectivity_mask_12_address0 sc_out sc_lv 7 signal 33 } 
	{ connectivity_mask_12_ce0 sc_out sc_logic 1 signal 33 } 
	{ connectivity_mask_12_q0 sc_in sc_lv 32 signal 33 } 
	{ connectivity_mask_12_address1 sc_out sc_lv 7 signal 33 } 
	{ connectivity_mask_12_ce1 sc_out sc_logic 1 signal 33 } 
	{ connectivity_mask_12_q1 sc_in sc_lv 32 signal 33 } 
	{ connectivity_mask_13_address0 sc_out sc_lv 7 signal 34 } 
	{ connectivity_mask_13_ce0 sc_out sc_logic 1 signal 34 } 
	{ connectivity_mask_13_q0 sc_in sc_lv 32 signal 34 } 
	{ connectivity_mask_13_address1 sc_out sc_lv 7 signal 34 } 
	{ connectivity_mask_13_ce1 sc_out sc_logic 1 signal 34 } 
	{ connectivity_mask_13_q1 sc_in sc_lv 32 signal 34 } 
	{ connectivity_mask_14_address0 sc_out sc_lv 7 signal 35 } 
	{ connectivity_mask_14_ce0 sc_out sc_logic 1 signal 35 } 
	{ connectivity_mask_14_q0 sc_in sc_lv 32 signal 35 } 
	{ connectivity_mask_14_address1 sc_out sc_lv 7 signal 35 } 
	{ connectivity_mask_14_ce1 sc_out sc_logic 1 signal 35 } 
	{ connectivity_mask_14_q1 sc_in sc_lv 32 signal 35 } 
	{ connectivity_mask_15_address0 sc_out sc_lv 7 signal 36 } 
	{ connectivity_mask_15_ce0 sc_out sc_logic 1 signal 36 } 
	{ connectivity_mask_15_q0 sc_in sc_lv 32 signal 36 } 
	{ connectivity_mask_15_address1 sc_out sc_lv 7 signal 36 } 
	{ connectivity_mask_15_ce1 sc_out sc_logic 1 signal 36 } 
	{ connectivity_mask_15_q1 sc_in sc_lv 32 signal 36 } 
	{ connectivity_mask_16_address0 sc_out sc_lv 7 signal 37 } 
	{ connectivity_mask_16_ce0 sc_out sc_logic 1 signal 37 } 
	{ connectivity_mask_16_q0 sc_in sc_lv 32 signal 37 } 
	{ connectivity_mask_16_address1 sc_out sc_lv 7 signal 37 } 
	{ connectivity_mask_16_ce1 sc_out sc_logic 1 signal 37 } 
	{ connectivity_mask_16_q1 sc_in sc_lv 32 signal 37 } 
	{ connectivity_mask_17_address0 sc_out sc_lv 7 signal 38 } 
	{ connectivity_mask_17_ce0 sc_out sc_logic 1 signal 38 } 
	{ connectivity_mask_17_q0 sc_in sc_lv 32 signal 38 } 
	{ connectivity_mask_17_address1 sc_out sc_lv 7 signal 38 } 
	{ connectivity_mask_17_ce1 sc_out sc_logic 1 signal 38 } 
	{ connectivity_mask_17_q1 sc_in sc_lv 32 signal 38 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "attention_coefficients_sum_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "attention_coefficients_sum_V", "role": "address1" }} , 
 	{ "name": "attention_coefficients_sum_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attention_coefficients_sum_V", "role": "ce1" }} , 
 	{ "name": "attention_coefficients_sum_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attention_coefficients_sum_V", "role": "we1" }} , 
 	{ "name": "attention_coefficients_sum_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "attention_coefficients_sum_V", "role": "d1" }} , 
 	{ "name": "all_scores_V_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_18", "role": "address0" }} , 
 	{ "name": "all_scores_V_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_18", "role": "ce0" }} , 
 	{ "name": "all_scores_V_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_18", "role": "q0" }} , 
 	{ "name": "all_scores_V_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_18", "role": "address1" }} , 
 	{ "name": "all_scores_V_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_18", "role": "ce1" }} , 
 	{ "name": "all_scores_V_18_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_18", "role": "we1" }} , 
 	{ "name": "all_scores_V_18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_18", "role": "d1" }} , 
 	{ "name": "all_scores_V_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_17", "role": "address0" }} , 
 	{ "name": "all_scores_V_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_17", "role": "ce0" }} , 
 	{ "name": "all_scores_V_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_17", "role": "q0" }} , 
 	{ "name": "all_scores_V_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_17", "role": "address1" }} , 
 	{ "name": "all_scores_V_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_17", "role": "ce1" }} , 
 	{ "name": "all_scores_V_17_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_17", "role": "we1" }} , 
 	{ "name": "all_scores_V_17_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_17", "role": "d1" }} , 
 	{ "name": "all_scores_V_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_16", "role": "address0" }} , 
 	{ "name": "all_scores_V_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_16", "role": "ce0" }} , 
 	{ "name": "all_scores_V_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_16", "role": "q0" }} , 
 	{ "name": "all_scores_V_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_16", "role": "address1" }} , 
 	{ "name": "all_scores_V_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_16", "role": "ce1" }} , 
 	{ "name": "all_scores_V_16_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_16", "role": "we1" }} , 
 	{ "name": "all_scores_V_16_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_16", "role": "d1" }} , 
 	{ "name": "all_scores_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_15", "role": "address0" }} , 
 	{ "name": "all_scores_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_15", "role": "ce0" }} , 
 	{ "name": "all_scores_V_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_15", "role": "q0" }} , 
 	{ "name": "all_scores_V_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_15", "role": "address1" }} , 
 	{ "name": "all_scores_V_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_15", "role": "ce1" }} , 
 	{ "name": "all_scores_V_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_15", "role": "we1" }} , 
 	{ "name": "all_scores_V_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_15", "role": "d1" }} , 
 	{ "name": "all_scores_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_14", "role": "address0" }} , 
 	{ "name": "all_scores_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_14", "role": "ce0" }} , 
 	{ "name": "all_scores_V_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_14", "role": "q0" }} , 
 	{ "name": "all_scores_V_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_14", "role": "address1" }} , 
 	{ "name": "all_scores_V_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_14", "role": "ce1" }} , 
 	{ "name": "all_scores_V_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_14", "role": "we1" }} , 
 	{ "name": "all_scores_V_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_14", "role": "d1" }} , 
 	{ "name": "all_scores_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_13", "role": "address0" }} , 
 	{ "name": "all_scores_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_13", "role": "ce0" }} , 
 	{ "name": "all_scores_V_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_13", "role": "q0" }} , 
 	{ "name": "all_scores_V_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_13", "role": "address1" }} , 
 	{ "name": "all_scores_V_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_13", "role": "ce1" }} , 
 	{ "name": "all_scores_V_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_13", "role": "we1" }} , 
 	{ "name": "all_scores_V_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_13", "role": "d1" }} , 
 	{ "name": "all_scores_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_12", "role": "address0" }} , 
 	{ "name": "all_scores_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_12", "role": "ce0" }} , 
 	{ "name": "all_scores_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_12", "role": "q0" }} , 
 	{ "name": "all_scores_V_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_12", "role": "address1" }} , 
 	{ "name": "all_scores_V_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_12", "role": "ce1" }} , 
 	{ "name": "all_scores_V_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_12", "role": "we1" }} , 
 	{ "name": "all_scores_V_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_12", "role": "d1" }} , 
 	{ "name": "all_scores_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_11", "role": "address0" }} , 
 	{ "name": "all_scores_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_11", "role": "ce0" }} , 
 	{ "name": "all_scores_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_11", "role": "q0" }} , 
 	{ "name": "all_scores_V_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_11", "role": "address1" }} , 
 	{ "name": "all_scores_V_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_11", "role": "ce1" }} , 
 	{ "name": "all_scores_V_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_11", "role": "we1" }} , 
 	{ "name": "all_scores_V_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_11", "role": "d1" }} , 
 	{ "name": "all_scores_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_10", "role": "address0" }} , 
 	{ "name": "all_scores_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_10", "role": "ce0" }} , 
 	{ "name": "all_scores_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_10", "role": "q0" }} , 
 	{ "name": "all_scores_V_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_10", "role": "address1" }} , 
 	{ "name": "all_scores_V_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_10", "role": "ce1" }} , 
 	{ "name": "all_scores_V_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_10", "role": "we1" }} , 
 	{ "name": "all_scores_V_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_10", "role": "d1" }} , 
 	{ "name": "all_scores_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_9", "role": "address0" }} , 
 	{ "name": "all_scores_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_9", "role": "ce0" }} , 
 	{ "name": "all_scores_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_9", "role": "q0" }} , 
 	{ "name": "all_scores_V_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_9", "role": "address1" }} , 
 	{ "name": "all_scores_V_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_9", "role": "ce1" }} , 
 	{ "name": "all_scores_V_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_9", "role": "we1" }} , 
 	{ "name": "all_scores_V_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_9", "role": "d1" }} , 
 	{ "name": "all_scores_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_8", "role": "address0" }} , 
 	{ "name": "all_scores_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_8", "role": "ce0" }} , 
 	{ "name": "all_scores_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_8", "role": "q0" }} , 
 	{ "name": "all_scores_V_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_8", "role": "address1" }} , 
 	{ "name": "all_scores_V_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_8", "role": "ce1" }} , 
 	{ "name": "all_scores_V_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_8", "role": "we1" }} , 
 	{ "name": "all_scores_V_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_8", "role": "d1" }} , 
 	{ "name": "all_scores_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_7", "role": "address0" }} , 
 	{ "name": "all_scores_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_7", "role": "ce0" }} , 
 	{ "name": "all_scores_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_7", "role": "q0" }} , 
 	{ "name": "all_scores_V_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_7", "role": "address1" }} , 
 	{ "name": "all_scores_V_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_7", "role": "ce1" }} , 
 	{ "name": "all_scores_V_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_7", "role": "we1" }} , 
 	{ "name": "all_scores_V_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_7", "role": "d1" }} , 
 	{ "name": "all_scores_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_6", "role": "address0" }} , 
 	{ "name": "all_scores_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_6", "role": "ce0" }} , 
 	{ "name": "all_scores_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_6", "role": "q0" }} , 
 	{ "name": "all_scores_V_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_6", "role": "address1" }} , 
 	{ "name": "all_scores_V_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_6", "role": "ce1" }} , 
 	{ "name": "all_scores_V_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_6", "role": "we1" }} , 
 	{ "name": "all_scores_V_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_6", "role": "d1" }} , 
 	{ "name": "all_scores_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_5", "role": "address0" }} , 
 	{ "name": "all_scores_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_5", "role": "ce0" }} , 
 	{ "name": "all_scores_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_5", "role": "q0" }} , 
 	{ "name": "all_scores_V_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_5", "role": "address1" }} , 
 	{ "name": "all_scores_V_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_5", "role": "ce1" }} , 
 	{ "name": "all_scores_V_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_5", "role": "we1" }} , 
 	{ "name": "all_scores_V_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_5", "role": "d1" }} , 
 	{ "name": "all_scores_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_4", "role": "address0" }} , 
 	{ "name": "all_scores_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_4", "role": "ce0" }} , 
 	{ "name": "all_scores_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_4", "role": "q0" }} , 
 	{ "name": "all_scores_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_4", "role": "address1" }} , 
 	{ "name": "all_scores_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_4", "role": "ce1" }} , 
 	{ "name": "all_scores_V_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_4", "role": "we1" }} , 
 	{ "name": "all_scores_V_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_4", "role": "d1" }} , 
 	{ "name": "all_scores_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_3", "role": "address0" }} , 
 	{ "name": "all_scores_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_3", "role": "ce0" }} , 
 	{ "name": "all_scores_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_3", "role": "q0" }} , 
 	{ "name": "all_scores_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_3", "role": "address1" }} , 
 	{ "name": "all_scores_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_3", "role": "ce1" }} , 
 	{ "name": "all_scores_V_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_3", "role": "we1" }} , 
 	{ "name": "all_scores_V_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_3", "role": "d1" }} , 
 	{ "name": "all_scores_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_2", "role": "address0" }} , 
 	{ "name": "all_scores_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_2", "role": "ce0" }} , 
 	{ "name": "all_scores_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_2", "role": "q0" }} , 
 	{ "name": "all_scores_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_2", "role": "address1" }} , 
 	{ "name": "all_scores_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_2", "role": "ce1" }} , 
 	{ "name": "all_scores_V_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_2", "role": "we1" }} , 
 	{ "name": "all_scores_V_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_2", "role": "d1" }} , 
 	{ "name": "all_scores_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_1", "role": "address0" }} , 
 	{ "name": "all_scores_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_1", "role": "ce0" }} , 
 	{ "name": "all_scores_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_1", "role": "q0" }} , 
 	{ "name": "all_scores_V_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_1", "role": "address1" }} , 
 	{ "name": "all_scores_V_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_1", "role": "ce1" }} , 
 	{ "name": "all_scores_V_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_1", "role": "we1" }} , 
 	{ "name": "all_scores_V_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_1", "role": "d1" }} , 
 	{ "name": "all_scores_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_0", "role": "address0" }} , 
 	{ "name": "all_scores_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_0", "role": "ce0" }} , 
 	{ "name": "all_scores_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_0", "role": "q0" }} , 
 	{ "name": "all_scores_V_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "all_scores_V_0", "role": "address1" }} , 
 	{ "name": "all_scores_V_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_0", "role": "ce1" }} , 
 	{ "name": "all_scores_V_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V_0", "role": "we1" }} , 
 	{ "name": "all_scores_V_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V_0", "role": "d1" }} , 
 	{ "name": "connectivity_mask_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_18", "role": "address0" }} , 
 	{ "name": "connectivity_mask_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_18", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_18", "role": "q0" }} , 
 	{ "name": "connectivity_mask_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_18", "role": "address1" }} , 
 	{ "name": "connectivity_mask_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_18", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_18_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_18", "role": "q1" }} , 
 	{ "name": "connectivity_mask_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_0", "role": "address0" }} , 
 	{ "name": "connectivity_mask_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_0", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_0", "role": "q0" }} , 
 	{ "name": "connectivity_mask_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_0", "role": "address1" }} , 
 	{ "name": "connectivity_mask_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_0", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_0", "role": "q1" }} , 
 	{ "name": "connectivity_mask_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_1", "role": "address0" }} , 
 	{ "name": "connectivity_mask_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_1", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_1", "role": "q0" }} , 
 	{ "name": "connectivity_mask_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_1", "role": "address1" }} , 
 	{ "name": "connectivity_mask_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_1", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_1", "role": "q1" }} , 
 	{ "name": "connectivity_mask_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_2", "role": "address0" }} , 
 	{ "name": "connectivity_mask_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_2", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_2", "role": "q0" }} , 
 	{ "name": "connectivity_mask_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_2", "role": "address1" }} , 
 	{ "name": "connectivity_mask_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_2", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_2", "role": "q1" }} , 
 	{ "name": "connectivity_mask_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_3", "role": "address0" }} , 
 	{ "name": "connectivity_mask_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_3", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_3", "role": "q0" }} , 
 	{ "name": "connectivity_mask_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_3", "role": "address1" }} , 
 	{ "name": "connectivity_mask_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_3", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_3", "role": "q1" }} , 
 	{ "name": "connectivity_mask_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_4", "role": "address0" }} , 
 	{ "name": "connectivity_mask_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_4", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_4", "role": "q0" }} , 
 	{ "name": "connectivity_mask_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_4", "role": "address1" }} , 
 	{ "name": "connectivity_mask_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_4", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_4", "role": "q1" }} , 
 	{ "name": "connectivity_mask_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_5", "role": "address0" }} , 
 	{ "name": "connectivity_mask_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_5", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_5", "role": "q0" }} , 
 	{ "name": "connectivity_mask_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_5", "role": "address1" }} , 
 	{ "name": "connectivity_mask_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_5", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_5", "role": "q1" }} , 
 	{ "name": "connectivity_mask_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_6", "role": "address0" }} , 
 	{ "name": "connectivity_mask_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_6", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_6", "role": "q0" }} , 
 	{ "name": "connectivity_mask_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_6", "role": "address1" }} , 
 	{ "name": "connectivity_mask_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_6", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_6", "role": "q1" }} , 
 	{ "name": "connectivity_mask_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_7", "role": "address0" }} , 
 	{ "name": "connectivity_mask_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_7", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_7", "role": "q0" }} , 
 	{ "name": "connectivity_mask_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_7", "role": "address1" }} , 
 	{ "name": "connectivity_mask_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_7", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_7", "role": "q1" }} , 
 	{ "name": "connectivity_mask_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_8", "role": "address0" }} , 
 	{ "name": "connectivity_mask_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_8", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_8", "role": "q0" }} , 
 	{ "name": "connectivity_mask_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_8", "role": "address1" }} , 
 	{ "name": "connectivity_mask_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_8", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_8", "role": "q1" }} , 
 	{ "name": "connectivity_mask_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_9", "role": "address0" }} , 
 	{ "name": "connectivity_mask_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_9", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_9", "role": "q0" }} , 
 	{ "name": "connectivity_mask_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_9", "role": "address1" }} , 
 	{ "name": "connectivity_mask_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_9", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_9", "role": "q1" }} , 
 	{ "name": "connectivity_mask_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_10", "role": "address0" }} , 
 	{ "name": "connectivity_mask_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_10", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_10", "role": "q0" }} , 
 	{ "name": "connectivity_mask_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_10", "role": "address1" }} , 
 	{ "name": "connectivity_mask_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_10", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_10", "role": "q1" }} , 
 	{ "name": "connectivity_mask_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_11", "role": "address0" }} , 
 	{ "name": "connectivity_mask_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_11", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_11", "role": "q0" }} , 
 	{ "name": "connectivity_mask_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_11", "role": "address1" }} , 
 	{ "name": "connectivity_mask_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_11", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_11", "role": "q1" }} , 
 	{ "name": "connectivity_mask_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_12", "role": "address0" }} , 
 	{ "name": "connectivity_mask_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_12", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_12", "role": "q0" }} , 
 	{ "name": "connectivity_mask_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_12", "role": "address1" }} , 
 	{ "name": "connectivity_mask_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_12", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_12", "role": "q1" }} , 
 	{ "name": "connectivity_mask_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_13", "role": "address0" }} , 
 	{ "name": "connectivity_mask_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_13", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_13", "role": "q0" }} , 
 	{ "name": "connectivity_mask_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_13", "role": "address1" }} , 
 	{ "name": "connectivity_mask_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_13", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_13", "role": "q1" }} , 
 	{ "name": "connectivity_mask_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_14", "role": "address0" }} , 
 	{ "name": "connectivity_mask_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_14", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_14", "role": "q0" }} , 
 	{ "name": "connectivity_mask_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_14", "role": "address1" }} , 
 	{ "name": "connectivity_mask_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_14", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_14", "role": "q1" }} , 
 	{ "name": "connectivity_mask_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_15", "role": "address0" }} , 
 	{ "name": "connectivity_mask_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_15", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_15", "role": "q0" }} , 
 	{ "name": "connectivity_mask_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_15", "role": "address1" }} , 
 	{ "name": "connectivity_mask_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_15", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_15", "role": "q1" }} , 
 	{ "name": "connectivity_mask_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_16", "role": "address0" }} , 
 	{ "name": "connectivity_mask_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_16", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_16", "role": "q0" }} , 
 	{ "name": "connectivity_mask_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_16", "role": "address1" }} , 
 	{ "name": "connectivity_mask_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_16", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_16_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_16", "role": "q1" }} , 
 	{ "name": "connectivity_mask_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_17", "role": "address0" }} , 
 	{ "name": "connectivity_mask_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_17", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_17", "role": "q0" }} , 
 	{ "name": "connectivity_mask_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_17", "role": "address1" }} , 
 	{ "name": "connectivity_mask_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_17", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_17_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_17", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "compute_attention_coefficients_sum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "123", "EstimateLatencyMax" : "123",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "attention_coefficients_sum_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "attention_coefficients_sum_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_18", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_17", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_16", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_15", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_14", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_13", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_12", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_11", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_10", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_9", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_8", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_7", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_6", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_5", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_4", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_3", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_2", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "all_scores_V_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "all_scores_V_0", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "connectivity_mask_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_17", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676", "Parent" : "0", "Child" : ["2", "11", "20", "29", "38", "47", "56", "65", "74", "83", "92", "101", "110", "119", "128", "137", "146", "155", "164", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193"],
		"CDFG" : "compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "112", "EstimateLatencyMax" : "112",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "connectivity_mask_0_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_4_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_5_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_6_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_7_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_8_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_9_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_10_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_11_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_12_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_13_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_14_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_15_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_16_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_17_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_18_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "attention_coefficients_sum_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "all_scores_V_18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "all_scores_V_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_exp_28_10_s_fu_3666", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "9", "Inst_end_state" : "27"},
					{"ID" : "119", "SubInstance" : "grp_exp_28_10_s_fu_3771", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "14", "Inst_end_state" : "32"},
					{"ID" : "47", "SubInstance" : "grp_exp_28_10_s_fu_3651", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "8", "Inst_end_state" : "26"},
					{"ID" : "128", "SubInstance" : "grp_exp_28_10_s_fu_3786", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "14", "Inst_end_state" : "32"},
					{"ID" : "137", "SubInstance" : "grp_exp_28_10_s_fu_3801", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "15", "Inst_end_state" : "33"},
					{"ID" : "155", "SubInstance" : "grp_exp_28_10_s_fu_3831", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "16", "Inst_end_state" : "34"},
					{"ID" : "74", "SubInstance" : "grp_exp_28_10_s_fu_3696", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "10", "Inst_end_state" : "28"},
					{"ID" : "38", "SubInstance" : "grp_exp_28_10_s_fu_3636", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "8", "Inst_end_state" : "26"},
					{"ID" : "101", "SubInstance" : "grp_exp_28_10_s_fu_3741", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "12", "Inst_end_state" : "30"},
					{"ID" : "20", "SubInstance" : "grp_exp_28_10_s_fu_3606", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "6", "Inst_end_state" : "24"},
					{"ID" : "2", "SubInstance" : "grp_exp_28_10_s_fu_3575", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "6", "Inst_end_state" : "24"},
					{"ID" : "65", "SubInstance" : "grp_exp_28_10_s_fu_3681", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "10", "Inst_end_state" : "28"},
					{"ID" : "83", "SubInstance" : "grp_exp_28_10_s_fu_3711", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "11", "Inst_end_state" : "29"},
					{"ID" : "110", "SubInstance" : "grp_exp_28_10_s_fu_3756", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "13", "Inst_end_state" : "31"},
					{"ID" : "164", "SubInstance" : "grp_exp_28_10_s_fu_3846", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "17", "Inst_end_state" : "35"},
					{"ID" : "92", "SubInstance" : "grp_exp_28_10_s_fu_3726", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "12", "Inst_end_state" : "30"},
					{"ID" : "29", "SubInstance" : "grp_exp_28_10_s_fu_3621", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "7", "Inst_end_state" : "25"},
					{"ID" : "146", "SubInstance" : "grp_exp_28_10_s_fu_3816", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "16", "Inst_end_state" : "34"},
					{"ID" : "11", "SubInstance" : "grp_exp_28_10_s_fu_3591", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "6", "Inst_end_state" : "24"}]},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_exp_28_10_s_fu_3666", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "9", "Inst_end_state" : "27"},
					{"ID" : "119", "SubInstance" : "grp_exp_28_10_s_fu_3771", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "14", "Inst_end_state" : "32"},
					{"ID" : "47", "SubInstance" : "grp_exp_28_10_s_fu_3651", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "8", "Inst_end_state" : "26"},
					{"ID" : "128", "SubInstance" : "grp_exp_28_10_s_fu_3786", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "14", "Inst_end_state" : "32"},
					{"ID" : "137", "SubInstance" : "grp_exp_28_10_s_fu_3801", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "15", "Inst_end_state" : "33"},
					{"ID" : "155", "SubInstance" : "grp_exp_28_10_s_fu_3831", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "16", "Inst_end_state" : "34"},
					{"ID" : "74", "SubInstance" : "grp_exp_28_10_s_fu_3696", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "10", "Inst_end_state" : "28"},
					{"ID" : "38", "SubInstance" : "grp_exp_28_10_s_fu_3636", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "8", "Inst_end_state" : "26"},
					{"ID" : "101", "SubInstance" : "grp_exp_28_10_s_fu_3741", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "12", "Inst_end_state" : "30"},
					{"ID" : "20", "SubInstance" : "grp_exp_28_10_s_fu_3606", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "6", "Inst_end_state" : "24"},
					{"ID" : "2", "SubInstance" : "grp_exp_28_10_s_fu_3575", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "6", "Inst_end_state" : "24"},
					{"ID" : "65", "SubInstance" : "grp_exp_28_10_s_fu_3681", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "10", "Inst_end_state" : "28"},
					{"ID" : "83", "SubInstance" : "grp_exp_28_10_s_fu_3711", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "11", "Inst_end_state" : "29"},
					{"ID" : "110", "SubInstance" : "grp_exp_28_10_s_fu_3756", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "13", "Inst_end_state" : "31"},
					{"ID" : "164", "SubInstance" : "grp_exp_28_10_s_fu_3846", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "17", "Inst_end_state" : "35"},
					{"ID" : "92", "SubInstance" : "grp_exp_28_10_s_fu_3726", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "12", "Inst_end_state" : "30"},
					{"ID" : "29", "SubInstance" : "grp_exp_28_10_s_fu_3621", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "7", "Inst_end_state" : "25"},
					{"ID" : "146", "SubInstance" : "grp_exp_28_10_s_fu_3816", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "16", "Inst_end_state" : "34"},
					{"ID" : "11", "SubInstance" : "grp_exp_28_10_s_fu_3591", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "6", "Inst_end_state" : "24"}]},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_exp_28_10_s_fu_3666", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "9", "Inst_end_state" : "27"},
					{"ID" : "119", "SubInstance" : "grp_exp_28_10_s_fu_3771", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "14", "Inst_end_state" : "32"},
					{"ID" : "47", "SubInstance" : "grp_exp_28_10_s_fu_3651", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "8", "Inst_end_state" : "26"},
					{"ID" : "128", "SubInstance" : "grp_exp_28_10_s_fu_3786", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "14", "Inst_end_state" : "32"},
					{"ID" : "137", "SubInstance" : "grp_exp_28_10_s_fu_3801", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "15", "Inst_end_state" : "33"},
					{"ID" : "155", "SubInstance" : "grp_exp_28_10_s_fu_3831", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "16", "Inst_end_state" : "34"},
					{"ID" : "74", "SubInstance" : "grp_exp_28_10_s_fu_3696", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "10", "Inst_end_state" : "28"},
					{"ID" : "38", "SubInstance" : "grp_exp_28_10_s_fu_3636", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "8", "Inst_end_state" : "26"},
					{"ID" : "101", "SubInstance" : "grp_exp_28_10_s_fu_3741", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "12", "Inst_end_state" : "30"},
					{"ID" : "20", "SubInstance" : "grp_exp_28_10_s_fu_3606", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "6", "Inst_end_state" : "24"},
					{"ID" : "2", "SubInstance" : "grp_exp_28_10_s_fu_3575", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "6", "Inst_end_state" : "24"},
					{"ID" : "65", "SubInstance" : "grp_exp_28_10_s_fu_3681", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "10", "Inst_end_state" : "28"},
					{"ID" : "83", "SubInstance" : "grp_exp_28_10_s_fu_3711", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "11", "Inst_end_state" : "29"},
					{"ID" : "110", "SubInstance" : "grp_exp_28_10_s_fu_3756", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "13", "Inst_end_state" : "31"},
					{"ID" : "164", "SubInstance" : "grp_exp_28_10_s_fu_3846", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "17", "Inst_end_state" : "35"},
					{"ID" : "92", "SubInstance" : "grp_exp_28_10_s_fu_3726", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "12", "Inst_end_state" : "30"},
					{"ID" : "29", "SubInstance" : "grp_exp_28_10_s_fu_3621", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "7", "Inst_end_state" : "25"},
					{"ID" : "146", "SubInstance" : "grp_exp_28_10_s_fu_3816", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "16", "Inst_end_state" : "34"},
					{"ID" : "11", "SubInstance" : "grp_exp_28_10_s_fu_3591", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "6", "Inst_end_state" : "24"}]},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_exp_28_10_s_fu_3666", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "9", "Inst_end_state" : "27"},
					{"ID" : "119", "SubInstance" : "grp_exp_28_10_s_fu_3771", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "14", "Inst_end_state" : "32"},
					{"ID" : "47", "SubInstance" : "grp_exp_28_10_s_fu_3651", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "8", "Inst_end_state" : "26"},
					{"ID" : "128", "SubInstance" : "grp_exp_28_10_s_fu_3786", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "14", "Inst_end_state" : "32"},
					{"ID" : "137", "SubInstance" : "grp_exp_28_10_s_fu_3801", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "15", "Inst_end_state" : "33"},
					{"ID" : "155", "SubInstance" : "grp_exp_28_10_s_fu_3831", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "16", "Inst_end_state" : "34"},
					{"ID" : "74", "SubInstance" : "grp_exp_28_10_s_fu_3696", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "10", "Inst_end_state" : "28"},
					{"ID" : "38", "SubInstance" : "grp_exp_28_10_s_fu_3636", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "8", "Inst_end_state" : "26"},
					{"ID" : "101", "SubInstance" : "grp_exp_28_10_s_fu_3741", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "12", "Inst_end_state" : "30"},
					{"ID" : "20", "SubInstance" : "grp_exp_28_10_s_fu_3606", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "6", "Inst_end_state" : "24"},
					{"ID" : "2", "SubInstance" : "grp_exp_28_10_s_fu_3575", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "6", "Inst_end_state" : "24"},
					{"ID" : "65", "SubInstance" : "grp_exp_28_10_s_fu_3681", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "10", "Inst_end_state" : "28"},
					{"ID" : "83", "SubInstance" : "grp_exp_28_10_s_fu_3711", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "11", "Inst_end_state" : "29"},
					{"ID" : "110", "SubInstance" : "grp_exp_28_10_s_fu_3756", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "13", "Inst_end_state" : "31"},
					{"ID" : "164", "SubInstance" : "grp_exp_28_10_s_fu_3846", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "17", "Inst_end_state" : "35"},
					{"ID" : "92", "SubInstance" : "grp_exp_28_10_s_fu_3726", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "12", "Inst_end_state" : "30"},
					{"ID" : "29", "SubInstance" : "grp_exp_28_10_s_fu_3621", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "7", "Inst_end_state" : "25"},
					{"ID" : "146", "SubInstance" : "grp_exp_28_10_s_fu_3816", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "16", "Inst_end_state" : "34"},
					{"ID" : "11", "SubInstance" : "grp_exp_28_10_s_fu_3591", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "6", "Inst_end_state" : "24"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_exp_28_10_s_fu_3666", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "9", "Inst_end_state" : "27"},
					{"ID" : "119", "SubInstance" : "grp_exp_28_10_s_fu_3771", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "14", "Inst_end_state" : "32"},
					{"ID" : "47", "SubInstance" : "grp_exp_28_10_s_fu_3651", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "8", "Inst_end_state" : "26"},
					{"ID" : "128", "SubInstance" : "grp_exp_28_10_s_fu_3786", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "14", "Inst_end_state" : "32"},
					{"ID" : "137", "SubInstance" : "grp_exp_28_10_s_fu_3801", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "15", "Inst_end_state" : "33"},
					{"ID" : "155", "SubInstance" : "grp_exp_28_10_s_fu_3831", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "16", "Inst_end_state" : "34"},
					{"ID" : "74", "SubInstance" : "grp_exp_28_10_s_fu_3696", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "10", "Inst_end_state" : "28"},
					{"ID" : "38", "SubInstance" : "grp_exp_28_10_s_fu_3636", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "8", "Inst_end_state" : "26"},
					{"ID" : "101", "SubInstance" : "grp_exp_28_10_s_fu_3741", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "12", "Inst_end_state" : "30"},
					{"ID" : "20", "SubInstance" : "grp_exp_28_10_s_fu_3606", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "6", "Inst_end_state" : "24"},
					{"ID" : "2", "SubInstance" : "grp_exp_28_10_s_fu_3575", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "6", "Inst_end_state" : "24"},
					{"ID" : "65", "SubInstance" : "grp_exp_28_10_s_fu_3681", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "10", "Inst_end_state" : "28"},
					{"ID" : "83", "SubInstance" : "grp_exp_28_10_s_fu_3711", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "11", "Inst_end_state" : "29"},
					{"ID" : "110", "SubInstance" : "grp_exp_28_10_s_fu_3756", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "13", "Inst_end_state" : "31"},
					{"ID" : "164", "SubInstance" : "grp_exp_28_10_s_fu_3846", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "17", "Inst_end_state" : "35"},
					{"ID" : "92", "SubInstance" : "grp_exp_28_10_s_fu_3726", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "12", "Inst_end_state" : "30"},
					{"ID" : "29", "SubInstance" : "grp_exp_28_10_s_fu_3621", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "7", "Inst_end_state" : "25"},
					{"ID" : "146", "SubInstance" : "grp_exp_28_10_s_fu_3816", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "16", "Inst_end_state" : "34"},
					{"ID" : "11", "SubInstance" : "grp_exp_28_10_s_fu_3591", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "6", "Inst_end_state" : "24"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_105_1_VITIS_LOOP_106_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter35", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter35", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3575", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3575.f_x_msb_4_h_table_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3575.f_x_msb_4_l_table_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3575.f_x_msb_3_table_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3575.f_x_msb_2_table_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3575.exp_x_msb_1_table_V_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3575.mul_44ns_42ns_86_3_1_U2067", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3575.mul_50ns_48ns_98_5_1_U2068", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3575.mul_50ns_50ns_100_5_1_U2069", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3591", "Parent" : "1", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3591.f_x_msb_4_h_table_V_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3591.f_x_msb_4_l_table_V_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3591.f_x_msb_3_table_V_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3591.f_x_msb_2_table_V_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3591.exp_x_msb_1_table_V_U", "Parent" : "11"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3591.mul_44ns_42ns_86_3_1_U2067", "Parent" : "11"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3591.mul_50ns_48ns_98_5_1_U2068", "Parent" : "11"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3591.mul_50ns_50ns_100_5_1_U2069", "Parent" : "11"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3606", "Parent" : "1", "Child" : ["21", "22", "23", "24", "25", "26", "27", "28"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3606.f_x_msb_4_h_table_V_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3606.f_x_msb_4_l_table_V_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3606.f_x_msb_3_table_V_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3606.f_x_msb_2_table_V_U", "Parent" : "20"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3606.exp_x_msb_1_table_V_U", "Parent" : "20"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3606.mul_44ns_42ns_86_3_1_U2067", "Parent" : "20"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3606.mul_50ns_48ns_98_5_1_U2068", "Parent" : "20"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3606.mul_50ns_50ns_100_5_1_U2069", "Parent" : "20"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3621", "Parent" : "1", "Child" : ["30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3621.f_x_msb_4_h_table_V_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3621.f_x_msb_4_l_table_V_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3621.f_x_msb_3_table_V_U", "Parent" : "29"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3621.f_x_msb_2_table_V_U", "Parent" : "29"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3621.exp_x_msb_1_table_V_U", "Parent" : "29"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3621.mul_44ns_42ns_86_3_1_U2067", "Parent" : "29"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3621.mul_50ns_48ns_98_5_1_U2068", "Parent" : "29"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3621.mul_50ns_50ns_100_5_1_U2069", "Parent" : "29"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3636", "Parent" : "1", "Child" : ["39", "40", "41", "42", "43", "44", "45", "46"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3636.f_x_msb_4_h_table_V_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3636.f_x_msb_4_l_table_V_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3636.f_x_msb_3_table_V_U", "Parent" : "38"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3636.f_x_msb_2_table_V_U", "Parent" : "38"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3636.exp_x_msb_1_table_V_U", "Parent" : "38"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3636.mul_44ns_42ns_86_3_1_U2067", "Parent" : "38"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3636.mul_50ns_48ns_98_5_1_U2068", "Parent" : "38"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3636.mul_50ns_50ns_100_5_1_U2069", "Parent" : "38"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3651", "Parent" : "1", "Child" : ["48", "49", "50", "51", "52", "53", "54", "55"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3651.f_x_msb_4_h_table_V_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3651.f_x_msb_4_l_table_V_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3651.f_x_msb_3_table_V_U", "Parent" : "47"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3651.f_x_msb_2_table_V_U", "Parent" : "47"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3651.exp_x_msb_1_table_V_U", "Parent" : "47"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3651.mul_44ns_42ns_86_3_1_U2067", "Parent" : "47"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3651.mul_50ns_48ns_98_5_1_U2068", "Parent" : "47"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3651.mul_50ns_50ns_100_5_1_U2069", "Parent" : "47"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3666", "Parent" : "1", "Child" : ["57", "58", "59", "60", "61", "62", "63", "64"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3666.f_x_msb_4_h_table_V_U", "Parent" : "56"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3666.f_x_msb_4_l_table_V_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3666.f_x_msb_3_table_V_U", "Parent" : "56"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3666.f_x_msb_2_table_V_U", "Parent" : "56"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3666.exp_x_msb_1_table_V_U", "Parent" : "56"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3666.mul_44ns_42ns_86_3_1_U2067", "Parent" : "56"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3666.mul_50ns_48ns_98_5_1_U2068", "Parent" : "56"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3666.mul_50ns_50ns_100_5_1_U2069", "Parent" : "56"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3681", "Parent" : "1", "Child" : ["66", "67", "68", "69", "70", "71", "72", "73"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3681.f_x_msb_4_h_table_V_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3681.f_x_msb_4_l_table_V_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3681.f_x_msb_3_table_V_U", "Parent" : "65"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3681.f_x_msb_2_table_V_U", "Parent" : "65"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3681.exp_x_msb_1_table_V_U", "Parent" : "65"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3681.mul_44ns_42ns_86_3_1_U2067", "Parent" : "65"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3681.mul_50ns_48ns_98_5_1_U2068", "Parent" : "65"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3681.mul_50ns_50ns_100_5_1_U2069", "Parent" : "65"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3696", "Parent" : "1", "Child" : ["75", "76", "77", "78", "79", "80", "81", "82"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3696.f_x_msb_4_h_table_V_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3696.f_x_msb_4_l_table_V_U", "Parent" : "74"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3696.f_x_msb_3_table_V_U", "Parent" : "74"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3696.f_x_msb_2_table_V_U", "Parent" : "74"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3696.exp_x_msb_1_table_V_U", "Parent" : "74"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3696.mul_44ns_42ns_86_3_1_U2067", "Parent" : "74"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3696.mul_50ns_48ns_98_5_1_U2068", "Parent" : "74"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3696.mul_50ns_50ns_100_5_1_U2069", "Parent" : "74"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3711", "Parent" : "1", "Child" : ["84", "85", "86", "87", "88", "89", "90", "91"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3711.f_x_msb_4_h_table_V_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3711.f_x_msb_4_l_table_V_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3711.f_x_msb_3_table_V_U", "Parent" : "83"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3711.f_x_msb_2_table_V_U", "Parent" : "83"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3711.exp_x_msb_1_table_V_U", "Parent" : "83"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3711.mul_44ns_42ns_86_3_1_U2067", "Parent" : "83"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3711.mul_50ns_48ns_98_5_1_U2068", "Parent" : "83"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3711.mul_50ns_50ns_100_5_1_U2069", "Parent" : "83"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3726", "Parent" : "1", "Child" : ["93", "94", "95", "96", "97", "98", "99", "100"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3726.f_x_msb_4_h_table_V_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3726.f_x_msb_4_l_table_V_U", "Parent" : "92"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3726.f_x_msb_3_table_V_U", "Parent" : "92"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3726.f_x_msb_2_table_V_U", "Parent" : "92"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3726.exp_x_msb_1_table_V_U", "Parent" : "92"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3726.mul_44ns_42ns_86_3_1_U2067", "Parent" : "92"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3726.mul_50ns_48ns_98_5_1_U2068", "Parent" : "92"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3726.mul_50ns_50ns_100_5_1_U2069", "Parent" : "92"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3741", "Parent" : "1", "Child" : ["102", "103", "104", "105", "106", "107", "108", "109"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3741.f_x_msb_4_h_table_V_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3741.f_x_msb_4_l_table_V_U", "Parent" : "101"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3741.f_x_msb_3_table_V_U", "Parent" : "101"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3741.f_x_msb_2_table_V_U", "Parent" : "101"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3741.exp_x_msb_1_table_V_U", "Parent" : "101"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3741.mul_44ns_42ns_86_3_1_U2067", "Parent" : "101"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3741.mul_50ns_48ns_98_5_1_U2068", "Parent" : "101"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3741.mul_50ns_50ns_100_5_1_U2069", "Parent" : "101"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3756", "Parent" : "1", "Child" : ["111", "112", "113", "114", "115", "116", "117", "118"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3756.f_x_msb_4_h_table_V_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3756.f_x_msb_4_l_table_V_U", "Parent" : "110"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3756.f_x_msb_3_table_V_U", "Parent" : "110"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3756.f_x_msb_2_table_V_U", "Parent" : "110"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3756.exp_x_msb_1_table_V_U", "Parent" : "110"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3756.mul_44ns_42ns_86_3_1_U2067", "Parent" : "110"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3756.mul_50ns_48ns_98_5_1_U2068", "Parent" : "110"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3756.mul_50ns_50ns_100_5_1_U2069", "Parent" : "110"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3771", "Parent" : "1", "Child" : ["120", "121", "122", "123", "124", "125", "126", "127"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3771.f_x_msb_4_h_table_V_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3771.f_x_msb_4_l_table_V_U", "Parent" : "119"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3771.f_x_msb_3_table_V_U", "Parent" : "119"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3771.f_x_msb_2_table_V_U", "Parent" : "119"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3771.exp_x_msb_1_table_V_U", "Parent" : "119"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3771.mul_44ns_42ns_86_3_1_U2067", "Parent" : "119"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3771.mul_50ns_48ns_98_5_1_U2068", "Parent" : "119"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3771.mul_50ns_50ns_100_5_1_U2069", "Parent" : "119"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3786", "Parent" : "1", "Child" : ["129", "130", "131", "132", "133", "134", "135", "136"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3786.f_x_msb_4_h_table_V_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3786.f_x_msb_4_l_table_V_U", "Parent" : "128"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3786.f_x_msb_3_table_V_U", "Parent" : "128"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3786.f_x_msb_2_table_V_U", "Parent" : "128"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3786.exp_x_msb_1_table_V_U", "Parent" : "128"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3786.mul_44ns_42ns_86_3_1_U2067", "Parent" : "128"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3786.mul_50ns_48ns_98_5_1_U2068", "Parent" : "128"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3786.mul_50ns_50ns_100_5_1_U2069", "Parent" : "128"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3801", "Parent" : "1", "Child" : ["138", "139", "140", "141", "142", "143", "144", "145"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3801.f_x_msb_4_h_table_V_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3801.f_x_msb_4_l_table_V_U", "Parent" : "137"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3801.f_x_msb_3_table_V_U", "Parent" : "137"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3801.f_x_msb_2_table_V_U", "Parent" : "137"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3801.exp_x_msb_1_table_V_U", "Parent" : "137"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3801.mul_44ns_42ns_86_3_1_U2067", "Parent" : "137"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3801.mul_50ns_48ns_98_5_1_U2068", "Parent" : "137"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3801.mul_50ns_50ns_100_5_1_U2069", "Parent" : "137"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3816", "Parent" : "1", "Child" : ["147", "148", "149", "150", "151", "152", "153", "154"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3816.f_x_msb_4_h_table_V_U", "Parent" : "146"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3816.f_x_msb_4_l_table_V_U", "Parent" : "146"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3816.f_x_msb_3_table_V_U", "Parent" : "146"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3816.f_x_msb_2_table_V_U", "Parent" : "146"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3816.exp_x_msb_1_table_V_U", "Parent" : "146"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3816.mul_44ns_42ns_86_3_1_U2067", "Parent" : "146"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3816.mul_50ns_48ns_98_5_1_U2068", "Parent" : "146"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3816.mul_50ns_50ns_100_5_1_U2069", "Parent" : "146"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3831", "Parent" : "1", "Child" : ["156", "157", "158", "159", "160", "161", "162", "163"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3831.f_x_msb_4_h_table_V_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3831.f_x_msb_4_l_table_V_U", "Parent" : "155"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3831.f_x_msb_3_table_V_U", "Parent" : "155"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3831.f_x_msb_2_table_V_U", "Parent" : "155"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3831.exp_x_msb_1_table_V_U", "Parent" : "155"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3831.mul_44ns_42ns_86_3_1_U2067", "Parent" : "155"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3831.mul_50ns_48ns_98_5_1_U2068", "Parent" : "155"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3831.mul_50ns_50ns_100_5_1_U2069", "Parent" : "155"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3846", "Parent" : "1", "Child" : ["165", "166", "167", "168", "169", "170", "171", "172"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "18", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3846.f_x_msb_4_h_table_V_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3846.f_x_msb_4_l_table_V_U", "Parent" : "164"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3846.f_x_msb_3_table_V_U", "Parent" : "164"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3846.f_x_msb_2_table_V_U", "Parent" : "164"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3846.exp_x_msb_1_table_V_U", "Parent" : "164"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3846.mul_44ns_42ns_86_3_1_U2067", "Parent" : "164"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3846.mul_50ns_48ns_98_5_1_U2068", "Parent" : "164"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.grp_exp_28_10_s_fu_3846.mul_50ns_50ns_100_5_1_U2069", "Parent" : "164"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_325_32_1_1_U2079", "Parent" : "1"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2080", "Parent" : "1"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2081", "Parent" : "1"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2082", "Parent" : "1"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2083", "Parent" : "1"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2084", "Parent" : "1"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2085", "Parent" : "1"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2086", "Parent" : "1"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2087", "Parent" : "1"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2088", "Parent" : "1"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2089", "Parent" : "1"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2090", "Parent" : "1"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2091", "Parent" : "1"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2092", "Parent" : "1"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2093", "Parent" : "1"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2094", "Parent" : "1"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2095", "Parent" : "1"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2096", "Parent" : "1"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mux_1287_32_1_1_U2097", "Parent" : "1"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.mac_muladd_3ns_7ns_5ns_9_4_1_U2098", "Parent" : "1"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2_fu_1676.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	compute_attention_coefficients_sum {
		attention_coefficients_sum_V {Type O LastRead -1 FirstWrite 35}
		all_scores_V_18 {Type IO LastRead 14 FirstWrite 3}
		all_scores_V_17 {Type IO LastRead 13 FirstWrite 3}
		all_scores_V_16 {Type IO LastRead 13 FirstWrite 3}
		all_scores_V_15 {Type IO LastRead 12 FirstWrite 3}
		all_scores_V_14 {Type IO LastRead 11 FirstWrite 3}
		all_scores_V_13 {Type IO LastRead 11 FirstWrite 3}
		all_scores_V_12 {Type IO LastRead 10 FirstWrite 3}
		all_scores_V_11 {Type IO LastRead 9 FirstWrite 3}
		all_scores_V_10 {Type IO LastRead 9 FirstWrite 3}
		all_scores_V_9 {Type IO LastRead 8 FirstWrite 3}
		all_scores_V_8 {Type IO LastRead 7 FirstWrite 3}
		all_scores_V_7 {Type IO LastRead 7 FirstWrite 3}
		all_scores_V_6 {Type IO LastRead 6 FirstWrite 3}
		all_scores_V_5 {Type IO LastRead 5 FirstWrite 3}
		all_scores_V_4 {Type IO LastRead 5 FirstWrite 3}
		all_scores_V_3 {Type IO LastRead 4 FirstWrite 3}
		all_scores_V_2 {Type IO LastRead 3 FirstWrite 3}
		all_scores_V_1 {Type IO LastRead 3 FirstWrite 3}
		all_scores_V_0 {Type IO LastRead 3 FirstWrite 3}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}
		connectivity_mask_18 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_0 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_1 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_2 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_3 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_4 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_5 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_6 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_7 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_8 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_9 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_10 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_11 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_12 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_13 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_14 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_15 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_16 {Type I LastRead 10 FirstWrite -1}
		connectivity_mask_17 {Type I LastRead 10 FirstWrite -1}}
	compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_105_1_VITIS_LOOP_106_2 {
		connectivity_mask_0_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_19 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_18 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_17 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_16 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_15 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_14 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_13 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_12 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_11 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_10 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_9 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_8 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_7 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_6 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_5 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_4 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_3 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load_2 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_1_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_2_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_3_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_4_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_5_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_6_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_7_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_8_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_9_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_10_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_11_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_12_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_13_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_14_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_15_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_16_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_17_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_18_load {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_0_load {Type I LastRead 0 FirstWrite -1}
		attention_coefficients_sum_V {Type O LastRead -1 FirstWrite 35}
		all_scores_V_18 {Type IO LastRead 14 FirstWrite 3}
		all_scores_V_17 {Type IO LastRead 13 FirstWrite 3}
		all_scores_V_16 {Type IO LastRead 13 FirstWrite 3}
		all_scores_V_15 {Type IO LastRead 12 FirstWrite 3}
		all_scores_V_14 {Type IO LastRead 11 FirstWrite 3}
		all_scores_V_13 {Type IO LastRead 11 FirstWrite 3}
		all_scores_V_12 {Type IO LastRead 10 FirstWrite 3}
		all_scores_V_11 {Type IO LastRead 9 FirstWrite 3}
		all_scores_V_10 {Type IO LastRead 9 FirstWrite 3}
		all_scores_V_9 {Type IO LastRead 8 FirstWrite 3}
		all_scores_V_8 {Type IO LastRead 7 FirstWrite 3}
		all_scores_V_7 {Type IO LastRead 7 FirstWrite 3}
		all_scores_V_6 {Type IO LastRead 6 FirstWrite 3}
		all_scores_V_5 {Type IO LastRead 5 FirstWrite 3}
		all_scores_V_4 {Type IO LastRead 5 FirstWrite 3}
		all_scores_V_3 {Type IO LastRead 4 FirstWrite 3}
		all_scores_V_2 {Type IO LastRead 3 FirstWrite 3}
		all_scores_V_1 {Type IO LastRead 3 FirstWrite 3}
		all_scores_V_0 {Type IO LastRead 3 FirstWrite 3}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "123", "Max" : "123"}
	, {"Name" : "Interval", "Min" : "123", "Max" : "123"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	attention_coefficients_sum_V { ap_memory {  { attention_coefficients_sum_V_address1 MemPortADDR2 1 9 }  { attention_coefficients_sum_V_ce1 MemPortCE2 1 1 }  { attention_coefficients_sum_V_we1 MemPortWE2 1 1 }  { attention_coefficients_sum_V_d1 MemPortDIN2 1 28 } } }
	all_scores_V_18 { ap_memory {  { all_scores_V_18_address0 mem_address 1 9 }  { all_scores_V_18_ce0 mem_ce 1 1 }  { all_scores_V_18_q0 mem_dout 0 28 }  { all_scores_V_18_address1 MemPortADDR2 1 9 }  { all_scores_V_18_ce1 MemPortCE2 1 1 }  { all_scores_V_18_we1 MemPortWE2 1 1 }  { all_scores_V_18_d1 MemPortDIN2 1 28 } } }
	all_scores_V_17 { ap_memory {  { all_scores_V_17_address0 mem_address 1 9 }  { all_scores_V_17_ce0 mem_ce 1 1 }  { all_scores_V_17_q0 mem_dout 0 28 }  { all_scores_V_17_address1 MemPortADDR2 1 9 }  { all_scores_V_17_ce1 MemPortCE2 1 1 }  { all_scores_V_17_we1 MemPortWE2 1 1 }  { all_scores_V_17_d1 MemPortDIN2 1 28 } } }
	all_scores_V_16 { ap_memory {  { all_scores_V_16_address0 mem_address 1 9 }  { all_scores_V_16_ce0 mem_ce 1 1 }  { all_scores_V_16_q0 mem_dout 0 28 }  { all_scores_V_16_address1 MemPortADDR2 1 9 }  { all_scores_V_16_ce1 MemPortCE2 1 1 }  { all_scores_V_16_we1 MemPortWE2 1 1 }  { all_scores_V_16_d1 MemPortDIN2 1 28 } } }
	all_scores_V_15 { ap_memory {  { all_scores_V_15_address0 mem_address 1 9 }  { all_scores_V_15_ce0 mem_ce 1 1 }  { all_scores_V_15_q0 mem_dout 0 28 }  { all_scores_V_15_address1 MemPortADDR2 1 9 }  { all_scores_V_15_ce1 MemPortCE2 1 1 }  { all_scores_V_15_we1 MemPortWE2 1 1 }  { all_scores_V_15_d1 MemPortDIN2 1 28 } } }
	all_scores_V_14 { ap_memory {  { all_scores_V_14_address0 mem_address 1 9 }  { all_scores_V_14_ce0 mem_ce 1 1 }  { all_scores_V_14_q0 mem_dout 0 28 }  { all_scores_V_14_address1 MemPortADDR2 1 9 }  { all_scores_V_14_ce1 MemPortCE2 1 1 }  { all_scores_V_14_we1 MemPortWE2 1 1 }  { all_scores_V_14_d1 MemPortDIN2 1 28 } } }
	all_scores_V_13 { ap_memory {  { all_scores_V_13_address0 mem_address 1 9 }  { all_scores_V_13_ce0 mem_ce 1 1 }  { all_scores_V_13_q0 mem_dout 0 28 }  { all_scores_V_13_address1 MemPortADDR2 1 9 }  { all_scores_V_13_ce1 MemPortCE2 1 1 }  { all_scores_V_13_we1 MemPortWE2 1 1 }  { all_scores_V_13_d1 MemPortDIN2 1 28 } } }
	all_scores_V_12 { ap_memory {  { all_scores_V_12_address0 mem_address 1 9 }  { all_scores_V_12_ce0 mem_ce 1 1 }  { all_scores_V_12_q0 mem_dout 0 28 }  { all_scores_V_12_address1 MemPortADDR2 1 9 }  { all_scores_V_12_ce1 MemPortCE2 1 1 }  { all_scores_V_12_we1 MemPortWE2 1 1 }  { all_scores_V_12_d1 MemPortDIN2 1 28 } } }
	all_scores_V_11 { ap_memory {  { all_scores_V_11_address0 mem_address 1 9 }  { all_scores_V_11_ce0 mem_ce 1 1 }  { all_scores_V_11_q0 mem_dout 0 28 }  { all_scores_V_11_address1 MemPortADDR2 1 9 }  { all_scores_V_11_ce1 MemPortCE2 1 1 }  { all_scores_V_11_we1 MemPortWE2 1 1 }  { all_scores_V_11_d1 MemPortDIN2 1 28 } } }
	all_scores_V_10 { ap_memory {  { all_scores_V_10_address0 mem_address 1 9 }  { all_scores_V_10_ce0 mem_ce 1 1 }  { all_scores_V_10_q0 mem_dout 0 28 }  { all_scores_V_10_address1 MemPortADDR2 1 9 }  { all_scores_V_10_ce1 MemPortCE2 1 1 }  { all_scores_V_10_we1 MemPortWE2 1 1 }  { all_scores_V_10_d1 MemPortDIN2 1 28 } } }
	all_scores_V_9 { ap_memory {  { all_scores_V_9_address0 mem_address 1 9 }  { all_scores_V_9_ce0 mem_ce 1 1 }  { all_scores_V_9_q0 mem_dout 0 28 }  { all_scores_V_9_address1 MemPortADDR2 1 9 }  { all_scores_V_9_ce1 MemPortCE2 1 1 }  { all_scores_V_9_we1 MemPortWE2 1 1 }  { all_scores_V_9_d1 MemPortDIN2 1 28 } } }
	all_scores_V_8 { ap_memory {  { all_scores_V_8_address0 mem_address 1 9 }  { all_scores_V_8_ce0 mem_ce 1 1 }  { all_scores_V_8_q0 mem_dout 0 28 }  { all_scores_V_8_address1 MemPortADDR2 1 9 }  { all_scores_V_8_ce1 MemPortCE2 1 1 }  { all_scores_V_8_we1 MemPortWE2 1 1 }  { all_scores_V_8_d1 MemPortDIN2 1 28 } } }
	all_scores_V_7 { ap_memory {  { all_scores_V_7_address0 mem_address 1 9 }  { all_scores_V_7_ce0 mem_ce 1 1 }  { all_scores_V_7_q0 mem_dout 0 28 }  { all_scores_V_7_address1 MemPortADDR2 1 9 }  { all_scores_V_7_ce1 MemPortCE2 1 1 }  { all_scores_V_7_we1 MemPortWE2 1 1 }  { all_scores_V_7_d1 MemPortDIN2 1 28 } } }
	all_scores_V_6 { ap_memory {  { all_scores_V_6_address0 mem_address 1 9 }  { all_scores_V_6_ce0 mem_ce 1 1 }  { all_scores_V_6_q0 mem_dout 0 28 }  { all_scores_V_6_address1 MemPortADDR2 1 9 }  { all_scores_V_6_ce1 MemPortCE2 1 1 }  { all_scores_V_6_we1 MemPortWE2 1 1 }  { all_scores_V_6_d1 MemPortDIN2 1 28 } } }
	all_scores_V_5 { ap_memory {  { all_scores_V_5_address0 mem_address 1 9 }  { all_scores_V_5_ce0 mem_ce 1 1 }  { all_scores_V_5_q0 mem_dout 0 28 }  { all_scores_V_5_address1 MemPortADDR2 1 9 }  { all_scores_V_5_ce1 MemPortCE2 1 1 }  { all_scores_V_5_we1 MemPortWE2 1 1 }  { all_scores_V_5_d1 MemPortDIN2 1 28 } } }
	all_scores_V_4 { ap_memory {  { all_scores_V_4_address0 mem_address 1 9 }  { all_scores_V_4_ce0 mem_ce 1 1 }  { all_scores_V_4_q0 mem_dout 0 28 }  { all_scores_V_4_address1 MemPortADDR2 1 9 }  { all_scores_V_4_ce1 MemPortCE2 1 1 }  { all_scores_V_4_we1 MemPortWE2 1 1 }  { all_scores_V_4_d1 MemPortDIN2 1 28 } } }
	all_scores_V_3 { ap_memory {  { all_scores_V_3_address0 mem_address 1 9 }  { all_scores_V_3_ce0 mem_ce 1 1 }  { all_scores_V_3_q0 mem_dout 0 28 }  { all_scores_V_3_address1 MemPortADDR2 1 9 }  { all_scores_V_3_ce1 MemPortCE2 1 1 }  { all_scores_V_3_we1 MemPortWE2 1 1 }  { all_scores_V_3_d1 MemPortDIN2 1 28 } } }
	all_scores_V_2 { ap_memory {  { all_scores_V_2_address0 mem_address 1 9 }  { all_scores_V_2_ce0 mem_ce 1 1 }  { all_scores_V_2_q0 mem_dout 0 28 }  { all_scores_V_2_address1 MemPortADDR2 1 9 }  { all_scores_V_2_ce1 MemPortCE2 1 1 }  { all_scores_V_2_we1 MemPortWE2 1 1 }  { all_scores_V_2_d1 MemPortDIN2 1 28 } } }
	all_scores_V_1 { ap_memory {  { all_scores_V_1_address0 mem_address 1 9 }  { all_scores_V_1_ce0 mem_ce 1 1 }  { all_scores_V_1_q0 mem_dout 0 28 }  { all_scores_V_1_address1 MemPortADDR2 1 9 }  { all_scores_V_1_ce1 MemPortCE2 1 1 }  { all_scores_V_1_we1 MemPortWE2 1 1 }  { all_scores_V_1_d1 MemPortDIN2 1 28 } } }
	all_scores_V_0 { ap_memory {  { all_scores_V_0_address0 mem_address 1 9 }  { all_scores_V_0_ce0 mem_ce 1 1 }  { all_scores_V_0_q0 mem_dout 0 28 }  { all_scores_V_0_address1 MemPortADDR2 1 9 }  { all_scores_V_0_ce1 MemPortCE2 1 1 }  { all_scores_V_0_we1 MemPortWE2 1 1 }  { all_scores_V_0_d1 MemPortDIN2 1 28 } } }
	connectivity_mask_18 { ap_memory {  { connectivity_mask_18_address0 mem_address 1 7 }  { connectivity_mask_18_ce0 mem_ce 1 1 }  { connectivity_mask_18_q0 mem_dout 0 32 }  { connectivity_mask_18_address1 MemPortADDR2 1 7 }  { connectivity_mask_18_ce1 MemPortCE2 1 1 }  { connectivity_mask_18_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_0 { ap_memory {  { connectivity_mask_0_address0 mem_address 1 7 }  { connectivity_mask_0_ce0 mem_ce 1 1 }  { connectivity_mask_0_q0 mem_dout 0 32 }  { connectivity_mask_0_address1 MemPortADDR2 1 7 }  { connectivity_mask_0_ce1 MemPortCE2 1 1 }  { connectivity_mask_0_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_1 { ap_memory {  { connectivity_mask_1_address0 mem_address 1 7 }  { connectivity_mask_1_ce0 mem_ce 1 1 }  { connectivity_mask_1_q0 mem_dout 0 32 }  { connectivity_mask_1_address1 MemPortADDR2 1 7 }  { connectivity_mask_1_ce1 MemPortCE2 1 1 }  { connectivity_mask_1_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_2 { ap_memory {  { connectivity_mask_2_address0 mem_address 1 7 }  { connectivity_mask_2_ce0 mem_ce 1 1 }  { connectivity_mask_2_q0 mem_dout 0 32 }  { connectivity_mask_2_address1 MemPortADDR2 1 7 }  { connectivity_mask_2_ce1 MemPortCE2 1 1 }  { connectivity_mask_2_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_3 { ap_memory {  { connectivity_mask_3_address0 mem_address 1 7 }  { connectivity_mask_3_ce0 mem_ce 1 1 }  { connectivity_mask_3_q0 mem_dout 0 32 }  { connectivity_mask_3_address1 MemPortADDR2 1 7 }  { connectivity_mask_3_ce1 MemPortCE2 1 1 }  { connectivity_mask_3_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_4 { ap_memory {  { connectivity_mask_4_address0 mem_address 1 7 }  { connectivity_mask_4_ce0 mem_ce 1 1 }  { connectivity_mask_4_q0 mem_dout 0 32 }  { connectivity_mask_4_address1 MemPortADDR2 1 7 }  { connectivity_mask_4_ce1 MemPortCE2 1 1 }  { connectivity_mask_4_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_5 { ap_memory {  { connectivity_mask_5_address0 mem_address 1 7 }  { connectivity_mask_5_ce0 mem_ce 1 1 }  { connectivity_mask_5_q0 mem_dout 0 32 }  { connectivity_mask_5_address1 MemPortADDR2 1 7 }  { connectivity_mask_5_ce1 MemPortCE2 1 1 }  { connectivity_mask_5_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_6 { ap_memory {  { connectivity_mask_6_address0 mem_address 1 7 }  { connectivity_mask_6_ce0 mem_ce 1 1 }  { connectivity_mask_6_q0 mem_dout 0 32 }  { connectivity_mask_6_address1 MemPortADDR2 1 7 }  { connectivity_mask_6_ce1 MemPortCE2 1 1 }  { connectivity_mask_6_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_7 { ap_memory {  { connectivity_mask_7_address0 mem_address 1 7 }  { connectivity_mask_7_ce0 mem_ce 1 1 }  { connectivity_mask_7_q0 mem_dout 0 32 }  { connectivity_mask_7_address1 MemPortADDR2 1 7 }  { connectivity_mask_7_ce1 MemPortCE2 1 1 }  { connectivity_mask_7_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_8 { ap_memory {  { connectivity_mask_8_address0 mem_address 1 7 }  { connectivity_mask_8_ce0 mem_ce 1 1 }  { connectivity_mask_8_q0 mem_dout 0 32 }  { connectivity_mask_8_address1 MemPortADDR2 1 7 }  { connectivity_mask_8_ce1 MemPortCE2 1 1 }  { connectivity_mask_8_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_9 { ap_memory {  { connectivity_mask_9_address0 mem_address 1 7 }  { connectivity_mask_9_ce0 mem_ce 1 1 }  { connectivity_mask_9_q0 mem_dout 0 32 }  { connectivity_mask_9_address1 MemPortADDR2 1 7 }  { connectivity_mask_9_ce1 MemPortCE2 1 1 }  { connectivity_mask_9_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_10 { ap_memory {  { connectivity_mask_10_address0 mem_address 1 7 }  { connectivity_mask_10_ce0 mem_ce 1 1 }  { connectivity_mask_10_q0 mem_dout 0 32 }  { connectivity_mask_10_address1 MemPortADDR2 1 7 }  { connectivity_mask_10_ce1 MemPortCE2 1 1 }  { connectivity_mask_10_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_11 { ap_memory {  { connectivity_mask_11_address0 mem_address 1 7 }  { connectivity_mask_11_ce0 mem_ce 1 1 }  { connectivity_mask_11_q0 mem_dout 0 32 }  { connectivity_mask_11_address1 MemPortADDR2 1 7 }  { connectivity_mask_11_ce1 MemPortCE2 1 1 }  { connectivity_mask_11_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_12 { ap_memory {  { connectivity_mask_12_address0 mem_address 1 7 }  { connectivity_mask_12_ce0 mem_ce 1 1 }  { connectivity_mask_12_q0 mem_dout 0 32 }  { connectivity_mask_12_address1 MemPortADDR2 1 7 }  { connectivity_mask_12_ce1 MemPortCE2 1 1 }  { connectivity_mask_12_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_13 { ap_memory {  { connectivity_mask_13_address0 mem_address 1 7 }  { connectivity_mask_13_ce0 mem_ce 1 1 }  { connectivity_mask_13_q0 mem_dout 0 32 }  { connectivity_mask_13_address1 MemPortADDR2 1 7 }  { connectivity_mask_13_ce1 MemPortCE2 1 1 }  { connectivity_mask_13_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_14 { ap_memory {  { connectivity_mask_14_address0 mem_address 1 7 }  { connectivity_mask_14_ce0 mem_ce 1 1 }  { connectivity_mask_14_q0 mem_dout 0 32 }  { connectivity_mask_14_address1 MemPortADDR2 1 7 }  { connectivity_mask_14_ce1 MemPortCE2 1 1 }  { connectivity_mask_14_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_15 { ap_memory {  { connectivity_mask_15_address0 mem_address 1 7 }  { connectivity_mask_15_ce0 mem_ce 1 1 }  { connectivity_mask_15_q0 mem_dout 0 32 }  { connectivity_mask_15_address1 MemPortADDR2 1 7 }  { connectivity_mask_15_ce1 MemPortCE2 1 1 }  { connectivity_mask_15_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_16 { ap_memory {  { connectivity_mask_16_address0 mem_address 1 7 }  { connectivity_mask_16_ce0 mem_ce 1 1 }  { connectivity_mask_16_q0 mem_dout 0 32 }  { connectivity_mask_16_address1 MemPortADDR2 1 7 }  { connectivity_mask_16_ce1 MemPortCE2 1 1 }  { connectivity_mask_16_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_17 { ap_memory {  { connectivity_mask_17_address0 mem_address 1 7 }  { connectivity_mask_17_ce0 mem_ce 1 1 }  { connectivity_mask_17_q0 mem_dout 0 32 }  { connectivity_mask_17_address1 MemPortADDR2 1 7 }  { connectivity_mask_17_ce1 MemPortCE2 1 1 }  { connectivity_mask_17_q1 MemPortDOUT2 0 32 } } }
}
