set moduleName message_passing
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
set C_modelName {message_passing}
set C_modelType { void 0 }
set C_modelArgList {
	{ message_V int 32 regular {array 60000 { 1 0 } 1 1 } {global 2}  }
	{ edge_list int 32 regular {array 1000 { 1 1 } 1 1 } {global 0}  }
	{ edge_embedding_V int 32 regular {array 150000 { 1 3 } 1 1 } {global 0}  }
	{ node_embedding_V int 32 regular {array 60000 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "message_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "message.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_list","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 499,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ message_V_address0 sc_out sc_lv 16 signal 0 } 
	{ message_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ message_V_q0 sc_in sc_lv 32 signal 0 } 
	{ message_V_address1 sc_out sc_lv 16 signal 0 } 
	{ message_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ message_V_we1 sc_out sc_logic 1 signal 0 } 
	{ message_V_d1 sc_out sc_lv 32 signal 0 } 
	{ edge_list_address0 sc_out sc_lv 10 signal 1 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 1 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 1 } 
	{ edge_list_address1 sc_out sc_lv 10 signal 1 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 1 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 1 } 
	{ edge_embedding_V_address0 sc_out sc_lv 18 signal 2 } 
	{ edge_embedding_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ edge_embedding_V_q0 sc_in sc_lv 32 signal 2 } 
	{ node_embedding_V_address0 sc_out sc_lv 16 signal 3 } 
	{ node_embedding_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ node_embedding_V_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "message_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "message_V", "role": "address0" }} , 
 	{ "name": "message_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message_V", "role": "ce0" }} , 
 	{ "name": "message_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "message_V", "role": "q0" }} , 
 	{ "name": "message_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "message_V", "role": "address1" }} , 
 	{ "name": "message_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message_V", "role": "ce1" }} , 
 	{ "name": "message_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message_V", "role": "we1" }} , 
 	{ "name": "message_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "message_V", "role": "d1" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "edge_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "address0" }} , 
 	{ "name": "edge_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "ce0" }} , 
 	{ "name": "edge_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "q0" }} , 
 	{ "name": "node_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "address0" }} , 
 	{ "name": "node_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "message_passing",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17708", "EstimateLatencyMax" : "17708",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edge_embedding_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_6ns_10ns_9ns_15_4_1_U3940", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_10ns_9ns_16_4_1_U3941", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_10ns_9ns_16_4_1_U3942", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	message_passing {
		message_V {Type IO LastRead 7 FirstWrite 1}
		edge_list {Type I LastRead 4 FirstWrite -1}
		edge_embedding_V {Type I LastRead 7 FirstWrite -1}
		node_embedding_V {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17708", "Max" : "17708"}
	, {"Name" : "Interval", "Min" : "17708", "Max" : "17708"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	message_V { ap_memory {  { message_V_address0 mem_address 1 16 }  { message_V_ce0 mem_ce 1 1 }  { message_V_q0 mem_dout 0 32 }  { message_V_address1 MemPortADDR2 1 16 }  { message_V_ce1 MemPortCE2 1 1 }  { message_V_we1 MemPortWE2 1 1 }  { message_V_d1 MemPortDIN2 1 32 } } }
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 10 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 10 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	edge_embedding_V { ap_memory {  { edge_embedding_V_address0 mem_address 1 18 }  { edge_embedding_V_ce0 mem_ce 1 1 }  { edge_embedding_V_q0 mem_dout 0 32 } } }
	node_embedding_V { ap_memory {  { node_embedding_V_address0 mem_address 1 16 }  { node_embedding_V_ce0 mem_ce 1 1 }  { node_embedding_V_q0 mem_dout 0 32 } } }
}
set moduleName message_passing
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
set C_modelName {message_passing}
set C_modelType { void 0 }
set C_modelArgList {
	{ message_V int 32 regular {array 60000 { 1 0 } 1 1 } {global 2}  }
	{ edge_list int 32 regular {array 1000 { 1 1 } 1 1 } {global 0}  }
	{ edge_embedding_V int 32 regular {array 150000 { 1 3 } 1 1 } {global 0}  }
	{ node_embedding_V int 32 regular {array 60000 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "message_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "message.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_list","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 499,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ message_V_address0 sc_out sc_lv 16 signal 0 } 
	{ message_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ message_V_q0 sc_in sc_lv 32 signal 0 } 
	{ message_V_address1 sc_out sc_lv 16 signal 0 } 
	{ message_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ message_V_we1 sc_out sc_logic 1 signal 0 } 
	{ message_V_d1 sc_out sc_lv 32 signal 0 } 
	{ edge_list_address0 sc_out sc_lv 10 signal 1 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 1 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 1 } 
	{ edge_list_address1 sc_out sc_lv 10 signal 1 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 1 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 1 } 
	{ edge_embedding_V_address0 sc_out sc_lv 18 signal 2 } 
	{ edge_embedding_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ edge_embedding_V_q0 sc_in sc_lv 32 signal 2 } 
	{ node_embedding_V_address0 sc_out sc_lv 16 signal 3 } 
	{ node_embedding_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ node_embedding_V_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "message_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "message_V", "role": "address0" }} , 
 	{ "name": "message_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message_V", "role": "ce0" }} , 
 	{ "name": "message_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "message_V", "role": "q0" }} , 
 	{ "name": "message_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "message_V", "role": "address1" }} , 
 	{ "name": "message_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message_V", "role": "ce1" }} , 
 	{ "name": "message_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message_V", "role": "we1" }} , 
 	{ "name": "message_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "message_V", "role": "d1" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "edge_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "address0" }} , 
 	{ "name": "edge_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "ce0" }} , 
 	{ "name": "edge_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "q0" }} , 
 	{ "name": "node_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "address0" }} , 
 	{ "name": "node_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "message_passing",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17708", "EstimateLatencyMax" : "17708",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edge_embedding_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_6ns_10ns_9ns_15_4_1_U1556", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_10ns_9ns_16_4_1_U1557", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_10ns_9ns_16_4_1_U1558", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	message_passing {
		message_V {Type IO LastRead 7 FirstWrite 1}
		edge_list {Type I LastRead 4 FirstWrite -1}
		edge_embedding_V {Type I LastRead 7 FirstWrite -1}
		node_embedding_V {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17708", "Max" : "17708"}
	, {"Name" : "Interval", "Min" : "17708", "Max" : "17708"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	message_V { ap_memory {  { message_V_address0 mem_address 1 16 }  { message_V_ce0 mem_ce 1 1 }  { message_V_q0 mem_dout 0 32 }  { message_V_address1 MemPortADDR2 1 16 }  { message_V_ce1 MemPortCE2 1 1 }  { message_V_we1 MemPortWE2 1 1 }  { message_V_d1 MemPortDIN2 1 32 } } }
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 10 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 10 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	edge_embedding_V { ap_memory {  { edge_embedding_V_address0 mem_address 1 18 }  { edge_embedding_V_ce0 mem_ce 1 1 }  { edge_embedding_V_q0 mem_dout 0 32 } } }
	node_embedding_V { ap_memory {  { node_embedding_V_address0 mem_address 1 16 }  { node_embedding_V_ce0 mem_ce 1 1 }  { node_embedding_V_q0 mem_dout 0 32 } } }
}
set moduleName message_passing
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
set C_modelName {message_passing}
set C_modelType { void 0 }
set C_modelArgList {
	{ message_V int 32 regular {array 60000 { 1 0 } 1 1 } {global 2}  }
	{ edge_list int 32 regular {array 1000 { 1 1 } 1 1 } {global 0}  }
	{ edge_embedding_V int 32 regular {array 150000 { 1 3 } 1 1 } {global 0}  }
	{ node_embedding_V int 32 regular {array 60000 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "message_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "message.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_list","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 499,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ message_V_address0 sc_out sc_lv 16 signal 0 } 
	{ message_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ message_V_q0 sc_in sc_lv 32 signal 0 } 
	{ message_V_address1 sc_out sc_lv 16 signal 0 } 
	{ message_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ message_V_we1 sc_out sc_logic 1 signal 0 } 
	{ message_V_d1 sc_out sc_lv 32 signal 0 } 
	{ edge_list_address0 sc_out sc_lv 10 signal 1 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 1 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 1 } 
	{ edge_list_address1 sc_out sc_lv 10 signal 1 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 1 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 1 } 
	{ edge_embedding_V_address0 sc_out sc_lv 18 signal 2 } 
	{ edge_embedding_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ edge_embedding_V_q0 sc_in sc_lv 32 signal 2 } 
	{ node_embedding_V_address0 sc_out sc_lv 16 signal 3 } 
	{ node_embedding_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ node_embedding_V_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "message_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "message_V", "role": "address0" }} , 
 	{ "name": "message_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message_V", "role": "ce0" }} , 
 	{ "name": "message_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "message_V", "role": "q0" }} , 
 	{ "name": "message_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "message_V", "role": "address1" }} , 
 	{ "name": "message_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message_V", "role": "ce1" }} , 
 	{ "name": "message_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message_V", "role": "we1" }} , 
 	{ "name": "message_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "message_V", "role": "d1" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "edge_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "address0" }} , 
 	{ "name": "edge_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "ce0" }} , 
 	{ "name": "edge_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "q0" }} , 
 	{ "name": "node_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "address0" }} , 
 	{ "name": "node_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "message_passing",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17708", "EstimateLatencyMax" : "17708",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edge_embedding_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_6ns_10ns_9ns_15_4_1_U1556", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_10ns_9ns_16_4_1_U1557", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_10ns_9ns_16_4_1_U1558", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	message_passing {
		message_V {Type IO LastRead 7 FirstWrite 1}
		edge_list {Type I LastRead 4 FirstWrite -1}
		edge_embedding_V {Type I LastRead 7 FirstWrite -1}
		node_embedding_V {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17708", "Max" : "17708"}
	, {"Name" : "Interval", "Min" : "17708", "Max" : "17708"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	message_V { ap_memory {  { message_V_address0 mem_address 1 16 }  { message_V_ce0 mem_ce 1 1 }  { message_V_q0 mem_dout 0 32 }  { message_V_address1 MemPortADDR2 1 16 }  { message_V_ce1 MemPortCE2 1 1 }  { message_V_we1 MemPortWE2 1 1 }  { message_V_d1 MemPortDIN2 1 32 } } }
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 10 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 10 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	edge_embedding_V { ap_memory {  { edge_embedding_V_address0 mem_address 1 18 }  { edge_embedding_V_ce0 mem_ce 1 1 }  { edge_embedding_V_q0 mem_dout 0 32 } } }
	node_embedding_V { ap_memory {  { node_embedding_V_address0 mem_address 1 16 }  { node_embedding_V_ce0 mem_ce 1 1 }  { node_embedding_V_q0 mem_dout 0 32 } } }
}
set moduleName message_passing
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
set C_modelName {message_passing}
set C_modelType { void 0 }
set C_modelArgList {
	{ message_V int 32 regular {array 60000 { 1 0 } 1 1 } {global 2}  }
	{ edge_list int 32 regular {array 1000 { 1 1 } 1 1 } {global 0}  }
	{ edge_embedding_V int 32 regular {array 150000 { 1 3 } 1 1 } {global 0}  }
	{ node_embedding_V int 32 regular {array 60000 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "message_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "message.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_list","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 499,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "node_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ message_V_address0 sc_out sc_lv 16 signal 0 } 
	{ message_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ message_V_q0 sc_in sc_lv 32 signal 0 } 
	{ message_V_address1 sc_out sc_lv 16 signal 0 } 
	{ message_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ message_V_we1 sc_out sc_logic 1 signal 0 } 
	{ message_V_d1 sc_out sc_lv 32 signal 0 } 
	{ edge_list_address0 sc_out sc_lv 10 signal 1 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 1 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 1 } 
	{ edge_list_address1 sc_out sc_lv 10 signal 1 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 1 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 1 } 
	{ edge_embedding_V_address0 sc_out sc_lv 18 signal 2 } 
	{ edge_embedding_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ edge_embedding_V_q0 sc_in sc_lv 32 signal 2 } 
	{ node_embedding_V_address0 sc_out sc_lv 16 signal 3 } 
	{ node_embedding_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ node_embedding_V_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "message_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "message_V", "role": "address0" }} , 
 	{ "name": "message_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message_V", "role": "ce0" }} , 
 	{ "name": "message_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "message_V", "role": "q0" }} , 
 	{ "name": "message_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "message_V", "role": "address1" }} , 
 	{ "name": "message_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message_V", "role": "ce1" }} , 
 	{ "name": "message_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message_V", "role": "we1" }} , 
 	{ "name": "message_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "message_V", "role": "d1" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "edge_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "address0" }} , 
 	{ "name": "edge_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "ce0" }} , 
 	{ "name": "edge_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "q0" }} , 
 	{ "name": "node_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "address0" }} , 
 	{ "name": "node_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "message_passing",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17708", "EstimateLatencyMax" : "17708",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edge_embedding_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_6ns_10ns_9ns_15_4_1_U28", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_10ns_9ns_16_4_1_U29", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_10ns_9ns_16_4_1_U30", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	message_passing {
		message_V {Type IO LastRead 7 FirstWrite 1}
		edge_list {Type I LastRead 4 FirstWrite -1}
		edge_embedding_V {Type I LastRead 7 FirstWrite -1}
		node_embedding_V {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17708", "Max" : "17708"}
	, {"Name" : "Interval", "Min" : "17708", "Max" : "17708"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	message_V { ap_memory {  { message_V_address0 mem_address 1 16 }  { message_V_ce0 mem_ce 1 1 }  { message_V_q0 mem_dout 0 32 }  { message_V_address1 MemPortADDR2 1 16 }  { message_V_ce1 MemPortCE2 1 1 }  { message_V_we1 MemPortWE2 1 1 }  { message_V_d1 MemPortDIN2 1 32 } } }
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 10 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 10 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	edge_embedding_V { ap_memory {  { edge_embedding_V_address0 mem_address 1 18 }  { edge_embedding_V_ce0 mem_ce 1 1 }  { edge_embedding_V_q0 mem_dout 0 32 } } }
	node_embedding_V { ap_memory {  { node_embedding_V_address0 mem_address 1 16 }  { node_embedding_V_ce0 mem_ce 1 1 }  { node_embedding_V_q0 mem_dout 0 32 } } }
}
