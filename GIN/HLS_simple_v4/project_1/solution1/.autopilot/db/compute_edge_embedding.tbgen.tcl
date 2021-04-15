set moduleName compute_edge_embedding
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
set C_modelName {compute_edge_embedding}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer int 3 regular  }
	{ edge_embedding_V int 32 regular {array 150000 { 1 0 } 1 1 } {global 2}  }
	{ edge_embedding_table_V int 32 regular {array 19500 { 1 3 } 1 1 } {global 0}  }
	{ edge_attr int 32 regular {array 1500 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "layer", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "edge_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 499,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 64,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_attr", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_attr","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1499,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer sc_in sc_lv 3 signal 0 } 
	{ edge_embedding_V_address0 sc_out sc_lv 18 signal 1 } 
	{ edge_embedding_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ edge_embedding_V_q0 sc_in sc_lv 32 signal 1 } 
	{ edge_embedding_V_address1 sc_out sc_lv 18 signal 1 } 
	{ edge_embedding_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ edge_embedding_V_we1 sc_out sc_logic 1 signal 1 } 
	{ edge_embedding_V_d1 sc_out sc_lv 32 signal 1 } 
	{ edge_embedding_table_V_address0 sc_out sc_lv 15 signal 2 } 
	{ edge_embedding_table_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ edge_embedding_table_V_q0 sc_in sc_lv 32 signal 2 } 
	{ edge_attr_address0 sc_out sc_lv 11 signal 3 } 
	{ edge_attr_ce0 sc_out sc_logic 1 signal 3 } 
	{ edge_attr_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer", "role": "default" }} , 
 	{ "name": "edge_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "address0" }} , 
 	{ "name": "edge_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "ce0" }} , 
 	{ "name": "edge_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "q0" }} , 
 	{ "name": "edge_embedding_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "address1" }} , 
 	{ "name": "edge_embedding_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "ce1" }} , 
 	{ "name": "edge_embedding_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "we1" }} , 
 	{ "name": "edge_embedding_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "address0" }} , 
 	{ "name": "edge_embedding_table_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "ce0" }} , 
 	{ "name": "edge_embedding_table_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "q0" }} , 
 	{ "name": "edge_attr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_attr", "role": "address0" }} , 
 	{ "name": "edge_attr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_attr", "role": "ce0" }} , 
 	{ "name": "edge_attr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_attr", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "compute_edge_embedding",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "48723", "EstimateLatencyMax" : "48963",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_embedding_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "edge_embedding_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edge_attr", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_3ns_5ns_7_1_1_U3928", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_10ns_15_1_1_U3929", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U3930", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_10ns_15_1_1_U3931", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_edge_embedding {
		layer {Type I LastRead 0 FirstWrite -1}
		edge_embedding_V {Type IO LastRead 7 FirstWrite 1}
		edge_embedding_table_V {Type I LastRead 7 FirstWrite -1}
		edge_attr {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "48723", "Max" : "48963"}
	, {"Name" : "Interval", "Min" : "48723", "Max" : "48963"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	layer { ap_none {  { layer in_data 0 3 } } }
	edge_embedding_V { ap_memory {  { edge_embedding_V_address0 mem_address 1 18 }  { edge_embedding_V_ce0 mem_ce 1 1 }  { edge_embedding_V_q0 mem_dout 0 32 }  { edge_embedding_V_address1 MemPortADDR2 1 18 }  { edge_embedding_V_ce1 MemPortCE2 1 1 }  { edge_embedding_V_we1 MemPortWE2 1 1 }  { edge_embedding_V_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V { ap_memory {  { edge_embedding_table_V_address0 mem_address 1 15 }  { edge_embedding_table_V_ce0 mem_ce 1 1 }  { edge_embedding_table_V_q0 mem_dout 0 32 } } }
	edge_attr { ap_memory {  { edge_attr_address0 mem_address 1 11 }  { edge_attr_ce0 mem_ce 1 1 }  { edge_attr_q0 mem_dout 0 32 } } }
}
set moduleName compute_edge_embedding
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
set C_modelName {compute_edge_embedding}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer int 3 regular  }
	{ edge_embedding_V int 32 regular {array 150000 { 1 0 } 1 1 } {global 2}  }
	{ edge_embedding_table_V int 32 regular {array 19500 { 1 3 } 1 1 } {global 0}  }
	{ edge_attr int 32 regular {array 1500 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "layer", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "edge_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 499,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 64,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_attr", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_attr","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1499,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer sc_in sc_lv 3 signal 0 } 
	{ edge_embedding_V_address0 sc_out sc_lv 18 signal 1 } 
	{ edge_embedding_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ edge_embedding_V_q0 sc_in sc_lv 32 signal 1 } 
	{ edge_embedding_V_address1 sc_out sc_lv 18 signal 1 } 
	{ edge_embedding_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ edge_embedding_V_we1 sc_out sc_logic 1 signal 1 } 
	{ edge_embedding_V_d1 sc_out sc_lv 32 signal 1 } 
	{ edge_embedding_table_V_address0 sc_out sc_lv 15 signal 2 } 
	{ edge_embedding_table_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ edge_embedding_table_V_q0 sc_in sc_lv 32 signal 2 } 
	{ edge_attr_address0 sc_out sc_lv 11 signal 3 } 
	{ edge_attr_ce0 sc_out sc_logic 1 signal 3 } 
	{ edge_attr_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer", "role": "default" }} , 
 	{ "name": "edge_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "address0" }} , 
 	{ "name": "edge_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "ce0" }} , 
 	{ "name": "edge_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "q0" }} , 
 	{ "name": "edge_embedding_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "address1" }} , 
 	{ "name": "edge_embedding_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "ce1" }} , 
 	{ "name": "edge_embedding_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "we1" }} , 
 	{ "name": "edge_embedding_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "address0" }} , 
 	{ "name": "edge_embedding_table_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "ce0" }} , 
 	{ "name": "edge_embedding_table_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "q0" }} , 
 	{ "name": "edge_attr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_attr", "role": "address0" }} , 
 	{ "name": "edge_attr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_attr", "role": "ce0" }} , 
 	{ "name": "edge_attr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_attr", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "compute_edge_embedding",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "48723", "EstimateLatencyMax" : "48963",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_embedding_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "edge_embedding_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edge_attr", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_3ns_5ns_7_1_1_U1544", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_10ns_15_1_1_U1545", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U1546", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_10ns_15_1_1_U1547", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_edge_embedding {
		layer {Type I LastRead 0 FirstWrite -1}
		edge_embedding_V {Type IO LastRead 7 FirstWrite 1}
		edge_embedding_table_V {Type I LastRead 7 FirstWrite -1}
		edge_attr {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "48723", "Max" : "48963"}
	, {"Name" : "Interval", "Min" : "48723", "Max" : "48963"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	layer { ap_none {  { layer in_data 0 3 } } }
	edge_embedding_V { ap_memory {  { edge_embedding_V_address0 mem_address 1 18 }  { edge_embedding_V_ce0 mem_ce 1 1 }  { edge_embedding_V_q0 mem_dout 0 32 }  { edge_embedding_V_address1 MemPortADDR2 1 18 }  { edge_embedding_V_ce1 MemPortCE2 1 1 }  { edge_embedding_V_we1 MemPortWE2 1 1 }  { edge_embedding_V_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V { ap_memory {  { edge_embedding_table_V_address0 mem_address 1 15 }  { edge_embedding_table_V_ce0 mem_ce 1 1 }  { edge_embedding_table_V_q0 mem_dout 0 32 } } }
	edge_attr { ap_memory {  { edge_attr_address0 mem_address 1 11 }  { edge_attr_ce0 mem_ce 1 1 }  { edge_attr_q0 mem_dout 0 32 } } }
}
set moduleName compute_edge_embedding
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
set C_modelName {compute_edge_embedding}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer int 3 regular  }
	{ edge_embedding_V int 32 regular {array 150000 { 1 0 } 1 1 } {global 2}  }
	{ edge_embedding_table_V int 32 regular {array 19500 { 1 3 } 1 1 } {global 0}  }
	{ edge_attr int 32 regular {array 1500 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "layer", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "edge_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 499,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_embedding_table_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding_table.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 64,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_attr", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_attr","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1499,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer sc_in sc_lv 3 signal 0 } 
	{ edge_embedding_V_address0 sc_out sc_lv 18 signal 1 } 
	{ edge_embedding_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ edge_embedding_V_q0 sc_in sc_lv 32 signal 1 } 
	{ edge_embedding_V_address1 sc_out sc_lv 18 signal 1 } 
	{ edge_embedding_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ edge_embedding_V_we1 sc_out sc_logic 1 signal 1 } 
	{ edge_embedding_V_d1 sc_out sc_lv 32 signal 1 } 
	{ edge_embedding_table_V_address0 sc_out sc_lv 15 signal 2 } 
	{ edge_embedding_table_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ edge_embedding_table_V_q0 sc_in sc_lv 32 signal 2 } 
	{ edge_attr_address0 sc_out sc_lv 11 signal 3 } 
	{ edge_attr_ce0 sc_out sc_logic 1 signal 3 } 
	{ edge_attr_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer", "role": "default" }} , 
 	{ "name": "edge_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "address0" }} , 
 	{ "name": "edge_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "ce0" }} , 
 	{ "name": "edge_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "q0" }} , 
 	{ "name": "edge_embedding_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "address1" }} , 
 	{ "name": "edge_embedding_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "ce1" }} , 
 	{ "name": "edge_embedding_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "we1" }} , 
 	{ "name": "edge_embedding_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "d1" }} , 
 	{ "name": "edge_embedding_table_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "address0" }} , 
 	{ "name": "edge_embedding_table_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "ce0" }} , 
 	{ "name": "edge_embedding_table_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_table_V", "role": "q0" }} , 
 	{ "name": "edge_attr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_attr", "role": "address0" }} , 
 	{ "name": "edge_attr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_attr", "role": "ce0" }} , 
 	{ "name": "edge_attr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_attr", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "compute_edge_embedding",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "48723", "EstimateLatencyMax" : "48963",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_embedding_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "edge_embedding_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edge_attr", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_3ns_5ns_7_1_1_U1544", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_10ns_15_1_1_U1545", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U1546", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_10ns_15_1_1_U1547", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_edge_embedding {
		layer {Type I LastRead 0 FirstWrite -1}
		edge_embedding_V {Type IO LastRead 7 FirstWrite 1}
		edge_embedding_table_V {Type I LastRead 7 FirstWrite -1}
		edge_attr {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "48723", "Max" : "48963"}
	, {"Name" : "Interval", "Min" : "48723", "Max" : "48963"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	layer { ap_none {  { layer in_data 0 3 } } }
	edge_embedding_V { ap_memory {  { edge_embedding_V_address0 mem_address 1 18 }  { edge_embedding_V_ce0 mem_ce 1 1 }  { edge_embedding_V_q0 mem_dout 0 32 }  { edge_embedding_V_address1 MemPortADDR2 1 18 }  { edge_embedding_V_ce1 MemPortCE2 1 1 }  { edge_embedding_V_we1 MemPortWE2 1 1 }  { edge_embedding_V_d1 MemPortDIN2 1 32 } } }
	edge_embedding_table_V { ap_memory {  { edge_embedding_table_V_address0 mem_address 1 15 }  { edge_embedding_table_V_ce0 mem_ce 1 1 }  { edge_embedding_table_V_q0 mem_dout 0 32 } } }
	edge_attr { ap_memory {  { edge_attr_address0 mem_address 1 11 }  { edge_attr_ce0 mem_ce 1 1 }  { edge_attr_q0 mem_dout 0 32 } } }
}
set moduleName compute_edge_embedding
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
set C_modelName {compute_edge_embedding}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer int 3 regular  }
	{ edge_embedding_V int 32 regular {array 150000 { 1 0 } 1 1 } {global 2}  }
	{ edge_attr int 32 regular {array 1500 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "layer", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "edge_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 499,"step" : 1},{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_attr", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_attr","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1499,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer sc_in sc_lv 3 signal 0 } 
	{ edge_embedding_V_address0 sc_out sc_lv 18 signal 1 } 
	{ edge_embedding_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ edge_embedding_V_q0 sc_in sc_lv 32 signal 1 } 
	{ edge_embedding_V_address1 sc_out sc_lv 18 signal 1 } 
	{ edge_embedding_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ edge_embedding_V_we1 sc_out sc_logic 1 signal 1 } 
	{ edge_embedding_V_d1 sc_out sc_lv 32 signal 1 } 
	{ edge_attr_address0 sc_out sc_lv 11 signal 2 } 
	{ edge_attr_ce0 sc_out sc_logic 1 signal 2 } 
	{ edge_attr_q0 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer", "role": "default" }} , 
 	{ "name": "edge_embedding_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "address0" }} , 
 	{ "name": "edge_embedding_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "ce0" }} , 
 	{ "name": "edge_embedding_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "q0" }} , 
 	{ "name": "edge_embedding_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "address1" }} , 
 	{ "name": "edge_embedding_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "ce1" }} , 
 	{ "name": "edge_embedding_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "we1" }} , 
 	{ "name": "edge_embedding_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_embedding_V", "role": "d1" }} , 
 	{ "name": "edge_attr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "edge_attr", "role": "address0" }} , 
 	{ "name": "edge_attr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_attr", "role": "ce0" }} , 
 	{ "name": "edge_attr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_attr", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "compute_edge_embedding",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "48723", "EstimateLatencyMax" : "48963",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_embedding_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "edge_embedding_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edge_attr", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.edge_embedding_table_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_3ns_5ns_7_1_1_U16", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_6ns_10ns_15_1_1_U17", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U18", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_7ns_10ns_15_1_1_U19", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_edge_embedding {
		layer {Type I LastRead 0 FirstWrite -1}
		edge_embedding_V {Type IO LastRead 7 FirstWrite 1}
		edge_embedding_table_V {Type I LastRead -1 FirstWrite -1}
		edge_attr {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "48723", "Max" : "48963"}
	, {"Name" : "Interval", "Min" : "48723", "Max" : "48963"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	layer { ap_none {  { layer in_data 0 3 } } }
	edge_embedding_V { ap_memory {  { edge_embedding_V_address0 mem_address 1 18 }  { edge_embedding_V_ce0 mem_ce 1 1 }  { edge_embedding_V_q0 mem_dout 0 32 }  { edge_embedding_V_address1 MemPortADDR2 1 18 }  { edge_embedding_V_ce1 MemPortCE2 1 1 }  { edge_embedding_V_we1 MemPortWE2 1 1 }  { edge_embedding_V_d1 MemPortDIN2 1 32 } } }
	edge_attr { ap_memory {  { edge_attr_address0 mem_address 1 11 }  { edge_attr_ce0 mem_ce 1 1 }  { edge_attr_q0 mem_dout 0 32 } } }
}
