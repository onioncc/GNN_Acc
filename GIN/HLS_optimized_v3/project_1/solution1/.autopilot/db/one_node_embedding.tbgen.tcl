set moduleName one_node_embedding
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
set C_modelName {one_node_embedding}
set C_modelType { void 0 }
set C_modelArgList {
	{ nd int 5 regular  }
	{ emb_vec int 32 regular {array 100 { 0 3 } 0 1 }  }
	{ node_embedding_V int 32 regular {array 20000 { 3 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nd", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "emb_vec", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "node_embedding_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "node_embedding.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 199,"step" : 1},{"low" : 0,"up" : 99,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nd sc_in sc_lv 5 signal 0 } 
	{ emb_vec_address0 sc_out sc_lv 7 signal 1 } 
	{ emb_vec_ce0 sc_out sc_logic 1 signal 1 } 
	{ emb_vec_we0 sc_out sc_logic 1 signal 1 } 
	{ emb_vec_d0 sc_out sc_lv 32 signal 1 } 
	{ node_embedding_V_address1 sc_out sc_lv 15 signal 2 } 
	{ node_embedding_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ node_embedding_V_we1 sc_out sc_logic 1 signal 2 } 
	{ node_embedding_V_d1 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nd", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "nd", "role": "default" }} , 
 	{ "name": "emb_vec_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "emb_vec", "role": "address0" }} , 
 	{ "name": "emb_vec_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emb_vec", "role": "ce0" }} , 
 	{ "name": "emb_vec_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emb_vec", "role": "we0" }} , 
 	{ "name": "emb_vec_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emb_vec", "role": "d0" }} , 
 	{ "name": "node_embedding_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "address1" }} , 
 	{ "name": "node_embedding_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "ce1" }} , 
 	{ "name": "node_embedding_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "we1" }} , 
 	{ "name": "node_embedding_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "node_embedding_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_5ns_8ns_12_1_1_U16", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	one_node_embedding {
		nd {Type I LastRead 0 FirstWrite -1}
		emb_vec {Type O LastRead -1 FirstWrite 1}
		node_embedding_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "102", "Max" : "102"}
	, {"Name" : "Interval", "Min" : "102", "Max" : "102"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	nd { ap_none {  { nd in_data 0 5 } } }
	emb_vec { ap_memory {  { emb_vec_address0 mem_address 1 7 }  { emb_vec_ce0 mem_ce 1 1 }  { emb_vec_we0 mem_we 1 1 }  { emb_vec_d0 mem_din 1 32 } } }
	node_embedding_V { ap_memory {  { node_embedding_V_address1 MemPortADDR2 1 15 }  { node_embedding_V_ce1 MemPortCE2 1 1 }  { node_embedding_V_we1 MemPortWE2 1 1 }  { node_embedding_V_d1 MemPortDIN2 1 32 } } }
}
