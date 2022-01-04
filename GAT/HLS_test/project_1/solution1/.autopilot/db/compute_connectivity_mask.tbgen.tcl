set moduleName compute_connectivity_mask
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
set C_modelName {compute_connectivity_mask}
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
	{ edge_list int 32 regular {array 1000 { 1 1 } 1 1 } {global 0}  }
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
 	{ "Name" : "connectivity_mask_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 145
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
	{ edge_list_address0 sc_out sc_lv 10 signal 19 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 19 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 19 } 
	{ edge_list_address1 sc_out sc_lv 10 signal 19 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 19 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 19 } 
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
 	{ "name": "connectivity_mask_18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_18", "role": "d1" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "84", "87", "89"],
		"CDFG" : "compute_connectivity_mask",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10517", "EstimateLatencyMax" : "10517",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "connectivity_mask_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_0", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_2", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_2", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_2", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_3", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_3", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_3", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_4", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_4", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_4", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_5", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_5", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_5", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_6", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_6", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_6", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_7", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_7", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_7", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_8", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_8", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_8", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_8", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_9", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_9", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_9", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_9", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_10", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_10", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_10", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_10", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_11", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_11", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_11", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_11", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_12", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_12", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_12", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_13", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_13", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_13", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_13", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_14", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_14", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_14", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_14", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_15", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_15", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_15", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_15", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_16", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_16", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_16", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_16", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_17", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_17", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_17", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_17", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "89", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Port" : "connectivity_mask_18", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "87", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Port" : "connectivity_mask_18", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_18", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_18", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_19", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_19", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_20", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_20", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_21", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_21", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_22", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_22", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_23", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_23", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_24", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_24", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_25", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_25", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_26", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_26", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_27", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_27", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_28", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_28", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_29", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_29", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_30", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_30", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_31", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_31", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_31", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_32", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_32", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_32", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_33", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_33", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_33", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_34", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_34", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_34", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_35", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_35", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_35", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_36", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_36", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_36", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_37", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_37", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_37", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_38", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_38", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_38", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_39", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_39", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_39", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_40", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_40", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_40", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_41", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_41", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_41", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_42", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_42", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_42", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_43", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_43", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_43", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_44", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_44", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_44", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_45", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_45", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_45", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_46", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_46", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_46", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_47", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_47", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_47", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_48", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_48", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_48", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_49", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_49", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_49", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_50", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_50", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_50", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_51", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_51", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_51", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_52", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_52", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_52", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_53", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_53", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_53", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_54", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_54", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_54", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_55", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_55", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_55", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_56", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_56", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_56", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_57", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_57", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_57", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_58", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_58", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_58", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_59", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_59", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_59", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_60", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_60", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_60", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_61", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_61", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_61", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_62", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_62", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_62", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_63", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_63", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_63", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_64", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_64", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_64", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_65", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_65", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_65", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_66", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_66", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_66", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_67", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_67", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_67", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_68", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_68", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_68", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_69", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_69", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_69", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_70", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_70", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_70", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_71", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_71", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_71", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_72", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_72", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_72", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_73", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_73", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_73", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_74", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_74", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_74", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_75", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_75", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_75", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_76", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_76", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_76", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_77", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_77", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_77", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_78", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_78", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_78", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_79", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_79", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_79", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_80", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_80", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_80", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_81", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_81", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_81", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_82", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_82", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_82", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_83", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_83", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_83", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_84", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_84", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_84", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_85", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_85", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_85", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_86", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_86", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_86", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_87", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_87", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_87", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_88", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_88", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_88", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_89", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_89", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_89", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_90", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_90", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_90", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_91", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_91", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_91", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_92", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_92", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_92", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_93", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_93", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_93", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_94", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_94", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_94", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_95", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_95", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_95", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_96", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_96", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_96", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_97", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_97", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_97", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_98", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_98", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_98", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "connectivity_mask_99", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "connectivity_mask_99", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "82", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_218", "Port" : "connectivity_mask_99", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Port" : "edge_list", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_19_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_20_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_21_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_22_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_23_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_24_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_25_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_26_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_27_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_28_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_29_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_30_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_31_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_32_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_33_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_34_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_35_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_36_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_37_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_38_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_39_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_40_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_41_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_42_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_43_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_44_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_45_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_46_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_47_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_48_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_49_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_50_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_51_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_52_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_53_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_54_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_55_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_56_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_57_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_58_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_59_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_60_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_61_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_62_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_63_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_64_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_65_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_66_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_67_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_68_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_69_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_70_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_71_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_72_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_73_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_74_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_75_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_76_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_77_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_78_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_79_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_80_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_81_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_82_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_83_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_84_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_85_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_86_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_87_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_88_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_89_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_90_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_91_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_92_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_93_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_94_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_95_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_96_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_97_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_98_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_99_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_1_fu_218", "Parent" : "0", "Child" : ["83"],
		"CDFG" : "compute_connectivity_mask_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10002", "EstimateLatencyMax" : "10002",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "connectivity_mask_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_47", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_48", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_49", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_50", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_51", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_52", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_53", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_54", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_55", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_56", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_57", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_58", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_59", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_60", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_61", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_62", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_63", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_64", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_65", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_66", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_67", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_68", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_69", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_70", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_71", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_72", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_73", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_74", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_75", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_76", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_77", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_78", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_79", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_80", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_81", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_82", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_83", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_84", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_85", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_86", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_87", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_88", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_89", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_90", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_91", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_92", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_93", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_94", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_95", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_96", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_97", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_98", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_99", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_1_fu_218.flow_control_loop_pipe_sequential_init_U", "Parent" : "82"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422", "Parent" : "0", "Child" : ["85", "86"],
		"CDFG" : "compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "122", "EstimateLatencyMax" : "122",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "connectivity_mask_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
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
			{"Name" : "connectivity_mask_18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_20", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_21", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_22", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_23", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_24", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_25", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_26", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_27", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_28", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_29", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_30", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_31", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_32", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_33", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_34", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_35", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_36", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_37", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_38", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_39", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_40", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_41", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_42", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_43", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_44", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_45", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_46", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_47", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_48", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_49", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_50", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_51", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_52", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_53", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_54", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_55", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_56", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_57", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_58", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_59", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_60", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_61", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_62", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_63", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_64", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_65", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_66", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_67", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_68", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_69", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_70", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_71", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_72", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_73", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_74", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_75", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_76", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_77", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_78", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_79", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_80", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_81", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_82", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_83", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_84", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_85", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_86", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_87", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_88", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_89", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_90", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_91", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_92", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_93", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_94", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_95", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_96", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_97", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_98", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_99", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_385_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422.mux_1007_32_1_1_U549", "Parent" : "84"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1_fu_422.flow_control_loop_pipe_sequential_init_U", "Parent" : "84"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628", "Parent" : "0", "Child" : ["88"],
		"CDFG" : "compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
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
			{"Name" : "VITIS_LOOP_390_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2_fu_628.flow_control_loop_pipe_sequential_init_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670", "Parent" : "0", "Child" : ["90"],
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
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_394_3_VITIS_LOOP_395_4_fu_670.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"}]}


set ArgLastReadFirstWriteLatency {
	compute_connectivity_mask {
		connectivity_mask_0 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_1 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_2 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_3 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_4 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_5 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_6 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_7 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_8 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_9 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_10 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_11 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_12 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_13 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_14 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_15 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_16 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_17 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_18 {Type IO LastRead 1 FirstWrite 1}
		connectivity_mask_19 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_20 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_21 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_22 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_23 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_24 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_25 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_26 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_27 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_28 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_29 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_30 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_31 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_32 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_33 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_34 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_35 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_36 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_37 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_38 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_39 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_40 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_41 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_42 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_43 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_44 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_45 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_46 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_47 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_48 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_49 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_50 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_51 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_52 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_53 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_54 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_55 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_56 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_57 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_58 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_59 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_60 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_61 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_62 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_63 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_64 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_65 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_66 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_67 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_68 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_69 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_70 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_71 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_72 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_73 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_74 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_75 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_76 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_77 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_78 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_79 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_80 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_81 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_82 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_83 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_84 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_85 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_86 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_87 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_88 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_89 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_90 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_91 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_92 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_93 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_94 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_95 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_96 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_97 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_98 {Type IO LastRead -1 FirstWrite -1}
		connectivity_mask_99 {Type IO LastRead -1 FirstWrite -1}
		edge_list {Type I LastRead 1 FirstWrite -1}}
	compute_connectivity_mask_Pipeline_1 {
		connectivity_mask_0 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_1 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_2 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_3 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_4 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_5 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_6 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_7 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_8 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_9 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_10 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_11 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_12 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_13 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_14 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_15 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_16 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_17 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_18 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_19 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_20 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_21 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_22 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_23 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_24 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_25 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_26 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_27 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_28 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_29 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_30 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_31 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_32 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_33 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_34 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_35 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_36 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_37 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_38 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_39 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_40 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_41 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_42 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_43 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_44 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_45 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_46 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_47 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_48 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_49 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_50 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_51 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_52 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_53 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_54 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_55 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_56 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_57 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_58 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_59 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_60 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_61 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_62 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_63 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_64 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_65 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_66 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_67 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_68 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_69 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_70 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_71 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_72 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_73 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_74 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_75 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_76 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_77 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_78 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_79 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_80 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_81 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_82 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_83 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_84 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_85 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_86 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_87 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_88 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_89 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_90 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_91 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_92 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_93 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_94 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_95 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_96 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_97 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_98 {Type O LastRead -1 FirstWrite 1}
		connectivity_mask_99 {Type O LastRead -1 FirstWrite 1}}
	compute_connectivity_mask_Pipeline_VITIS_LOOP_385_1 {
		connectivity_mask_0 {Type IO LastRead 1 FirstWrite 3}
		edge_list {Type I LastRead 1 FirstWrite -1}
		connectivity_mask_1 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_2 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_3 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_4 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_5 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_6 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_7 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_8 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_9 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_10 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_11 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_12 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_13 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_14 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_15 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_16 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_17 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_18 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_19 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_20 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_21 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_22 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_23 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_24 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_25 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_26 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_27 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_28 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_29 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_30 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_31 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_32 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_33 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_34 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_35 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_36 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_37 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_38 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_39 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_40 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_41 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_42 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_43 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_44 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_45 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_46 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_47 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_48 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_49 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_50 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_51 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_52 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_53 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_54 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_55 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_56 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_57 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_58 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_59 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_60 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_61 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_62 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_63 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_64 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_65 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_66 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_67 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_68 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_69 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_70 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_71 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_72 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_73 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_74 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_75 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_76 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_77 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_78 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_79 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_80 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_81 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_82 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_83 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_84 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_85 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_86 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_87 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_88 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_89 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_90 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_91 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_92 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_93 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_94 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_95 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_96 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_97 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_98 {Type IO LastRead 1 FirstWrite 3}
		connectivity_mask_99 {Type IO LastRead 1 FirstWrite 3}}
	compute_connectivity_mask_Pipeline_VITIS_LOOP_390_2 {
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
		connectivity_mask_18 {Type IO LastRead 0 FirstWrite 2}}
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
	{"Name" : "Latency", "Min" : "10517", "Max" : "10517"}
	, {"Name" : "Interval", "Min" : "10517", "Max" : "10517"}
]}

set PipelineEnableSignalInfo {[
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
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 10 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 10 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
}
