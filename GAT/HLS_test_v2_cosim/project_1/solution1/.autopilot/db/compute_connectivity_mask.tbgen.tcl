set moduleName compute_connectivity_mask
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
set C_modelName {compute_connectivity_mask}
set C_modelType { void 0 }
set C_modelArgList {
	{ num_of_nodes int 32 regular  }
	{ num_of_edges int 32 regular  }
	{ edge_list int 32 regular {array 1000 { 1 1 } 1 1 } {global 0}  }
	{ connectivity_mask_final int 32 regular {array 40000 { 3 0 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num_of_nodes", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "num_of_edges", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "edge_list", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "connectivity_mask_final", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ num_of_nodes sc_in sc_lv 32 signal 0 } 
	{ num_of_edges sc_in sc_lv 32 signal 1 } 
	{ edge_list_address0 sc_out sc_lv 10 signal 2 } 
	{ edge_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ edge_list_q0 sc_in sc_lv 32 signal 2 } 
	{ edge_list_address1 sc_out sc_lv 10 signal 2 } 
	{ edge_list_ce1 sc_out sc_logic 1 signal 2 } 
	{ edge_list_q1 sc_in sc_lv 32 signal 2 } 
	{ connectivity_mask_final_address1 sc_out sc_lv 16 signal 3 } 
	{ connectivity_mask_final_ce1 sc_out sc_logic 1 signal 3 } 
	{ connectivity_mask_final_we1 sc_out sc_logic 1 signal 3 } 
	{ connectivity_mask_final_d1 sc_out sc_lv 32 signal 3 } 
	{ grp_fu_2668_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2668_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_2668_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_2668_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_2672_p_din0 sc_out sc_lv 31 signal -1 } 
	{ grp_fu_2672_p_din1 sc_out sc_lv 31 signal -1 } 
	{ grp_fu_2672_p_dout0 sc_in sc_lv 62 signal -1 } 
	{ grp_fu_2672_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "num_of_nodes", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_of_nodes", "role": "default" }} , 
 	{ "name": "num_of_edges", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "num_of_edges", "role": "default" }} , 
 	{ "name": "edge_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address0" }} , 
 	{ "name": "edge_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce0" }} , 
 	{ "name": "edge_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q0" }} , 
 	{ "name": "edge_list_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "edge_list", "role": "address1" }} , 
 	{ "name": "edge_list_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "edge_list", "role": "ce1" }} , 
 	{ "name": "edge_list_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "edge_list", "role": "q1" }} , 
 	{ "name": "connectivity_mask_final_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "connectivity_mask_final", "role": "address1" }} , 
 	{ "name": "connectivity_mask_final_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final", "role": "ce1" }} , 
 	{ "name": "connectivity_mask_final_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "connectivity_mask_final", "role": "we1" }} , 
 	{ "name": "connectivity_mask_final_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "connectivity_mask_final", "role": "d1" }} , 
 	{ "name": "grp_fu_2668_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2668_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2668_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2668_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2668_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_2668_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2668_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2668_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_2672_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "grp_fu_2672_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_2672_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "grp_fu_2672_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_2672_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "grp_fu_2672_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_2672_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_2672_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "7", "9"],
		"CDFG" : "compute_connectivity_mask",
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
			{"Name" : "num_of_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_1_fu_42", "Port" : "connectivity_mask", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "7", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58", "Port" : "connectivity_mask", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65", "Port" : "connectivity_mask", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "4", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49", "Port" : "connectivity_mask", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49", "Port" : "edge_list", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "connectivity_mask_final", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65", "Port" : "connectivity_mask_final", "Inst_start_state" : "9", "Inst_end_state" : "10"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.connectivity_mask_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_1_fu_42", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "compute_connectivity_mask_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sext_ln413", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_1_fu_42.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1",
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
			{"Name" : "num_of_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "connectivity_mask", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_423_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49.mac_muladd_16s_8ns_16ns_16_4_1_U678", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1_fu_49.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "connectivity_mask", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_428_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65", "Parent" : "0", "Child" : ["10", "11"],
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
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65.mac_muladd_16s_8ns_16ns_16_4_1_U685", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4_fu_65.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"}]}


set ArgLastReadFirstWriteLatency {
	compute_connectivity_mask {
		num_of_nodes {Type I LastRead 0 FirstWrite -1}
		num_of_edges {Type I LastRead 2 FirstWrite -1}
		connectivity_mask {Type IO LastRead -1 FirstWrite -1}
		edge_list {Type I LastRead 1 FirstWrite -1}
		connectivity_mask_final {Type O LastRead -1 FirstWrite 6}}
	compute_connectivity_mask_Pipeline_1 {
		sext_ln413 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask {Type O LastRead -1 FirstWrite 1}}
	compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1 {
		num_of_edges {Type I LastRead 0 FirstWrite -1}
		edge_list {Type I LastRead 1 FirstWrite -1}
		connectivity_mask {Type IO LastRead 4 FirstWrite 6}}
	compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2 {
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		connectivity_mask {Type IO LastRead 1 FirstWrite 3}}
	compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4 {
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		mul_ln432 {Type I LastRead 0 FirstWrite -1}
		connectivity_mask_final {Type O LastRead -1 FirstWrite 6}
		connectivity_mask {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	num_of_nodes { ap_none {  { num_of_nodes in_data 0 32 } } }
	num_of_edges { ap_none {  { num_of_edges in_data 0 32 } } }
	edge_list { ap_memory {  { edge_list_address0 mem_address 1 10 }  { edge_list_ce0 mem_ce 1 1 }  { edge_list_q0 mem_dout 0 32 }  { edge_list_address1 MemPortADDR2 1 10 }  { edge_list_ce1 MemPortCE2 1 1 }  { edge_list_q1 MemPortDOUT2 0 32 } } }
	connectivity_mask_final { ap_memory {  { connectivity_mask_final_address1 MemPortADDR2 1 16 }  { connectivity_mask_final_ce1 MemPortCE2 1 1 }  { connectivity_mask_final_we1 MemPortWE2 1 1 }  { connectivity_mask_final_d1 MemPortDIN2 1 32 } } }
}
