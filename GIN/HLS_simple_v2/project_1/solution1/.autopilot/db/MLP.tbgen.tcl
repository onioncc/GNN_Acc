set moduleName MLP
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
set C_modelName {MLP}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_of_nodes int 32 regular  }
	{ layer int 3 regular  }
	{ mlp_eps_V int 32 regular {array 5 { 1 3 } 1 1 } {global 0}  }
	{ node_embedding_V int 32 regular {array 300000 { 1 0 } 1 1 } {global 2}  }
	{ message_V int 32 regular {array 300000 { 1 3 } 1 1 } {global 0}  }
	{ mlp_1_weights_V int 32 regular {array 180000 { 1 3 } 1 1 } {global 0}  }
	{ mlp_1_bias_V int 32 regular {array 600 { 1 3 } 1 1 } {global 0}  }
	{ mlp_2_weights_V int 32 regular {array 180000 { 1 3 } 1 1 } {global 0}  }
	{ mlp_2_bias_V int 32 regular {array 300 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_of_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "layer", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_eps_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_eps.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 4,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "message_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "message.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_1_weights_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_1_weights.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 599,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_1_bias_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_1_bias.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_2_weights_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_2_weights.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 299,"step" : 1},{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "mlp_2_bias_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_2_bias.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_of_nodes sc_in sc_lv 32 signal 0 } 
	{ layer sc_in sc_lv 3 signal 1 } 
	{ mlp_eps_V_address0 sc_out sc_lv 3 signal 2 } 
	{ mlp_eps_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ mlp_eps_V_q0 sc_in sc_lv 32 signal 2 } 
	{ node_embedding_V_address0 sc_out sc_lv 19 signal 3 } 
	{ node_embedding_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ node_embedding_V_q0 sc_in sc_lv 32 signal 3 } 
	{ node_embedding_V_address1 sc_out sc_lv 19 signal 3 } 
	{ node_embedding_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ node_embedding_V_we1 sc_out sc_logic 1 signal 3 } 
	{ node_embedding_V_d1 sc_out sc_lv 32 signal 3 } 
	{ message_V_address0 sc_out sc_lv 19 signal 4 } 
	{ message_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ message_V_q0 sc_in sc_lv 32 signal 4 } 
	{ mlp_1_weights_V_address0 sc_out sc_lv 18 signal 5 } 
	{ mlp_1_weights_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ mlp_1_weights_V_q0 sc_in sc_lv 32 signal 5 } 
	{ mlp_1_bias_V_address0 sc_out sc_lv 10 signal 6 } 
	{ mlp_1_bias_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ mlp_1_bias_V_q0 sc_in sc_lv 32 signal 6 } 
	{ mlp_2_weights_V_address0 sc_out sc_lv 18 signal 7 } 
	{ mlp_2_weights_V_ce0 sc_out sc_logic 1 signal 7 } 
	{ mlp_2_weights_V_q0 sc_in sc_lv 32 signal 7 } 
	{ mlp_2_bias_V_address0 sc_out sc_lv 9 signal 8 } 
	{ mlp_2_bias_V_ce0 sc_out sc_logic 1 signal 8 } 
	{ mlp_2_bias_V_q0 sc_in sc_lv 32 signal 8 } 
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
 	{ "name": "mlp_eps_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "address0" }} , 
 	{ "name": "mlp_eps_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "ce0" }} , 
 	{ "name": "mlp_eps_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_eps_V", "role": "q0" }} , 
 	{ "name": "node_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "address0" }} , 
 	{ "name": "node_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "q0" }} , 
 	{ "name": "node_embedding_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "address1" }} , 
 	{ "name": "node_embedding_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "we1" }} , 
 	{ "name": "node_embedding_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "d1" }} , 
 	{ "name": "message_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "message_V", "role": "address0" }} , 
 	{ "name": "message_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message_V", "role": "ce0" }} , 
 	{ "name": "message_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "message_V", "role": "q0" }} , 
 	{ "name": "mlp_1_weights_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "address0" }} , 
 	{ "name": "mlp_1_weights_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "ce0" }} , 
 	{ "name": "mlp_1_weights_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weights_V", "role": "q0" }} , 
 	{ "name": "mlp_1_bias_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "address0" }} , 
 	{ "name": "mlp_1_bias_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "ce0" }} , 
 	{ "name": "mlp_1_bias_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V", "role": "q0" }} , 
 	{ "name": "mlp_2_weights_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "mlp_2_weights_V", "role": "address0" }} , 
 	{ "name": "mlp_2_weights_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_weights_V", "role": "ce0" }} , 
 	{ "name": "mlp_2_weights_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_2_weights_V", "role": "q0" }} , 
 	{ "name": "mlp_2_bias_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_2_bias_V", "role": "address0" }} , 
 	{ "name": "mlp_2_bias_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_bias_V", "role": "ce0" }} , 
 	{ "name": "mlp_2_bias_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_2_bias_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "152", "239", "240", "241", "242"],
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
					{"ID" : "152", "SubInstance" : "grp_MLP_batch_nodes_300_600_s_fu_926", "Port" : "mlp_1_weights_V"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "152", "SubInstance" : "grp_MLP_batch_nodes_300_600_s_fu_926", "Port" : "mlp_1_bias_V"}]},
			{"Name" : "mlp_2_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_MLP_batch_nodes_600_300_s_fu_883", "Port" : "mlp_2_weights_V"}]},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_MLP_batch_nodes_600_300_s_fu_883", "Port" : "mlp_2_bias_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_1_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_1_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_1_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_1_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_1_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_1_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_1_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_1_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_1_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_1_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_1_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_1_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_1_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_1_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_1_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_1_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_2_V_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_2_V_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_2_V_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_2_V_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_2_V_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_2_V_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_2_V_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_2_V_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_2_V_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_2_V_9_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_2_V_10_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_2_V_11_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_2_V_12_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_2_V_13_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_2_V_14_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_2_V_15_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_3_0_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_3_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_3_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_3_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_3_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_3_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_3_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_3_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_3_8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_3_9_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_3_10_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_3_11_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_3_12_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_3_13_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_3_14_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_buf_3_15_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883", "Parent" : "0", "Child" : ["50", "51", "53", "54", "56", "58", "60", "62", "64", "66", "68", "70", "72", "74", "76", "78", "80", "82", "84", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151"],
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
			{"ID" : "50", "Name" : "MLP_batch_nodes_600_300_entry162_U0"},
			{"ID" : "51", "Name" : "load_mlp_weight_vector_600_300_U0"},
			{"ID" : "53", "Name" : "MLP_batch_nodes_600_300_Block_split13_proc_U0"},
			{"ID" : "54", "Name" : "MLP_PE_600_300_58_U0"},
			{"ID" : "56", "Name" : "MLP_PE_600_300_59_U0"},
			{"ID" : "58", "Name" : "MLP_PE_600_300_60_U0"},
			{"ID" : "60", "Name" : "MLP_PE_600_300_61_U0"},
			{"ID" : "62", "Name" : "MLP_PE_600_300_62_U0"},
			{"ID" : "64", "Name" : "MLP_PE_600_300_63_U0"},
			{"ID" : "66", "Name" : "MLP_PE_600_300_64_U0"},
			{"ID" : "68", "Name" : "MLP_PE_600_300_65_U0"},
			{"ID" : "70", "Name" : "MLP_PE_600_300_66_U0"},
			{"ID" : "72", "Name" : "MLP_PE_600_300_67_U0"},
			{"ID" : "74", "Name" : "MLP_PE_600_300_68_U0"},
			{"ID" : "76", "Name" : "MLP_PE_600_300_69_U0"},
			{"ID" : "78", "Name" : "MLP_PE_600_300_70_U0"},
			{"ID" : "80", "Name" : "MLP_PE_600_300_71_U0"},
			{"ID" : "82", "Name" : "MLP_PE_600_300_72_U0"},
			{"ID" : "84", "Name" : "MLP_PE_600_300_73_U0"}],
		"OutputProcess" : [
			{"ID" : "54", "Name" : "MLP_PE_600_300_58_U0"},
			{"ID" : "56", "Name" : "MLP_PE_600_300_59_U0"},
			{"ID" : "58", "Name" : "MLP_PE_600_300_60_U0"},
			{"ID" : "60", "Name" : "MLP_PE_600_300_61_U0"},
			{"ID" : "62", "Name" : "MLP_PE_600_300_62_U0"},
			{"ID" : "64", "Name" : "MLP_PE_600_300_63_U0"},
			{"ID" : "66", "Name" : "MLP_PE_600_300_64_U0"},
			{"ID" : "68", "Name" : "MLP_PE_600_300_65_U0"},
			{"ID" : "70", "Name" : "MLP_PE_600_300_66_U0"},
			{"ID" : "72", "Name" : "MLP_PE_600_300_67_U0"},
			{"ID" : "74", "Name" : "MLP_PE_600_300_68_U0"},
			{"ID" : "76", "Name" : "MLP_PE_600_300_69_U0"},
			{"ID" : "78", "Name" : "MLP_PE_600_300_70_U0"},
			{"ID" : "80", "Name" : "MLP_PE_600_300_71_U0"},
			{"ID" : "82", "Name" : "MLP_PE_600_300_72_U0"},
			{"ID" : "84", "Name" : "MLP_PE_600_300_73_U0"}],
		"Port" : [
			{"Name" : "mlp_in_local", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "MLP_PE_600_300_58_U0", "Port" : "mlp_in_local"}]},
			{"Name" : "mlp_in_local1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "MLP_PE_600_300_59_U0", "Port" : "mlp_in_local1"}]},
			{"Name" : "mlp_in_local2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "MLP_PE_600_300_60_U0", "Port" : "mlp_in_local2"}]},
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "MLP_PE_600_300_61_U0", "Port" : "mlp_in_local3"}]},
			{"Name" : "mlp_in_local4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "MLP_PE_600_300_62_U0", "Port" : "mlp_in_local4"}]},
			{"Name" : "mlp_in_local5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "MLP_PE_600_300_63_U0", "Port" : "mlp_in_local5"}]},
			{"Name" : "mlp_in_local6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "MLP_PE_600_300_64_U0", "Port" : "mlp_in_local6"}]},
			{"Name" : "mlp_in_local7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "MLP_PE_600_300_65_U0", "Port" : "mlp_in_local7"}]},
			{"Name" : "mlp_in_local8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "MLP_PE_600_300_66_U0", "Port" : "mlp_in_local8"}]},
			{"Name" : "mlp_in_local9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "MLP_PE_600_300_67_U0", "Port" : "mlp_in_local9"}]},
			{"Name" : "mlp_in_local10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "MLP_PE_600_300_68_U0", "Port" : "mlp_in_local10"}]},
			{"Name" : "mlp_in_local11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "MLP_PE_600_300_69_U0", "Port" : "mlp_in_local11"}]},
			{"Name" : "mlp_in_local12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "MLP_PE_600_300_70_U0", "Port" : "mlp_in_local12"}]},
			{"Name" : "mlp_in_local13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "MLP_PE_600_300_71_U0", "Port" : "mlp_in_local13"}]},
			{"Name" : "mlp_in_local14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "MLP_PE_600_300_72_U0", "Port" : "mlp_in_local14"}]},
			{"Name" : "mlp_in_local15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "MLP_PE_600_300_73_U0", "Port" : "mlp_in_local15"}]},
			{"Name" : "mlp_out_local", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "MLP_PE_600_300_58_U0", "Port" : "mlp_out_local"}]},
			{"Name" : "mlp_out_local16", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "MLP_PE_600_300_59_U0", "Port" : "mlp_out_local16"}]},
			{"Name" : "mlp_out_local17", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "MLP_PE_600_300_60_U0", "Port" : "mlp_out_local17"}]},
			{"Name" : "mlp_out_local18", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "60", "SubInstance" : "MLP_PE_600_300_61_U0", "Port" : "mlp_out_local18"}]},
			{"Name" : "mlp_out_local19", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "MLP_PE_600_300_62_U0", "Port" : "mlp_out_local19"}]},
			{"Name" : "mlp_out_local20", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "MLP_PE_600_300_63_U0", "Port" : "mlp_out_local20"}]},
			{"Name" : "mlp_out_local21", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "MLP_PE_600_300_64_U0", "Port" : "mlp_out_local21"}]},
			{"Name" : "mlp_out_local22", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "MLP_PE_600_300_65_U0", "Port" : "mlp_out_local22"}]},
			{"Name" : "mlp_out_local23", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "MLP_PE_600_300_66_U0", "Port" : "mlp_out_local23"}]},
			{"Name" : "mlp_out_local24", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "72", "SubInstance" : "MLP_PE_600_300_67_U0", "Port" : "mlp_out_local24"}]},
			{"Name" : "mlp_out_local25", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "MLP_PE_600_300_68_U0", "Port" : "mlp_out_local25"}]},
			{"Name" : "mlp_out_local26", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "MLP_PE_600_300_69_U0", "Port" : "mlp_out_local26"}]},
			{"Name" : "mlp_out_local27", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "MLP_PE_600_300_70_U0", "Port" : "mlp_out_local27"}]},
			{"Name" : "mlp_out_local28", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "MLP_PE_600_300_71_U0", "Port" : "mlp_out_local28"}]},
			{"Name" : "mlp_out_local29", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "MLP_PE_600_300_72_U0", "Port" : "mlp_out_local29"}]},
			{"Name" : "mlp_out_local30", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "MLP_PE_600_300_73_U0", "Port" : "mlp_out_local30"}]},
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_relu", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_2_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "load_mlp_weight_vector_600_300_U0", "Port" : "mlp_2_weights_V"}]},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "MLP_batch_nodes_600_300_Block_split13_proc_U0", "Port" : "mlp_2_bias_V"}]}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_batch_nodes_600_300_entry162_U0", "Parent" : "49",
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
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "53", "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "88", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.load_mlp_weight_vector_600_300_U0", "Parent" : "49", "Child" : ["52"],
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
			{"Name" : "mlp_weight_vector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_vector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "86", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_weights_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.load_mlp_weight_vector_600_300_U0.mul_mul_9ns_11ns_18_4_1_U303", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_batch_nodes_600_300_Block_split13_proc_U0", "Parent" : "49",
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
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "87", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "54", "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_58_U0", "Parent" : "49", "Child" : ["55"],
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
			{"Name" : "mlp_weight_fifo_0_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "89", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_0_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "53", "DependentChan" : "91", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "90", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "50", "DependentChan" : "88", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "56", "DependentChan" : "95", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_58_U0.mul_32s_31ns_54_1_1_U312", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_59_U0", "Parent" : "49", "Child" : ["57"],
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
			{"Name" : "mlp_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "92", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "93", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "94", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "54", "DependentChan" : "95", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "58", "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_59_U0.mul_32s_31ns_54_1_1_U324", "Parent" : "56"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_60_U0", "Parent" : "49", "Child" : ["59"],
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
			{"Name" : "mlp_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "97", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "98", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "56", "DependentChan" : "99", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "101", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "60", "DependentChan" : "103", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_60_U0.mul_32s_31ns_54_1_1_U335", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_61_U0", "Parent" : "49", "Child" : ["61"],
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
			{"Name" : "mlp_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "100", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_4_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_4_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "101", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "102", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "58", "DependentChan" : "103", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "62", "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_61_U0.mul_32s_31ns_54_1_1_U346", "Parent" : "60"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_62_U0", "Parent" : "49", "Child" : ["63"],
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
			{"Name" : "mlp_weight_fifo_4_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "104", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_4_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_5_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_5_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "105", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "60", "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_62_U0.mul_32s_31ns_54_1_1_U357", "Parent" : "62"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_63_U0", "Parent" : "49", "Child" : ["65"],
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
			{"Name" : "mlp_weight_fifo_5_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "108", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_5_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_6_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_6_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "62", "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "66", "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_63_U0.mul_32s_31ns_54_1_1_U368", "Parent" : "64"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_64_U0", "Parent" : "49", "Child" : ["67"],
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
			{"Name" : "mlp_weight_fifo_6_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_6_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_7_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_7_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_64_U0.mul_32s_31ns_54_1_1_U379", "Parent" : "66"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_65_U0", "Parent" : "49", "Child" : ["69"],
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
			{"Name" : "mlp_weight_fifo_7_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_7_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_8_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_8_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "122", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "123", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_65_U0.mul_32s_31ns_54_1_1_U390", "Parent" : "68"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_66_U0", "Parent" : "49", "Child" : ["71"],
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
			{"Name" : "mlp_weight_fifo_8_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_8_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_9_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_9_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "122", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "123", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "125", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "126", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "72", "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_66_U0.mul_32s_31ns_54_1_1_U401", "Parent" : "70"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_67_U0", "Parent" : "49", "Child" : ["73"],
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
			{"Name" : "mlp_weight_fifo_9_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_9_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_10_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "128", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_10_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "125", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "126", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "129", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "130", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "131", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_67_U0.mul_32s_31ns_54_1_1_U412", "Parent" : "72"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_68_U0", "Parent" : "49", "Child" : ["75"],
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
			{"Name" : "mlp_weight_fifo_10_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "128", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_10_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_11_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_11_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "129", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "130", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "72", "DependentChan" : "131", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "134", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "135", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_68_U0.mul_32s_31ns_54_1_1_U423", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_69_U0", "Parent" : "49", "Child" : ["77"],
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
			{"Name" : "mlp_weight_fifo_11_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_11_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_12_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "136", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_12_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "134", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "135", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "137", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "138", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "139", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_69_U0.mul_32s_31ns_54_1_1_U434", "Parent" : "76"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_70_U0", "Parent" : "49", "Child" : ["79"],
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
			{"Name" : "mlp_weight_fifo_12_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "136", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_12_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_13_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "140", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_13_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "137", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "138", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "139", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "141", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "142", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "143", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_70_U0.mul_32s_31ns_54_1_1_U445", "Parent" : "78"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_71_U0", "Parent" : "49", "Child" : ["81"],
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
			{"Name" : "mlp_weight_fifo_13_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "140", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_13_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_14_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "144", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_14_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "141", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "142", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "143", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "145", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "146", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "147", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_71_U0.mul_32s_31ns_54_1_1_U456", "Parent" : "80"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_72_U0", "Parent" : "49", "Child" : ["83"],
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
			{"Name" : "mlp_weight_fifo_14_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "144", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_14_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_15_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "148", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_15_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "145", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "146", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "147", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "149", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "150", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "151", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_72_U0.mul_32s_31ns_54_1_1_U467", "Parent" : "82"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_73_U0", "Parent" : "49", "Child" : ["85"],
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
			{"Name" : "mlp_weight_fifo_15_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "148", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_15_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "149", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "150", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "151", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_73_U0.mul_32s_31ns_54_1_1_U478", "Parent" : "84"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c_U", "Parent" : "49"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c38_U", "Parent" : "49"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c_U", "Parent" : "49"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_0_V_V_U", "Parent" : "49"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c39_U", "Parent" : "49"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c_U", "Parent" : "49"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_1_V_V_U", "Parent" : "49"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c40_U", "Parent" : "49"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c41_U", "Parent" : "49"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c42_U", "Parent" : "49"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_2_V_V_U", "Parent" : "49"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c43_U", "Parent" : "49"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c44_U", "Parent" : "49"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c45_U", "Parent" : "49"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_3_V_V_U", "Parent" : "49"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c46_U", "Parent" : "49"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c47_U", "Parent" : "49"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c48_U", "Parent" : "49"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_4_V_V_U", "Parent" : "49"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c49_U", "Parent" : "49"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c50_U", "Parent" : "49"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c51_U", "Parent" : "49"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_5_V_V_U", "Parent" : "49"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c52_U", "Parent" : "49"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c53_U", "Parent" : "49"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c54_U", "Parent" : "49"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_6_V_V_U", "Parent" : "49"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c55_U", "Parent" : "49"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c56_U", "Parent" : "49"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c57_U", "Parent" : "49"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_7_V_V_U", "Parent" : "49"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c58_U", "Parent" : "49"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c59_U", "Parent" : "49"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c60_U", "Parent" : "49"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_8_V_V_U", "Parent" : "49"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c61_U", "Parent" : "49"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c62_U", "Parent" : "49"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c63_U", "Parent" : "49"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_9_V_V_U", "Parent" : "49"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c64_U", "Parent" : "49"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c65_U", "Parent" : "49"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c66_U", "Parent" : "49"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_10_V_V_U", "Parent" : "49"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c67_U", "Parent" : "49"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c68_U", "Parent" : "49"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c69_U", "Parent" : "49"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_11_V_V_U", "Parent" : "49"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c70_U", "Parent" : "49"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c71_U", "Parent" : "49"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c72_U", "Parent" : "49"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_12_V_V_U", "Parent" : "49"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c73_U", "Parent" : "49"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c74_U", "Parent" : "49"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c75_U", "Parent" : "49"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_13_V_V_U", "Parent" : "49"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c76_U", "Parent" : "49"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c77_U", "Parent" : "49"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c78_U", "Parent" : "49"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_14_V_V_U", "Parent" : "49"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c79_U", "Parent" : "49"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c80_U", "Parent" : "49"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c81_U", "Parent" : "49"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_15_V_V_U", "Parent" : "49"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c82_U", "Parent" : "49"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c83_U", "Parent" : "49"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c84_U", "Parent" : "49"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926", "Parent" : "0", "Child" : ["153", "154", "156", "157", "159", "161", "163", "165", "167", "169", "171", "173", "175", "177", "179", "181", "183", "185", "187", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238"],
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
			{"ID" : "153", "Name" : "MLP_batch_nodes_300_600_entry142_U0"},
			{"ID" : "154", "Name" : "load_mlp_weight_vector_300_600_U0"},
			{"ID" : "156", "Name" : "MLP_batch_nodes_300_600_Block_split13_proc_U0"},
			{"ID" : "157", "Name" : "MLP_PE_300_600_42_U0"},
			{"ID" : "159", "Name" : "MLP_PE_300_600_43_U0"},
			{"ID" : "161", "Name" : "MLP_PE_300_600_44_U0"},
			{"ID" : "163", "Name" : "MLP_PE_300_600_45_U0"},
			{"ID" : "165", "Name" : "MLP_PE_300_600_46_U0"},
			{"ID" : "167", "Name" : "MLP_PE_300_600_47_U0"},
			{"ID" : "169", "Name" : "MLP_PE_300_600_48_U0"},
			{"ID" : "171", "Name" : "MLP_PE_300_600_49_U0"},
			{"ID" : "173", "Name" : "MLP_PE_300_600_50_U0"},
			{"ID" : "175", "Name" : "MLP_PE_300_600_51_U0"},
			{"ID" : "177", "Name" : "MLP_PE_300_600_52_U0"},
			{"ID" : "179", "Name" : "MLP_PE_300_600_53_U0"},
			{"ID" : "181", "Name" : "MLP_PE_300_600_54_U0"},
			{"ID" : "183", "Name" : "MLP_PE_300_600_55_U0"},
			{"ID" : "185", "Name" : "MLP_PE_300_600_56_U0"},
			{"ID" : "187", "Name" : "MLP_PE_300_600_57_U0"}],
		"OutputProcess" : [
			{"ID" : "157", "Name" : "MLP_PE_300_600_42_U0"},
			{"ID" : "159", "Name" : "MLP_PE_300_600_43_U0"},
			{"ID" : "161", "Name" : "MLP_PE_300_600_44_U0"},
			{"ID" : "163", "Name" : "MLP_PE_300_600_45_U0"},
			{"ID" : "165", "Name" : "MLP_PE_300_600_46_U0"},
			{"ID" : "167", "Name" : "MLP_PE_300_600_47_U0"},
			{"ID" : "169", "Name" : "MLP_PE_300_600_48_U0"},
			{"ID" : "171", "Name" : "MLP_PE_300_600_49_U0"},
			{"ID" : "173", "Name" : "MLP_PE_300_600_50_U0"},
			{"ID" : "175", "Name" : "MLP_PE_300_600_51_U0"},
			{"ID" : "177", "Name" : "MLP_PE_300_600_52_U0"},
			{"ID" : "179", "Name" : "MLP_PE_300_600_53_U0"},
			{"ID" : "181", "Name" : "MLP_PE_300_600_54_U0"},
			{"ID" : "183", "Name" : "MLP_PE_300_600_55_U0"},
			{"ID" : "185", "Name" : "MLP_PE_300_600_56_U0"},
			{"ID" : "187", "Name" : "MLP_PE_300_600_57_U0"}],
		"Port" : [
			{"Name" : "mlp_in_local", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "157", "SubInstance" : "MLP_PE_300_600_42_U0", "Port" : "mlp_in_local"}]},
			{"Name" : "mlp_in_local1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "MLP_PE_300_600_43_U0", "Port" : "mlp_in_local1"}]},
			{"Name" : "mlp_in_local2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "161", "SubInstance" : "MLP_PE_300_600_44_U0", "Port" : "mlp_in_local2"}]},
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "MLP_PE_300_600_45_U0", "Port" : "mlp_in_local3"}]},
			{"Name" : "mlp_in_local4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "MLP_PE_300_600_46_U0", "Port" : "mlp_in_local4"}]},
			{"Name" : "mlp_in_local5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "MLP_PE_300_600_47_U0", "Port" : "mlp_in_local5"}]},
			{"Name" : "mlp_in_local6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "MLP_PE_300_600_48_U0", "Port" : "mlp_in_local6"}]},
			{"Name" : "mlp_in_local7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "MLP_PE_300_600_49_U0", "Port" : "mlp_in_local7"}]},
			{"Name" : "mlp_in_local8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "173", "SubInstance" : "MLP_PE_300_600_50_U0", "Port" : "mlp_in_local8"}]},
			{"Name" : "mlp_in_local9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "175", "SubInstance" : "MLP_PE_300_600_51_U0", "Port" : "mlp_in_local9"}]},
			{"Name" : "mlp_in_local10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "MLP_PE_300_600_52_U0", "Port" : "mlp_in_local10"}]},
			{"Name" : "mlp_in_local11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "MLP_PE_300_600_53_U0", "Port" : "mlp_in_local11"}]},
			{"Name" : "mlp_in_local12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "MLP_PE_300_600_54_U0", "Port" : "mlp_in_local12"}]},
			{"Name" : "mlp_in_local13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "183", "SubInstance" : "MLP_PE_300_600_55_U0", "Port" : "mlp_in_local13"}]},
			{"Name" : "mlp_in_local14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "MLP_PE_300_600_56_U0", "Port" : "mlp_in_local14"}]},
			{"Name" : "mlp_in_local15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "MLP_PE_300_600_57_U0", "Port" : "mlp_in_local15"}]},
			{"Name" : "mlp_out_local", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "157", "SubInstance" : "MLP_PE_300_600_42_U0", "Port" : "mlp_out_local"}]},
			{"Name" : "mlp_out_local16", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "MLP_PE_300_600_43_U0", "Port" : "mlp_out_local16"}]},
			{"Name" : "mlp_out_local17", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "161", "SubInstance" : "MLP_PE_300_600_44_U0", "Port" : "mlp_out_local17"}]},
			{"Name" : "mlp_out_local18", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "MLP_PE_300_600_45_U0", "Port" : "mlp_out_local18"}]},
			{"Name" : "mlp_out_local19", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "MLP_PE_300_600_46_U0", "Port" : "mlp_out_local19"}]},
			{"Name" : "mlp_out_local20", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "167", "SubInstance" : "MLP_PE_300_600_47_U0", "Port" : "mlp_out_local20"}]},
			{"Name" : "mlp_out_local21", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "MLP_PE_300_600_48_U0", "Port" : "mlp_out_local21"}]},
			{"Name" : "mlp_out_local22", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "MLP_PE_300_600_49_U0", "Port" : "mlp_out_local22"}]},
			{"Name" : "mlp_out_local23", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "173", "SubInstance" : "MLP_PE_300_600_50_U0", "Port" : "mlp_out_local23"}]},
			{"Name" : "mlp_out_local24", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "175", "SubInstance" : "MLP_PE_300_600_51_U0", "Port" : "mlp_out_local24"}]},
			{"Name" : "mlp_out_local25", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "MLP_PE_300_600_52_U0", "Port" : "mlp_out_local25"}]},
			{"Name" : "mlp_out_local26", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "MLP_PE_300_600_53_U0", "Port" : "mlp_out_local26"}]},
			{"Name" : "mlp_out_local27", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "MLP_PE_300_600_54_U0", "Port" : "mlp_out_local27"}]},
			{"Name" : "mlp_out_local28", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "183", "SubInstance" : "MLP_PE_300_600_55_U0", "Port" : "mlp_out_local28"}]},
			{"Name" : "mlp_out_local29", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "MLP_PE_300_600_56_U0", "Port" : "mlp_out_local29"}]},
			{"Name" : "mlp_out_local30", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "MLP_PE_300_600_57_U0", "Port" : "mlp_out_local30"}]},
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "154", "SubInstance" : "load_mlp_weight_vector_300_600_U0", "Port" : "mlp_1_weights_V"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "156", "SubInstance" : "MLP_batch_nodes_300_600_Block_split13_proc_U0", "Port" : "mlp_1_bias_V"}]}]},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_batch_nodes_300_600_entry142_U0", "Parent" : "152",
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
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "154", "DependentChan" : "189", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "156", "DependentChan" : "190", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.load_mlp_weight_vector_300_600_U0", "Parent" : "152", "Child" : ["155"],
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
			{"Name" : "mlp_weight_vector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "157", "DependentChan" : "191", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_vector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "153", "DependentChan" : "189", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "157", "DependentChan" : "192", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.load_mlp_weight_vector_300_600_U0.mul_mul_10ns_10ns_18_4_1_U62", "Parent" : "154"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_batch_nodes_300_600_Block_split13_proc_U0", "Parent" : "152",
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
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "153", "DependentChan" : "190", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "157", "DependentChan" : "193", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_42_U0", "Parent" : "152", "Child" : ["158"],
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
			{"Name" : "mlp_weight_fifo_0_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "191", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_0_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "159", "DependentChan" : "194", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "156", "DependentChan" : "193", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "154", "DependentChan" : "192", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "159", "DependentChan" : "195", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "159", "DependentChan" : "196", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_42_U0.mul_32s_32s_54_1_1_U71", "Parent" : "157"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_43_U0", "Parent" : "152", "Child" : ["160"],
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
			{"Name" : "mlp_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "157", "DependentChan" : "194", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "197", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "157", "DependentChan" : "195", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "157", "DependentChan" : "196", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "198", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "161", "DependentChan" : "199", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_43_U0.mul_32s_32s_54_1_1_U81", "Parent" : "159"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_44_U0", "Parent" : "152", "Child" : ["162"],
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
			{"Name" : "mlp_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "159", "DependentChan" : "197", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "200", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "159", "DependentChan" : "198", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "159", "DependentChan" : "199", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "201", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "163", "DependentChan" : "202", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_44_U0.mul_32s_32s_54_1_1_U90", "Parent" : "161"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_45_U0", "Parent" : "152", "Child" : ["164"],
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
			{"Name" : "mlp_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "200", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_4_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "165", "DependentChan" : "203", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_4_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "201", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "161", "DependentChan" : "202", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "165", "DependentChan" : "204", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "165", "DependentChan" : "205", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_45_U0.mul_32s_32s_54_1_1_U99", "Parent" : "163"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_46_U0", "Parent" : "152", "Child" : ["166"],
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
			{"Name" : "mlp_weight_fifo_4_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "203", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_4_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_5_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "167", "DependentChan" : "206", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_5_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "204", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "163", "DependentChan" : "205", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "167", "DependentChan" : "207", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "167", "DependentChan" : "208", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_46_U0.mul_32s_32s_54_1_1_U108", "Parent" : "165"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_47_U0", "Parent" : "152", "Child" : ["168"],
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
			{"Name" : "mlp_weight_fifo_5_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "206", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_5_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_6_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "169", "DependentChan" : "209", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_6_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "207", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "165", "DependentChan" : "208", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "169", "DependentChan" : "210", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "169", "DependentChan" : "211", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_47_U0.mul_32s_32s_54_1_1_U117", "Parent" : "167"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_48_U0", "Parent" : "152", "Child" : ["170"],
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
			{"Name" : "mlp_weight_fifo_6_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "209", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_6_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_7_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "171", "DependentChan" : "212", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_7_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "210", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "167", "DependentChan" : "211", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "171", "DependentChan" : "213", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "171", "DependentChan" : "214", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_48_U0.mul_32s_32s_54_1_1_U126", "Parent" : "169"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_49_U0", "Parent" : "152", "Child" : ["172"],
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
			{"Name" : "mlp_weight_fifo_7_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "212", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_7_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_8_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "173", "DependentChan" : "215", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_8_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "213", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "169", "DependentChan" : "214", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "173", "DependentChan" : "216", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "173", "DependentChan" : "217", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_49_U0.mul_32s_32s_54_1_1_U135", "Parent" : "171"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_50_U0", "Parent" : "152", "Child" : ["174"],
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
			{"Name" : "mlp_weight_fifo_8_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "171", "DependentChan" : "215", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_8_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_9_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "175", "DependentChan" : "218", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_9_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "171", "DependentChan" : "216", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "171", "DependentChan" : "217", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "175", "DependentChan" : "219", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "175", "DependentChan" : "220", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_50_U0.mul_32s_32s_54_1_1_U144", "Parent" : "173"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_51_U0", "Parent" : "152", "Child" : ["176"],
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
			{"Name" : "mlp_weight_fifo_9_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "173", "DependentChan" : "218", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_9_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_10_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "177", "DependentChan" : "221", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_10_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "173", "DependentChan" : "219", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "173", "DependentChan" : "220", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "177", "DependentChan" : "222", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "177", "DependentChan" : "223", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_51_U0.mul_32s_32s_54_1_1_U153", "Parent" : "175"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_52_U0", "Parent" : "152", "Child" : ["178"],
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
			{"Name" : "mlp_weight_fifo_10_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "221", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_10_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_11_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "224", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_11_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "222", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "175", "DependentChan" : "223", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "225", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "226", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_52_U0.mul_32s_32s_54_1_1_U162", "Parent" : "177"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_53_U0", "Parent" : "152", "Child" : ["180"],
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
			{"Name" : "mlp_weight_fifo_11_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "177", "DependentChan" : "224", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_11_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_12_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "181", "DependentChan" : "227", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_12_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "177", "DependentChan" : "225", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "177", "DependentChan" : "226", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "181", "DependentChan" : "228", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "181", "DependentChan" : "229", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_53_U0.mul_32s_32s_54_1_1_U171", "Parent" : "179"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_54_U0", "Parent" : "152", "Child" : ["182"],
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
			{"Name" : "mlp_weight_fifo_12_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "227", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_12_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_13_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "183", "DependentChan" : "230", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_13_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "228", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "229", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "183", "DependentChan" : "231", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "183", "DependentChan" : "232", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_54_U0.mul_32s_32s_54_1_1_U180", "Parent" : "181"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_55_U0", "Parent" : "152", "Child" : ["184"],
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
			{"Name" : "mlp_weight_fifo_13_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "230", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_13_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_14_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "233", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_14_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "231", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "232", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "234", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "235", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_55_U0.mul_32s_32s_54_1_1_U189", "Parent" : "183"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_56_U0", "Parent" : "152", "Child" : ["186"],
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
			{"Name" : "mlp_weight_fifo_14_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "183", "DependentChan" : "233", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_14_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_15_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "236", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_15_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "183", "DependentChan" : "234", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "183", "DependentChan" : "235", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "237", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "238", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_56_U0.mul_32s_32s_54_1_1_U198", "Parent" : "185"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_57_U0", "Parent" : "152", "Child" : ["188"],
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
			{"Name" : "mlp_weight_fifo_15_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "236", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_15_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "237", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "238", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_57_U0.mul_32s_32s_54_1_1_U207", "Parent" : "187"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c_U", "Parent" : "152"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c38_U", "Parent" : "152"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_0_V_V_U", "Parent" : "152"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c39_U", "Parent" : "152"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c_U", "Parent" : "152"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_1_V_V_U", "Parent" : "152"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c40_U", "Parent" : "152"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c41_U", "Parent" : "152"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_2_V_V_U", "Parent" : "152"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c42_U", "Parent" : "152"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c43_U", "Parent" : "152"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_3_V_V_U", "Parent" : "152"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c44_U", "Parent" : "152"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c45_U", "Parent" : "152"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_4_V_V_U", "Parent" : "152"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c46_U", "Parent" : "152"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c47_U", "Parent" : "152"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_5_V_V_U", "Parent" : "152"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c48_U", "Parent" : "152"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c49_U", "Parent" : "152"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_6_V_V_U", "Parent" : "152"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c50_U", "Parent" : "152"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c51_U", "Parent" : "152"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_7_V_V_U", "Parent" : "152"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c52_U", "Parent" : "152"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c53_U", "Parent" : "152"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_8_V_V_U", "Parent" : "152"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c54_U", "Parent" : "152"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c55_U", "Parent" : "152"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_9_V_V_U", "Parent" : "152"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c56_U", "Parent" : "152"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c57_U", "Parent" : "152"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_10_V_V_U", "Parent" : "152"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c58_U", "Parent" : "152"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c59_U", "Parent" : "152"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_11_V_V_U", "Parent" : "152"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c60_U", "Parent" : "152"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c61_U", "Parent" : "152"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_12_V_V_U", "Parent" : "152"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c62_U", "Parent" : "152"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c63_U", "Parent" : "152"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_13_V_V_U", "Parent" : "152"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c64_U", "Parent" : "152"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c65_U", "Parent" : "152"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_14_V_V_U", "Parent" : "152"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c66_U", "Parent" : "152"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c67_U", "Parent" : "152"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_15_V_V_U", "Parent" : "152"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c68_U", "Parent" : "152"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c69_U", "Parent" : "152"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_33s_32s_54_1_1_U587", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_32_1_1_U588", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_10ns_9ns_19_4_1_U589", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_10ns_9ns_19_4_1_U590", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		d_out {Type I LastRead 0 FirstWrite -1}}}

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
	mlp_eps_V { ap_memory {  { mlp_eps_V_address0 mem_address 1 3 }  { mlp_eps_V_ce0 mem_ce 1 1 }  { mlp_eps_V_q0 mem_dout 0 32 } } }
	node_embedding_V { ap_memory {  { node_embedding_V_address0 mem_address 1 19 }  { node_embedding_V_ce0 mem_ce 1 1 }  { node_embedding_V_q0 mem_dout 0 32 }  { node_embedding_V_address1 MemPortADDR2 1 19 }  { node_embedding_V_ce1 MemPortCE2 1 1 }  { node_embedding_V_we1 MemPortWE2 1 1 }  { node_embedding_V_d1 MemPortDIN2 1 32 } } }
	message_V { ap_memory {  { message_V_address0 mem_address 1 19 }  { message_V_ce0 mem_ce 1 1 }  { message_V_q0 mem_dout 0 32 } } }
	mlp_1_weights_V { ap_memory {  { mlp_1_weights_V_address0 mem_address 1 18 }  { mlp_1_weights_V_ce0 mem_ce 1 1 }  { mlp_1_weights_V_q0 mem_dout 0 32 } } }
	mlp_1_bias_V { ap_memory {  { mlp_1_bias_V_address0 mem_address 1 10 }  { mlp_1_bias_V_ce0 mem_ce 1 1 }  { mlp_1_bias_V_q0 mem_dout 0 32 } } }
	mlp_2_weights_V { ap_memory {  { mlp_2_weights_V_address0 mem_address 1 18 }  { mlp_2_weights_V_ce0 mem_ce 1 1 }  { mlp_2_weights_V_q0 mem_dout 0 32 } } }
	mlp_2_bias_V { ap_memory {  { mlp_2_bias_V_address0 mem_address 1 9 }  { mlp_2_bias_V_ce0 mem_ce 1 1 }  { mlp_2_bias_V_q0 mem_dout 0 32 } } }
}
