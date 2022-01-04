set moduleName compute_out_nodes_features_Pipeline_VITIS_LOOP_183_4
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
set C_modelName {compute_out_nodes_features_Pipeline_VITIS_LOOP_183_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ tmp_110 int 5 regular  }
	{ mul_ln185 int 10 regular  }
	{ zext_ln181 int 5 regular  }
	{ all_attention_coefficients_V int 28 regular {array 40000 { 1 3 } 1 1 } {global 0}  }
	{ a_buffer_V int 28 regular {array 16 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "tmp_110", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln185", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln181", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "all_attention_coefficients_V", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "a_buffer_V", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ tmp_110 sc_in sc_lv 5 signal 0 } 
	{ mul_ln185 sc_in sc_lv 10 signal 1 } 
	{ zext_ln181 sc_in sc_lv 5 signal 2 } 
	{ all_attention_coefficients_V_address0 sc_out sc_lv 16 signal 3 } 
	{ all_attention_coefficients_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ all_attention_coefficients_V_q0 sc_in sc_lv 28 signal 3 } 
	{ a_buffer_V_address0 sc_out sc_lv 4 signal 4 } 
	{ a_buffer_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ a_buffer_V_we0 sc_out sc_logic 1 signal 4 } 
	{ a_buffer_V_d0 sc_out sc_lv 28 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "tmp_110", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "tmp_110", "role": "default" }} , 
 	{ "name": "mul_ln185", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "mul_ln185", "role": "default" }} , 
 	{ "name": "zext_ln181", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "zext_ln181", "role": "default" }} , 
 	{ "name": "all_attention_coefficients_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "all_attention_coefficients_V", "role": "address0" }} , 
 	{ "name": "all_attention_coefficients_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_attention_coefficients_V", "role": "ce0" }} , 
 	{ "name": "all_attention_coefficients_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_attention_coefficients_V", "role": "q0" }} , 
 	{ "name": "a_buffer_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "a_buffer_V", "role": "address0" }} , 
 	{ "name": "a_buffer_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buffer_V", "role": "ce0" }} , 
 	{ "name": "a_buffer_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_buffer_V", "role": "we0" }} , 
 	{ "name": "a_buffer_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "a_buffer_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "compute_out_nodes_features_Pipeline_VITIS_LOOP_183_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "tmp_110", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln185", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln181", "Type" : "None", "Direction" : "I"},
			{"Name" : "all_attention_coefficients_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_buffer_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_183_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_10ns_5ns_7ns_5ns_16_4_1_U1934", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_out_nodes_features_Pipeline_VITIS_LOOP_183_4 {
		tmp_110 {Type I LastRead 0 FirstWrite -1}
		mul_ln185 {Type I LastRead 0 FirstWrite -1}
		zext_ln181 {Type I LastRead 0 FirstWrite -1}
		all_attention_coefficients_V {Type I LastRead 4 FirstWrite -1}
		a_buffer_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "22", "Max" : "22"}
	, {"Name" : "Interval", "Min" : "22", "Max" : "22"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	tmp_110 { ap_none {  { tmp_110 in_data 0 5 } } }
	mul_ln185 { ap_none {  { mul_ln185 in_data 0 10 } } }
	zext_ln181 { ap_none {  { zext_ln181 in_data 0 5 } } }
	all_attention_coefficients_V { ap_memory {  { all_attention_coefficients_V_address0 mem_address 1 16 }  { all_attention_coefficients_V_ce0 mem_ce 1 1 }  { all_attention_coefficients_V_q0 mem_dout 0 28 } } }
	a_buffer_V { ap_memory {  { a_buffer_V_address0 mem_address 1 4 }  { a_buffer_V_ce0 mem_ce 1 1 }  { a_buffer_V_we0 mem_we 1 1 }  { a_buffer_V_d0 mem_din 1 28 } } }
}
