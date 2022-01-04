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
	{ edge_list int 32 regular {array 1000 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_final_0 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_1 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_2 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_3 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_4 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_5 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_6 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_7 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_8 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_9 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_10 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_11 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_12 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_13 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_14 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_15 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_16 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_17 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask_final_18 int 32 regular {array 100 { 3 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_16", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_17", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final_18", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 88
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ edge_list_address0 sc_out sc_lv 10 signal 0 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 0 } 
	{ edge_list_address1 sc_out sc_lv 10 signal 0 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 0 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 0 } 
	{ connectivity_mask_final_0_address1 sc_out sc_lv 7 signal 1 } 
	{ connectivity_mask_final_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ connectivity_mask_final_0_we1 sc_out sc_logic 1 signal 1 } 
	{ connectivity_mask_final_0_d1 sc_out sc_lv 32 signal 1 } 
	{ connectivity_mask_final_1_address1 sc_out sc_lv 7 signal 2 } 
	{ connectivity_mask_final_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ connectivity_mask_final_1_we1 sc_out sc_logic 1 signal 2 } 
	{ connectivity_mask_final_1_d1 sc_out sc_lv 32 signal 2 } 
	{ connectivity_mask_final_2_address1 sc_out sc_lv 7 signal 3 } 
	{ connectivity_mask_final_2_ce1 sc_out sc_logic 1 signal 3 } 
	{ connectivity_mask_final_2_we1 sc_out sc_logic 1 signal 3 } 
	{ connectivity_mask_final_2_d1 sc_out sc_lv 32 signal 3 } 
	{ connectivity_mask_final_3_address1 sc_out sc_lv 7 signal 4 } 
	{ connectivity_mask_final_3_ce1 sc_out sc_logic 1 signal 4 } 
	{ connectivity_mask_final_3_we1 sc_out sc_logic 1 signal 4 } 
	{ connectivity_mask_final_3_d1 sc_out sc_lv 32 signal 4 } 
	{ connectivity_mask_final_4_address1 sc_out sc_lv 7 signal 5 } 
	{ connectivity_mask_final_4_ce1 sc_out sc_logic 1 signal 5 } 
	{ connectivity_mask_final_4_we1 sc_out sc_logic 1 signal 5 } 
	{ connectivity_mask_final_4_d1 sc_out sc_lv 32 signal 5 } 
	{ connectivity_mask_final_5_address1 sc_out sc_lv 7 signal 6 } 
	{ connectivity_mask_final_5_ce1 sc_out sc_logic 1 signal 6 } 
	{ connectivity_mask_final_5_we1 sc_out sc_logic 1 signal 6 } 
	{ connectivity_mask_final_5_d1 sc_out sc_lv 32 signal 6 } 
	{ connectivity_mask_final_6_address1 sc_out sc_lv 7 signal 7 } 
	{ connectivity_mask_final_6_ce1 sc_out sc_logic 1 signal 7 } 
	{ connectivity_mask_final_6_we1 sc_out sc_logic 1 signal 7 } 
	{ connectivity_mask_final_6_d1 sc_out sc_lv 32 signal 7 } 
	{ connectivity_mask_final_7_address1 sc_out sc_lv 7 signal 8 } 
	{ connectivity_mask_final_7_ce1 sc_out sc_logic 1 signal 8 } 
	{ connectivity_mask_final_7_we1 sc_out sc_logic 1 signal 8 } 
	{ connectivity_mask_final_7_d1 sc_out sc_lv 32 signal 8 } 
	{ connectivity_mask_final_8_address1 sc_out sc_lv 7 signal 9 } 
	{ connectivity_mask_final_8_ce1 sc_out sc_logic 1 signal 9 } 
	{ connectivity_mask_final_8_we1 sc_out sc_logic 1 signal 9 } 
	{ connectivity_mask_final_8_d1 sc_out sc_lv 32 signal 9 } 
	{ connectivity_mask_final_9_address1 sc_out sc_lv 7 signal 10 } 
	{ connectivity_mask_final_9_ce1 sc_out sc_logic 1 signal 10 } 
	{ connectivity_mask_final_9_we1 sc_out sc_logic 1 signal 10 } 
	{ connectivity_mask_final_9_d1 sc_out sc_lv 32 signal 10 } 
	{ connectivity_mask_final_10_address1 sc_out sc_lv 7 signal 11 } 
	{ connectivity_mask_final_10_ce1 sc_out sc_logic 1 signal 11 } 
	{ connectivity_mask_final_10_we1 sc_out sc_logic 1 signal 11 } 
	{ connectivity_mask_final_10_d1 sc_out sc_lv 32 signal 11 } 
	{ connectivity_mask_final_11_address1 sc_out sc_lv 7 signal 12 } 
	{ connectivity_mask_final_11_ce1 sc_out sc_logic 1 signal 12 } 
	{ connectivity_mask_final_11_we1 sc_out sc_logic 1 signal 12 } 
	{ connectivity_mask_final_11_d1 sc_out sc_lv 32 signal 12 } 
	{ connectivity_mask_final_12_address1 sc_out sc_lv 7 signal 13 } 
	{ connectivity_mask_final_12_ce1 sc_out sc_logic 1 signal 13 } 
	{ connectivity_mask_final_12_we1 sc_out sc_logic 1 signal 13 } 
	{ connectivity_mask_final_12_d1 sc_out sc_lv 32 signal 13 } 
	{ connectivity_mask_final_13_address1 sc_out sc_lv 7 signal 14 } 
	{ connectivity_mask_final_13_ce1 sc_out sc_logic 1 signal 14 } 
	{ connectivity_mask_final_13_we1 sc_out sc_logic 1 signal 14 } 
	{ connectivity_mask_final_13_d1 sc_out sc_lv 32 signal 14 } 
	{ connectivity_mask_final_14_address1 sc_out sc_lv 7 signal 15 } 
	{ connectivity_mask_final_14_ce1 sc_out sc_logic 1 signal 15 } 
	{ connectivity_mask_final_14_we1 sc_out sc_logic 1 signal 15 } 
	{ connectivity_mask_final_14_d1 sc_out sc_lv 32 signal 15 } 
	{ connectivity_mask_final_15_address1 sc_out sc_lv 7 signal 16 } 
	{ connectivity_mask_final_15_ce1 sc_out sc_logic 1 signal 16 } 
	{ connectivity_mask_final_15_we1 sc_out sc_logic 1 signal 16 } 
	{ connectivity_mask_final_15_d1 sc_out sc_lv 32 signal 16 } 
	{ connectivity_mask_final_16_address1 sc_out sc_lv 7 signal 17 } 
	{ connectivity_mask_final_16_ce1 sc_out sc_logic 1 signal 17 } 
	{ connectivity_mask_final_16_we1 sc_out sc_logic 1 signal 17 } 
	{ connectivity_mask_final_16_d1 sc_out sc_lv 32 signal 17 } 
	{ connectivity_mask_final_17_address1 sc_out sc_lv 7 signal 18 } 
	{ connectivity_mask_final_17_ce1 sc_out sc_logic 1 signal 18 } 
	{ connectivity_mask_final_17_we1 sc_out sc_logic 1 signal 18 } 
	{ connectivity_mask_final_17_d1 sc_out sc_lv 32 signal 18 } 
	{ connectivity_mask_final_18_address1 sc_out sc_lv 7 signal 19 } 
	{ connectivity_mask_final_18_ce1 sc_out sc_logic 1 signal 19 } 
	{ connectivity_mask_final_18_we1 sc_out sc_logic 1 signal 19 } 
	{ connectivity_mask_final_18_d1 sc_out sc_lv 32 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "connectivity_mask_final_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_0", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_0", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_0", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_0", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_1", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_1", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_1", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_1", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_2", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_2", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_2", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_2", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_3", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_3", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_3", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_3", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_4", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_4", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_4", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_4", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_5", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_5", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_5", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_5", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_6", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_6", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_6", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_6", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_7", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_7", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_7", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_7", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_8", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_8", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_8", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_8", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_9", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_9", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_9", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_9", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_10", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_10", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_10", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_10", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_11", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_11", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_11", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_11", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_12", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_12", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_12", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_12", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_13", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_13", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_13", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_13", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_14", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_14", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_14", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_14", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_15", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_15", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_15", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_15", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_16_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_16", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_16_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_16", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_16_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_16", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_16_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_16", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_17_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_17", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_17_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_17", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_17_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_17", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_17_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_17", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_18_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "connectivity_mask_final_18", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_18_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_18", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_18_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final_18", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_18_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final_18", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "7", "9"],
		"CDFG" : "compute_connectivity_mask",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "884", "EstimateLatencyMax" : "884",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "connectivity_mask", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_376_2_fu_234", "Port" : "connectivity_mask", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "2", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_220", "Port" : "connectivity_mask", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "4", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_371_1_fu_226", "Port" : "connectivity_mask", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_371_1_fu_226", "Port" : "edge_list", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "connectivity_mask_final_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_0", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_1", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_2", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_3", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_4", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_5", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_6", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_7", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_8", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_9", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_10", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_11", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_12", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_13", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_14", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_15", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_16", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_16", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_17", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_17", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "connectivity_mask_final_18", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Port" : "connectivity_mask_final_18", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_1_fu_220", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "compute_connectivity_mask_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "363", "EstimateLatencyMax" : "363",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "connectivity_mask", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_1_fu_220.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_371_1_fu_226", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "compute_connectivity_mask_Pipeline_VITIS_LOOP_371_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "125", "EstimateLatencyMax" : "125",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_371_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_371_1_fu_226.mac_muladd_14s_7ns_14ns_14_4_1_U673", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_371_1_fu_226.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_376_2_fu_234", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "compute_connectivity_mask_Pipeline_VITIS_LOOP_376_2",
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
			{"Name" : "connectivity_mask", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_376_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_376_2_fu_234.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240", "Parent" : "0", "Child" : ["10", "11"],
		"CDFG" : "compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "367", "EstimateLatencyMax" : "367",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "connectivity_mask_final_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask_final_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask_final_18", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_380_3_VITIS_LOOP_381_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240.mac_muladd_5ns_7ns_5ns_12_4_1_U678", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4_fu_240.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"}]}


set ArgLastReadFirstWriteLatency {
	compute_connectivity_mask {
		connectivity_mask {Type IO LastRead -1 FirstWrite -1}
		edge_list {Type I LastRead 1 FirstWrite -1}
		connectivity_mask_final_0 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_1 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_2 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_3 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_4 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_5 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_6 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_7 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_8 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_9 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_10 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_11 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_12 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_13 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_14 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_15 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_16 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_17 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_18 {Type O LastRead -1 FirstWrite 5}}
	compute_connectivity_mask_Pipeline_1 {
		connectivity_mask {Type O LastRead -1 FirstWrite 0}}
	compute_connectivity_mask_Pipeline_VITIS_LOOP_371_1 {
		edge_list {Type I LastRead 1 FirstWrite -1}
		connectivity_mask {Type IO LastRead 4 FirstWrite 6}}
	compute_connectivity_mask_Pipeline_VITIS_LOOP_376_2 {
		connectivity_mask {Type IO LastRead 0 FirstWrite 2}}
	compute_connectivity_mask_Pipeline_VITIS_LOOP_380_3_VITIS_LOOP_381_4 {
		connectivity_mask_final_0 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask {Type I LastRead 3 FirstWrite -1}
		connectivity_mask_final_1 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_2 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_3 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_4 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_5 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_6 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_7 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_8 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_9 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_10 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_11 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_12 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_13 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_14 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_15 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_16 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_17 {Type O LastRead -1 FirstWrite 5}
		connectivity_mask_final_18 {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "884", "Max" : "884"}
	, {"Name" : "Interval", "Min" : "884", "Max" : "884"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 10 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 10 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_final_0 { ap_memory {  { connectivity_mask_final_0_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_0_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_0_we1 MemPortWE2 1 1 }  { connectivity_mask_final_0_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_1 { ap_memory {  { connectivity_mask_final_1_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_1_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_1_we1 MemPortWE2 1 1 }  { connectivity_mask_final_1_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_2 { ap_memory {  { connectivity_mask_final_2_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_2_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_2_we1 MemPortWE2 1 1 }  { connectivity_mask_final_2_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_3 { ap_memory {  { connectivity_mask_final_3_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_3_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_3_we1 MemPortWE2 1 1 }  { connectivity_mask_final_3_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_4 { ap_memory {  { connectivity_mask_final_4_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_4_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_4_we1 MemPortWE2 1 1 }  { connectivity_mask_final_4_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_5 { ap_memory {  { connectivity_mask_final_5_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_5_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_5_we1 MemPortWE2 1 1 }  { connectivity_mask_final_5_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_6 { ap_memory {  { connectivity_mask_final_6_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_6_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_6_we1 MemPortWE2 1 1 }  { connectivity_mask_final_6_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_7 { ap_memory {  { connectivity_mask_final_7_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_7_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_7_we1 MemPortWE2 1 1 }  { connectivity_mask_final_7_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_8 { ap_memory {  { connectivity_mask_final_8_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_8_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_8_we1 MemPortWE2 1 1 }  { connectivity_mask_final_8_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_9 { ap_memory {  { connectivity_mask_final_9_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_9_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_9_we1 MemPortWE2 1 1 }  { connectivity_mask_final_9_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_10 { ap_memory {  { connectivity_mask_final_10_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_10_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_10_we1 MemPortWE2 1 1 }  { connectivity_mask_final_10_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_11 { ap_memory {  { connectivity_mask_final_11_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_11_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_11_we1 MemPortWE2 1 1 }  { connectivity_mask_final_11_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_12 { ap_memory {  { connectivity_mask_final_12_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_12_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_12_we1 MemPortWE2 1 1 }  { connectivity_mask_final_12_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_13 { ap_memory {  { connectivity_mask_final_13_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_13_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_13_we1 MemPortWE2 1 1 }  { connectivity_mask_final_13_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_14 { ap_memory {  { connectivity_mask_final_14_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_14_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_14_we1 MemPortWE2 1 1 }  { connectivity_mask_final_14_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_15 { ap_memory {  { connectivity_mask_final_15_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_15_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_15_we1 MemPortWE2 1 1 }  { connectivity_mask_final_15_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_16 { ap_memory {  { connectivity_mask_final_16_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_16_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_16_we1 MemPortWE2 1 1 }  { connectivity_mask_final_16_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_17 { ap_memory {  { connectivity_mask_final_17_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_17_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_17_we1 MemPortWE2 1 1 }  { connectivity_mask_final_17_d1 MemPortDIN2 1 32 } } }
	connectivity_mask_final_18 { ap_memory {  { connectivity_mask_final_18_address1 MemPortADDR2 1 7 }  { connectivity_mask_final_18_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_18_we1 MemPortWE2 1 1 }  { connectivity_mask_final_18_d1 MemPortDIN2 1 32 } } }
}
