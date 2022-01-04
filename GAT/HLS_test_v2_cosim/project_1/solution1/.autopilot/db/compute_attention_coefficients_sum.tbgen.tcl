set moduleName compute_attention_coefficients_sum
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
set C_modelName {compute_attention_coefficients_sum}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_of_nodes int 32 regular  }
	{ all_scores_V int 28 regular {array 160000 { 1 0 } 1 1 } {global 2}  }
	{ connectivity_mask_final int 32 regular {array 40000 { 1 3 } 1 1 } {global 0}  }
	{ attention_coefficients_sum_V int 28 regular {array 800 { 3 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_of_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "all_scores_V", "interface" : "memory", "bitwidth" : 28, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "attention_coefficients_sum_V", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ all_scores_V_address0 sc_out sc_lv 18 signal 1 } 
	{ all_scores_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ all_scores_V_q0 sc_in sc_lv 28 signal 1 } 
	{ all_scores_V_address1 sc_out sc_lv 18 signal 1 } 
	{ all_scores_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ all_scores_V_we1 sc_out sc_logic 1 signal 1 } 
	{ all_scores_V_d1 sc_out sc_lv 28 signal 1 } 
	{ connectivity_mask_final_address0 sc_out sc_lv 16 signal 2 } 
	{ connectivity_mask_final_ce0 sc_out sc_logic 1 signal 2 } 
	{ connectivity_mask_final_q0 sc_in sc_lv 32 signal 2 } 
	{ attention_coefficients_sum_V_address1 sc_out sc_lv 10 signal 3 } 
	{ attention_coefficients_sum_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ attention_coefficients_sum_V_we1 sc_out sc_logic 1 signal 3 } 
	{ attention_coefficients_sum_V_d1 sc_out sc_lv 28 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_of_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_of_nodes", "role": "default" }} , 
 	{ "name": "all_scores_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "all_scores_V", "role": "address0" }} , 
 	{ "name": "all_scores_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V", "role": "ce0" }} , 
 	{ "name": "all_scores_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V", "role": "q0" }} , 
 	{ "name": "all_scores_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "all_scores_V", "role": "address1" }} , 
 	{ "name": "all_scores_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V", "role": "ce1" }} , 
 	{ "name": "all_scores_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "all_scores_V", "role": "we1" }} , 
 	{ "name": "all_scores_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "all_scores_V", "role": "d1" }} , 
 	{ "name": "connectivity_mask_final_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "connectivity_mask_final", "role": "address0" }} , 
 	{ "name": "connectivity_mask_final_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final", "role": "ce0" }} , 
 	{ "name": "connectivity_mask_final_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final", "role": "q0" }} , 
 	{ "name": "attention_coefficients_sum_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "attention_coefficients_sum_V", "role": "address1" }} , 
 	{ "name": "attention_coefficients_sum_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attention_coefficients_sum_V", "role": "ce1" }} , 
 	{ "name": "attention_coefficients_sum_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "attention_coefficients_sum_V", "role": "we1" }} , 
 	{ "name": "attention_coefficients_sum_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "attention_coefficients_sum_V", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "12", "13", "14"],
		"CDFG" : "compute_attention_coefficients_sum",
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
			{"Name" : "all_scores_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103", "Port" : "all_scores_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "connectivity_mask_final", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103", "Port" : "connectivity_mask_final", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "attention_coefficients_sum_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_108_1_VITIS_LOOP_109_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "10", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state10"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103", "Parent" : "0", "Child" : ["2", "11"],
		"CDFG" : "compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3",
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
			{"Name" : "mul_ln116_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln113", "Type" : "None", "Direction" : "I"},
			{"Name" : "sum_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "all_scores_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "connectivity_mask_final", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_exp_28_10_s_fu_124", "Port" : "f_x_msb_4_h_table_V", "Inst_start_state" : "3", "Inst_end_state" : "15"}]},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_exp_28_10_s_fu_124", "Port" : "f_x_msb_4_l_table_V", "Inst_start_state" : "3", "Inst_end_state" : "15"}]},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_exp_28_10_s_fu_124", "Port" : "f_x_msb_3_table_V", "Inst_start_state" : "3", "Inst_end_state" : "15"}]},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_exp_28_10_s_fu_124", "Port" : "f_x_msb_2_table_V", "Inst_start_state" : "3", "Inst_end_state" : "15"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_exp_28_10_s_fu_124", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "15"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_111_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter15", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter15", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103.grp_exp_28_10_s_fu_124", "Parent" : "1", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "exp_28_10_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "12", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_msb_4_h_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_4_l_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_3_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "f_x_msb_2_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103.grp_exp_28_10_s_fu_124.f_x_msb_4_h_table_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103.grp_exp_28_10_s_fu_124.f_x_msb_4_l_table_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103.grp_exp_28_10_s_fu_124.f_x_msb_3_table_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103.grp_exp_28_10_s_fu_124.f_x_msb_2_table_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103.grp_exp_28_10_s_fu_124.exp_x_msb_1_table_V_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103.grp_exp_28_10_s_fu_124.mul_44ns_42ns_86_2_1_U1030", "Parent" : "2"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103.grp_exp_28_10_s_fu_124.mul_50ns_48ns_98_3_1_U1031", "Parent" : "2"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103.grp_exp_28_10_s_fu_124.mul_50ns_50ns_100_3_1_U1032", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3ns_8ns_10ns_12_4_1_U1048", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_12ns_8ns_18_4_1_U1049", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_10ns_8ns_16_4_1_U1050", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_attention_coefficients_sum {
		num_of_nodes {Type I LastRead 0 FirstWrite -1}
		all_scores_V {Type IO LastRead 1 FirstWrite 2}
		connectivity_mask_final {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}
		attention_coefficients_sum_V {Type O LastRead -1 FirstWrite 9}}
	compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3 {
		num_of_nodes {Type I LastRead 0 FirstWrite -1}
		mul_ln116_1 {Type I LastRead 0 FirstWrite -1}
		mul_ln113 {Type I LastRead 0 FirstWrite -1}
		sum_V_out {Type O LastRead -1 FirstWrite 14}
		all_scores_V {Type IO LastRead 1 FirstWrite 2}
		connectivity_mask_final {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	exp_28_10_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_msb_4_h_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_4_l_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_3_table_V {Type I LastRead -1 FirstWrite -1}
		f_x_msb_2_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	num_of_nodes { ap_none {  { num_of_nodes in_data 0 32 } } }
	all_scores_V { ap_memory {  { all_scores_V_address0 mem_address 1 18 }  { all_scores_V_ce0 mem_ce 1 1 }  { all_scores_V_q0 mem_dout 0 28 }  { all_scores_V_address1 MemPortADDR2 1 18 }  { all_scores_V_ce1 MemPortCE2 1 1 }  { all_scores_V_we1 MemPortWE2 1 1 }  { all_scores_V_d1 MemPortDIN2 1 28 } } }
	connectivity_mask_final { ap_memory {  { connectivity_mask_final_address0 mem_address 1 16 }  { connectivity_mask_final_ce0 mem_ce 1 1 }  { connectivity_mask_final_q0 mem_dout 0 32 } } }
	attention_coefficients_sum_V { ap_memory {  { attention_coefficients_sum_V_address1 MemPortADDR2 1 10 }  { attention_coefficients_sum_V_ce1 MemPortCE2 1 1 }  { attention_coefficients_sum_V_we1 MemPortWE2 1 1 }  { attention_coefficients_sum_V_d1 MemPortDIN2 1 28 } } }
}
