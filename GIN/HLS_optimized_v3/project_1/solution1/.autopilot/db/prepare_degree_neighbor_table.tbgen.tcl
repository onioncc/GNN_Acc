set moduleName prepare_degree_neighbor_table
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
set C_modelName {prepare_degree_neighbor_table}
set C_modelType { void 0 }
set C_modelArgList {
	{ degree_table int 32 regular {array 600 { 2 2 } 1 1 } {global 2}  }
	{ edge_list int 32 regular {array 1000 { 1 1 } 1 1 } {global 0}  }
	{ neighbor_table int 8 regular {array 8000 { 0 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "degree_table", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "degree_table","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 599,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "edge_list","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 999,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "neighbor_table", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "neighbor_table","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7999,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ degree_table_address0 sc_out sc_lv 10 signal 0 } 
	{ degree_table_ce0 sc_out sc_logic 1 signal 0 } 
	{ degree_table_we0 sc_out sc_logic 1 signal 0 } 
	{ degree_table_d0 sc_out sc_lv 32 signal 0 } 
	{ degree_table_q0 sc_in sc_lv 32 signal 0 } 
	{ degree_table_address1 sc_out sc_lv 10 signal 0 } 
	{ degree_table_ce1 sc_out sc_logic 1 signal 0 } 
	{ degree_table_we1 sc_out sc_logic 1 signal 0 } 
	{ degree_table_d1 sc_out sc_lv 32 signal 0 } 
	{ degree_table_q1 sc_in sc_lv 32 signal 0 } 
	{ edge_list_address0 sc_out sc_lv 10 signal 1 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 1 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 1 } 
	{ edge_list_address1 sc_out sc_lv 10 signal 1 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 1 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 1 } 
	{ neighbor_table_address0 sc_out sc_lv 13 signal 2 } 
	{ neighbor_table_ce0 sc_out sc_logic 1 signal 2 } 
	{ neighbor_table_we0 sc_out sc_logic 1 signal 2 } 
	{ neighbor_table_d0 sc_out sc_lv 8 signal 2 } 
	{ neighbor_table_address1 sc_out sc_lv 13 signal 2 } 
	{ neighbor_table_ce1 sc_out sc_logic 1 signal 2 } 
	{ neighbor_table_we1 sc_out sc_logic 1 signal 2 } 
	{ neighbor_table_d1 sc_out sc_lv 8 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "degree_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "degree_table", "role": "address0" }} , 
 	{ "name": "degree_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "degree_table", "role": "ce0" }} , 
 	{ "name": "degree_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "degree_table", "role": "we0" }} , 
 	{ "name": "degree_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "degree_table", "role": "d0" }} , 
 	{ "name": "degree_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "degree_table", "role": "q0" }} , 
 	{ "name": "degree_table_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "degree_table", "role": "address1" }} , 
 	{ "name": "degree_table_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "degree_table", "role": "ce1" }} , 
 	{ "name": "degree_table_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "degree_table", "role": "we1" }} , 
 	{ "name": "degree_table_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "degree_table", "role": "d1" }} , 
 	{ "name": "degree_table_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "degree_table", "role": "q1" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "neighbor_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "neighbor_table", "role": "address0" }} , 
 	{ "name": "neighbor_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "ce0" }} , 
 	{ "name": "neighbor_table_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "we0" }} , 
 	{ "name": "neighbor_table_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "neighbor_table", "role": "d0" }} , 
 	{ "name": "neighbor_table_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "neighbor_table", "role": "address1" }} , 
 	{ "name": "neighbor_table_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "ce1" }} , 
 	{ "name": "neighbor_table_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "neighbor_table", "role": "we1" }} , 
 	{ "name": "neighbor_table_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "neighbor_table", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "prepare_degree_neighbor_table",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "223", "EstimateLatencyMax" : "223",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "degree_table", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	prepare_degree_neighbor_table {
		degree_table {Type IO LastRead 9 FirstWrite 1}
		edge_list {Type I LastRead 8 FirstWrite -1}
		neighbor_table {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "223", "Max" : "223"}
	, {"Name" : "Interval", "Min" : "223", "Max" : "223"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
]}

set Spec2ImplPortList { 
	degree_table { ap_memory {  { degree_table_address0 mem_address 1 10 }  { degree_table_ce0 mem_ce 1 1 }  { degree_table_we0 mem_we 1 1 }  { degree_table_d0 mem_din 1 32 }  { degree_table_q0 mem_dout 0 32 }  { degree_table_address1 MemPortADDR2 1 10 }  { degree_table_ce1 MemPortCE2 1 1 }  { degree_table_we1 MemPortWE2 1 1 }  { degree_table_d1 MemPortDIN2 1 32 }  { degree_table_q1 MemPortDOUT2 0 32 } } }
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 10 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 10 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	neighbor_table { ap_memory {  { neighbor_table_address0 mem_address 1 13 }  { neighbor_table_ce0 mem_ce 1 1 }  { neighbor_table_we0 mem_we 1 1 }  { neighbor_table_d0 mem_din 1 8 }  { neighbor_table_address1 MemPortADDR2 1 13 }  { neighbor_table_ce1 MemPortCE2 1 1 }  { neighbor_table_we1 MemPortWE2 1 1 }  { neighbor_table_d1 MemPortDIN2 1 8 } } }
}
