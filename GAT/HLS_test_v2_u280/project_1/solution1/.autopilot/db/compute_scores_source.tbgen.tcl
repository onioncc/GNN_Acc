set moduleName compute_scores_source
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
set C_modelName {compute_scores_source}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer int 3 regular  }
	{ scores_source_V int 28 regular {array 400 { 3 0 } 0 1 } {global 1}  }
	{ scoring_fn_source_V_0 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_source_V_1 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_source_V_2 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_source_V_3 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_source_V_4 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_source_V_5 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_source_V_6 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_source_V_7 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_source_V_8 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_source_V_9 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_source_V_10 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_source_V_11 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_source_V_12 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_source_V_13 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_source_V_14 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ scoring_fn_source_V_15 int 28 regular {array 20 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_15 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_31 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_47 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_63 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_14 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_30 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_46 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_62 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_13 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_29 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_45 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_61 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_12 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_28 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_44 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_60 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_11 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_27 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_43 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_59 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_10 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_26 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_42 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_58 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_9 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_25 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_41 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_57 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_8 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_24 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_40 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_56 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_7 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_23 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_39 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_55 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_6 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_22 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_38 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_54 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_5 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_21 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_37 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_53 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_4 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_20 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_36 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_52 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_3 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_19 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_35 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_51 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_2 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_18 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_34 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_50 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_1 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_17 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_33 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_49 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_0 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_16 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_32 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
	{ nodes_features_proj_V_48 int 28 regular {array 100 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "layer", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "scores_source_V", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_source_V_0", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_source_V_1", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_source_V_2", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_source_V_3", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_source_V_4", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_source_V_5", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_source_V_6", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_source_V_7", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_source_V_8", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_source_V_9", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_source_V_10", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_source_V_11", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_source_V_12", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_source_V_13", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_source_V_14", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_source_V_15", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_15", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_31", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_47", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_63", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_14", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_30", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_46", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_62", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_13", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_29", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_45", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_61", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_12", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_28", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_44", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_60", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_11", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_27", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_43", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_59", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_10", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_26", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_42", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_58", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_9", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_25", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_41", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_57", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_8", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_24", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_40", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_56", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_7", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_23", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_39", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_55", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_6", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_22", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_38", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_54", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_5", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_21", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_37", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_53", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_4", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_20", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_36", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_52", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_3", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_19", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_35", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_51", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_2", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_18", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_34", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_50", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_1", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_17", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_33", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_49", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_0", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_16", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_32", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "nodes_features_proj_V_48", "interface" : "memory", "bitwidth" : 28, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 315
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer sc_in sc_lv 3 signal 0 } 
	{ scores_source_V_address1 sc_out sc_lv 9 signal 1 } 
	{ scores_source_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ scores_source_V_we1 sc_out sc_logic 1 signal 1 } 
	{ scores_source_V_d1 sc_out sc_lv 28 signal 1 } 
	{ scoring_fn_source_V_0_address0 sc_out sc_lv 5 signal 2 } 
	{ scoring_fn_source_V_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ scoring_fn_source_V_0_q0 sc_in sc_lv 28 signal 2 } 
	{ scoring_fn_source_V_1_address0 sc_out sc_lv 5 signal 3 } 
	{ scoring_fn_source_V_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ scoring_fn_source_V_1_q0 sc_in sc_lv 28 signal 3 } 
	{ scoring_fn_source_V_2_address0 sc_out sc_lv 5 signal 4 } 
	{ scoring_fn_source_V_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ scoring_fn_source_V_2_q0 sc_in sc_lv 28 signal 4 } 
	{ scoring_fn_source_V_3_address0 sc_out sc_lv 5 signal 5 } 
	{ scoring_fn_source_V_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ scoring_fn_source_V_3_q0 sc_in sc_lv 28 signal 5 } 
	{ scoring_fn_source_V_4_address0 sc_out sc_lv 5 signal 6 } 
	{ scoring_fn_source_V_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ scoring_fn_source_V_4_q0 sc_in sc_lv 28 signal 6 } 
	{ scoring_fn_source_V_5_address0 sc_out sc_lv 5 signal 7 } 
	{ scoring_fn_source_V_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ scoring_fn_source_V_5_q0 sc_in sc_lv 28 signal 7 } 
	{ scoring_fn_source_V_6_address0 sc_out sc_lv 5 signal 8 } 
	{ scoring_fn_source_V_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ scoring_fn_source_V_6_q0 sc_in sc_lv 28 signal 8 } 
	{ scoring_fn_source_V_7_address0 sc_out sc_lv 5 signal 9 } 
	{ scoring_fn_source_V_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ scoring_fn_source_V_7_q0 sc_in sc_lv 28 signal 9 } 
	{ scoring_fn_source_V_8_address0 sc_out sc_lv 5 signal 10 } 
	{ scoring_fn_source_V_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ scoring_fn_source_V_8_q0 sc_in sc_lv 28 signal 10 } 
	{ scoring_fn_source_V_9_address0 sc_out sc_lv 5 signal 11 } 
	{ scoring_fn_source_V_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ scoring_fn_source_V_9_q0 sc_in sc_lv 28 signal 11 } 
	{ scoring_fn_source_V_10_address0 sc_out sc_lv 5 signal 12 } 
	{ scoring_fn_source_V_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ scoring_fn_source_V_10_q0 sc_in sc_lv 28 signal 12 } 
	{ scoring_fn_source_V_11_address0 sc_out sc_lv 5 signal 13 } 
	{ scoring_fn_source_V_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ scoring_fn_source_V_11_q0 sc_in sc_lv 28 signal 13 } 
	{ scoring_fn_source_V_12_address0 sc_out sc_lv 5 signal 14 } 
	{ scoring_fn_source_V_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ scoring_fn_source_V_12_q0 sc_in sc_lv 28 signal 14 } 
	{ scoring_fn_source_V_13_address0 sc_out sc_lv 5 signal 15 } 
	{ scoring_fn_source_V_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ scoring_fn_source_V_13_q0 sc_in sc_lv 28 signal 15 } 
	{ scoring_fn_source_V_14_address0 sc_out sc_lv 5 signal 16 } 
	{ scoring_fn_source_V_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ scoring_fn_source_V_14_q0 sc_in sc_lv 28 signal 16 } 
	{ scoring_fn_source_V_15_address0 sc_out sc_lv 5 signal 17 } 
	{ scoring_fn_source_V_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ scoring_fn_source_V_15_q0 sc_in sc_lv 28 signal 17 } 
	{ nodes_features_proj_V_15_address0 sc_out sc_lv 7 signal 18 } 
	{ nodes_features_proj_V_15_ce0 sc_out sc_logic 1 signal 18 } 
	{ nodes_features_proj_V_15_q0 sc_in sc_lv 28 signal 18 } 
	{ nodes_features_proj_V_31_address0 sc_out sc_lv 7 signal 19 } 
	{ nodes_features_proj_V_31_ce0 sc_out sc_logic 1 signal 19 } 
	{ nodes_features_proj_V_31_q0 sc_in sc_lv 28 signal 19 } 
	{ nodes_features_proj_V_47_address0 sc_out sc_lv 7 signal 20 } 
	{ nodes_features_proj_V_47_ce0 sc_out sc_logic 1 signal 20 } 
	{ nodes_features_proj_V_47_q0 sc_in sc_lv 28 signal 20 } 
	{ nodes_features_proj_V_63_address0 sc_out sc_lv 7 signal 21 } 
	{ nodes_features_proj_V_63_ce0 sc_out sc_logic 1 signal 21 } 
	{ nodes_features_proj_V_63_q0 sc_in sc_lv 28 signal 21 } 
	{ nodes_features_proj_V_14_address0 sc_out sc_lv 7 signal 22 } 
	{ nodes_features_proj_V_14_ce0 sc_out sc_logic 1 signal 22 } 
	{ nodes_features_proj_V_14_q0 sc_in sc_lv 28 signal 22 } 
	{ nodes_features_proj_V_30_address0 sc_out sc_lv 7 signal 23 } 
	{ nodes_features_proj_V_30_ce0 sc_out sc_logic 1 signal 23 } 
	{ nodes_features_proj_V_30_q0 sc_in sc_lv 28 signal 23 } 
	{ nodes_features_proj_V_46_address0 sc_out sc_lv 7 signal 24 } 
	{ nodes_features_proj_V_46_ce0 sc_out sc_logic 1 signal 24 } 
	{ nodes_features_proj_V_46_q0 sc_in sc_lv 28 signal 24 } 
	{ nodes_features_proj_V_62_address0 sc_out sc_lv 7 signal 25 } 
	{ nodes_features_proj_V_62_ce0 sc_out sc_logic 1 signal 25 } 
	{ nodes_features_proj_V_62_q0 sc_in sc_lv 28 signal 25 } 
	{ nodes_features_proj_V_13_address0 sc_out sc_lv 7 signal 26 } 
	{ nodes_features_proj_V_13_ce0 sc_out sc_logic 1 signal 26 } 
	{ nodes_features_proj_V_13_q0 sc_in sc_lv 28 signal 26 } 
	{ nodes_features_proj_V_29_address0 sc_out sc_lv 7 signal 27 } 
	{ nodes_features_proj_V_29_ce0 sc_out sc_logic 1 signal 27 } 
	{ nodes_features_proj_V_29_q0 sc_in sc_lv 28 signal 27 } 
	{ nodes_features_proj_V_45_address0 sc_out sc_lv 7 signal 28 } 
	{ nodes_features_proj_V_45_ce0 sc_out sc_logic 1 signal 28 } 
	{ nodes_features_proj_V_45_q0 sc_in sc_lv 28 signal 28 } 
	{ nodes_features_proj_V_61_address0 sc_out sc_lv 7 signal 29 } 
	{ nodes_features_proj_V_61_ce0 sc_out sc_logic 1 signal 29 } 
	{ nodes_features_proj_V_61_q0 sc_in sc_lv 28 signal 29 } 
	{ nodes_features_proj_V_12_address0 sc_out sc_lv 7 signal 30 } 
	{ nodes_features_proj_V_12_ce0 sc_out sc_logic 1 signal 30 } 
	{ nodes_features_proj_V_12_q0 sc_in sc_lv 28 signal 30 } 
	{ nodes_features_proj_V_28_address0 sc_out sc_lv 7 signal 31 } 
	{ nodes_features_proj_V_28_ce0 sc_out sc_logic 1 signal 31 } 
	{ nodes_features_proj_V_28_q0 sc_in sc_lv 28 signal 31 } 
	{ nodes_features_proj_V_44_address0 sc_out sc_lv 7 signal 32 } 
	{ nodes_features_proj_V_44_ce0 sc_out sc_logic 1 signal 32 } 
	{ nodes_features_proj_V_44_q0 sc_in sc_lv 28 signal 32 } 
	{ nodes_features_proj_V_60_address0 sc_out sc_lv 7 signal 33 } 
	{ nodes_features_proj_V_60_ce0 sc_out sc_logic 1 signal 33 } 
	{ nodes_features_proj_V_60_q0 sc_in sc_lv 28 signal 33 } 
	{ nodes_features_proj_V_11_address0 sc_out sc_lv 7 signal 34 } 
	{ nodes_features_proj_V_11_ce0 sc_out sc_logic 1 signal 34 } 
	{ nodes_features_proj_V_11_q0 sc_in sc_lv 28 signal 34 } 
	{ nodes_features_proj_V_27_address0 sc_out sc_lv 7 signal 35 } 
	{ nodes_features_proj_V_27_ce0 sc_out sc_logic 1 signal 35 } 
	{ nodes_features_proj_V_27_q0 sc_in sc_lv 28 signal 35 } 
	{ nodes_features_proj_V_43_address0 sc_out sc_lv 7 signal 36 } 
	{ nodes_features_proj_V_43_ce0 sc_out sc_logic 1 signal 36 } 
	{ nodes_features_proj_V_43_q0 sc_in sc_lv 28 signal 36 } 
	{ nodes_features_proj_V_59_address0 sc_out sc_lv 7 signal 37 } 
	{ nodes_features_proj_V_59_ce0 sc_out sc_logic 1 signal 37 } 
	{ nodes_features_proj_V_59_q0 sc_in sc_lv 28 signal 37 } 
	{ nodes_features_proj_V_10_address0 sc_out sc_lv 7 signal 38 } 
	{ nodes_features_proj_V_10_ce0 sc_out sc_logic 1 signal 38 } 
	{ nodes_features_proj_V_10_q0 sc_in sc_lv 28 signal 38 } 
	{ nodes_features_proj_V_26_address0 sc_out sc_lv 7 signal 39 } 
	{ nodes_features_proj_V_26_ce0 sc_out sc_logic 1 signal 39 } 
	{ nodes_features_proj_V_26_q0 sc_in sc_lv 28 signal 39 } 
	{ nodes_features_proj_V_42_address0 sc_out sc_lv 7 signal 40 } 
	{ nodes_features_proj_V_42_ce0 sc_out sc_logic 1 signal 40 } 
	{ nodes_features_proj_V_42_q0 sc_in sc_lv 28 signal 40 } 
	{ nodes_features_proj_V_58_address0 sc_out sc_lv 7 signal 41 } 
	{ nodes_features_proj_V_58_ce0 sc_out sc_logic 1 signal 41 } 
	{ nodes_features_proj_V_58_q0 sc_in sc_lv 28 signal 41 } 
	{ nodes_features_proj_V_9_address0 sc_out sc_lv 7 signal 42 } 
	{ nodes_features_proj_V_9_ce0 sc_out sc_logic 1 signal 42 } 
	{ nodes_features_proj_V_9_q0 sc_in sc_lv 28 signal 42 } 
	{ nodes_features_proj_V_25_address0 sc_out sc_lv 7 signal 43 } 
	{ nodes_features_proj_V_25_ce0 sc_out sc_logic 1 signal 43 } 
	{ nodes_features_proj_V_25_q0 sc_in sc_lv 28 signal 43 } 
	{ nodes_features_proj_V_41_address0 sc_out sc_lv 7 signal 44 } 
	{ nodes_features_proj_V_41_ce0 sc_out sc_logic 1 signal 44 } 
	{ nodes_features_proj_V_41_q0 sc_in sc_lv 28 signal 44 } 
	{ nodes_features_proj_V_57_address0 sc_out sc_lv 7 signal 45 } 
	{ nodes_features_proj_V_57_ce0 sc_out sc_logic 1 signal 45 } 
	{ nodes_features_proj_V_57_q0 sc_in sc_lv 28 signal 45 } 
	{ nodes_features_proj_V_8_address0 sc_out sc_lv 7 signal 46 } 
	{ nodes_features_proj_V_8_ce0 sc_out sc_logic 1 signal 46 } 
	{ nodes_features_proj_V_8_q0 sc_in sc_lv 28 signal 46 } 
	{ nodes_features_proj_V_24_address0 sc_out sc_lv 7 signal 47 } 
	{ nodes_features_proj_V_24_ce0 sc_out sc_logic 1 signal 47 } 
	{ nodes_features_proj_V_24_q0 sc_in sc_lv 28 signal 47 } 
	{ nodes_features_proj_V_40_address0 sc_out sc_lv 7 signal 48 } 
	{ nodes_features_proj_V_40_ce0 sc_out sc_logic 1 signal 48 } 
	{ nodes_features_proj_V_40_q0 sc_in sc_lv 28 signal 48 } 
	{ nodes_features_proj_V_56_address0 sc_out sc_lv 7 signal 49 } 
	{ nodes_features_proj_V_56_ce0 sc_out sc_logic 1 signal 49 } 
	{ nodes_features_proj_V_56_q0 sc_in sc_lv 28 signal 49 } 
	{ nodes_features_proj_V_7_address0 sc_out sc_lv 7 signal 50 } 
	{ nodes_features_proj_V_7_ce0 sc_out sc_logic 1 signal 50 } 
	{ nodes_features_proj_V_7_q0 sc_in sc_lv 28 signal 50 } 
	{ nodes_features_proj_V_23_address0 sc_out sc_lv 7 signal 51 } 
	{ nodes_features_proj_V_23_ce0 sc_out sc_logic 1 signal 51 } 
	{ nodes_features_proj_V_23_q0 sc_in sc_lv 28 signal 51 } 
	{ nodes_features_proj_V_39_address0 sc_out sc_lv 7 signal 52 } 
	{ nodes_features_proj_V_39_ce0 sc_out sc_logic 1 signal 52 } 
	{ nodes_features_proj_V_39_q0 sc_in sc_lv 28 signal 52 } 
	{ nodes_features_proj_V_55_address0 sc_out sc_lv 7 signal 53 } 
	{ nodes_features_proj_V_55_ce0 sc_out sc_logic 1 signal 53 } 
	{ nodes_features_proj_V_55_q0 sc_in sc_lv 28 signal 53 } 
	{ nodes_features_proj_V_6_address0 sc_out sc_lv 7 signal 54 } 
	{ nodes_features_proj_V_6_ce0 sc_out sc_logic 1 signal 54 } 
	{ nodes_features_proj_V_6_q0 sc_in sc_lv 28 signal 54 } 
	{ nodes_features_proj_V_22_address0 sc_out sc_lv 7 signal 55 } 
	{ nodes_features_proj_V_22_ce0 sc_out sc_logic 1 signal 55 } 
	{ nodes_features_proj_V_22_q0 sc_in sc_lv 28 signal 55 } 
	{ nodes_features_proj_V_38_address0 sc_out sc_lv 7 signal 56 } 
	{ nodes_features_proj_V_38_ce0 sc_out sc_logic 1 signal 56 } 
	{ nodes_features_proj_V_38_q0 sc_in sc_lv 28 signal 56 } 
	{ nodes_features_proj_V_54_address0 sc_out sc_lv 7 signal 57 } 
	{ nodes_features_proj_V_54_ce0 sc_out sc_logic 1 signal 57 } 
	{ nodes_features_proj_V_54_q0 sc_in sc_lv 28 signal 57 } 
	{ nodes_features_proj_V_5_address0 sc_out sc_lv 7 signal 58 } 
	{ nodes_features_proj_V_5_ce0 sc_out sc_logic 1 signal 58 } 
	{ nodes_features_proj_V_5_q0 sc_in sc_lv 28 signal 58 } 
	{ nodes_features_proj_V_21_address0 sc_out sc_lv 7 signal 59 } 
	{ nodes_features_proj_V_21_ce0 sc_out sc_logic 1 signal 59 } 
	{ nodes_features_proj_V_21_q0 sc_in sc_lv 28 signal 59 } 
	{ nodes_features_proj_V_37_address0 sc_out sc_lv 7 signal 60 } 
	{ nodes_features_proj_V_37_ce0 sc_out sc_logic 1 signal 60 } 
	{ nodes_features_proj_V_37_q0 sc_in sc_lv 28 signal 60 } 
	{ nodes_features_proj_V_53_address0 sc_out sc_lv 7 signal 61 } 
	{ nodes_features_proj_V_53_ce0 sc_out sc_logic 1 signal 61 } 
	{ nodes_features_proj_V_53_q0 sc_in sc_lv 28 signal 61 } 
	{ nodes_features_proj_V_4_address0 sc_out sc_lv 7 signal 62 } 
	{ nodes_features_proj_V_4_ce0 sc_out sc_logic 1 signal 62 } 
	{ nodes_features_proj_V_4_q0 sc_in sc_lv 28 signal 62 } 
	{ nodes_features_proj_V_20_address0 sc_out sc_lv 7 signal 63 } 
	{ nodes_features_proj_V_20_ce0 sc_out sc_logic 1 signal 63 } 
	{ nodes_features_proj_V_20_q0 sc_in sc_lv 28 signal 63 } 
	{ nodes_features_proj_V_36_address0 sc_out sc_lv 7 signal 64 } 
	{ nodes_features_proj_V_36_ce0 sc_out sc_logic 1 signal 64 } 
	{ nodes_features_proj_V_36_q0 sc_in sc_lv 28 signal 64 } 
	{ nodes_features_proj_V_52_address0 sc_out sc_lv 7 signal 65 } 
	{ nodes_features_proj_V_52_ce0 sc_out sc_logic 1 signal 65 } 
	{ nodes_features_proj_V_52_q0 sc_in sc_lv 28 signal 65 } 
	{ nodes_features_proj_V_3_address0 sc_out sc_lv 7 signal 66 } 
	{ nodes_features_proj_V_3_ce0 sc_out sc_logic 1 signal 66 } 
	{ nodes_features_proj_V_3_q0 sc_in sc_lv 28 signal 66 } 
	{ nodes_features_proj_V_19_address0 sc_out sc_lv 7 signal 67 } 
	{ nodes_features_proj_V_19_ce0 sc_out sc_logic 1 signal 67 } 
	{ nodes_features_proj_V_19_q0 sc_in sc_lv 28 signal 67 } 
	{ nodes_features_proj_V_35_address0 sc_out sc_lv 7 signal 68 } 
	{ nodes_features_proj_V_35_ce0 sc_out sc_logic 1 signal 68 } 
	{ nodes_features_proj_V_35_q0 sc_in sc_lv 28 signal 68 } 
	{ nodes_features_proj_V_51_address0 sc_out sc_lv 7 signal 69 } 
	{ nodes_features_proj_V_51_ce0 sc_out sc_logic 1 signal 69 } 
	{ nodes_features_proj_V_51_q0 sc_in sc_lv 28 signal 69 } 
	{ nodes_features_proj_V_2_address0 sc_out sc_lv 7 signal 70 } 
	{ nodes_features_proj_V_2_ce0 sc_out sc_logic 1 signal 70 } 
	{ nodes_features_proj_V_2_q0 sc_in sc_lv 28 signal 70 } 
	{ nodes_features_proj_V_18_address0 sc_out sc_lv 7 signal 71 } 
	{ nodes_features_proj_V_18_ce0 sc_out sc_logic 1 signal 71 } 
	{ nodes_features_proj_V_18_q0 sc_in sc_lv 28 signal 71 } 
	{ nodes_features_proj_V_34_address0 sc_out sc_lv 7 signal 72 } 
	{ nodes_features_proj_V_34_ce0 sc_out sc_logic 1 signal 72 } 
	{ nodes_features_proj_V_34_q0 sc_in sc_lv 28 signal 72 } 
	{ nodes_features_proj_V_50_address0 sc_out sc_lv 7 signal 73 } 
	{ nodes_features_proj_V_50_ce0 sc_out sc_logic 1 signal 73 } 
	{ nodes_features_proj_V_50_q0 sc_in sc_lv 28 signal 73 } 
	{ nodes_features_proj_V_1_address0 sc_out sc_lv 7 signal 74 } 
	{ nodes_features_proj_V_1_ce0 sc_out sc_logic 1 signal 74 } 
	{ nodes_features_proj_V_1_q0 sc_in sc_lv 28 signal 74 } 
	{ nodes_features_proj_V_17_address0 sc_out sc_lv 7 signal 75 } 
	{ nodes_features_proj_V_17_ce0 sc_out sc_logic 1 signal 75 } 
	{ nodes_features_proj_V_17_q0 sc_in sc_lv 28 signal 75 } 
	{ nodes_features_proj_V_33_address0 sc_out sc_lv 7 signal 76 } 
	{ nodes_features_proj_V_33_ce0 sc_out sc_logic 1 signal 76 } 
	{ nodes_features_proj_V_33_q0 sc_in sc_lv 28 signal 76 } 
	{ nodes_features_proj_V_49_address0 sc_out sc_lv 7 signal 77 } 
	{ nodes_features_proj_V_49_ce0 sc_out sc_logic 1 signal 77 } 
	{ nodes_features_proj_V_49_q0 sc_in sc_lv 28 signal 77 } 
	{ nodes_features_proj_V_0_address0 sc_out sc_lv 7 signal 78 } 
	{ nodes_features_proj_V_0_ce0 sc_out sc_logic 1 signal 78 } 
	{ nodes_features_proj_V_0_q0 sc_in sc_lv 28 signal 78 } 
	{ nodes_features_proj_V_16_address0 sc_out sc_lv 7 signal 79 } 
	{ nodes_features_proj_V_16_ce0 sc_out sc_logic 1 signal 79 } 
	{ nodes_features_proj_V_16_q0 sc_in sc_lv 28 signal 79 } 
	{ nodes_features_proj_V_32_address0 sc_out sc_lv 7 signal 80 } 
	{ nodes_features_proj_V_32_ce0 sc_out sc_logic 1 signal 80 } 
	{ nodes_features_proj_V_32_q0 sc_in sc_lv 28 signal 80 } 
	{ nodes_features_proj_V_48_address0 sc_out sc_lv 7 signal 81 } 
	{ nodes_features_proj_V_48_ce0 sc_out sc_logic 1 signal 81 } 
	{ nodes_features_proj_V_48_q0 sc_in sc_lv 28 signal 81 } 
	{ grp_fu_3323_p_din0 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3323_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3323_p_dout0 sc_in sc_lv 46 signal -1 } 
	{ grp_fu_3323_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3327_p_din0 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3327_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3327_p_dout0 sc_in sc_lv 46 signal -1 } 
	{ grp_fu_3327_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3331_p_din0 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3331_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3331_p_dout0 sc_in sc_lv 46 signal -1 } 
	{ grp_fu_3331_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3335_p_din0 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3335_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3335_p_dout0 sc_in sc_lv 46 signal -1 } 
	{ grp_fu_3335_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3339_p_din0 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3339_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3339_p_dout0 sc_in sc_lv 46 signal -1 } 
	{ grp_fu_3339_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3343_p_din0 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3343_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3343_p_dout0 sc_in sc_lv 46 signal -1 } 
	{ grp_fu_3343_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3347_p_din0 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3347_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3347_p_dout0 sc_in sc_lv 46 signal -1 } 
	{ grp_fu_3347_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3351_p_din0 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3351_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3351_p_dout0 sc_in sc_lv 46 signal -1 } 
	{ grp_fu_3351_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3355_p_din0 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3355_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3355_p_dout0 sc_in sc_lv 46 signal -1 } 
	{ grp_fu_3355_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3359_p_din0 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3359_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3359_p_dout0 sc_in sc_lv 46 signal -1 } 
	{ grp_fu_3359_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3363_p_din0 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3363_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3363_p_dout0 sc_in sc_lv 46 signal -1 } 
	{ grp_fu_3363_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3367_p_din0 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3367_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3367_p_dout0 sc_in sc_lv 46 signal -1 } 
	{ grp_fu_3367_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3371_p_din0 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3371_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3371_p_dout0 sc_in sc_lv 46 signal -1 } 
	{ grp_fu_3371_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3375_p_din0 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3375_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3375_p_dout0 sc_in sc_lv 46 signal -1 } 
	{ grp_fu_3375_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3379_p_din0 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3379_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3379_p_dout0 sc_in sc_lv 46 signal -1 } 
	{ grp_fu_3379_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_3383_p_din0 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3383_p_din1 sc_out sc_lv 28 signal -1 } 
	{ grp_fu_3383_p_dout0 sc_in sc_lv 46 signal -1 } 
	{ grp_fu_3383_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "layer", "role": "default" }} , 
 	{ "name": "scores_source_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "scores_source_V", "role": "address1" }} , 
 	{ "name": "scores_source_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_source_V", "role": "ce1" }} , 
 	{ "name": "scores_source_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scores_source_V", "role": "we1" }} , 
 	{ "name": "scores_source_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scores_source_V", "role": "d1" }} , 
 	{ "name": "scoring_fn_source_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_source_V_0", "role": "address0" }} , 
 	{ "name": "scoring_fn_source_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_source_V_0", "role": "ce0" }} , 
 	{ "name": "scoring_fn_source_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_source_V_0", "role": "q0" }} , 
 	{ "name": "scoring_fn_source_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_source_V_1", "role": "address0" }} , 
 	{ "name": "scoring_fn_source_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_source_V_1", "role": "ce0" }} , 
 	{ "name": "scoring_fn_source_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_source_V_1", "role": "q0" }} , 
 	{ "name": "scoring_fn_source_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_source_V_2", "role": "address0" }} , 
 	{ "name": "scoring_fn_source_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_source_V_2", "role": "ce0" }} , 
 	{ "name": "scoring_fn_source_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_source_V_2", "role": "q0" }} , 
 	{ "name": "scoring_fn_source_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_source_V_3", "role": "address0" }} , 
 	{ "name": "scoring_fn_source_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_source_V_3", "role": "ce0" }} , 
 	{ "name": "scoring_fn_source_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_source_V_3", "role": "q0" }} , 
 	{ "name": "scoring_fn_source_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_source_V_4", "role": "address0" }} , 
 	{ "name": "scoring_fn_source_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_source_V_4", "role": "ce0" }} , 
 	{ "name": "scoring_fn_source_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_source_V_4", "role": "q0" }} , 
 	{ "name": "scoring_fn_source_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_source_V_5", "role": "address0" }} , 
 	{ "name": "scoring_fn_source_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_source_V_5", "role": "ce0" }} , 
 	{ "name": "scoring_fn_source_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_source_V_5", "role": "q0" }} , 
 	{ "name": "scoring_fn_source_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_source_V_6", "role": "address0" }} , 
 	{ "name": "scoring_fn_source_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_source_V_6", "role": "ce0" }} , 
 	{ "name": "scoring_fn_source_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_source_V_6", "role": "q0" }} , 
 	{ "name": "scoring_fn_source_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_source_V_7", "role": "address0" }} , 
 	{ "name": "scoring_fn_source_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_source_V_7", "role": "ce0" }} , 
 	{ "name": "scoring_fn_source_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_source_V_7", "role": "q0" }} , 
 	{ "name": "scoring_fn_source_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_source_V_8", "role": "address0" }} , 
 	{ "name": "scoring_fn_source_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_source_V_8", "role": "ce0" }} , 
 	{ "name": "scoring_fn_source_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_source_V_8", "role": "q0" }} , 
 	{ "name": "scoring_fn_source_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_source_V_9", "role": "address0" }} , 
 	{ "name": "scoring_fn_source_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_source_V_9", "role": "ce0" }} , 
 	{ "name": "scoring_fn_source_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_source_V_9", "role": "q0" }} , 
 	{ "name": "scoring_fn_source_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_source_V_10", "role": "address0" }} , 
 	{ "name": "scoring_fn_source_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_source_V_10", "role": "ce0" }} , 
 	{ "name": "scoring_fn_source_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_source_V_10", "role": "q0" }} , 
 	{ "name": "scoring_fn_source_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_source_V_11", "role": "address0" }} , 
 	{ "name": "scoring_fn_source_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_source_V_11", "role": "ce0" }} , 
 	{ "name": "scoring_fn_source_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_source_V_11", "role": "q0" }} , 
 	{ "name": "scoring_fn_source_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_source_V_12", "role": "address0" }} , 
 	{ "name": "scoring_fn_source_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_source_V_12", "role": "ce0" }} , 
 	{ "name": "scoring_fn_source_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_source_V_12", "role": "q0" }} , 
 	{ "name": "scoring_fn_source_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_source_V_13", "role": "address0" }} , 
 	{ "name": "scoring_fn_source_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_source_V_13", "role": "ce0" }} , 
 	{ "name": "scoring_fn_source_V_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_source_V_13", "role": "q0" }} , 
 	{ "name": "scoring_fn_source_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_source_V_14", "role": "address0" }} , 
 	{ "name": "scoring_fn_source_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_source_V_14", "role": "ce0" }} , 
 	{ "name": "scoring_fn_source_V_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_source_V_14", "role": "q0" }} , 
 	{ "name": "scoring_fn_source_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_source_V_15", "role": "address0" }} , 
 	{ "name": "scoring_fn_source_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_source_V_15", "role": "ce0" }} , 
 	{ "name": "scoring_fn_source_V_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_source_V_15", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_15", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_15", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_15", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_31", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_31", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_31", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_47_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_47", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_47_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_47", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_47_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_47", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_63_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_63", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_63_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_63", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_63_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_63", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_14", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_14", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_14", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_30", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_30", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_30", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_46_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_46", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_46_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_46", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_46_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_46", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_62_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_62", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_62_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_62", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_62_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_62", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_13", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_13", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_13", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_29", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_29", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_29", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_45_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_45", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_45_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_45", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_45_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_45", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_61_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_61", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_61_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_61", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_61_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_61", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_12", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_12", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_12", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_28", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_28", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_28", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_44_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_44", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_44_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_44", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_44_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_44", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_60_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_60", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_60_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_60", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_60_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_60", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_11", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_11", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_11", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_27", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_27", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_27", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_43_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_43", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_43_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_43", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_43_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_43", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_59_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_59", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_59_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_59", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_59_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_59", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_10", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_10", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_10", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_26", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_26", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_26", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_42_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_42", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_42_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_42", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_42_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_42", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_58_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_58", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_58_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_58", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_58_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_58", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_9", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_9", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_9", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_25", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_25", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_25", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_41_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_41", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_41_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_41", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_41_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_41", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_57_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_57", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_57_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_57", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_57_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_57", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_8", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_8", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_8", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_24", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_24", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_24", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_40_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_40", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_40_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_40", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_40_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_40", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_56_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_56", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_56_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_56", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_56_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_56", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_7", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_7", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_7", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_23", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_23", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_23", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_39_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_39", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_39_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_39", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_39_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_39", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_55_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_55", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_55_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_55", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_55_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_55", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_6", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_6", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_6", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_22", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_22", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_22", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_38_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_38", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_38_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_38", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_38_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_38", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_54_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_54", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_54_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_54", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_54_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_54", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_5", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_5", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_5", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_21", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_21", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_21", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_37_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_37", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_37_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_37", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_37_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_37", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_53_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_53", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_53_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_53", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_53_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_53", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_4", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_4", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_4", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_20", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_20", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_20", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_36_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_36", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_36_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_36", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_36_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_36", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_52_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_52", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_52_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_52", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_52_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_52", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_3", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_3", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_3", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_19", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_19", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_19", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_35_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_35", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_35_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_35", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_35_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_35", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_51_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_51", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_51_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_51", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_51_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_51", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_2", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_2", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_2", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_18", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_18", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_18", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_34_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_34", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_34_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_34", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_34_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_34", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_50_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_50", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_50_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_50", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_50_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_50", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_1", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_1", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_1", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_17", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_17", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_17", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_33_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_33", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_33_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_33", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_33_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_33", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_49_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_49", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_49_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_49", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_49_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_49", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_0", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_0", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_0", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_16", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_16", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_16", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_32_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_32", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_32_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_32", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_32_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_32", "role": "q0" }} , 
 	{ "name": "nodes_features_proj_V_48_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "nodes_features_proj_V_48", "role": "address0" }} , 
 	{ "name": "nodes_features_proj_V_48_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nodes_features_proj_V_48", "role": "ce0" }} , 
 	{ "name": "nodes_features_proj_V_48_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "nodes_features_proj_V_48", "role": "q0" }} , 
 	{ "name": "grp_fu_3323_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3323_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3323_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3323_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3323_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "grp_fu_3323_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3323_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3323_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3327_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3327_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3327_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3327_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3327_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "grp_fu_3327_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3327_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3327_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3331_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3331_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3331_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3331_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3331_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "grp_fu_3331_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3331_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3331_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3335_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3335_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3335_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3335_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3335_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "grp_fu_3335_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3335_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3335_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3339_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3339_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3339_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3339_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3339_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "grp_fu_3339_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3339_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3339_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3343_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3343_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3343_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3343_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3343_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "grp_fu_3343_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3343_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3343_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3347_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3347_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3347_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3347_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3347_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "grp_fu_3347_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3347_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3347_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3351_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3351_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3351_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3351_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3351_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "grp_fu_3351_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3351_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3351_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3355_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3355_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3355_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3355_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3355_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "grp_fu_3355_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3355_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3355_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3359_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3359_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3359_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3359_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3359_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "grp_fu_3359_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3359_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3359_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3363_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3363_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3363_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3363_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3363_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "grp_fu_3363_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3363_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3363_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3367_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3367_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3367_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3367_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3367_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "grp_fu_3367_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3367_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3367_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3371_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3371_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3371_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3371_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3371_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "grp_fu_3371_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3371_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3371_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3375_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3375_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3375_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3375_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3375_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "grp_fu_3375_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3375_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3375_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3379_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3379_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3379_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3379_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3379_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "grp_fu_3379_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3379_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3379_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_3383_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3383_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_3383_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "grp_fu_3383_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_3383_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "grp_fu_3383_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_3383_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_3383_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "compute_scores_source",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "89", "EstimateLatencyMax" : "89",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "scores_source_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scoring_fn_source_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_source_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_source_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_source_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_source_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_source_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_source_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_source_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_source_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_source_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_source_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_source_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_source_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_source_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_source_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scoring_fn_source_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nodes_features_proj_V_48", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_54_1_VITIS_LOOP_55_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_3ns_7ns_5ns_9_4_1_U995", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_scores_source {
		layer {Type I LastRead 0 FirstWrite -1}
		scores_source_V {Type O LastRead -1 FirstWrite 12}
		scoring_fn_source_V_0 {Type I LastRead 0 FirstWrite -1}
		scoring_fn_source_V_1 {Type I LastRead 0 FirstWrite -1}
		scoring_fn_source_V_2 {Type I LastRead 0 FirstWrite -1}
		scoring_fn_source_V_3 {Type I LastRead 1 FirstWrite -1}
		scoring_fn_source_V_4 {Type I LastRead 1 FirstWrite -1}
		scoring_fn_source_V_5 {Type I LastRead 2 FirstWrite -1}
		scoring_fn_source_V_6 {Type I LastRead 2 FirstWrite -1}
		scoring_fn_source_V_7 {Type I LastRead 3 FirstWrite -1}
		scoring_fn_source_V_8 {Type I LastRead 3 FirstWrite -1}
		scoring_fn_source_V_9 {Type I LastRead 4 FirstWrite -1}
		scoring_fn_source_V_10 {Type I LastRead 4 FirstWrite -1}
		scoring_fn_source_V_11 {Type I LastRead 5 FirstWrite -1}
		scoring_fn_source_V_12 {Type I LastRead 5 FirstWrite -1}
		scoring_fn_source_V_13 {Type I LastRead 6 FirstWrite -1}
		scoring_fn_source_V_14 {Type I LastRead 6 FirstWrite -1}
		scoring_fn_source_V_15 {Type I LastRead 7 FirstWrite -1}
		nodes_features_proj_V_15 {Type I LastRead 7 FirstWrite -1}
		nodes_features_proj_V_31 {Type I LastRead 7 FirstWrite -1}
		nodes_features_proj_V_47 {Type I LastRead 7 FirstWrite -1}
		nodes_features_proj_V_63 {Type I LastRead 7 FirstWrite -1}
		nodes_features_proj_V_14 {Type I LastRead 6 FirstWrite -1}
		nodes_features_proj_V_30 {Type I LastRead 6 FirstWrite -1}
		nodes_features_proj_V_46 {Type I LastRead 6 FirstWrite -1}
		nodes_features_proj_V_62 {Type I LastRead 6 FirstWrite -1}
		nodes_features_proj_V_13 {Type I LastRead 6 FirstWrite -1}
		nodes_features_proj_V_29 {Type I LastRead 6 FirstWrite -1}
		nodes_features_proj_V_45 {Type I LastRead 6 FirstWrite -1}
		nodes_features_proj_V_61 {Type I LastRead 6 FirstWrite -1}
		nodes_features_proj_V_12 {Type I LastRead 5 FirstWrite -1}
		nodes_features_proj_V_28 {Type I LastRead 5 FirstWrite -1}
		nodes_features_proj_V_44 {Type I LastRead 5 FirstWrite -1}
		nodes_features_proj_V_60 {Type I LastRead 5 FirstWrite -1}
		nodes_features_proj_V_11 {Type I LastRead 5 FirstWrite -1}
		nodes_features_proj_V_27 {Type I LastRead 5 FirstWrite -1}
		nodes_features_proj_V_43 {Type I LastRead 5 FirstWrite -1}
		nodes_features_proj_V_59 {Type I LastRead 5 FirstWrite -1}
		nodes_features_proj_V_10 {Type I LastRead 4 FirstWrite -1}
		nodes_features_proj_V_26 {Type I LastRead 4 FirstWrite -1}
		nodes_features_proj_V_42 {Type I LastRead 4 FirstWrite -1}
		nodes_features_proj_V_58 {Type I LastRead 4 FirstWrite -1}
		nodes_features_proj_V_9 {Type I LastRead 4 FirstWrite -1}
		nodes_features_proj_V_25 {Type I LastRead 4 FirstWrite -1}
		nodes_features_proj_V_41 {Type I LastRead 4 FirstWrite -1}
		nodes_features_proj_V_57 {Type I LastRead 4 FirstWrite -1}
		nodes_features_proj_V_8 {Type I LastRead 3 FirstWrite -1}
		nodes_features_proj_V_24 {Type I LastRead 3 FirstWrite -1}
		nodes_features_proj_V_40 {Type I LastRead 3 FirstWrite -1}
		nodes_features_proj_V_56 {Type I LastRead 3 FirstWrite -1}
		nodes_features_proj_V_7 {Type I LastRead 3 FirstWrite -1}
		nodes_features_proj_V_23 {Type I LastRead 3 FirstWrite -1}
		nodes_features_proj_V_39 {Type I LastRead 3 FirstWrite -1}
		nodes_features_proj_V_55 {Type I LastRead 3 FirstWrite -1}
		nodes_features_proj_V_6 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_22 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_38 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_54 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_5 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_21 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_37 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_53 {Type I LastRead 2 FirstWrite -1}
		nodes_features_proj_V_4 {Type I LastRead 1 FirstWrite -1}
		nodes_features_proj_V_20 {Type I LastRead 1 FirstWrite -1}
		nodes_features_proj_V_36 {Type I LastRead 1 FirstWrite -1}
		nodes_features_proj_V_52 {Type I LastRead 1 FirstWrite -1}
		nodes_features_proj_V_3 {Type I LastRead 1 FirstWrite -1}
		nodes_features_proj_V_19 {Type I LastRead 1 FirstWrite -1}
		nodes_features_proj_V_35 {Type I LastRead 1 FirstWrite -1}
		nodes_features_proj_V_51 {Type I LastRead 1 FirstWrite -1}
		nodes_features_proj_V_2 {Type I LastRead 0 FirstWrite -1}
		nodes_features_proj_V_18 {Type I LastRead 0 FirstWrite -1}
		nodes_features_proj_V_34 {Type I LastRead 0 FirstWrite -1}
		nodes_features_proj_V_50 {Type I LastRead 0 FirstWrite -1}
		nodes_features_proj_V_1 {Type I LastRead 0 FirstWrite -1}
		nodes_features_proj_V_17 {Type I LastRead 0 FirstWrite -1}
		nodes_features_proj_V_33 {Type I LastRead 0 FirstWrite -1}
		nodes_features_proj_V_49 {Type I LastRead 0 FirstWrite -1}
		nodes_features_proj_V_0 {Type I LastRead 0 FirstWrite -1}
		nodes_features_proj_V_16 {Type I LastRead 0 FirstWrite -1}
		nodes_features_proj_V_32 {Type I LastRead 0 FirstWrite -1}
		nodes_features_proj_V_48 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "89", "Max" : "89"}
	, {"Name" : "Interval", "Min" : "89", "Max" : "89"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer { ap_none {  { layer in_data 0 3 } } }
	scores_source_V { ap_memory {  { scores_source_V_address1 MemPortADDR2 1 9 }  { scores_source_V_ce1 MemPortCE2 1 1 }  { scores_source_V_we1 MemPortWE2 1 1 }  { scores_source_V_d1 MemPortDIN2 1 28 } } }
	scoring_fn_source_V_0 { ap_memory {  { scoring_fn_source_V_0_address0 mem_address 1 5 }  { scoring_fn_source_V_0_ce0 mem_ce 1 1 }  { scoring_fn_source_V_0_q0 mem_dout 0 28 } } }
	scoring_fn_source_V_1 { ap_memory {  { scoring_fn_source_V_1_address0 mem_address 1 5 }  { scoring_fn_source_V_1_ce0 mem_ce 1 1 }  { scoring_fn_source_V_1_q0 mem_dout 0 28 } } }
	scoring_fn_source_V_2 { ap_memory {  { scoring_fn_source_V_2_address0 mem_address 1 5 }  { scoring_fn_source_V_2_ce0 mem_ce 1 1 }  { scoring_fn_source_V_2_q0 mem_dout 0 28 } } }
	scoring_fn_source_V_3 { ap_memory {  { scoring_fn_source_V_3_address0 mem_address 1 5 }  { scoring_fn_source_V_3_ce0 mem_ce 1 1 }  { scoring_fn_source_V_3_q0 mem_dout 0 28 } } }
	scoring_fn_source_V_4 { ap_memory {  { scoring_fn_source_V_4_address0 mem_address 1 5 }  { scoring_fn_source_V_4_ce0 mem_ce 1 1 }  { scoring_fn_source_V_4_q0 mem_dout 0 28 } } }
	scoring_fn_source_V_5 { ap_memory {  { scoring_fn_source_V_5_address0 mem_address 1 5 }  { scoring_fn_source_V_5_ce0 mem_ce 1 1 }  { scoring_fn_source_V_5_q0 mem_dout 0 28 } } }
	scoring_fn_source_V_6 { ap_memory {  { scoring_fn_source_V_6_address0 mem_address 1 5 }  { scoring_fn_source_V_6_ce0 mem_ce 1 1 }  { scoring_fn_source_V_6_q0 mem_dout 0 28 } } }
	scoring_fn_source_V_7 { ap_memory {  { scoring_fn_source_V_7_address0 mem_address 1 5 }  { scoring_fn_source_V_7_ce0 mem_ce 1 1 }  { scoring_fn_source_V_7_q0 mem_dout 0 28 } } }
	scoring_fn_source_V_8 { ap_memory {  { scoring_fn_source_V_8_address0 mem_address 1 5 }  { scoring_fn_source_V_8_ce0 mem_ce 1 1 }  { scoring_fn_source_V_8_q0 mem_dout 0 28 } } }
	scoring_fn_source_V_9 { ap_memory {  { scoring_fn_source_V_9_address0 mem_address 1 5 }  { scoring_fn_source_V_9_ce0 mem_ce 1 1 }  { scoring_fn_source_V_9_q0 mem_dout 0 28 } } }
	scoring_fn_source_V_10 { ap_memory {  { scoring_fn_source_V_10_address0 mem_address 1 5 }  { scoring_fn_source_V_10_ce0 mem_ce 1 1 }  { scoring_fn_source_V_10_q0 mem_dout 0 28 } } }
	scoring_fn_source_V_11 { ap_memory {  { scoring_fn_source_V_11_address0 mem_address 1 5 }  { scoring_fn_source_V_11_ce0 mem_ce 1 1 }  { scoring_fn_source_V_11_q0 mem_dout 0 28 } } }
	scoring_fn_source_V_12 { ap_memory {  { scoring_fn_source_V_12_address0 mem_address 1 5 }  { scoring_fn_source_V_12_ce0 mem_ce 1 1 }  { scoring_fn_source_V_12_q0 mem_dout 0 28 } } }
	scoring_fn_source_V_13 { ap_memory {  { scoring_fn_source_V_13_address0 mem_address 1 5 }  { scoring_fn_source_V_13_ce0 mem_ce 1 1 }  { scoring_fn_source_V_13_q0 mem_dout 0 28 } } }
	scoring_fn_source_V_14 { ap_memory {  { scoring_fn_source_V_14_address0 mem_address 1 5 }  { scoring_fn_source_V_14_ce0 mem_ce 1 1 }  { scoring_fn_source_V_14_q0 mem_dout 0 28 } } }
	scoring_fn_source_V_15 { ap_memory {  { scoring_fn_source_V_15_address0 mem_address 1 5 }  { scoring_fn_source_V_15_ce0 mem_ce 1 1 }  { scoring_fn_source_V_15_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_15 { ap_memory {  { nodes_features_proj_V_15_address0 mem_address 1 7 }  { nodes_features_proj_V_15_ce0 mem_ce 1 1 }  { nodes_features_proj_V_15_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_31 { ap_memory {  { nodes_features_proj_V_31_address0 mem_address 1 7 }  { nodes_features_proj_V_31_ce0 mem_ce 1 1 }  { nodes_features_proj_V_31_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_47 { ap_memory {  { nodes_features_proj_V_47_address0 mem_address 1 7 }  { nodes_features_proj_V_47_ce0 mem_ce 1 1 }  { nodes_features_proj_V_47_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_63 { ap_memory {  { nodes_features_proj_V_63_address0 mem_address 1 7 }  { nodes_features_proj_V_63_ce0 mem_ce 1 1 }  { nodes_features_proj_V_63_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_14 { ap_memory {  { nodes_features_proj_V_14_address0 mem_address 1 7 }  { nodes_features_proj_V_14_ce0 mem_ce 1 1 }  { nodes_features_proj_V_14_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_30 { ap_memory {  { nodes_features_proj_V_30_address0 mem_address 1 7 }  { nodes_features_proj_V_30_ce0 mem_ce 1 1 }  { nodes_features_proj_V_30_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_46 { ap_memory {  { nodes_features_proj_V_46_address0 mem_address 1 7 }  { nodes_features_proj_V_46_ce0 mem_ce 1 1 }  { nodes_features_proj_V_46_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_62 { ap_memory {  { nodes_features_proj_V_62_address0 mem_address 1 7 }  { nodes_features_proj_V_62_ce0 mem_ce 1 1 }  { nodes_features_proj_V_62_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_13 { ap_memory {  { nodes_features_proj_V_13_address0 mem_address 1 7 }  { nodes_features_proj_V_13_ce0 mem_ce 1 1 }  { nodes_features_proj_V_13_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_29 { ap_memory {  { nodes_features_proj_V_29_address0 mem_address 1 7 }  { nodes_features_proj_V_29_ce0 mem_ce 1 1 }  { nodes_features_proj_V_29_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_45 { ap_memory {  { nodes_features_proj_V_45_address0 mem_address 1 7 }  { nodes_features_proj_V_45_ce0 mem_ce 1 1 }  { nodes_features_proj_V_45_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_61 { ap_memory {  { nodes_features_proj_V_61_address0 mem_address 1 7 }  { nodes_features_proj_V_61_ce0 mem_ce 1 1 }  { nodes_features_proj_V_61_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_12 { ap_memory {  { nodes_features_proj_V_12_address0 mem_address 1 7 }  { nodes_features_proj_V_12_ce0 mem_ce 1 1 }  { nodes_features_proj_V_12_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_28 { ap_memory {  { nodes_features_proj_V_28_address0 mem_address 1 7 }  { nodes_features_proj_V_28_ce0 mem_ce 1 1 }  { nodes_features_proj_V_28_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_44 { ap_memory {  { nodes_features_proj_V_44_address0 mem_address 1 7 }  { nodes_features_proj_V_44_ce0 mem_ce 1 1 }  { nodes_features_proj_V_44_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_60 { ap_memory {  { nodes_features_proj_V_60_address0 mem_address 1 7 }  { nodes_features_proj_V_60_ce0 mem_ce 1 1 }  { nodes_features_proj_V_60_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_11 { ap_memory {  { nodes_features_proj_V_11_address0 mem_address 1 7 }  { nodes_features_proj_V_11_ce0 mem_ce 1 1 }  { nodes_features_proj_V_11_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_27 { ap_memory {  { nodes_features_proj_V_27_address0 mem_address 1 7 }  { nodes_features_proj_V_27_ce0 mem_ce 1 1 }  { nodes_features_proj_V_27_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_43 { ap_memory {  { nodes_features_proj_V_43_address0 mem_address 1 7 }  { nodes_features_proj_V_43_ce0 mem_ce 1 1 }  { nodes_features_proj_V_43_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_59 { ap_memory {  { nodes_features_proj_V_59_address0 mem_address 1 7 }  { nodes_features_proj_V_59_ce0 mem_ce 1 1 }  { nodes_features_proj_V_59_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_10 { ap_memory {  { nodes_features_proj_V_10_address0 mem_address 1 7 }  { nodes_features_proj_V_10_ce0 mem_ce 1 1 }  { nodes_features_proj_V_10_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_26 { ap_memory {  { nodes_features_proj_V_26_address0 mem_address 1 7 }  { nodes_features_proj_V_26_ce0 mem_ce 1 1 }  { nodes_features_proj_V_26_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_42 { ap_memory {  { nodes_features_proj_V_42_address0 mem_address 1 7 }  { nodes_features_proj_V_42_ce0 mem_ce 1 1 }  { nodes_features_proj_V_42_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_58 { ap_memory {  { nodes_features_proj_V_58_address0 mem_address 1 7 }  { nodes_features_proj_V_58_ce0 mem_ce 1 1 }  { nodes_features_proj_V_58_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_9 { ap_memory {  { nodes_features_proj_V_9_address0 mem_address 1 7 }  { nodes_features_proj_V_9_ce0 mem_ce 1 1 }  { nodes_features_proj_V_9_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_25 { ap_memory {  { nodes_features_proj_V_25_address0 mem_address 1 7 }  { nodes_features_proj_V_25_ce0 mem_ce 1 1 }  { nodes_features_proj_V_25_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_41 { ap_memory {  { nodes_features_proj_V_41_address0 mem_address 1 7 }  { nodes_features_proj_V_41_ce0 mem_ce 1 1 }  { nodes_features_proj_V_41_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_57 { ap_memory {  { nodes_features_proj_V_57_address0 mem_address 1 7 }  { nodes_features_proj_V_57_ce0 mem_ce 1 1 }  { nodes_features_proj_V_57_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_8 { ap_memory {  { nodes_features_proj_V_8_address0 mem_address 1 7 }  { nodes_features_proj_V_8_ce0 mem_ce 1 1 }  { nodes_features_proj_V_8_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_24 { ap_memory {  { nodes_features_proj_V_24_address0 mem_address 1 7 }  { nodes_features_proj_V_24_ce0 mem_ce 1 1 }  { nodes_features_proj_V_24_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_40 { ap_memory {  { nodes_features_proj_V_40_address0 mem_address 1 7 }  { nodes_features_proj_V_40_ce0 mem_ce 1 1 }  { nodes_features_proj_V_40_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_56 { ap_memory {  { nodes_features_proj_V_56_address0 mem_address 1 7 }  { nodes_features_proj_V_56_ce0 mem_ce 1 1 }  { nodes_features_proj_V_56_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_7 { ap_memory {  { nodes_features_proj_V_7_address0 mem_address 1 7 }  { nodes_features_proj_V_7_ce0 mem_ce 1 1 }  { nodes_features_proj_V_7_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_23 { ap_memory {  { nodes_features_proj_V_23_address0 mem_address 1 7 }  { nodes_features_proj_V_23_ce0 mem_ce 1 1 }  { nodes_features_proj_V_23_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_39 { ap_memory {  { nodes_features_proj_V_39_address0 mem_address 1 7 }  { nodes_features_proj_V_39_ce0 mem_ce 1 1 }  { nodes_features_proj_V_39_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_55 { ap_memory {  { nodes_features_proj_V_55_address0 mem_address 1 7 }  { nodes_features_proj_V_55_ce0 mem_ce 1 1 }  { nodes_features_proj_V_55_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_6 { ap_memory {  { nodes_features_proj_V_6_address0 mem_address 1 7 }  { nodes_features_proj_V_6_ce0 mem_ce 1 1 }  { nodes_features_proj_V_6_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_22 { ap_memory {  { nodes_features_proj_V_22_address0 mem_address 1 7 }  { nodes_features_proj_V_22_ce0 mem_ce 1 1 }  { nodes_features_proj_V_22_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_38 { ap_memory {  { nodes_features_proj_V_38_address0 mem_address 1 7 }  { nodes_features_proj_V_38_ce0 mem_ce 1 1 }  { nodes_features_proj_V_38_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_54 { ap_memory {  { nodes_features_proj_V_54_address0 mem_address 1 7 }  { nodes_features_proj_V_54_ce0 mem_ce 1 1 }  { nodes_features_proj_V_54_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_5 { ap_memory {  { nodes_features_proj_V_5_address0 mem_address 1 7 }  { nodes_features_proj_V_5_ce0 mem_ce 1 1 }  { nodes_features_proj_V_5_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_21 { ap_memory {  { nodes_features_proj_V_21_address0 mem_address 1 7 }  { nodes_features_proj_V_21_ce0 mem_ce 1 1 }  { nodes_features_proj_V_21_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_37 { ap_memory {  { nodes_features_proj_V_37_address0 mem_address 1 7 }  { nodes_features_proj_V_37_ce0 mem_ce 1 1 }  { nodes_features_proj_V_37_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_53 { ap_memory {  { nodes_features_proj_V_53_address0 mem_address 1 7 }  { nodes_features_proj_V_53_ce0 mem_ce 1 1 }  { nodes_features_proj_V_53_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_4 { ap_memory {  { nodes_features_proj_V_4_address0 mem_address 1 7 }  { nodes_features_proj_V_4_ce0 mem_ce 1 1 }  { nodes_features_proj_V_4_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_20 { ap_memory {  { nodes_features_proj_V_20_address0 mem_address 1 7 }  { nodes_features_proj_V_20_ce0 mem_ce 1 1 }  { nodes_features_proj_V_20_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_36 { ap_memory {  { nodes_features_proj_V_36_address0 mem_address 1 7 }  { nodes_features_proj_V_36_ce0 mem_ce 1 1 }  { nodes_features_proj_V_36_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_52 { ap_memory {  { nodes_features_proj_V_52_address0 mem_address 1 7 }  { nodes_features_proj_V_52_ce0 mem_ce 1 1 }  { nodes_features_proj_V_52_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_3 { ap_memory {  { nodes_features_proj_V_3_address0 mem_address 1 7 }  { nodes_features_proj_V_3_ce0 mem_ce 1 1 }  { nodes_features_proj_V_3_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_19 { ap_memory {  { nodes_features_proj_V_19_address0 mem_address 1 7 }  { nodes_features_proj_V_19_ce0 mem_ce 1 1 }  { nodes_features_proj_V_19_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_35 { ap_memory {  { nodes_features_proj_V_35_address0 mem_address 1 7 }  { nodes_features_proj_V_35_ce0 mem_ce 1 1 }  { nodes_features_proj_V_35_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_51 { ap_memory {  { nodes_features_proj_V_51_address0 mem_address 1 7 }  { nodes_features_proj_V_51_ce0 mem_ce 1 1 }  { nodes_features_proj_V_51_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_2 { ap_memory {  { nodes_features_proj_V_2_address0 mem_address 1 7 }  { nodes_features_proj_V_2_ce0 mem_ce 1 1 }  { nodes_features_proj_V_2_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_18 { ap_memory {  { nodes_features_proj_V_18_address0 mem_address 1 7 }  { nodes_features_proj_V_18_ce0 mem_ce 1 1 }  { nodes_features_proj_V_18_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_34 { ap_memory {  { nodes_features_proj_V_34_address0 mem_address 1 7 }  { nodes_features_proj_V_34_ce0 mem_ce 1 1 }  { nodes_features_proj_V_34_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_50 { ap_memory {  { nodes_features_proj_V_50_address0 mem_address 1 7 }  { nodes_features_proj_V_50_ce0 mem_ce 1 1 }  { nodes_features_proj_V_50_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_1 { ap_memory {  { nodes_features_proj_V_1_address0 mem_address 1 7 }  { nodes_features_proj_V_1_ce0 mem_ce 1 1 }  { nodes_features_proj_V_1_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_17 { ap_memory {  { nodes_features_proj_V_17_address0 mem_address 1 7 }  { nodes_features_proj_V_17_ce0 mem_ce 1 1 }  { nodes_features_proj_V_17_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_33 { ap_memory {  { nodes_features_proj_V_33_address0 mem_address 1 7 }  { nodes_features_proj_V_33_ce0 mem_ce 1 1 }  { nodes_features_proj_V_33_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_49 { ap_memory {  { nodes_features_proj_V_49_address0 mem_address 1 7 }  { nodes_features_proj_V_49_ce0 mem_ce 1 1 }  { nodes_features_proj_V_49_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_0 { ap_memory {  { nodes_features_proj_V_0_address0 mem_address 1 7 }  { nodes_features_proj_V_0_ce0 mem_ce 1 1 }  { nodes_features_proj_V_0_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_16 { ap_memory {  { nodes_features_proj_V_16_address0 mem_address 1 7 }  { nodes_features_proj_V_16_ce0 mem_ce 1 1 }  { nodes_features_proj_V_16_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_32 { ap_memory {  { nodes_features_proj_V_32_address0 mem_address 1 7 }  { nodes_features_proj_V_32_ce0 mem_ce 1 1 }  { nodes_features_proj_V_32_q0 mem_dout 0 28 } } }
	nodes_features_proj_V_48 { ap_memory {  { nodes_features_proj_V_48_address0 mem_address 1 7 }  { nodes_features_proj_V_48_ce0 mem_ce 1 1 }  { nodes_features_proj_V_48_q0 mem_dout 0 28 } } }
}
