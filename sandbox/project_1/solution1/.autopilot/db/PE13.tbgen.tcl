set moduleName PE13
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
set C_modelName {PE13}
set C_modelType { void 0 }
set C_modelArgList {
	{ weights_in_V2 int 32 regular {fifo 0 volatile }  }
	{ data_in9 int 32 regular {array 10 { 1 3 } 1 1 }  }
	{ data_out_local12 int 32 regular {array 20 { 0 3 } 0 1 }  }
	{ d_out int 5 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weights_in_V2", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_in9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_out_local12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_out", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ weights_in_V2_dout sc_in sc_lv 32 signal 0 } 
	{ weights_in_V2_empty_n sc_in sc_logic 1 signal 0 } 
	{ weights_in_V2_read sc_out sc_logic 1 signal 0 } 
	{ data_in9_address0 sc_out sc_lv 4 signal 1 } 
	{ data_in9_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_in9_q0 sc_in sc_lv 32 signal 1 } 
	{ data_out_local12_address0 sc_out sc_lv 5 signal 2 } 
	{ data_out_local12_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_out_local12_we0 sc_out sc_logic 1 signal 2 } 
	{ data_out_local12_d0 sc_out sc_lv 32 signal 2 } 
	{ d_out_dout sc_in sc_lv 5 signal 3 } 
	{ d_out_empty_n sc_in sc_logic 1 signal 3 } 
	{ d_out_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "weights_in_V2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "weights_in_V2", "role": "dout" }} , 
 	{ "name": "weights_in_V2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_in_V2", "role": "empty_n" }} , 
 	{ "name": "weights_in_V2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weights_in_V2", "role": "read" }} , 
 	{ "name": "data_in9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data_in9", "role": "address0" }} , 
 	{ "name": "data_in9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in9", "role": "ce0" }} , 
 	{ "name": "data_in9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in9", "role": "q0" }} , 
 	{ "name": "data_out_local12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "data_out_local12", "role": "address0" }} , 
 	{ "name": "data_out_local12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local12", "role": "ce0" }} , 
 	{ "name": "data_out_local12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out_local12", "role": "we0" }} , 
 	{ "name": "data_out_local12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out_local12", "role": "d0" }} , 
 	{ "name": "d_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "d_out", "role": "dout" }} , 
 	{ "name": "d_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out", "role": "empty_n" }} , 
 	{ "name": "d_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "PE13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "weights_in_V2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "weights_in_V2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_in9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_out_local12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U28", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	PE13 {
		weights_in_V2 {Type I LastRead 2 FirstWrite -1}
		data_in9 {Type I LastRead 1 FirstWrite -1}
		data_out_local12 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "12"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "12"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	weights_in_V2 { ap_fifo {  { weights_in_V2_dout fifo_data 0 32 }  { weights_in_V2_empty_n fifo_status 0 1 }  { weights_in_V2_read fifo_update 1 1 } } }
	data_in9 { ap_memory {  { data_in9_address0 mem_address 1 4 }  { data_in9_ce0 mem_ce 1 1 }  { data_in9_q0 mem_dout 0 32 } } }
	data_out_local12 { ap_memory {  { data_out_local12_address0 mem_address 1 5 }  { data_out_local12_ce0 mem_ce 1 1 }  { data_out_local12_we0 mem_we 1 1 }  { data_out_local12_d0 mem_din 1 32 } } }
	d_out { ap_fifo {  { d_out_dout fifo_data 0 5 }  { d_out_empty_n fifo_status 0 1 }  { d_out_read fifo_update 1 1 } } }
}
