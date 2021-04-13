set moduleName MLP_batch_nodes_600_300_Block_split13_proc
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
set C_modelName {MLP_batch_nodes<600, 300>_Block_.split13_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ d_out int 9 regular {fifo 0}  }
	{ mlp_2_bias_V_load_out_out int 32 regular {fifo 1}  }
	{ mlp_2_bias_V int 32 regular {array 300 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "d_out", "interface" : "fifo", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "mlp_2_bias_V_load_out_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mlp_2_bias_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "mlp_2_bias.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 299,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ d_out_dout sc_in sc_lv 9 signal 0 } 
	{ d_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ d_out_read sc_out sc_logic 1 signal 0 } 
	{ mlp_2_bias_V_load_out_out_din sc_out sc_lv 32 signal 1 } 
	{ mlp_2_bias_V_load_out_out_full_n sc_in sc_logic 1 signal 1 } 
	{ mlp_2_bias_V_load_out_out_write sc_out sc_logic 1 signal 1 } 
	{ mlp_2_bias_V_address0 sc_out sc_lv 9 signal 2 } 
	{ mlp_2_bias_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ mlp_2_bias_V_q0 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "d_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "d_out", "role": "dout" }} , 
 	{ "name": "d_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out", "role": "empty_n" }} , 
 	{ "name": "d_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "d_out", "role": "read" }} , 
 	{ "name": "mlp_2_bias_V_load_out_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_2_bias_V_load_out_out", "role": "din" }} , 
 	{ "name": "mlp_2_bias_V_load_out_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_bias_V_load_out_out", "role": "full_n" }} , 
 	{ "name": "mlp_2_bias_V_load_out_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_bias_V_load_out_out", "role": "write" }} , 
 	{ "name": "mlp_2_bias_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "mlp_2_bias_V", "role": "address0" }} , 
 	{ "name": "mlp_2_bias_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mlp_2_bias_V", "role": "ce0" }} , 
 	{ "name": "mlp_2_bias_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mlp_2_bias_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "MLP_batch_nodes_600_300_Block_split13_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	MLP_batch_nodes_600_300_Block_split13_proc {
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_out_out {Type O LastRead -1 FirstWrite 1}
		mlp_2_bias_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	d_out { ap_fifo {  { d_out_dout fifo_data 0 9 }  { d_out_empty_n fifo_status 0 1 }  { d_out_read fifo_update 1 1 } } }
	mlp_2_bias_V_load_out_out { ap_fifo {  { mlp_2_bias_V_load_out_out_din fifo_data 1 32 }  { mlp_2_bias_V_load_out_out_full_n fifo_status 0 1 }  { mlp_2_bias_V_load_out_out_write fifo_update 1 1 } } }
	mlp_2_bias_V { ap_memory {  { mlp_2_bias_V_address0 mem_address 1 9 }  { mlp_2_bias_V_ce0 mem_ce 1 1 }  { mlp_2_bias_V_q0 mem_dout 0 32 } } }
}
