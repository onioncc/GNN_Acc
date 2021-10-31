set moduleName compute_node_embedding
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
set C_modelName {compute_node_embedding}
set C_modelType { void 0 }
set C_modelArgList {
	{ node_embedding_V int 32 regular {array 20000 { 3 0 } 0 1 } {global 1}  }
	{ degree_table int 32 regular {array 600 { 1 1 } 1 1 } {global 0}  }
	{ neighbor_table int 8 regular {array 8000 { 1 3 } 1 1 } {global 0}  }
	{ message1_V int 32 regular {array 20000 { 1 0 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "node_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 0,"up" : 99,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "degree_table","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "neighbor_table", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "neighbor_table","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7999,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "message1_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "message1.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 0,"up" : 99,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ node_embedding_V_address1 sc_out sc_lv 15 signal 0 } 
	{ node_embedding_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ node_embedding_V_we1 sc_out sc_logic 1 signal 0 } 
	{ node_embedding_V_d1 sc_out sc_lv 32 signal 0 } 
	{ degree_table_address0 sc_out sc_lv 10 signal 1 } 
	{ degree_table_ce0 sc_out sc_logic 1 signal 1 } 
	{ degree_table_q0 sc_in sc_lv 32 signal 1 } 
	{ degree_table_address1 sc_out sc_lv 10 signal 1 } 
	{ degree_table_ce1 sc_out sc_logic 1 signal 1 } 
	{ degree_table_q1 sc_in sc_lv 32 signal 1 } 
	{ neighbor_table_address0 sc_out sc_lv 13 signal 2 } 
	{ neighbor_table_ce0 sc_out sc_logic 1 signal 2 } 
	{ neighbor_table_q0 sc_in sc_lv 8 signal 2 } 
	{ message1_V_address0 sc_out sc_lv 15 signal 3 } 
	{ message1_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ message1_V_q0 sc_in sc_lv 32 signal 3 } 
	{ message1_V_address1 sc_out sc_lv 15 signal 3 } 
	{ message1_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ message1_V_we1 sc_out sc_logic 1 signal 3 } 
	{ message1_V_d1 sc_out sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "node_embedding_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "address1" }} , 
 	{ "name": "node_embedding_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "we1" }} , 
 	{ "name": "node_embedding_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "d1" }} , 
 	{ "name": "degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "degree_table", "role": "address0" }} , 
 	{ "name": "degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "degree_table", "role": "ce0" }} , 
 	{ "name": "degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "degree_table", "role": "q0" }} , 
 	{ "name": "degree_table_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "degree_table", "role": "address1" }} , 
 	{ "name": "degree_table_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "degree_table", "role": "ce1" }} , 
 	{ "name": "degree_table_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "degree_table", "role": "q1" }} , 
 	{ "name": "neighbor_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "neighbor_table", "role": "address0" }} , 
 	{ "name": "neighbor_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "ce0" }} , 
 	{ "name": "neighbor_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "neighbor_table", "role": "q0" }} , 
 	{ "name": "message1_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "message1_V", "role": "address0" }} , 
 	{ "name": "message1_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message1_V", "role": "ce0" }} , 
 	{ "name": "message1_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "message1_V", "role": "q0" }} , 
 	{ "name": "message1_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "message1_V", "role": "address1" }} , 
 	{ "name": "message1_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message1_V", "role": "ce1" }} , 
 	{ "name": "message1_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message1_V", "role": "we1" }} , 
 	{ "name": "message1_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "message1_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "6"],
		"CDFG" : "compute_node_embedding",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2174", "EstimateLatencyMax" : "9774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_one_node_embedding_fu_73", "Port" : "node_embedding_V"}]},
			{"Name" : "degree_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_message_passing_one_node_vec_fu_60", "Port" : "degree_table"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_message_passing_one_node_vec_fu_60", "Port" : "neighbor_table"}]},
			{"Name" : "message1_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_message_passing_one_node_vec_fu_60", "Port" : "message_tb"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.emb_vec1_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.emb_vec2_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_message_passing_one_node_vec_fu_60", "Parent" : "0", "Child" : ["4", "5"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_message_passing_one_node_vec_fu_60.mul_32ns_8ns_39_1_1_U20", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_message_passing_one_node_vec_fu_60.mac_muladd_8ns_8ns_7ns_15_4_1_U21", "Parent" : "3"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_one_node_embedding_fu_73", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "one_node_embedding",
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
			{"Name" : "nd", "Type" : "None", "Direction" : "I"},
			{"Name" : "emb_vec", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_one_node_embedding_fu_73.mul_5ns_8ns_12_1_1_U16", "Parent" : "6"}]}


set ArgLastReadFirstWriteLatency {
	compute_node_embedding {
		node_embedding_V {Type O LastRead -1 FirstWrite 1}
		degree_table {Type I LastRead 1 FirstWrite -1}
		neighbor_table {Type I LastRead 2 FirstWrite -1}
		message1_V {Type IO LastRead 6 FirstWrite 7}}
	message_passing_one_node_vec {
		emb_vec {Type I LastRead 6 FirstWrite -1}
		nd_offset {Type I LastRead 0 FirstWrite -1}
		message_tb {Type IO LastRead 6 FirstWrite 7}
		degree_table {Type I LastRead 1 FirstWrite -1}
		neighbor_table {Type I LastRead 2 FirstWrite -1}}
	one_node_embedding {
		nd {Type I LastRead 0 FirstWrite -1}
		emb_vec {Type O LastRead -1 FirstWrite 1}
		node_embedding_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2174", "Max" : "9774"}
	, {"Name" : "Interval", "Min" : "2174", "Max" : "9774"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	node_embedding_V { ap_memory {  { node_embedding_V_address1 MemPortADDR2 1 15 }  { node_embedding_V_ce1 MemPortCE2 1 1 }  { node_embedding_V_we1 MemPortWE2 1 1 }  { node_embedding_V_d1 MemPortDIN2 1 32 } } }
	degree_table { ap_memory {  { degree_table_address0 mem_address 1 10 }  { degree_table_ce0 mem_ce 1 1 }  { degree_table_q0 mem_dout 0 32 }  { degree_table_address1 MemPortADDR2 1 10 }  { degree_table_ce1 MemPortCE2 1 1 }  { degree_table_q1 MemPortDOUT2 0 32 } } }
	neighbor_table { ap_memory {  { neighbor_table_address0 mem_address 1 13 }  { neighbor_table_ce0 mem_ce 1 1 }  { neighbor_table_q0 mem_dout 0 8 } } }
	message1_V { ap_memory {  { message1_V_address0 mem_address 1 15 }  { message1_V_ce0 mem_ce 1 1 }  { message1_V_q0 mem_dout 0 32 }  { message1_V_address1 MemPortADDR2 1 15 }  { message1_V_ce1 MemPortCE2 1 1 }  { message1_V_we1 MemPortWE2 1 1 }  { message1_V_d1 MemPortDIN2 1 32 } } }
}
