set moduleName compute_all_scores
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
set C_modelName {compute_all_scores}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_of_nodes int 32 regular  }
	{ scores_source_V int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ scores_target_V int 28 regular {array 800 { 1 3 } 1 1 } {global 0}  }
	{ all_scores_V int 28 regular {array 160000 { 3 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_of_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "scores_source_V", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scores_target_V", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "all_scores_V", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_of_nodes sc_in sc_lv 32 signal 0 } 
	{ scores_source_V_address0 sc_out sc_lv 10 signal 1 } 
	{ scores_source_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ scores_source_V_q0 sc_in sc_lv 28 signal 1 } 
	{ scores_target_V_address0 sc_out sc_lv 10 signal 2 } 
	{ scores_target_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ scores_target_V_q0 sc_in sc_lv 28 signal 2 } 
	{ all_scores_V_address1 sc_out sc_lv 18 signal 3 } 
	{ all_scores_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ all_scores_V_we1 sc_out sc_logic 1 signal 3 } 
	{ all_scores_V_d1 sc_out sc_lv 28 signal 3 } 
	{ grp_fu_2450_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2450_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2450_p_dout0 sc_in sc_lv 64 signal -1 } 
	{ grp_fu_2450_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_of_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_of_nodes", "role": "default" }} , 
 	{ "name": "scores_source_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "scores_source_V", "role": "address0" }} , 
 	{ "name": "scores_source_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_source_V", "role": "ce0" }} , 
 	{ "name": "scores_source_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_source_V", "role": "q0" }} , 
 	{ "name": "scores_target_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "scores_target_V", "role": "address0" }} , 
 	{ "name": "scores_target_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_target_V", "role": "ce0" }} , 
 	{ "name": "scores_target_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_target_V", "role": "q0" }} , 
 	{ "name": "all_scores_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "all_scores_V", "role": "address1" }} , 
 	{ "name": "all_scores_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V", "role": "ce1" }} , 
 	{ "name": "all_scores_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V", "role": "we1" }} , 
 	{ "name": "all_scores_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V", "role": "d1" }} , 
 	{ "name": "grp_fu_2450_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2450_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2450_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2450_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2450_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "grp_fu_2450_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2450_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2450_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "compute_all_scores",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "num_of_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "scores_source_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scores_target_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "all_scores_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_91_1_VITIS_LOOP_92_2_VITIS_LOOP_93_3", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "4", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state2"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state11"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_3ns_9ns_10_1_1_U1016", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_3ns_9ns_11_1_1_U1017", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3ns_8ns_10ns_10_4_1_U1018", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_11ns_18ns_8ns_18ns_18_4_1_U1019", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_28s_16ns_45_4_1_U1020", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_all_scores {
		num_of_nodes {Type I LastRead 0 FirstWrite -1}
		scores_source_V {Type I LastRead 5 FirstWrite -1}
		scores_target_V {Type I LastRead 5 FirstWrite -1}
		all_scores_V {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	num_of_nodes { ap_none {  { num_of_nodes in_data 0 32 } } }
	scores_source_V { ap_memory {  { scores_source_V_address0 mem_address 1 10 }  { scores_source_V_ce0 mem_ce 1 1 }  { scores_source_V_q0 mem_dout 0 28 } } }
	scores_target_V { ap_memory {  { scores_target_V_address0 mem_address 1 10 }  { scores_target_V_ce0 mem_ce 1 1 }  { scores_target_V_q0 mem_dout 0 28 } } }
	all_scores_V { ap_memory {  { all_scores_V_address1 MemPortADDR2 1 18 }  { all_scores_V_ce1 MemPortCE2 1 1 }  { all_scores_V_we1 MemPortWE2 1 1 }  { all_scores_V_d1 MemPortDIN2 1 28 } } }
}
