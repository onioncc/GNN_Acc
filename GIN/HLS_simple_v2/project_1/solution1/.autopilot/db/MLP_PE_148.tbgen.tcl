set moduleName MLP_PE_148
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
set C_modelName {MLP_PE.148}
set C_modelType { void 0 }
set C_modelArgList {
	{ mlp_in_local3 int 32 regular {array 600 { 1 3 } 1 1 }  }
	{ mlp_1_weight_fifo_3_V_V int 32 regular {fifo 0 volatile }  }
	{ mlp_1_bias_V_load_loc int 32 regular {fifo 0}  }
	{ mlp_out_local6 int 31 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mlp_in_local3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_1_weight_fifo_3_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_1_bias_V_load_loc", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_out_local6", "interface" : "wire", "bitwidth" : 31, "direction" : "WRITEONLY"} ]}
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
	{ mlp_in_local3_address0 sc_out sc_lv 10 signal 0 } 
	{ mlp_in_local3_ce0 sc_out sc_logic 1 signal 0 } 
	{ mlp_in_local3_q0 sc_in sc_lv 32 signal 0 } 
	{ mlp_1_weight_fifo_3_V_V_dout sc_in sc_lv 32 signal 1 } 
	{ mlp_1_weight_fifo_3_V_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ mlp_1_weight_fifo_3_V_V_read sc_out sc_logic 1 signal 1 } 
	{ mlp_1_bias_V_load_loc_dout sc_in sc_lv 32 signal 2 } 
	{ mlp_1_bias_V_load_loc_empty_n sc_in sc_logic 1 signal 2 } 
	{ mlp_1_bias_V_load_loc_read sc_out sc_logic 1 signal 2 } 
	{ mlp_out_local6 sc_out sc_lv 31 signal 3 } 
	{ mlp_out_local6_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mlp_in_local3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "address0" }} , 
 	{ "name": "mlp_in_local3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "ce0" }} , 
 	{ "name": "mlp_in_local3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_in_local3", "role": "q0" }} , 
 	{ "name": "mlp_1_weight_fifo_3_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_weight_fifo_3_V_V", "role": "dout" }} , 
 	{ "name": "mlp_1_weight_fifo_3_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weight_fifo_3_V_V", "role": "empty_n" }} , 
 	{ "name": "mlp_1_weight_fifo_3_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_weight_fifo_3_V_V", "role": "read" }} , 
 	{ "name": "mlp_1_bias_V_load_loc_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_1_bias_V_load_loc", "role": "dout" }} , 
 	{ "name": "mlp_1_bias_V_load_loc_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V_load_loc", "role": "empty_n" }} , 
 	{ "name": "mlp_1_bias_V_load_loc_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_1_bias_V_load_loc", "role": "read" }} , 
 	{ "name": "mlp_out_local6", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "mlp_out_local6", "role": "default" }} , 
 	{ "name": "mlp_out_local6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mlp_out_local6", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "MLP_PE_148",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "317", "EstimateLatencyMax" : "317",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_1_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_1_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_out_local6", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_12ns_11ns_12_16_1_U94", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_54_1_1_U95", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	MLP_PE_148 {
		mlp_in_local3 {Type I LastRead 16 FirstWrite -1}
		mlp_1_weight_fifo_3_V_V {Type I LastRead 17 FirstWrite -1}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_out_local6 {Type O LastRead -1 FirstWrite 17}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "317", "Max" : "317"}
	, {"Name" : "Interval", "Min" : "317", "Max" : "317"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mlp_in_local3 { ap_memory {  { mlp_in_local3_address0 mem_address 1 10 }  { mlp_in_local3_ce0 mem_ce 1 1 }  { mlp_in_local3_q0 mem_dout 0 32 } } }
	mlp_1_weight_fifo_3_V_V { ap_fifo {  { mlp_1_weight_fifo_3_V_V_dout fifo_data 0 32 }  { mlp_1_weight_fifo_3_V_V_empty_n fifo_status 0 1 }  { mlp_1_weight_fifo_3_V_V_read fifo_update 1 1 } } }
	mlp_1_bias_V_load_loc { ap_fifo {  { mlp_1_bias_V_load_loc_dout fifo_data 0 32 }  { mlp_1_bias_V_load_loc_empty_n fifo_status 0 1 }  { mlp_1_bias_V_load_loc_read fifo_update 1 1 } } }
	mlp_out_local6 { ap_vld {  { mlp_out_local6 out_data 1 31 }  { mlp_out_local6_ap_vld out_vld 1 1 } } }
}
