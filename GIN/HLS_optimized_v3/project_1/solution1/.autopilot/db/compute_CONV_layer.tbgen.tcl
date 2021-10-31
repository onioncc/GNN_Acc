set moduleName compute_CONV_layer
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
set C_modelName {compute_CONV_layer}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer int 3 regular  }
	{ message2_V int 32 regular {array 20000 { 1 0 } 1 1 } {global 2}  }
	{ node_embedding_V int 32 regular {array 20000 { 1 0 } 1 1 } {global 2}  }
	{ message1_V int 32 regular {array 20000 { 1 0 } 1 1 } {global 2}  }
	{ degree_table int 32 regular {array 600 { 1 1 } 1 1 } {global 0}  }
	{ neighbor_table int 8 regular {array 8000 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "layer", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "message2_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "message2.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 0,"up" : 99,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 0,"up" : 99,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "message1_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "message1.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 0,"up" : 99,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "degree_table","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "neighbor_table", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "neighbor_table","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7999,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer sc_in sc_lv 3 signal 0 } 
	{ message2_V_address0 sc_out sc_lv 15 signal 1 } 
	{ message2_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ message2_V_q0 sc_in sc_lv 32 signal 1 } 
	{ message2_V_address1 sc_out sc_lv 15 signal 1 } 
	{ message2_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ message2_V_we1 sc_out sc_logic 1 signal 1 } 
	{ message2_V_d1 sc_out sc_lv 32 signal 1 } 
	{ node_embedding_V_address0 sc_out sc_lv 15 signal 2 } 
	{ node_embedding_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ node_embedding_V_q0 sc_in sc_lv 32 signal 2 } 
	{ node_embedding_V_address1 sc_out sc_lv 15 signal 2 } 
	{ node_embedding_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ node_embedding_V_we1 sc_out sc_logic 1 signal 2 } 
	{ node_embedding_V_d1 sc_out sc_lv 32 signal 2 } 
	{ message1_V_address0 sc_out sc_lv 15 signal 3 } 
	{ message1_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ message1_V_q0 sc_in sc_lv 32 signal 3 } 
	{ message1_V_address1 sc_out sc_lv 15 signal 3 } 
	{ message1_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ message1_V_we1 sc_out sc_logic 1 signal 3 } 
	{ message1_V_d1 sc_out sc_lv 32 signal 3 } 
	{ degree_table_address0 sc_out sc_lv 10 signal 4 } 
	{ degree_table_ce0 sc_out sc_logic 1 signal 4 } 
	{ degree_table_q0 sc_in sc_lv 32 signal 4 } 
	{ degree_table_address1 sc_out sc_lv 10 signal 4 } 
	{ degree_table_ce1 sc_out sc_logic 1 signal 4 } 
	{ degree_table_q1 sc_in sc_lv 32 signal 4 } 
	{ neighbor_table_address0 sc_out sc_lv 13 signal 5 } 
	{ neighbor_table_ce0 sc_out sc_logic 1 signal 5 } 
	{ neighbor_table_q0 sc_in sc_lv 8 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer", "role": "default" }} , 
 	{ "name": "message2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "message2_V", "role": "address0" }} , 
 	{ "name": "message2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message2_V", "role": "ce0" }} , 
 	{ "name": "message2_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "message2_V", "role": "q0" }} , 
 	{ "name": "message2_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "message2_V", "role": "address1" }} , 
 	{ "name": "message2_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message2_V", "role": "ce1" }} , 
 	{ "name": "message2_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message2_V", "role": "we1" }} , 
 	{ "name": "message2_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "message2_V", "role": "d1" }} , 
 	{ "name": "node_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "address0" }} , 
 	{ "name": "node_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "q0" }} , 
 	{ "name": "node_embedding_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "address1" }} , 
 	{ "name": "node_embedding_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "we1" }} , 
 	{ "name": "node_embedding_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "d1" }} , 
 	{ "name": "message1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "message1_V", "role": "address0" }} , 
 	{ "name": "message1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message1_V", "role": "ce0" }} , 
 	{ "name": "message1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "message1_V", "role": "q0" }} , 
 	{ "name": "message1_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "message1_V", "role": "address1" }} , 
 	{ "name": "message1_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message1_V", "role": "ce1" }} , 
 	{ "name": "message1_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message1_V", "role": "we1" }} , 
 	{ "name": "message1_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "message1_V", "role": "d1" }} , 
 	{ "name": "degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "degree_table", "role": "address0" }} , 
 	{ "name": "degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "degree_table", "role": "ce0" }} , 
 	{ "name": "degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "degree_table", "role": "q0" }} , 
 	{ "name": "degree_table_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "degree_table", "role": "address1" }} , 
 	{ "name": "degree_table_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "degree_table", "role": "ce1" }} , 
 	{ "name": "degree_table_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "degree_table", "role": "q1" }} , 
 	{ "name": "neighbor_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "neighbor_table", "role": "address0" }} , 
 	{ "name": "neighbor_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "ce0" }} , 
 	{ "name": "neighbor_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "neighbor_table", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "10", "13"],
		"CDFG" : "compute_CONV_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2123", "EstimateLatencyMax" : "11649",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "message2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_clear_message_table_fu_3110", "Port" : "message_tb"},
					{"ID" : "3", "SubInstance" : "grp_MLP_wrapper_fu_2680", "Port" : "message_tb"},
					{"ID" : "10", "SubInstance" : "grp_message_passing_one_node_vec_fu_3096", "Port" : "message_tb"}]},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_MLP_wrapper_fu_2680", "Port" : "node_embedding_V"}]},
			{"Name" : "message1_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_clear_message_table_fu_3110", "Port" : "message_tb"},
					{"ID" : "3", "SubInstance" : "grp_MLP_wrapper_fu_2680", "Port" : "message_tb"},
					{"ID" : "10", "SubInstance" : "grp_message_passing_one_node_vec_fu_3096", "Port" : "message_tb"}]},
			{"Name" : "degree_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_message_passing_one_node_vec_fu_3096", "Port" : "degree_table"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_message_passing_one_node_vec_fu_3096", "Port" : "neighbor_table"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.emb_vec1_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.emb_vec2_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_MLP_wrapper_fu_2680", "Parent" : "0", "Child" : ["4", "6", "7"],
		"CDFG" : "MLP_wrapper",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "207", "EstimateLatencyMax" : "207",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_in_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in1214_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in16_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in17_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in18_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in19_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in20_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in21_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in22_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in23_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in2427_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in25_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in26_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in27_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in28_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in29_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in30_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in31_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in32_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in33_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in34_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in3539_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in36_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in37_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in38_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in39_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in40_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in41_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in42_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in43_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in44_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in45_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in4651_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in47_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in48_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in49_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in50_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in51_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in52_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in53_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in54_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in55_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in56_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in5763_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in58_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in59_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in60_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in61_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in62_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in63_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in64_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in65_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in66_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in67_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in6875_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in69_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in70_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in71_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in72_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in73_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in74_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in75_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in76_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in77_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in78_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in7987_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in80_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in81_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in82_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in83_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in84_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in85_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in86_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in87_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in88_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in89_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in90_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in91_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in92_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in93_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in94_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in95_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in96_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in97_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in98_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in99_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out100_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out101_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out102_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out103_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out104_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out105_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out106_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out107_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out108_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out109_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out110_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out111_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out112_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out113_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out114_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out115_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out116_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out117_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out118_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out119_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out120_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out121_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out122_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out123_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out124_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out125_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out126_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out127_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out128_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out129_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out130_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out131_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out132_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out133_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out134_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out135_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out136_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out137_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out138_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out139_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out140_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out141_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out142_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out143_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out144_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out145_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out146_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out147_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out148_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out149_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out150_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out151_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out152_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out153_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out154_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out155_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out156_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out157_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out158_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out159_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out160_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out161_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out162_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out163_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out164_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out165_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out166_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out167_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out168_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out169_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out170_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out171_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out172_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out173_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out174_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out175_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out176_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out177_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out178_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out179_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out180_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out181_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out182_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out183_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out184_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out185_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out186_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out187_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out188_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out189_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out190_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out191_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out192_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out193_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out194_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out195_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out196_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out197_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out198_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "nd", "Type" : "None", "Direction" : "I"},
			{"Name" : "emb_vec", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_update_node_embedding_with_Relu_fu_2058", "Port" : "emb_vec"}]},
			{"Name" : "message_tb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_prepare_mlp_in_fu_1644", "Port" : "message_tb"}]},
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_prepare_mlp_in_fu_1644", "Port" : "node_embedding_V"},
					{"ID" : "7", "SubInstance" : "grp_update_node_embedding_with_Relu_fu_2058", "Port" : "node_embedding_V"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_wrapper_fu_2680.grp_prepare_mlp_in_fu_1644", "Parent" : "3", "Child" : ["5"],
		"CDFG" : "prepare_mlp_in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read64", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read65", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read66", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read67", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read68", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read69", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read70", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read71", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read72", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read73", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read74", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read75", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read76", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read77", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read78", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read79", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read80", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read81", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read82", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read83", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read84", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read85", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read86", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read87", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read88", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read89", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read90", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read91", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read92", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read93", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read94", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read95", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read96", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read97", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read98", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read99", "Type" : "None", "Direction" : "I"},
			{"Name" : "nd", "Type" : "None", "Direction" : "I"},
			{"Name" : "message_tb", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_wrapper_fu_2680.grp_prepare_mlp_in_fu_1644.mul_5ns_8ns_12_1_1_U34", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_wrapper_fu_2680.grp_prepare_mlp_out_fu_1854", "Parent" : "3",
		"CDFG" : "prepare_mlp_out",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read64", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read65", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read66", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read67", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read68", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read69", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read70", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read71", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read72", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read73", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read74", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read75", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read76", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read77", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read78", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read79", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read80", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read81", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read82", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read83", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read84", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read85", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read86", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read87", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read88", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read89", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read90", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read91", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read92", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read93", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read94", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read95", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read96", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read97", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read98", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read99", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_MLP_wrapper_fu_2680.grp_update_node_embedding_with_Relu_fu_2058", "Parent" : "3", "Child" : ["8", "9"],
		"CDFG" : "update_node_embedding_with_Relu",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read64", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read65", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read66", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read67", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read68", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read69", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read70", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read71", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read72", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read73", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read74", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read75", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read76", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read77", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read78", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read79", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read80", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read81", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read82", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read83", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read84", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read85", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read86", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read87", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read88", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read89", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read90", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read91", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read92", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read93", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read94", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read95", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read96", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read97", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read98", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read99", "Type" : "None", "Direction" : "I"},
			{"Name" : "emb_vec", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nd", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_wrapper_fu_2680.grp_update_node_embedding_with_Relu_fu_2058.mul_5ns_8ns_12_1_1_U238", "Parent" : "7"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_MLP_wrapper_fu_2680.grp_update_node_embedding_with_Relu_fu_2058.mux_1007_32_1_1_U239", "Parent" : "7"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_message_passing_one_node_vec_fu_3096", "Parent" : "0", "Child" : ["11", "12"],
		"CDFG" : "message_passing_one_node_vec",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "107", "EstimateLatencyMax" : "507",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "emb_vec", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nd_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "message_tb", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "degree_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_message_passing_one_node_vec_fu_3096.mul_32ns_8ns_39_1_1_U20", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_message_passing_one_node_vec_fu_3096.mac_muladd_8ns_8ns_7ns_15_4_1_U21", "Parent" : "10"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_clear_message_table_fu_3110", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "clear_message_table",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1977", "EstimateLatencyMax" : "1977",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "message_tb", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "grp_clear_message_table_one_node_fu_38", "Port" : "message_tb"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clear_message_table_fu_3110.grp_clear_message_table_one_node_fu_38", "Parent" : "13", "Child" : ["15"],
		"CDFG" : "clear_message_table_one_node",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "message_tb", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "message_tb_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_clear_message_table_fu_3110.grp_clear_message_table_one_node_fu_38.mul_5ns_8ns_12_1_1_U11", "Parent" : "14"}]}


set ArgLastReadFirstWriteLatency {
	compute_CONV_layer {
		layer {Type I LastRead 0 FirstWrite -1}
		message2_V {Type IO LastRead 6 FirstWrite -1}
		node_embedding_V {Type IO LastRead 1 FirstWrite -1}
		message1_V {Type IO LastRead 6 FirstWrite -1}
		degree_table {Type I LastRead 1 FirstWrite -1}
		neighbor_table {Type I LastRead 2 FirstWrite -1}}
	MLP_wrapper {
		mlp_in_read {Type I LastRead 0 FirstWrite -1}
		mlp_in12_read {Type I LastRead 0 FirstWrite -1}
		mlp_in2_read {Type I LastRead 0 FirstWrite -1}
		mlp_in3_read {Type I LastRead 0 FirstWrite -1}
		mlp_in4_read {Type I LastRead 0 FirstWrite -1}
		mlp_in5_read {Type I LastRead 0 FirstWrite -1}
		mlp_in6_read {Type I LastRead 0 FirstWrite -1}
		mlp_in7_read {Type I LastRead 0 FirstWrite -1}
		mlp_in8_read {Type I LastRead 0 FirstWrite -1}
		mlp_in9_read {Type I LastRead 0 FirstWrite -1}
		mlp_in10_read {Type I LastRead 0 FirstWrite -1}
		mlp_in11_read {Type I LastRead 0 FirstWrite -1}
		mlp_in1214_read {Type I LastRead 0 FirstWrite -1}
		mlp_in13_read {Type I LastRead 0 FirstWrite -1}
		mlp_in14_read {Type I LastRead 0 FirstWrite -1}
		mlp_in15_read {Type I LastRead 0 FirstWrite -1}
		mlp_in16_read {Type I LastRead 0 FirstWrite -1}
		mlp_in17_read {Type I LastRead 0 FirstWrite -1}
		mlp_in18_read {Type I LastRead 0 FirstWrite -1}
		mlp_in19_read {Type I LastRead 0 FirstWrite -1}
		mlp_in20_read {Type I LastRead 0 FirstWrite -1}
		mlp_in21_read {Type I LastRead 0 FirstWrite -1}
		mlp_in22_read {Type I LastRead 0 FirstWrite -1}
		mlp_in23_read {Type I LastRead 0 FirstWrite -1}
		mlp_in2427_read {Type I LastRead 0 FirstWrite -1}
		mlp_in25_read {Type I LastRead 0 FirstWrite -1}
		mlp_in26_read {Type I LastRead 0 FirstWrite -1}
		mlp_in27_read {Type I LastRead 0 FirstWrite -1}
		mlp_in28_read {Type I LastRead 0 FirstWrite -1}
		mlp_in29_read {Type I LastRead 0 FirstWrite -1}
		mlp_in30_read {Type I LastRead 0 FirstWrite -1}
		mlp_in31_read {Type I LastRead 0 FirstWrite -1}
		mlp_in32_read {Type I LastRead 0 FirstWrite -1}
		mlp_in33_read {Type I LastRead 0 FirstWrite -1}
		mlp_in34_read {Type I LastRead 0 FirstWrite -1}
		mlp_in3539_read {Type I LastRead 0 FirstWrite -1}
		mlp_in36_read {Type I LastRead 0 FirstWrite -1}
		mlp_in37_read {Type I LastRead 0 FirstWrite -1}
		mlp_in38_read {Type I LastRead 0 FirstWrite -1}
		mlp_in39_read {Type I LastRead 0 FirstWrite -1}
		mlp_in40_read {Type I LastRead 0 FirstWrite -1}
		mlp_in41_read {Type I LastRead 0 FirstWrite -1}
		mlp_in42_read {Type I LastRead 0 FirstWrite -1}
		mlp_in43_read {Type I LastRead 0 FirstWrite -1}
		mlp_in44_read {Type I LastRead 0 FirstWrite -1}
		mlp_in45_read {Type I LastRead 0 FirstWrite -1}
		mlp_in4651_read {Type I LastRead 0 FirstWrite -1}
		mlp_in47_read {Type I LastRead 0 FirstWrite -1}
		mlp_in48_read {Type I LastRead 0 FirstWrite -1}
		mlp_in49_read {Type I LastRead 0 FirstWrite -1}
		mlp_in50_read {Type I LastRead 0 FirstWrite -1}
		mlp_in51_read {Type I LastRead 0 FirstWrite -1}
		mlp_in52_read {Type I LastRead 0 FirstWrite -1}
		mlp_in53_read {Type I LastRead 0 FirstWrite -1}
		mlp_in54_read {Type I LastRead 0 FirstWrite -1}
		mlp_in55_read {Type I LastRead 0 FirstWrite -1}
		mlp_in56_read {Type I LastRead 0 FirstWrite -1}
		mlp_in5763_read {Type I LastRead 0 FirstWrite -1}
		mlp_in58_read {Type I LastRead 0 FirstWrite -1}
		mlp_in59_read {Type I LastRead 0 FirstWrite -1}
		mlp_in60_read {Type I LastRead 0 FirstWrite -1}
		mlp_in61_read {Type I LastRead 0 FirstWrite -1}
		mlp_in62_read {Type I LastRead 0 FirstWrite -1}
		mlp_in63_read {Type I LastRead 0 FirstWrite -1}
		mlp_in64_read {Type I LastRead 0 FirstWrite -1}
		mlp_in65_read {Type I LastRead 0 FirstWrite -1}
		mlp_in66_read {Type I LastRead 0 FirstWrite -1}
		mlp_in67_read {Type I LastRead 0 FirstWrite -1}
		mlp_in6875_read {Type I LastRead 0 FirstWrite -1}
		mlp_in69_read {Type I LastRead 0 FirstWrite -1}
		mlp_in70_read {Type I LastRead 0 FirstWrite -1}
		mlp_in71_read {Type I LastRead 0 FirstWrite -1}
		mlp_in72_read {Type I LastRead 0 FirstWrite -1}
		mlp_in73_read {Type I LastRead 0 FirstWrite -1}
		mlp_in74_read {Type I LastRead 0 FirstWrite -1}
		mlp_in75_read {Type I LastRead 0 FirstWrite -1}
		mlp_in76_read {Type I LastRead 0 FirstWrite -1}
		mlp_in77_read {Type I LastRead 0 FirstWrite -1}
		mlp_in78_read {Type I LastRead 0 FirstWrite -1}
		mlp_in7987_read {Type I LastRead 0 FirstWrite -1}
		mlp_in80_read {Type I LastRead 0 FirstWrite -1}
		mlp_in81_read {Type I LastRead 0 FirstWrite -1}
		mlp_in82_read {Type I LastRead 0 FirstWrite -1}
		mlp_in83_read {Type I LastRead 0 FirstWrite -1}
		mlp_in84_read {Type I LastRead 0 FirstWrite -1}
		mlp_in85_read {Type I LastRead 0 FirstWrite -1}
		mlp_in86_read {Type I LastRead 0 FirstWrite -1}
		mlp_in87_read {Type I LastRead 0 FirstWrite -1}
		mlp_in88_read {Type I LastRead 0 FirstWrite -1}
		mlp_in89_read {Type I LastRead 0 FirstWrite -1}
		mlp_in90_read {Type I LastRead 0 FirstWrite -1}
		mlp_in91_read {Type I LastRead 0 FirstWrite -1}
		mlp_in92_read {Type I LastRead 0 FirstWrite -1}
		mlp_in93_read {Type I LastRead 0 FirstWrite -1}
		mlp_in94_read {Type I LastRead 0 FirstWrite -1}
		mlp_in95_read {Type I LastRead 0 FirstWrite -1}
		mlp_in96_read {Type I LastRead 0 FirstWrite -1}
		mlp_in97_read {Type I LastRead 0 FirstWrite -1}
		mlp_in98_read {Type I LastRead 0 FirstWrite -1}
		mlp_in99_read {Type I LastRead 0 FirstWrite -1}
		mlp_out_read {Type I LastRead 0 FirstWrite -1}
		mlp_out100_read {Type I LastRead 0 FirstWrite -1}
		mlp_out101_read {Type I LastRead 0 FirstWrite -1}
		mlp_out102_read {Type I LastRead 0 FirstWrite -1}
		mlp_out103_read {Type I LastRead 0 FirstWrite -1}
		mlp_out104_read {Type I LastRead 0 FirstWrite -1}
		mlp_out105_read {Type I LastRead 0 FirstWrite -1}
		mlp_out106_read {Type I LastRead 0 FirstWrite -1}
		mlp_out107_read {Type I LastRead 0 FirstWrite -1}
		mlp_out108_read {Type I LastRead 0 FirstWrite -1}
		mlp_out109_read {Type I LastRead 0 FirstWrite -1}
		mlp_out110_read {Type I LastRead 0 FirstWrite -1}
		mlp_out111_read {Type I LastRead 0 FirstWrite -1}
		mlp_out112_read {Type I LastRead 0 FirstWrite -1}
		mlp_out113_read {Type I LastRead 0 FirstWrite -1}
		mlp_out114_read {Type I LastRead 0 FirstWrite -1}
		mlp_out115_read {Type I LastRead 0 FirstWrite -1}
		mlp_out116_read {Type I LastRead 0 FirstWrite -1}
		mlp_out117_read {Type I LastRead 0 FirstWrite -1}
		mlp_out118_read {Type I LastRead 0 FirstWrite -1}
		mlp_out119_read {Type I LastRead 0 FirstWrite -1}
		mlp_out120_read {Type I LastRead 0 FirstWrite -1}
		mlp_out121_read {Type I LastRead 0 FirstWrite -1}
		mlp_out122_read {Type I LastRead 0 FirstWrite -1}
		mlp_out123_read {Type I LastRead 0 FirstWrite -1}
		mlp_out124_read {Type I LastRead 0 FirstWrite -1}
		mlp_out125_read {Type I LastRead 0 FirstWrite -1}
		mlp_out126_read {Type I LastRead 0 FirstWrite -1}
		mlp_out127_read {Type I LastRead 0 FirstWrite -1}
		mlp_out128_read {Type I LastRead 0 FirstWrite -1}
		mlp_out129_read {Type I LastRead 0 FirstWrite -1}
		mlp_out130_read {Type I LastRead 0 FirstWrite -1}
		mlp_out131_read {Type I LastRead 0 FirstWrite -1}
		mlp_out132_read {Type I LastRead 0 FirstWrite -1}
		mlp_out133_read {Type I LastRead 0 FirstWrite -1}
		mlp_out134_read {Type I LastRead 0 FirstWrite -1}
		mlp_out135_read {Type I LastRead 0 FirstWrite -1}
		mlp_out136_read {Type I LastRead 0 FirstWrite -1}
		mlp_out137_read {Type I LastRead 0 FirstWrite -1}
		mlp_out138_read {Type I LastRead 0 FirstWrite -1}
		mlp_out139_read {Type I LastRead 0 FirstWrite -1}
		mlp_out140_read {Type I LastRead 0 FirstWrite -1}
		mlp_out141_read {Type I LastRead 0 FirstWrite -1}
		mlp_out142_read {Type I LastRead 0 FirstWrite -1}
		mlp_out143_read {Type I LastRead 0 FirstWrite -1}
		mlp_out144_read {Type I LastRead 0 FirstWrite -1}
		mlp_out145_read {Type I LastRead 0 FirstWrite -1}
		mlp_out146_read {Type I LastRead 0 FirstWrite -1}
		mlp_out147_read {Type I LastRead 0 FirstWrite -1}
		mlp_out148_read {Type I LastRead 0 FirstWrite -1}
		mlp_out149_read {Type I LastRead 0 FirstWrite -1}
		mlp_out150_read {Type I LastRead 0 FirstWrite -1}
		mlp_out151_read {Type I LastRead 0 FirstWrite -1}
		mlp_out152_read {Type I LastRead 0 FirstWrite -1}
		mlp_out153_read {Type I LastRead 0 FirstWrite -1}
		mlp_out154_read {Type I LastRead 0 FirstWrite -1}
		mlp_out155_read {Type I LastRead 0 FirstWrite -1}
		mlp_out156_read {Type I LastRead 0 FirstWrite -1}
		mlp_out157_read {Type I LastRead 0 FirstWrite -1}
		mlp_out158_read {Type I LastRead 0 FirstWrite -1}
		mlp_out159_read {Type I LastRead 0 FirstWrite -1}
		mlp_out160_read {Type I LastRead 0 FirstWrite -1}
		mlp_out161_read {Type I LastRead 0 FirstWrite -1}
		mlp_out162_read {Type I LastRead 0 FirstWrite -1}
		mlp_out163_read {Type I LastRead 0 FirstWrite -1}
		mlp_out164_read {Type I LastRead 0 FirstWrite -1}
		mlp_out165_read {Type I LastRead 0 FirstWrite -1}
		mlp_out166_read {Type I LastRead 0 FirstWrite -1}
		mlp_out167_read {Type I LastRead 0 FirstWrite -1}
		mlp_out168_read {Type I LastRead 0 FirstWrite -1}
		mlp_out169_read {Type I LastRead 0 FirstWrite -1}
		mlp_out170_read {Type I LastRead 0 FirstWrite -1}
		mlp_out171_read {Type I LastRead 0 FirstWrite -1}
		mlp_out172_read {Type I LastRead 0 FirstWrite -1}
		mlp_out173_read {Type I LastRead 0 FirstWrite -1}
		mlp_out174_read {Type I LastRead 0 FirstWrite -1}
		mlp_out175_read {Type I LastRead 0 FirstWrite -1}
		mlp_out176_read {Type I LastRead 0 FirstWrite -1}
		mlp_out177_read {Type I LastRead 0 FirstWrite -1}
		mlp_out178_read {Type I LastRead 0 FirstWrite -1}
		mlp_out179_read {Type I LastRead 0 FirstWrite -1}
		mlp_out180_read {Type I LastRead 0 FirstWrite -1}
		mlp_out181_read {Type I LastRead 0 FirstWrite -1}
		mlp_out182_read {Type I LastRead 0 FirstWrite -1}
		mlp_out183_read {Type I LastRead 0 FirstWrite -1}
		mlp_out184_read {Type I LastRead 0 FirstWrite -1}
		mlp_out185_read {Type I LastRead 0 FirstWrite -1}
		mlp_out186_read {Type I LastRead 0 FirstWrite -1}
		mlp_out187_read {Type I LastRead 0 FirstWrite -1}
		mlp_out188_read {Type I LastRead 0 FirstWrite -1}
		mlp_out189_read {Type I LastRead 0 FirstWrite -1}
		mlp_out190_read {Type I LastRead 0 FirstWrite -1}
		mlp_out191_read {Type I LastRead 0 FirstWrite -1}
		mlp_out192_read {Type I LastRead 0 FirstWrite -1}
		mlp_out193_read {Type I LastRead 0 FirstWrite -1}
		mlp_out194_read {Type I LastRead 0 FirstWrite -1}
		mlp_out195_read {Type I LastRead 0 FirstWrite -1}
		mlp_out196_read {Type I LastRead 0 FirstWrite -1}
		mlp_out197_read {Type I LastRead 0 FirstWrite -1}
		mlp_out198_read {Type I LastRead 0 FirstWrite -1}
		nd {Type I LastRead 0 FirstWrite -1}
		emb_vec {Type O LastRead -1 FirstWrite 1}
		message_tb {Type I LastRead 1 FirstWrite -1}
		layer {Type I LastRead 2 FirstWrite -1}
		node_embedding_V {Type IO LastRead 1 FirstWrite -1}}
	prepare_mlp_in {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		p_read52 {Type I LastRead 0 FirstWrite -1}
		p_read53 {Type I LastRead 0 FirstWrite -1}
		p_read54 {Type I LastRead 0 FirstWrite -1}
		p_read55 {Type I LastRead 0 FirstWrite -1}
		p_read56 {Type I LastRead 0 FirstWrite -1}
		p_read57 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read59 {Type I LastRead 0 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}
		p_read62 {Type I LastRead 0 FirstWrite -1}
		p_read63 {Type I LastRead 0 FirstWrite -1}
		p_read64 {Type I LastRead 0 FirstWrite -1}
		p_read65 {Type I LastRead 0 FirstWrite -1}
		p_read66 {Type I LastRead 0 FirstWrite -1}
		p_read67 {Type I LastRead 0 FirstWrite -1}
		p_read68 {Type I LastRead 0 FirstWrite -1}
		p_read69 {Type I LastRead 0 FirstWrite -1}
		p_read70 {Type I LastRead 0 FirstWrite -1}
		p_read71 {Type I LastRead 0 FirstWrite -1}
		p_read72 {Type I LastRead 0 FirstWrite -1}
		p_read73 {Type I LastRead 0 FirstWrite -1}
		p_read74 {Type I LastRead 0 FirstWrite -1}
		p_read75 {Type I LastRead 0 FirstWrite -1}
		p_read76 {Type I LastRead 0 FirstWrite -1}
		p_read77 {Type I LastRead 0 FirstWrite -1}
		p_read78 {Type I LastRead 0 FirstWrite -1}
		p_read79 {Type I LastRead 0 FirstWrite -1}
		p_read80 {Type I LastRead 0 FirstWrite -1}
		p_read81 {Type I LastRead 0 FirstWrite -1}
		p_read82 {Type I LastRead 0 FirstWrite -1}
		p_read83 {Type I LastRead 0 FirstWrite -1}
		p_read84 {Type I LastRead 0 FirstWrite -1}
		p_read85 {Type I LastRead 0 FirstWrite -1}
		p_read86 {Type I LastRead 0 FirstWrite -1}
		p_read87 {Type I LastRead 0 FirstWrite -1}
		p_read88 {Type I LastRead 0 FirstWrite -1}
		p_read89 {Type I LastRead 0 FirstWrite -1}
		p_read90 {Type I LastRead 0 FirstWrite -1}
		p_read91 {Type I LastRead 0 FirstWrite -1}
		p_read92 {Type I LastRead 0 FirstWrite -1}
		p_read93 {Type I LastRead 0 FirstWrite -1}
		p_read94 {Type I LastRead 0 FirstWrite -1}
		p_read95 {Type I LastRead 0 FirstWrite -1}
		p_read96 {Type I LastRead 0 FirstWrite -1}
		p_read97 {Type I LastRead 0 FirstWrite -1}
		p_read98 {Type I LastRead 0 FirstWrite -1}
		p_read99 {Type I LastRead 0 FirstWrite -1}
		nd {Type I LastRead 0 FirstWrite -1}
		message_tb {Type I LastRead 1 FirstWrite -1}
		node_embedding_V {Type I LastRead 1 FirstWrite -1}}
	prepare_mlp_out {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		p_read52 {Type I LastRead 0 FirstWrite -1}
		p_read53 {Type I LastRead 0 FirstWrite -1}
		p_read54 {Type I LastRead 0 FirstWrite -1}
		p_read55 {Type I LastRead 0 FirstWrite -1}
		p_read56 {Type I LastRead 0 FirstWrite -1}
		p_read57 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read59 {Type I LastRead 0 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}
		p_read62 {Type I LastRead 0 FirstWrite -1}
		p_read63 {Type I LastRead 0 FirstWrite -1}
		p_read64 {Type I LastRead 0 FirstWrite -1}
		p_read65 {Type I LastRead 0 FirstWrite -1}
		p_read66 {Type I LastRead 0 FirstWrite -1}
		p_read67 {Type I LastRead 0 FirstWrite -1}
		p_read68 {Type I LastRead 0 FirstWrite -1}
		p_read69 {Type I LastRead 0 FirstWrite -1}
		p_read70 {Type I LastRead 0 FirstWrite -1}
		p_read71 {Type I LastRead 0 FirstWrite -1}
		p_read72 {Type I LastRead 0 FirstWrite -1}
		p_read73 {Type I LastRead 0 FirstWrite -1}
		p_read74 {Type I LastRead 0 FirstWrite -1}
		p_read75 {Type I LastRead 0 FirstWrite -1}
		p_read76 {Type I LastRead 0 FirstWrite -1}
		p_read77 {Type I LastRead 0 FirstWrite -1}
		p_read78 {Type I LastRead 0 FirstWrite -1}
		p_read79 {Type I LastRead 0 FirstWrite -1}
		p_read80 {Type I LastRead 0 FirstWrite -1}
		p_read81 {Type I LastRead 0 FirstWrite -1}
		p_read82 {Type I LastRead 0 FirstWrite -1}
		p_read83 {Type I LastRead 0 FirstWrite -1}
		p_read84 {Type I LastRead 0 FirstWrite -1}
		p_read85 {Type I LastRead 0 FirstWrite -1}
		p_read86 {Type I LastRead 0 FirstWrite -1}
		p_read87 {Type I LastRead 0 FirstWrite -1}
		p_read88 {Type I LastRead 0 FirstWrite -1}
		p_read89 {Type I LastRead 0 FirstWrite -1}
		p_read90 {Type I LastRead 0 FirstWrite -1}
		p_read91 {Type I LastRead 0 FirstWrite -1}
		p_read92 {Type I LastRead 0 FirstWrite -1}
		p_read93 {Type I LastRead 0 FirstWrite -1}
		p_read94 {Type I LastRead 0 FirstWrite -1}
		p_read95 {Type I LastRead 0 FirstWrite -1}
		p_read96 {Type I LastRead 0 FirstWrite -1}
		p_read97 {Type I LastRead 0 FirstWrite -1}
		p_read98 {Type I LastRead 0 FirstWrite -1}
		p_read99 {Type I LastRead 0 FirstWrite -1}}
	update_node_embedding_with_Relu {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		p_read52 {Type I LastRead 0 FirstWrite -1}
		p_read53 {Type I LastRead 0 FirstWrite -1}
		p_read54 {Type I LastRead 0 FirstWrite -1}
		p_read55 {Type I LastRead 0 FirstWrite -1}
		p_read56 {Type I LastRead 0 FirstWrite -1}
		p_read57 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read59 {Type I LastRead 0 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}
		p_read62 {Type I LastRead 0 FirstWrite -1}
		p_read63 {Type I LastRead 0 FirstWrite -1}
		p_read64 {Type I LastRead 0 FirstWrite -1}
		p_read65 {Type I LastRead 0 FirstWrite -1}
		p_read66 {Type I LastRead 0 FirstWrite -1}
		p_read67 {Type I LastRead 0 FirstWrite -1}
		p_read68 {Type I LastRead 0 FirstWrite -1}
		p_read69 {Type I LastRead 0 FirstWrite -1}
		p_read70 {Type I LastRead 0 FirstWrite -1}
		p_read71 {Type I LastRead 0 FirstWrite -1}
		p_read72 {Type I LastRead 0 FirstWrite -1}
		p_read73 {Type I LastRead 0 FirstWrite -1}
		p_read74 {Type I LastRead 0 FirstWrite -1}
		p_read75 {Type I LastRead 0 FirstWrite -1}
		p_read76 {Type I LastRead 0 FirstWrite -1}
		p_read77 {Type I LastRead 0 FirstWrite -1}
		p_read78 {Type I LastRead 0 FirstWrite -1}
		p_read79 {Type I LastRead 0 FirstWrite -1}
		p_read80 {Type I LastRead 0 FirstWrite -1}
		p_read81 {Type I LastRead 0 FirstWrite -1}
		p_read82 {Type I LastRead 0 FirstWrite -1}
		p_read83 {Type I LastRead 0 FirstWrite -1}
		p_read84 {Type I LastRead 0 FirstWrite -1}
		p_read85 {Type I LastRead 0 FirstWrite -1}
		p_read86 {Type I LastRead 0 FirstWrite -1}
		p_read87 {Type I LastRead 0 FirstWrite -1}
		p_read88 {Type I LastRead 0 FirstWrite -1}
		p_read89 {Type I LastRead 0 FirstWrite -1}
		p_read90 {Type I LastRead 0 FirstWrite -1}
		p_read91 {Type I LastRead 0 FirstWrite -1}
		p_read92 {Type I LastRead 0 FirstWrite -1}
		p_read93 {Type I LastRead 0 FirstWrite -1}
		p_read94 {Type I LastRead 0 FirstWrite -1}
		p_read95 {Type I LastRead 0 FirstWrite -1}
		p_read96 {Type I LastRead 0 FirstWrite -1}
		p_read97 {Type I LastRead 0 FirstWrite -1}
		p_read98 {Type I LastRead 0 FirstWrite -1}
		p_read99 {Type I LastRead 0 FirstWrite -1}
		emb_vec {Type O LastRead -1 FirstWrite 1}
		nd {Type I LastRead 0 FirstWrite -1}
		layer {Type I LastRead 0 FirstWrite -1}
		node_embedding_V {Type O LastRead -1 FirstWrite 1}}
	message_passing_one_node_vec {
		emb_vec {Type I LastRead 6 FirstWrite -1}
		nd_offset {Type I LastRead 0 FirstWrite -1}
		message_tb {Type IO LastRead 6 FirstWrite 7}
		degree_table {Type I LastRead 1 FirstWrite -1}
		neighbor_table {Type I LastRead 2 FirstWrite -1}}
	clear_message_table {
		message_tb {Type O LastRead -1 FirstWrite 1}}
	clear_message_table_one_node {
		message_tb {Type O LastRead -1 FirstWrite 1}
		message_tb_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2123", "Max" : "11649"}
	, {"Name" : "Interval", "Min" : "2123", "Max" : "11649"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	layer { ap_none {  { layer in_data 0 3 } } }
	message2_V { ap_memory {  { message2_V_address0 mem_address 1 15 }  { message2_V_ce0 mem_ce 1 1 }  { message2_V_q0 mem_dout 0 32 }  { message2_V_address1 MemPortADDR2 1 15 }  { message2_V_ce1 MemPortCE2 1 1 }  { message2_V_we1 MemPortWE2 1 1 }  { message2_V_d1 MemPortDIN2 1 32 } } }
	node_embedding_V { ap_memory {  { node_embedding_V_address0 mem_address 1 15 }  { node_embedding_V_ce0 mem_ce 1 1 }  { node_embedding_V_q0 mem_dout 0 32 }  { node_embedding_V_address1 MemPortADDR2 1 15 }  { node_embedding_V_ce1 MemPortCE2 1 1 }  { node_embedding_V_we1 MemPortWE2 1 1 }  { node_embedding_V_d1 MemPortDIN2 1 32 } } }
	message1_V { ap_memory {  { message1_V_address0 mem_address 1 15 }  { message1_V_ce0 mem_ce 1 1 }  { message1_V_q0 mem_dout 0 32 }  { message1_V_address1 MemPortADDR2 1 15 }  { message1_V_ce1 MemPortCE2 1 1 }  { message1_V_we1 MemPortWE2 1 1 }  { message1_V_d1 MemPortDIN2 1 32 } } }
	degree_table { ap_memory {  { degree_table_address0 mem_address 1 10 }  { degree_table_ce0 mem_ce 1 1 }  { degree_table_q0 mem_dout 0 32 }  { degree_table_address1 MemPortADDR2 1 10 }  { degree_table_ce1 MemPortCE2 1 1 }  { degree_table_q1 MemPortDOUT2 0 32 } } }
	neighbor_table { ap_memory {  { neighbor_table_address0 mem_address 1 13 }  { neighbor_table_ce0 mem_ce 1 1 }  { neighbor_table_q0 mem_dout 0 8 } } }
}
