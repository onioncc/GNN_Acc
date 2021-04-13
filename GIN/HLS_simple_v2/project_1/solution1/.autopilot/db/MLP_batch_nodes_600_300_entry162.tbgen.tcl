set moduleName MLP_batch_nodes_600_300_entry162
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {MLP_batch_nodes<600, 300>.entry162}
set C_modelType { void 0 }
set C_modelArgList {
	{ d_out int 9 regular  }
	{ do_relu int 1 regular  }
	{ d_out_out int 9 regular {fifo 1}  }
	{ d_out_out1 int 9 regular {fifo 1}  }
	{ do_relu_out int 1 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "d_out", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "do_relu", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "d_out_out", "interface" : "fifo", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_out_out1", "interface" : "fifo", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "do_relu_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ d_out sc_in sc_lv 9 signal 0 } 
	{ do_relu sc_in sc_lv 1 signal 1 } 
	{ d_out_out_din sc_out sc_lv 9 signal 2 } 
	{ d_out_out_full_n sc_in sc_logic 1 signal 2 } 
	{ d_out_out_write sc_out sc_logic 1 signal 2 } 
	{ d_out_out1_din sc_out sc_lv 9 signal 3 } 
	{ d_out_out1_full_n sc_in sc_logic 1 signal 3 } 
	{ d_out_out1_write sc_out sc_logic 1 signal 3 } 
	{ do_relu_out_din sc_out sc_lv 1 signal 4 } 
	{ do_relu_out_full_n sc_in sc_logic 1 signal 4 } 
	{ do_relu_out_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "d_out", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "d_out", "role": "default" }} , 
 	{ "name": "do_relu", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "do_relu", "role": "default" }} , 
 	{ "name": "d_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "d_out_out", "role": "din" }} , 
 	{ "name": "d_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out_out", "role": "full_n" }} , 
 	{ "name": "d_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out_out", "role": "write" }} , 
 	{ "name": "d_out_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "d_out_out1", "role": "din" }} , 
 	{ "name": "d_out_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out_out1", "role": "full_n" }} , 
 	{ "name": "d_out_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out_out1", "role": "write" }} , 
 	{ "name": "do_relu_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "do_relu_out", "role": "din" }} , 
 	{ "name": "do_relu_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "do_relu_out", "role": "full_n" }} , 
 	{ "name": "do_relu_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "do_relu_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	MLP_batch_nodes_600_300_entry162 {
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		d_out_out1 {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	d_out { ap_none {  { d_out in_data 0 9 } } }
	do_relu { ap_none {  { do_relu in_data 0 1 } } }
	d_out_out { ap_fifo {  { d_out_out_din fifo_data 1 9 }  { d_out_out_full_n fifo_status 0 1 }  { d_out_out_write fifo_update 1 1 } } }
	d_out_out1 { ap_fifo {  { d_out_out1_din fifo_data 1 9 }  { d_out_out1_full_n fifo_status 0 1 }  { d_out_out1_write fifo_update 1 1 } } }
	do_relu_out { ap_fifo {  { do_relu_out_din fifo_data 1 1 }  { do_relu_out_full_n fifo_status 0 1 }  { do_relu_out_write fifo_update 1 1 } } }
}
