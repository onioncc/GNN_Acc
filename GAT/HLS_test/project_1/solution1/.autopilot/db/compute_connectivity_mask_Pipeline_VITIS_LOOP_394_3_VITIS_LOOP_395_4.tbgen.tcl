set moduleName compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4
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
set C_modelName {compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ connectivity_mask_0 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_1 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_2 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_3 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_4 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_5 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_6 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_7 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_8 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_9 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_10 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_11 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_12 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_13 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_14 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_15 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_16 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_17 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_18 int 32 regular {array 100 { 1 0 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "connectivity_mask_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 139
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ connectivity_mask_0_address0 sc_out sc_lv 7 signal 0 } 
	{ connectivity_mask_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ connectivity_mask_0_q0 sc_in sc_lv 32 signal 0 } 
	{ connectivity_mask_0_address1 sc_out sc_lv 7 signal 0 } 
	{ connectivity_mask_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ connectivity_mask_0_we1 sc_out sc_logic 1 signal 0 } 
	{ connectivity_mask_0_d1 sc_out sc_lv 32 signal 0 } 
	{ connectivity_mask_1_address0 sc_out sc_lv 7 signal 1 } 
	{ connectivity_mask_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ connectivity_mask_1_q0 sc_in sc_lv 32 signal 1 } 
	{ connectivity_mask_1_address1 sc_out sc_lv 7 signal 1 } 
	{ connectivity_mask_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ connectivity_mask_1_we1 sc_out sc_logic 1 signal 1 } 
	{ connectivity_mask_1_d1 sc_out sc_lv 32 signal 1 } 
	{ connectivity_mask_2_address0 sc_out sc_lv 7 signal 2 } 
	{ connectivity_mask_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ connectivity_mask_2_q0 sc_in sc_lv 32 signal 2 } 
	{ connectivity_mask_2_address1 sc_out sc_lv 7 signal 2 } 
	{ connectivity_mask_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ connectivity_mask_2_we1 sc_out sc_logic 1 signal 2 } 
	{ connectivity_mask_2_d1 sc_out sc_lv 32 signal 2 } 
	{ connectivity_mask_3_address0 sc_out sc_lv 7 signal 3 } 
	{ connectivity_mask_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ connectivity_mask_3_q0 sc_in sc_lv 32 signal 3 } 
	{ connectivity_mask_3_address1 sc_out sc_lv 7 signal 3 } 
	{ connectivity_mask_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ connectivity_mask_3_we1 sc_out sc_logic 1 signal 3 } 
	{ connectivity_mask_3_d1 sc_out sc_lv 32 signal 3 } 
	{ connectivity_mask_4_address0 sc_out sc_lv 7 signal 4 } 
	{ connectivity_mask_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ connectivity_mask_4_q0 sc_in sc_lv 32 signal 4 } 
	{ connectivity_mask_4_address1 sc_out sc_lv 7 signal 4 } 
	{ connectivity_mask_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ connectivity_mask_4_we1 sc_out sc_logic 1 signal 4 } 
	{ connectivity_mask_4_d1 sc_out sc_lv 32 signal 4 } 
	{ connectivity_mask_5_address0 sc_out sc_lv 7 signal 5 } 
	{ connectivity_mask_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ connectivity_mask_5_q0 sc_in sc_lv 32 signal 5 } 
	{ connectivity_mask_5_address1 sc_out sc_lv 7 signal 5 } 
	{ connectivity_mask_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ connectivity_mask_5_we1 sc_out sc_logic 1 signal 5 } 
	{ connectivity_mask_5_d1 sc_out sc_lv 32 signal 5 } 
	{ connectivity_mask_6_address0 sc_out sc_lv 7 signal 6 } 
	{ connectivity_mask_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ connectivity_mask_6_q0 sc_in sc_lv 32 signal 6 } 
	{ connectivity_mask_6_address1 sc_out sc_lv 7 signal 6 } 
	{ connectivity_mask_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ connectivity_mask_6_we1 sc_out sc_logic 1 signal 6 } 
	{ connectivity_mask_6_d1 sc_out sc_lv 32 signal 6 } 
	{ connectivity_mask_7_address0 sc_out sc_lv 7 signal 7 } 
	{ connectivity_mask_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ connectivity_mask_7_q0 sc_in sc_lv 32 signal 7 } 
	{ connectivity_mask_7_address1 sc_out sc_lv 7 signal 7 } 
	{ connectivity_mask_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ connectivity_mask_7_we1 sc_out sc_logic 1 signal 7 } 
	{ connectivity_mask_7_d1 sc_out sc_lv 32 signal 7 } 
	{ connectivity_mask_8_address0 sc_out sc_lv 7 signal 8 } 
	{ connectivity_mask_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ connectivity_mask_8_q0 sc_in sc_lv 32 signal 8 } 
	{ connectivity_mask_8_address1 sc_out sc_lv 7 signal 8 } 
	{ connectivity_mask_8_ce1 sc_out sc_logic 1 signal 8 } 
	{ connectivity_mask_8_we1 sc_out sc_logic 1 signal 8 } 
	{ connectivity_mask_8_d1 sc_out sc_lv 32 signal 8 } 
	{ connectivity_mask_9_address0 sc_out sc_lv 7 signal 9 } 
	{ connectivity_mask_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ connectivity_mask_9_q0 sc_in sc_lv 32 signal 9 } 
	{ connectivity_mask_9_address1 sc_out sc_lv 7 signal 9 } 
	{ connectivity_mask_9_ce1 sc_out sc_logic 1 signal 9 } 
	{ connectivity_mask_9_we1 sc_out sc_logic 1 signal 9 } 
	{ connectivity_mask_9_d1 sc_out sc_lv 32 signal 9 } 
	{ connectivity_mask_10_address0 sc_out sc_lv 7 signal 10 } 
	{ connectivity_mask_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ connectivity_mask_10_q0 sc_in sc_lv 32 signal 10 } 
	{ connectivity_mask_10_address1 sc_out sc_lv 7 signal 10 } 
	{ connectivity_mask_10_ce1 sc_out sc_logic 1 signal 10 } 
	{ connectivity_mask_10_we1 sc_out sc_logic 1 signal 10 } 
	{ connectivity_mask_10_d1 sc_out sc_lv 32 signal 10 } 
	{ connectivity_mask_11_address0 sc_out sc_lv 7 signal 11 } 
	{ connectivity_mask_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ connectivity_mask_11_q0 sc_in sc_lv 32 signal 11 } 
	{ connectivity_mask_11_address1 sc_out sc_lv 7 signal 11 } 
	{ connectivity_mask_11_ce1 sc_out sc_logic 1 signal 11 } 
	{ connectivity_mask_11_we1 sc_out sc_logic 1 signal 11 } 
	{ connectivity_mask_11_d1 sc_out sc_lv 32 signal 11 } 
	{ connectivity_mask_12_address0 sc_out sc_lv 7 signal 12 } 
	{ connectivity_mask_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ connectivity_mask_12_q0 sc_in sc_lv 32 signal 12 } 
	{ connectivity_mask_12_address1 sc_out sc_lv 7 signal 12 } 
	{ connectivity_mask_12_ce1 sc_out sc_logic 1 signal 12 } 
	{ connectivity_mask_12_we1 sc_out sc_logic 1 signal 12 } 
	{ connectivity_mask_12_d1 sc_out sc_lv 32 signal 12 } 
	{ connectivity_mask_13_address0 sc_out sc_lv 7 signal 13 } 
	{ connectivity_mask_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ connectivity_mask_13_q0 sc_in sc_lv 32 signal 13 } 
	{ connectivity_mask_13_address1 sc_out sc_lv 7 signal 13 } 
	{ connectivity_mask_13_ce1 sc_out sc_logic 1 signal 13 } 
	{ connectivity_mask_13_we1 sc_out sc_logic 1 signal 13 } 
	{ connectivity_mask_13_d1 sc_out sc_lv 32 signal 13 } 
	{ connectivity_mask_14_address0 sc_out sc_lv 7 signal 14 } 
	{ connectivity_mask_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ connectivity_mask_14_q0 sc_in sc_lv 32 signal 14 } 
	{ connectivity_mask_14_address1 sc_out sc_lv 7 signal 14 } 
	{ connectivity_mask_14_ce1 sc_out sc_logic 1 signal 14 } 
	{ connectivity_mask_14_we1 sc_out sc_logic 1 signal 14 } 
	{ connectivity_mask_14_d1 sc_out sc_lv 32 signal 14 } 
	{ connectivity_mask_15_address0 sc_out sc_lv 7 signal 15 } 
	{ connectivity_mask_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ connectivity_mask_15_q0 sc_in sc_lv 32 signal 15 } 
	{ connectivity_mask_15_address1 sc_out sc_lv 7 signal 15 } 
	{ connectivity_mask_15_ce1 sc_out sc_logic 1 signal 15 } 
	{ connectivity_mask_15_we1 sc_out sc_logic 1 signal 15 } 
	{ connectivity_mask_15_d1 sc_out sc_lv 32 signal 15 } 
	{ connectivity_mask_16_address0 sc_out sc_lv 7 signal 16 } 
	{ connectivity_mask_16_ce0 sc_out sc_logic 1 signal 16 } 
	{ connectivity_mask_16_q0 sc_in sc_lv 32 signal 16 } 
	{ connectivity_mask_16_address1 sc_out sc_lv 7 signal 16 } 
	{ connectivity_mask_16_ce1 sc_out sc_logic 1 signal 16 } 
	{ connectivity_mask_16_we1 sc_out sc_logic 1 signal 16 } 
	{ connectivity_mask_16_d1 sc_out sc_lv 32 signal 16 } 
	{ connectivity_mask_17_address0 sc_out sc_lv 7 signal 17 } 
	{ connectivity_mask_17_ce0 sc_out sc_logic 1 signal 17 } 
	{ connectivity_mask_17_q0 sc_in sc_lv 32 signal 17 } 
	{ connectivity_mask_17_address1 sc_out sc_lv 7 signal 17 } 
	{ connectivity_mask_17_ce1 sc_out sc_logic 1 signal 17 } 
	{ connectivity_mask_17_we1 sc_out sc_logic 1 signal 17 } 
	{ connectivity_mask_17_d1 sc_out sc_lv 32 signal 17 } 
	{ connectivity_mask_18_address0 sc_out sc_lv 7 signal 18 } 
	{ connectivity_mask_18_ce0 sc_out sc_logic 1 signal 18 } 
	{ connectivity_mask_18_q0 sc_in sc_lv 32 signal 18 } 
	{ connectivity_mask_18_address1 sc_out sc_lv 7 signal 18 } 
	{ connectivity_mask_18_ce1 sc_out sc_logic 1 signal 18 } 
	{ connectivity_mask_18_we1 sc_out sc_logic 1 signal 18 } 
	{ connectivity_mask_18_d1 sc_out sc_lv 32 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "connectivity_mask_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_0", "role": "address0" }} , 
 	{ "name": "connectivity_mask_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_0", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_0", "role": "q0" }} , 
 	{ "name": "connectivity_mask_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_0", "role": "address1" }} , 
 	{ "name": "connectivity_mask_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_0", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_0", "role": "we1" }} , 
 	{ "name": "connectivity_mask_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_0", "role": "d1" }} , 
 	{ "name": "connectivity_mask_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_1", "role": "address0" }} , 
 	{ "name": "connectivity_mask_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_1", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_1", "role": "q0" }} , 
 	{ "name": "connectivity_mask_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_1", "role": "address1" }} , 
 	{ "name": "connectivity_mask_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_1", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_1", "role": "we1" }} , 
 	{ "name": "connectivity_mask_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_1", "role": "d1" }} , 
 	{ "name": "connectivity_mask_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_2", "role": "address0" }} , 
 	{ "name": "connectivity_mask_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_2", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_2", "role": "q0" }} , 
 	{ "name": "connectivity_mask_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_2", "role": "address1" }} , 
 	{ "name": "connectivity_mask_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_2", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_2", "role": "we1" }} , 
 	{ "name": "connectivity_mask_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_2", "role": "d1" }} , 
 	{ "name": "connectivity_mask_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_3", "role": "address0" }} , 
 	{ "name": "connectivity_mask_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_3", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_3", "role": "q0" }} , 
 	{ "name": "connectivity_mask_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_3", "role": "address1" }} , 
 	{ "name": "connectivity_mask_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_3", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_3", "role": "we1" }} , 
 	{ "name": "connectivity_mask_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_3", "role": "d1" }} , 
 	{ "name": "connectivity_mask_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_4", "role": "address0" }} , 
 	{ "name": "connectivity_mask_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_4", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_4", "role": "q0" }} , 
 	{ "name": "connectivity_mask_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_4", "role": "address1" }} , 
 	{ "name": "connectivity_mask_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_4", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_4", "role": "we1" }} , 
 	{ "name": "connectivity_mask_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_4", "role": "d1" }} , 
 	{ "name": "connectivity_mask_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_5", "role": "address0" }} , 
 	{ "name": "connectivity_mask_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_5", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_5", "role": "q0" }} , 
 	{ "name": "connectivity_mask_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_5", "role": "address1" }} , 
 	{ "name": "connectivity_mask_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_5", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_5", "role": "we1" }} , 
 	{ "name": "connectivity_mask_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_5", "role": "d1" }} , 
 	{ "name": "connectivity_mask_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_6", "role": "address0" }} , 
 	{ "name": "connectivity_mask_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_6", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_6", "role": "q0" }} , 
 	{ "name": "connectivity_mask_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_6", "role": "address1" }} , 
 	{ "name": "connectivity_mask_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_6", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_6", "role": "we1" }} , 
 	{ "name": "connectivity_mask_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_6", "role": "d1" }} , 
 	{ "name": "connectivity_mask_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_7", "role": "address0" }} , 
 	{ "name": "connectivity_mask_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_7", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_7", "role": "q0" }} , 
 	{ "name": "connectivity_mask_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_7", "role": "address1" }} , 
 	{ "name": "connectivity_mask_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_7", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_7", "role": "we1" }} , 
 	{ "name": "connectivity_mask_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_7", "role": "d1" }} , 
 	{ "name": "connectivity_mask_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_8", "role": "address0" }} , 
 	{ "name": "connectivity_mask_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_8", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_8", "role": "q0" }} , 
 	{ "name": "connectivity_mask_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_8", "role": "address1" }} , 
 	{ "name": "connectivity_mask_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_8", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_8", "role": "we1" }} , 
 	{ "name": "connectivity_mask_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_8", "role": "d1" }} , 
 	{ "name": "connectivity_mask_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_9", "role": "address0" }} , 
 	{ "name": "connectivity_mask_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_9", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_9", "role": "q0" }} , 
 	{ "name": "connectivity_mask_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_9", "role": "address1" }} , 
 	{ "name": "connectivity_mask_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_9", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_9", "role": "we1" }} , 
 	{ "name": "connectivity_mask_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_9", "role": "d1" }} , 
 	{ "name": "connectivity_mask_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_10", "role": "address0" }} , 
 	{ "name": "connectivity_mask_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_10", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_10", "role": "q0" }} , 
 	{ "name": "connectivity_mask_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_10", "role": "address1" }} , 
 	{ "name": "connectivity_mask_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_10", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_10", "role": "we1" }} , 
 	{ "name": "connectivity_mask_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_10", "role": "d1" }} , 
 	{ "name": "connectivity_mask_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_11", "role": "address0" }} , 
 	{ "name": "connectivity_mask_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_11", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_11", "role": "q0" }} , 
 	{ "name": "connectivity_mask_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_11", "role": "address1" }} , 
 	{ "name": "connectivity_mask_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_11", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_11", "role": "we1" }} , 
 	{ "name": "connectivity_mask_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_11", "role": "d1" }} , 
 	{ "name": "connectivity_mask_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_12", "role": "address0" }} , 
 	{ "name": "connectivity_mask_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_12", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_12", "role": "q0" }} , 
 	{ "name": "connectivity_mask_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_12", "role": "address1" }} , 
 	{ "name": "connectivity_mask_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_12", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_12", "role": "we1" }} , 
 	{ "name": "connectivity_mask_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_12", "role": "d1" }} , 
 	{ "name": "connectivity_mask_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_13", "role": "address0" }} , 
 	{ "name": "connectivity_mask_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_13", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_13", "role": "q0" }} , 
 	{ "name": "connectivity_mask_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_13", "role": "address1" }} , 
 	{ "name": "connectivity_mask_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_13", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_13", "role": "we1" }} , 
 	{ "name": "connectivity_mask_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_13", "role": "d1" }} , 
 	{ "name": "connectivity_mask_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_14", "role": "address0" }} , 
 	{ "name": "connectivity_mask_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_14", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_14", "role": "q0" }} , 
 	{ "name": "connectivity_mask_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_14", "role": "address1" }} , 
 	{ "name": "connectivity_mask_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_14", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_14", "role": "we1" }} , 
 	{ "name": "connectivity_mask_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_14", "role": "d1" }} , 
 	{ "name": "connectivity_mask_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_15", "role": "address0" }} , 
 	{ "name": "connectivity_mask_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_15", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_15", "role": "q0" }} , 
 	{ "name": "connectivity_mask_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_15", "role": "address1" }} , 
 	{ "name": "connectivity_mask_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_15", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_15", "role": "we1" }} , 
 	{ "name": "connectivity_mask_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_15", "role": "d1" }} , 
 	{ "name": "connectivity_mask_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_16", "role": "address0" }} , 
 	{ "name": "connectivity_mask_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_16", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_16", "role": "q0" }} , 
 	{ "name": "connectivity_mask_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_16", "role": "address1" }} , 
 	{ "name": "connectivity_mask_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_16", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_16_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_16", "role": "we1" }} , 
 	{ "name": "connectivity_mask_16_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_16", "role": "d1" }} , 
 	{ "name": "connectivity_mask_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_17", "role": "address0" }} , 
 	{ "name": "connectivity_mask_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_17", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_17", "role": "q0" }} , 
 	{ "name": "connectivity_mask_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_17", "role": "address1" }} , 
 	{ "name": "connectivity_mask_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_17", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_17_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_17", "role": "we1" }} , 
 	{ "name": "connectivity_mask_17_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_17", "role": "d1" }} , 
 	{ "name": "connectivity_mask_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_18", "role": "address0" }} , 
 	{ "name": "connectivity_mask_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_18", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_18", "role": "q0" }} , 
 	{ "name": "connectivity_mask_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_18", "role": "address1" }} , 
 	{ "name": "connectivity_mask_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_18", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_18_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_18", "role": "we1" }} , 
 	{ "name": "connectivity_mask_18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_18", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "364", "EstimateLatencyMax" : "364",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "connectivity_mask_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_18", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_394_3_VITIS_LOOP_395_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4 {
		connectivity_mask_0 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_1 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_2 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_3 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_4 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_5 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_6 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_7 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_8 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_9 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_10 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_11 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_12 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_13 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_14 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_15 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_16 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_17 {Type IO LastRead 0 FirstWrite 2}
		connectivity_mask_18 {Type IO LastRead 0 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "364", "Max" : "364"}
	, {"Name" : "Interval", "Min" : "364", "Max" : "364"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	connectivity_mask_0 { ap_memory {  { connectivity_mask_0_address0 mem_address 1 7 }  { connectivity_mask_0_ce0 mem_ce 1 1 }  { connectivity_mask_0_q0 mem_dout 0 32 }  { connectivity_mask_0_address1 MemPortADDR2 1 7 }  { connectivity_mask_0_ce1 MemPortCE2 1 1 }  { connectivity_mask_0_we1 MemPortWE2 1 1 }  { connectivity_mask_0_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_1 { ap_memory {  { connectivity_mask_1_address0 mem_address 1 7 }  { connectivity_mask_1_ce0 mem_ce 1 1 }  { connectivity_mask_1_q0 mem_dout 0 32 }  { connectivity_mask_1_address1 MemPortADDR2 1 7 }  { connectivity_mask_1_ce1 MemPortCE2 1 1 }  { connectivity_mask_1_we1 MemPortWE2 1 1 }  { connectivity_mask_1_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_2 { ap_memory {  { connectivity_mask_2_address0 mem_address 1 7 }  { connectivity_mask_2_ce0 mem_ce 1 1 }  { connectivity_mask_2_q0 mem_dout 0 32 }  { connectivity_mask_2_address1 MemPortADDR2 1 7 }  { connectivity_mask_2_ce1 MemPortCE2 1 1 }  { connectivity_mask_2_we1 MemPortWE2 1 1 }  { connectivity_mask_2_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_3 { ap_memory {  { connectivity_mask_3_address0 mem_address 1 7 }  { connectivity_mask_3_ce0 mem_ce 1 1 }  { connectivity_mask_3_q0 mem_dout 0 32 }  { connectivity_mask_3_address1 MemPortADDR2 1 7 }  { connectivity_mask_3_ce1 MemPortCE2 1 1 }  { connectivity_mask_3_we1 MemPortWE2 1 1 }  { connectivity_mask_3_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_4 { ap_memory {  { connectivity_mask_4_address0 mem_address 1 7 }  { connectivity_mask_4_ce0 mem_ce 1 1 }  { connectivity_mask_4_q0 mem_dout 0 32 }  { connectivity_mask_4_address1 MemPortADDR2 1 7 }  { connectivity_mask_4_ce1 MemPortCE2 1 1 }  { connectivity_mask_4_we1 MemPortWE2 1 1 }  { connectivity_mask_4_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_5 { ap_memory {  { connectivity_mask_5_address0 mem_address 1 7 }  { connectivity_mask_5_ce0 mem_ce 1 1 }  { connectivity_mask_5_q0 mem_dout 0 32 }  { connectivity_mask_5_address1 MemPortADDR2 1 7 }  { connectivity_mask_5_ce1 MemPortCE2 1 1 }  { connectivity_mask_5_we1 MemPortWE2 1 1 }  { connectivity_mask_5_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_6 { ap_memory {  { connectivity_mask_6_address0 mem_address 1 7 }  { connectivity_mask_6_ce0 mem_ce 1 1 }  { connectivity_mask_6_q0 mem_dout 0 32 }  { connectivity_mask_6_address1 MemPortADDR2 1 7 }  { connectivity_mask_6_ce1 MemPortCE2 1 1 }  { connectivity_mask_6_we1 MemPortWE2 1 1 }  { connectivity_mask_6_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_7 { ap_memory {  { connectivity_mask_7_address0 mem_address 1 7 }  { connectivity_mask_7_ce0 mem_ce 1 1 }  { connectivity_mask_7_q0 mem_dout 0 32 }  { connectivity_mask_7_address1 MemPortADDR2 1 7 }  { connectivity_mask_7_ce1 MemPortCE2 1 1 }  { connectivity_mask_7_we1 MemPortWE2 1 1 }  { connectivity_mask_7_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_8 { ap_memory {  { connectivity_mask_8_address0 mem_address 1 7 }  { connectivity_mask_8_ce0 mem_ce 1 1 }  { connectivity_mask_8_q0 mem_dout 0 32 }  { connectivity_mask_8_address1 MemPortADDR2 1 7 }  { connectivity_mask_8_ce1 MemPortCE2 1 1 }  { connectivity_mask_8_we1 MemPortWE2 1 1 }  { connectivity_mask_8_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_9 { ap_memory {  { connectivity_mask_9_address0 mem_address 1 7 }  { connectivity_mask_9_ce0 mem_ce 1 1 }  { connectivity_mask_9_q0 mem_dout 0 32 }  { connectivity_mask_9_address1 MemPortADDR2 1 7 }  { connectivity_mask_9_ce1 MemPortCE2 1 1 }  { connectivity_mask_9_we1 MemPortWE2 1 1 }  { connectivity_mask_9_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_10 { ap_memory {  { connectivity_mask_10_address0 mem_address 1 7 }  { connectivity_mask_10_ce0 mem_ce 1 1 }  { connectivity_mask_10_q0 mem_dout 0 32 }  { connectivity_mask_10_address1 MemPortADDR2 1 7 }  { connectivity_mask_10_ce1 MemPortCE2 1 1 }  { connectivity_mask_10_we1 MemPortWE2 1 1 }  { connectivity_mask_10_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_11 { ap_memory {  { connectivity_mask_11_address0 mem_address 1 7 }  { connectivity_mask_11_ce0 mem_ce 1 1 }  { connectivity_mask_11_q0 mem_dout 0 32 }  { connectivity_mask_11_address1 MemPortADDR2 1 7 }  { connectivity_mask_11_ce1 MemPortCE2 1 1 }  { connectivity_mask_11_we1 MemPortWE2 1 1 }  { connectivity_mask_11_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_12 { ap_memory {  { connectivity_mask_12_address0 mem_address 1 7 }  { connectivity_mask_12_ce0 mem_ce 1 1 }  { connectivity_mask_12_q0 mem_dout 0 32 }  { connectivity_mask_12_address1 MemPortADDR2 1 7 }  { connectivity_mask_12_ce1 MemPortCE2 1 1 }  { connectivity_mask_12_we1 MemPortWE2 1 1 }  { connectivity_mask_12_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_13 { ap_memory {  { connectivity_mask_13_address0 mem_address 1 7 }  { connectivity_mask_13_ce0 mem_ce 1 1 }  { connectivity_mask_13_q0 mem_dout 0 32 }  { connectivity_mask_13_address1 MemPortADDR2 1 7 }  { connectivity_mask_13_ce1 MemPortCE2 1 1 }  { connectivity_mask_13_we1 MemPortWE2 1 1 }  { connectivity_mask_13_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_14 { ap_memory {  { connectivity_mask_14_address0 mem_address 1 7 }  { connectivity_mask_14_ce0 mem_ce 1 1 }  { connectivity_mask_14_q0 mem_dout 0 32 }  { connectivity_mask_14_address1 MemPortADDR2 1 7 }  { connectivity_mask_14_ce1 MemPortCE2 1 1 }  { connectivity_mask_14_we1 MemPortWE2 1 1 }  { connectivity_mask_14_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_15 { ap_memory {  { connectivity_mask_15_address0 mem_address 1 7 }  { connectivity_mask_15_ce0 mem_ce 1 1 }  { connectivity_mask_15_q0 mem_dout 0 32 }  { connectivity_mask_15_address1 MemPortADDR2 1 7 }  { connectivity_mask_15_ce1 MemPortCE2 1 1 }  { connectivity_mask_15_we1 MemPortWE2 1 1 }  { connectivity_mask_15_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_16 { ap_memory {  { connectivity_mask_16_address0 mem_address 1 7 }  { connectivity_mask_16_ce0 mem_ce 1 1 }  { connectivity_mask_16_q0 mem_dout 0 32 }  { connectivity_mask_16_address1 MemPortADDR2 1 7 }  { connectivity_mask_16_ce1 MemPortCE2 1 1 }  { connectivity_mask_16_we1 MemPortWE2 1 1 }  { connectivity_mask_16_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_17 { ap_memory {  { connectivity_mask_17_address0 mem_address 1 7 }  { connectivity_mask_17_ce0 mem_ce 1 1 }  { connectivity_mask_17_q0 mem_dout 0 32 }  { connectivity_mask_17_address1 MemPortADDR2 1 7 }  { connectivity_mask_17_ce1 MemPortCE2 1 1 }  { connectivity_mask_17_we1 MemPortWE2 1 1 }  { connectivity_mask_17_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_18 { ap_memory {  { connectivity_mask_18_address0 mem_address 1 7 }  { connectivity_mask_18_ce0 mem_ce 1 1 }  { connectivity_mask_18_q0 mem_dout 0 32 }  { connectivity_mask_18_address1 MemPortADDR2 1 7 }  { connectivity_mask_18_ce1 MemPortCE2 1 1 }  { connectivity_mask_18_we1 MemPortWE2 1 1 }  { connectivity_mask_18_d1 MemPortDIN2 1 32 } } }
}
