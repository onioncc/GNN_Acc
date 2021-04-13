set moduleName MLP_PE_600_300_68
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
set C_modelName {MLP_PE<600, 300>68}
set C_modelType { void 0 }
set C_modelArgList {
	{ mlp_weight_fifo_10_V_V int 32 regular {fifo 0 volatile }  }
	{ mlp_weight_fifo_11_V_V int 32 regular {fifo 1 volatile }  }
	{ mlp_2_bias_V_load_loc int 32 regular {fifo 0}  }
	{ mlp_in_local10 int 31 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_out_local25 int 32 regular {array 300 { 0 3 } 0 1 }  }
	{ d_out int 9 regular {fifo 0}  }
	{ do_relu int 1 regular {fifo 0}  }
	{ mlp_2_bias_V_load_loc_out int 32 regular {fifo 1}  }
	{ d_out_out int 9 regular {fifo 1}  }
	{ do_relu_out int 1 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mlp_weight_fifo_10_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_weight_fifo_11_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_2_bias_V_load_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_in_local10", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_out_local25", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_out", "interface" : "fifo", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "do_relu", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_2_bias_V_load_loc_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "d_out_out", "interface" : "fifo", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "do_relu_out", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mlp_weight_fifo_10_V_V_dout sc_in sc_lv 32 signal 0 } 
	{ mlp_weight_fifo_10_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ mlp_weight_fifo_10_V_V_read sc_out sc_logic 1 signal 0 } 
	{ mlp_weight_fifo_11_V_V_din sc_out sc_lv 32 signal 1 } 
	{ mlp_weight_fifo_11_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ mlp_weight_fifo_11_V_V_write sc_out sc_logic 1 signal 1 } 
	{ mlp_2_bias_V_load_loc_dout sc_in sc_lv 32 signal 2 } 
	{ mlp_2_bias_V_load_loc_empty_n sc_in sc_logic 1 signal 2 } 
	{ mlp_2_bias_V_load_loc_read sc_out sc_logic 1 signal 2 } 
	{ mlp_in_local10_address0 sc_out sc_lv 10 signal 3 } 
	{ mlp_in_local10_ce0 sc_out sc_logic 1 signal 3 } 
	{ mlp_in_local10_q0 sc_in sc_lv 31 signal 3 } 
	{ mlp_out_local25_address0 sc_out sc_lv 9 signal 4 } 
	{ mlp_out_local25_ce0 sc_out sc_logic 1 signal 4 } 
	{ mlp_out_local25_we0 sc_out sc_logic 1 signal 4 } 
	{ mlp_out_local25_d0 sc_out sc_lv 32 signal 4 } 
	{ d_out_dout sc_in sc_lv 9 signal 5 } 
	{ d_out_empty_n sc_in sc_logic 1 signal 5 } 
	{ d_out_read sc_out sc_logic 1 signal 5 } 
	{ do_relu_dout sc_in sc_lv 1 signal 6 } 
	{ do_relu_empty_n sc_in sc_logic 1 signal 6 } 
	{ do_relu_read sc_out sc_logic 1 signal 6 } 
	{ mlp_2_bias_V_load_loc_out_din sc_out sc_lv 32 signal 7 } 
	{ mlp_2_bias_V_load_loc_out_full_n sc_in sc_logic 1 signal 7 } 
	{ mlp_2_bias_V_load_loc_out_write sc_out sc_logic 1 signal 7 } 
	{ d_out_out_din sc_out sc_lv 9 signal 8 } 
	{ d_out_out_full_n sc_in sc_logic 1 signal 8 } 
	{ d_out_out_write sc_out sc_logic 1 signal 8 } 
	{ do_relu_out_din sc_out sc_lv 1 signal 9 } 
	{ do_relu_out_full_n sc_in sc_logic 1 signal 9 } 
	{ do_relu_out_write sc_out sc_logic 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mlp_weight_fifo_10_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_weight_fifo_10_V_V", "role": "dout" }} , 
 	{ "name": "mlp_weight_fifo_10_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_weight_fifo_10_V_V", "role": "empty_n" }} , 
 	{ "name": "mlp_weight_fifo_10_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_weight_fifo_10_V_V", "role": "read" }} , 
 	{ "name": "mlp_weight_fifo_11_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_weight_fifo_11_V_V", "role": "din" }} , 
 	{ "name": "mlp_weight_fifo_11_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_weight_fifo_11_V_V", "role": "full_n" }} , 
 	{ "name": "mlp_weight_fifo_11_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_weight_fifo_11_V_V", "role": "write" }} , 
 	{ "name": "mlp_2_bias_V_load_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_2_bias_V_load_loc", "role": "dout" }} , 
 	{ "name": "mlp_2_bias_V_load_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_bias_V_load_loc", "role": "empty_n" }} , 
 	{ "name": "mlp_2_bias_V_load_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_bias_V_load_loc", "role": "read" }} , 
 	{ "name": "mlp_in_local10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local10", "role": "address0" }} , 
 	{ "name": "mlp_in_local10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local10", "role": "ce0" }} , 
 	{ "name": "mlp_in_local10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_in_local10", "role": "q0" }} , 
 	{ "name": "mlp_out_local25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_out_local25", "role": "address0" }} , 
 	{ "name": "mlp_out_local25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local25", "role": "ce0" }} , 
 	{ "name": "mlp_out_local25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_out_local25", "role": "we0" }} , 
 	{ "name": "mlp_out_local25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_out_local25", "role": "d0" }} , 
 	{ "name": "d_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "d_out", "role": "dout" }} , 
 	{ "name": "d_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out", "role": "empty_n" }} , 
 	{ "name": "d_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out", "role": "read" }} , 
 	{ "name": "do_relu_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "do_relu", "role": "dout" }} , 
 	{ "name": "do_relu_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "do_relu", "role": "empty_n" }} , 
 	{ "name": "do_relu_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "do_relu", "role": "read" }} , 
 	{ "name": "mlp_2_bias_V_load_loc_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_2_bias_V_load_loc_out", "role": "din" }} , 
 	{ "name": "mlp_2_bias_V_load_loc_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_bias_V_load_loc_out", "role": "full_n" }} , 
 	{ "name": "mlp_2_bias_V_load_loc_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_bias_V_load_loc_out", "role": "write" }} , 
 	{ "name": "d_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "d_out_out", "role": "din" }} , 
 	{ "name": "d_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out_out", "role": "full_n" }} , 
 	{ "name": "d_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out_out", "role": "write" }} , 
 	{ "name": "do_relu_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "do_relu_out", "role": "din" }} , 
 	{ "name": "do_relu_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "do_relu_out", "role": "full_n" }} , 
 	{ "name": "do_relu_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "do_relu_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "MLP_PE_600_300_68",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "602", "EstimateLatencyMax" : "602",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_10_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_10_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_11_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_11_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_31ns_54_1_1_U423", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MLP_PE_600_300_68 {
		mlp_weight_fifo_10_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_11_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local10 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local25 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "602", "Max" : "602"}
	, {"Name" : "Interval", "Min" : "602", "Max" : "602"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mlp_weight_fifo_10_V_V { ap_fifo {  { mlp_weight_fifo_10_V_V_dout fifo_data 0 32 }  { mlp_weight_fifo_10_V_V_empty_n fifo_status 0 1 }  { mlp_weight_fifo_10_V_V_read fifo_update 1 1 } } }
	mlp_weight_fifo_11_V_V { ap_fifo {  { mlp_weight_fifo_11_V_V_din fifo_data 1 32 }  { mlp_weight_fifo_11_V_V_full_n fifo_status 0 1 }  { mlp_weight_fifo_11_V_V_write fifo_update 1 1 } } }
	mlp_2_bias_V_load_loc { ap_fifo {  { mlp_2_bias_V_load_loc_dout fifo_data 0 32 }  { mlp_2_bias_V_load_loc_empty_n fifo_status 0 1 }  { mlp_2_bias_V_load_loc_read fifo_update 1 1 } } }
	mlp_in_local10 { ap_memory {  { mlp_in_local10_address0 mem_address 1 10 }  { mlp_in_local10_ce0 mem_ce 1 1 }  { mlp_in_local10_q0 mem_dout 0 31 } } }
	mlp_out_local25 { ap_memory {  { mlp_out_local25_address0 mem_address 1 9 }  { mlp_out_local25_ce0 mem_ce 1 1 }  { mlp_out_local25_we0 mem_we 1 1 }  { mlp_out_local25_d0 mem_din 1 32 } } }
	d_out { ap_fifo {  { d_out_dout fifo_data 0 9 }  { d_out_empty_n fifo_status 0 1 }  { d_out_read fifo_update 1 1 } } }
	do_relu { ap_fifo {  { do_relu_dout fifo_data 0 1 }  { do_relu_empty_n fifo_status 0 1 }  { do_relu_read fifo_update 1 1 } } }
	mlp_2_bias_V_load_loc_out { ap_fifo {  { mlp_2_bias_V_load_loc_out_din fifo_data 1 32 }  { mlp_2_bias_V_load_loc_out_full_n fifo_status 0 1 }  { mlp_2_bias_V_load_loc_out_write fifo_update 1 1 } } }
	d_out_out { ap_fifo {  { d_out_out_din fifo_data 1 9 }  { d_out_out_full_n fifo_status 0 1 }  { d_out_out_write fifo_update 1 1 } } }
	do_relu_out { ap_fifo {  { do_relu_out_din fifo_data 1 1 }  { do_relu_out_full_n fifo_status 0 1 }  { do_relu_out_write fifo_update 1 1 } } }
}
