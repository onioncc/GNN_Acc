set moduleName global_mean_pooling
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
set C_modelName {global_mean_pooling}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_of_nodes int 32 regular  }
	{ node_embedding_V int 32 regular {array 300000 { 1 3 } 1 1 } {global 0}  }
	{ graph_embedding_V int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_of_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "node_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "graph_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "graph_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_of_nodes sc_in sc_lv 32 signal 0 } 
	{ node_embedding_V_address0 sc_out sc_lv 19 signal 1 } 
	{ node_embedding_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ node_embedding_V_q0 sc_in sc_lv 32 signal 1 } 
	{ graph_embedding_V_address1 sc_out sc_lv 9 signal 2 } 
	{ graph_embedding_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ graph_embedding_V_we1 sc_out sc_logic 1 signal 2 } 
	{ graph_embedding_V_d1 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_of_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_of_nodes", "role": "default" }} , 
 	{ "name": "node_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "address0" }} , 
 	{ "name": "node_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "q0" }} , 
 	{ "name": "graph_embedding_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "graph_embedding_V", "role": "address1" }} , 
 	{ "name": "graph_embedding_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "graph_embedding_V", "role": "ce1" }} , 
 	{ "name": "graph_embedding_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "graph_embedding_V", "role": "we1" }} , 
 	{ "name": "graph_embedding_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "graph_embedding_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "global_mean_pooling",
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
		"Port" : [
			{"Name" : "num_of_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "graph_embedding_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_seq_1_U163", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	global_mean_pooling {
		num_of_nodes {Type I LastRead 0 FirstWrite -1}
		node_embedding_V {Type I LastRead 2 FirstWrite -1}
		graph_embedding_V {Type O LastRead -1 FirstWrite 38}}}

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
	node_embedding_V { ap_memory {  { node_embedding_V_address0 mem_address 1 19 }  { node_embedding_V_ce0 mem_ce 1 1 }  { node_embedding_V_q0 mem_dout 0 32 } } }
	graph_embedding_V { ap_memory {  { graph_embedding_V_address1 MemPortADDR2 1 9 }  { graph_embedding_V_ce1 MemPortCE2 1 1 }  { graph_embedding_V_we1 MemPortWE2 1 1 }  { graph_embedding_V_d1 MemPortDIN2 1 32 } } }
}
set moduleName global_mean_pooling
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
set C_modelName {global_mean_pooling}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_of_nodes int 32 regular  }
	{ node_embedding_V int 32 regular {array 300000 { 1 3 } 1 1 } {global 0}  }
	{ graph_embedding_V int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_of_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "node_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "graph_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "graph_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_of_nodes sc_in sc_lv 32 signal 0 } 
	{ node_embedding_V_address0 sc_out sc_lv 19 signal 1 } 
	{ node_embedding_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ node_embedding_V_q0 sc_in sc_lv 32 signal 1 } 
	{ graph_embedding_V_address1 sc_out sc_lv 9 signal 2 } 
	{ graph_embedding_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ graph_embedding_V_we1 sc_out sc_logic 1 signal 2 } 
	{ graph_embedding_V_d1 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_of_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_of_nodes", "role": "default" }} , 
 	{ "name": "node_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "address0" }} , 
 	{ "name": "node_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "q0" }} , 
 	{ "name": "graph_embedding_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "graph_embedding_V", "role": "address1" }} , 
 	{ "name": "graph_embedding_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "graph_embedding_V", "role": "ce1" }} , 
 	{ "name": "graph_embedding_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "graph_embedding_V", "role": "we1" }} , 
 	{ "name": "graph_embedding_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "graph_embedding_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "global_mean_pooling",
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
		"Port" : [
			{"Name" : "num_of_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "graph_embedding_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_seq_1_U163", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	global_mean_pooling {
		num_of_nodes {Type I LastRead 0 FirstWrite -1}
		node_embedding_V {Type I LastRead 2 FirstWrite -1}
		graph_embedding_V {Type O LastRead -1 FirstWrite 38}}}

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
	node_embedding_V { ap_memory {  { node_embedding_V_address0 mem_address 1 19 }  { node_embedding_V_ce0 mem_ce 1 1 }  { node_embedding_V_q0 mem_dout 0 32 } } }
	graph_embedding_V { ap_memory {  { graph_embedding_V_address1 MemPortADDR2 1 9 }  { graph_embedding_V_ce1 MemPortCE2 1 1 }  { graph_embedding_V_we1 MemPortWE2 1 1 }  { graph_embedding_V_d1 MemPortDIN2 1 32 } } }
}
set moduleName global_mean_pooling
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
set C_modelName {global_mean_pooling}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_of_nodes int 32 regular  }
	{ node_embedding_V int 32 regular {array 300000 { 1 3 } 1 1 } {global 0}  }
	{ graph_embedding_V int 32 regular {array 300 { 3 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_of_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "node_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "graph_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "graph_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_of_nodes sc_in sc_lv 32 signal 0 } 
	{ node_embedding_V_address0 sc_out sc_lv 19 signal 1 } 
	{ node_embedding_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ node_embedding_V_q0 sc_in sc_lv 32 signal 1 } 
	{ graph_embedding_V_address1 sc_out sc_lv 9 signal 2 } 
	{ graph_embedding_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ graph_embedding_V_we1 sc_out sc_logic 1 signal 2 } 
	{ graph_embedding_V_d1 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_of_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_of_nodes", "role": "default" }} , 
 	{ "name": "node_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":19, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "address0" }} , 
 	{ "name": "node_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "ce0" }} , 
 	{ "name": "node_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "q0" }} , 
 	{ "name": "graph_embedding_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "graph_embedding_V", "role": "address1" }} , 
 	{ "name": "graph_embedding_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "graph_embedding_V", "role": "ce1" }} , 
 	{ "name": "graph_embedding_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "graph_embedding_V", "role": "we1" }} , 
 	{ "name": "graph_embedding_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "graph_embedding_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "global_mean_pooling",
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
		"Port" : [
			{"Name" : "num_of_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "graph_embedding_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_32ns_32ns_32_36_seq_1_U168", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	global_mean_pooling {
		num_of_nodes {Type I LastRead 0 FirstWrite -1}
		node_embedding_V {Type I LastRead 2 FirstWrite -1}
		graph_embedding_V {Type O LastRead -1 FirstWrite 38}}}

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
	node_embedding_V { ap_memory {  { node_embedding_V_address0 mem_address 1 19 }  { node_embedding_V_ce0 mem_ce 1 1 }  { node_embedding_V_q0 mem_dout 0 32 } } }
	graph_embedding_V { ap_memory {  { graph_embedding_V_address1 MemPortADDR2 1 9 }  { graph_embedding_V_ce1 MemPortCE2 1 1 }  { graph_embedding_V_we1 MemPortWE2 1 1 }  { graph_embedding_V_d1 MemPortDIN2 1 32 } } }
}
