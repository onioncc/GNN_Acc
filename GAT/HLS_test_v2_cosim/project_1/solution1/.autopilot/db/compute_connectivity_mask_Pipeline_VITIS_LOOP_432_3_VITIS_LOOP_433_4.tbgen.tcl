set moduleName compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ trunc_ln int 31 regular  }
	{ mul_ln432 int 62 regular  }
	{ connectivity_mask_final int 32 regular {array 40000 { 3 0 } 0 1 } {global 1}  }
	{ connectivity_mask int 32 regular {array 40000 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln432", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "connectivity_mask_final", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ trunc_ln sc_in sc_lv 31 signal 0 } 
	{ mul_ln432 sc_in sc_lv 62 signal 1 } 
	{ connectivity_mask_final_address1 sc_out sc_lv 16 signal 2 } 
	{ connectivity_mask_final_ce1 sc_out sc_logic 1 signal 2 } 
	{ connectivity_mask_final_we1 sc_out sc_logic 1 signal 2 } 
	{ connectivity_mask_final_d1 sc_out sc_lv 32 signal 2 } 
	{ connectivity_mask_address0 sc_out sc_lv 16 signal 3 } 
	{ connectivity_mask_ce0 sc_out sc_logic 1 signal 3 } 
	{ connectivity_mask_q0 sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "mul_ln432", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "mul_ln432", "role": "default" }} , 
 	{ "name": "connectivity_mask_final_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "connectivity_mask_final", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final", "role": "d1" }} , 
 	{ "name": "connectivity_mask_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "connectivity_mask", "role": "address0" }} , 
 	{ "name": "connectivity_mask_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "4294836231",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln432", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask_final", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "connectivity_mask", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_432_3_VITIS_LOOP_433_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_8ns_16ns_16_4_1_U685", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4 {
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		mul_ln432 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_final {Type O LastRead -1 FirstWrite 6}
		connectivity_mask {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "4294836231"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "-131065"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	trunc_ln { ap_none {  { trunc_ln in_data 0 31 } } }
	mul_ln432 { ap_none {  { mul_ln432 in_data 0 62 } } }
	connectivity_mask_final { ap_memory {  { connectivity_mask_final_address1 MemPortADDR2 1 16 }  { connectivity_mask_final_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_we1 MemPortWE2 1 1 }  { connectivity_mask_final_d1 MemPortDIN2 1 32 } } }
	connectivity_mask { ap_memory {  { connectivity_mask_address0 mem_address 1 16 }  { connectivity_mask_ce0 mem_ce 1 1 }  { connectivity_mask_q0 mem_dout 0 32 } } }
}
