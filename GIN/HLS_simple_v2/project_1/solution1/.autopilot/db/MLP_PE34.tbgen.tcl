set moduleName MLP_PE34
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
set C_modelName {MLP_PE34}
set C_modelType { void 0 }
set C_modelArgList {
	{ mlp_1_weight_fifo_2_V_V int 32 regular {fifo 0 volatile }  }
	{ mlp_1_weight_fifo_3_V_V int 32 regular {fifo 1 volatile }  }
	{ mlp_1_bias_V_load_loc int 32 regular {fifo 0}  }
	{ mlp_in_V_2 int 32 regular {array 600 { 1 3 } 1 1 }  }
	{ d_out int 10 regular {fifo 0}  }
	{ mlp_1_bias_V_load_loc_out int 32 regular {fifo 1}  }
	{ d_out_out int 10 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mlp_1_weight_fifo_2_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_1_weight_fifo_3_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_1_bias_V_load_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_V_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_out", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_1_bias_V_load_loc_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_out_out", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mlp_1_weight_fifo_2_V_V_dout sc_in sc_lv 32 signal 0 } 
	{ mlp_1_weight_fifo_2_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ mlp_1_weight_fifo_2_V_V_read sc_out sc_logic 1 signal 0 } 
	{ mlp_1_weight_fifo_3_V_V_din sc_out sc_lv 32 signal 1 } 
	{ mlp_1_weight_fifo_3_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ mlp_1_weight_fifo_3_V_V_write sc_out sc_logic 1 signal 1 } 
	{ mlp_1_bias_V_load_loc_dout sc_in sc_lv 32 signal 2 } 
	{ mlp_1_bias_V_load_loc_empty_n sc_in sc_logic 1 signal 2 } 
	{ mlp_1_bias_V_load_loc_read sc_out sc_logic 1 signal 2 } 
	{ mlp_in_V_2_address0 sc_out sc_lv 10 signal 3 } 
	{ mlp_in_V_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ mlp_in_V_2_q0 sc_in sc_lv 32 signal 3 } 
	{ d_out_dout sc_in sc_lv 10 signal 4 } 
	{ d_out_empty_n sc_in sc_logic 1 signal 4 } 
	{ d_out_read sc_out sc_logic 1 signal 4 } 
	{ mlp_1_bias_V_load_loc_out_din sc_out sc_lv 32 signal 5 } 
	{ mlp_1_bias_V_load_loc_out_full_n sc_in sc_logic 1 signal 5 } 
	{ mlp_1_bias_V_load_loc_out_write sc_out sc_logic 1 signal 5 } 
	{ d_out_out_din sc_out sc_lv 10 signal 6 } 
	{ d_out_out_full_n sc_in sc_logic 1 signal 6 } 
	{ d_out_out_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mlp_1_weight_fifo_2_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weight_fifo_2_V_V", "role": "dout" }} , 
 	{ "name": "mlp_1_weight_fifo_2_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weight_fifo_2_V_V", "role": "empty_n" }} , 
 	{ "name": "mlp_1_weight_fifo_2_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weight_fifo_2_V_V", "role": "read" }} , 
 	{ "name": "mlp_1_weight_fifo_3_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weight_fifo_3_V_V", "role": "din" }} , 
 	{ "name": "mlp_1_weight_fifo_3_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weight_fifo_3_V_V", "role": "full_n" }} , 
 	{ "name": "mlp_1_weight_fifo_3_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weight_fifo_3_V_V", "role": "write" }} , 
 	{ "name": "mlp_1_bias_V_load_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V_load_loc", "role": "dout" }} , 
 	{ "name": "mlp_1_bias_V_load_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V_load_loc", "role": "empty_n" }} , 
 	{ "name": "mlp_1_bias_V_load_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V_load_loc", "role": "read" }} , 
 	{ "name": "mlp_in_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "address0" }} , 
 	{ "name": "mlp_in_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "ce0" }} , 
 	{ "name": "mlp_in_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "q0" }} , 
 	{ "name": "d_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "d_out", "role": "dout" }} , 
 	{ "name": "d_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out", "role": "empty_n" }} , 
 	{ "name": "d_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out", "role": "read" }} , 
 	{ "name": "mlp_1_bias_V_load_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V_load_loc_out", "role": "din" }} , 
 	{ "name": "mlp_1_bias_V_load_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V_load_loc_out", "role": "full_n" }} , 
 	{ "name": "mlp_1_bias_V_load_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V_load_loc_out", "role": "write" }} , 
 	{ "name": "d_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "d_out_out", "role": "din" }} , 
 	{ "name": "d_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out_out", "role": "full_n" }} , 
 	{ "name": "d_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "MLP_PE34",
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
			{"Name" : "mlp_1_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_out_V_2", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_out_V_2_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U90", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MLP_PE34 {
		mlp_1_weight_fifo_2_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_1_weight_fifo_3_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_V_2 {Type I LastRead 1 FirstWrite -1}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		mlp_out_V_2 {Type O LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "302", "Max" : "302"}
	, {"Name" : "Interval", "Min" : "302", "Max" : "302"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mlp_1_weight_fifo_2_V_V { ap_fifo {  { mlp_1_weight_fifo_2_V_V_dout fifo_data 0 32 }  { mlp_1_weight_fifo_2_V_V_empty_n fifo_status 0 1 }  { mlp_1_weight_fifo_2_V_V_read fifo_update 1 1 } } }
	mlp_1_weight_fifo_3_V_V { ap_fifo {  { mlp_1_weight_fifo_3_V_V_din fifo_data 1 32 }  { mlp_1_weight_fifo_3_V_V_full_n fifo_status 0 1 }  { mlp_1_weight_fifo_3_V_V_write fifo_update 1 1 } } }
	mlp_1_bias_V_load_loc { ap_fifo {  { mlp_1_bias_V_load_loc_dout fifo_data 0 32 }  { mlp_1_bias_V_load_loc_empty_n fifo_status 0 1 }  { mlp_1_bias_V_load_loc_read fifo_update 1 1 } } }
	mlp_in_V_2 { ap_memory {  { mlp_in_V_2_address0 mem_address 1 10 }  { mlp_in_V_2_ce0 mem_ce 1 1 }  { mlp_in_V_2_q0 mem_dout 0 32 } } }
	d_out { ap_fifo {  { d_out_dout fifo_data 0 10 }  { d_out_empty_n fifo_status 0 1 }  { d_out_read fifo_update 1 1 } } }
	mlp_1_bias_V_load_loc_out { ap_fifo {  { mlp_1_bias_V_load_loc_out_din fifo_data 1 32 }  { mlp_1_bias_V_load_loc_out_full_n fifo_status 0 1 }  { mlp_1_bias_V_load_loc_out_write fifo_update 1 1 } } }
	d_out_out { ap_fifo {  { d_out_out_din fifo_data 1 10 }  { d_out_out_full_n fifo_status 0 1 }  { d_out_out_write fifo_update 1 1 } } }
}
set moduleName MLP_PE34
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
set C_modelName {MLP_PE34}
set C_modelType { void 0 }
set C_modelArgList {
	{ mlp_1_weight_fifo_2_V_V int 32 regular {fifo 0 volatile }  }
	{ mlp_1_weight_fifo_3_V_V int 32 regular {fifo 1 volatile }  }
	{ mlp_1_bias_V_load_loc int 32 regular {fifo 0}  }
	{ mlp_in_V_2 int 32 regular {array 600 { 1 3 } 1 1 }  }
	{ d_out int 10 regular {fifo 0}  }
	{ mlp_1_bias_V_load_loc_out int 32 regular {fifo 1}  }
	{ d_out_out int 10 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mlp_1_weight_fifo_2_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_1_weight_fifo_3_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_1_bias_V_load_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_V_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "d_out", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_1_bias_V_load_loc_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_out_out", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mlp_1_weight_fifo_2_V_V_dout sc_in sc_lv 32 signal 0 } 
	{ mlp_1_weight_fifo_2_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ mlp_1_weight_fifo_2_V_V_read sc_out sc_logic 1 signal 0 } 
	{ mlp_1_weight_fifo_3_V_V_din sc_out sc_lv 32 signal 1 } 
	{ mlp_1_weight_fifo_3_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ mlp_1_weight_fifo_3_V_V_write sc_out sc_logic 1 signal 1 } 
	{ mlp_1_bias_V_load_loc_dout sc_in sc_lv 32 signal 2 } 
	{ mlp_1_bias_V_load_loc_empty_n sc_in sc_logic 1 signal 2 } 
	{ mlp_1_bias_V_load_loc_read sc_out sc_logic 1 signal 2 } 
	{ mlp_in_V_2_address0 sc_out sc_lv 10 signal 3 } 
	{ mlp_in_V_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ mlp_in_V_2_q0 sc_in sc_lv 32 signal 3 } 
	{ d_out_dout sc_in sc_lv 10 signal 4 } 
	{ d_out_empty_n sc_in sc_logic 1 signal 4 } 
	{ d_out_read sc_out sc_logic 1 signal 4 } 
	{ mlp_1_bias_V_load_loc_out_din sc_out sc_lv 32 signal 5 } 
	{ mlp_1_bias_V_load_loc_out_full_n sc_in sc_logic 1 signal 5 } 
	{ mlp_1_bias_V_load_loc_out_write sc_out sc_logic 1 signal 5 } 
	{ d_out_out_din sc_out sc_lv 10 signal 6 } 
	{ d_out_out_full_n sc_in sc_logic 1 signal 6 } 
	{ d_out_out_write sc_out sc_logic 1 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mlp_1_weight_fifo_2_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weight_fifo_2_V_V", "role": "dout" }} , 
 	{ "name": "mlp_1_weight_fifo_2_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weight_fifo_2_V_V", "role": "empty_n" }} , 
 	{ "name": "mlp_1_weight_fifo_2_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weight_fifo_2_V_V", "role": "read" }} , 
 	{ "name": "mlp_1_weight_fifo_3_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weight_fifo_3_V_V", "role": "din" }} , 
 	{ "name": "mlp_1_weight_fifo_3_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weight_fifo_3_V_V", "role": "full_n" }} , 
 	{ "name": "mlp_1_weight_fifo_3_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weight_fifo_3_V_V", "role": "write" }} , 
 	{ "name": "mlp_1_bias_V_load_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V_load_loc", "role": "dout" }} , 
 	{ "name": "mlp_1_bias_V_load_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V_load_loc", "role": "empty_n" }} , 
 	{ "name": "mlp_1_bias_V_load_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V_load_loc", "role": "read" }} , 
 	{ "name": "mlp_in_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "address0" }} , 
 	{ "name": "mlp_in_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "ce0" }} , 
 	{ "name": "mlp_in_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_V_2", "role": "q0" }} , 
 	{ "name": "d_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "d_out", "role": "dout" }} , 
 	{ "name": "d_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out", "role": "empty_n" }} , 
 	{ "name": "d_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out", "role": "read" }} , 
 	{ "name": "mlp_1_bias_V_load_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V_load_loc_out", "role": "din" }} , 
 	{ "name": "mlp_1_bias_V_load_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V_load_loc_out", "role": "full_n" }} , 
 	{ "name": "mlp_1_bias_V_load_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V_load_loc_out", "role": "write" }} , 
 	{ "name": "d_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "d_out_out", "role": "din" }} , 
 	{ "name": "d_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out_out", "role": "full_n" }} , 
 	{ "name": "d_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "MLP_PE34",
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
			{"Name" : "mlp_1_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_out_V_2", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_out_V_2_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U90", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MLP_PE34 {
		mlp_1_weight_fifo_2_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_1_weight_fifo_3_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_V_2 {Type I LastRead 1 FirstWrite -1}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		mlp_out_V_2 {Type O LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "302", "Max" : "302"}
	, {"Name" : "Interval", "Min" : "302", "Max" : "302"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mlp_1_weight_fifo_2_V_V { ap_fifo {  { mlp_1_weight_fifo_2_V_V_dout fifo_data 0 32 }  { mlp_1_weight_fifo_2_V_V_empty_n fifo_status 0 1 }  { mlp_1_weight_fifo_2_V_V_read fifo_update 1 1 } } }
	mlp_1_weight_fifo_3_V_V { ap_fifo {  { mlp_1_weight_fifo_3_V_V_din fifo_data 1 32 }  { mlp_1_weight_fifo_3_V_V_full_n fifo_status 0 1 }  { mlp_1_weight_fifo_3_V_V_write fifo_update 1 1 } } }
	mlp_1_bias_V_load_loc { ap_fifo {  { mlp_1_bias_V_load_loc_dout fifo_data 0 32 }  { mlp_1_bias_V_load_loc_empty_n fifo_status 0 1 }  { mlp_1_bias_V_load_loc_read fifo_update 1 1 } } }
	mlp_in_V_2 { ap_memory {  { mlp_in_V_2_address0 mem_address 1 10 }  { mlp_in_V_2_ce0 mem_ce 1 1 }  { mlp_in_V_2_q0 mem_dout 0 32 } } }
	d_out { ap_fifo {  { d_out_dout fifo_data 0 10 }  { d_out_empty_n fifo_status 0 1 }  { d_out_read fifo_update 1 1 } } }
	mlp_1_bias_V_load_loc_out { ap_fifo {  { mlp_1_bias_V_load_loc_out_din fifo_data 1 32 }  { mlp_1_bias_V_load_loc_out_full_n fifo_status 0 1 }  { mlp_1_bias_V_load_loc_out_write fifo_update 1 1 } } }
	d_out_out { ap_fifo {  { d_out_out_din fifo_data 1 10 }  { d_out_out_full_n fifo_status 0 1 }  { d_out_out_write fifo_update 1 1 } } }
}
