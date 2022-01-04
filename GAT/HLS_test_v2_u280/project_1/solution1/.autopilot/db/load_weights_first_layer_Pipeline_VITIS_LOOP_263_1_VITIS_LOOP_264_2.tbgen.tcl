set moduleName load_weights_first_layer_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_264_2
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
set C_modelName {load_weights_first_layer_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_264_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ mem int 32 regular {axi_master 0}  }
	{ sext_ln263 int 62 regular  }
	{ scoring_fn_target_V_0 int 28 regular {array 20 { 0 3 } 0 1 } {global 1}  }
	{ scoring_fn_target_V_1 int 28 regular {array 20 { 0 3 } 0 1 } {global 1}  }
	{ scoring_fn_target_V_2 int 28 regular {array 20 { 0 3 } 0 1 } {global 1}  }
	{ scoring_fn_target_V_3 int 28 regular {array 20 { 0 3 } 0 1 } {global 1}  }
	{ scoring_fn_target_V_4 int 28 regular {array 20 { 0 3 } 0 1 } {global 1}  }
	{ scoring_fn_target_V_5 int 28 regular {array 20 { 0 3 } 0 1 } {global 1}  }
	{ scoring_fn_target_V_6 int 28 regular {array 20 { 0 3 } 0 1 } {global 1}  }
	{ scoring_fn_target_V_7 int 28 regular {array 20 { 0 3 } 0 1 } {global 1}  }
	{ scoring_fn_target_V_8 int 28 regular {array 20 { 0 3 } 0 1 } {global 1}  }
	{ scoring_fn_target_V_9 int 28 regular {array 20 { 0 3 } 0 1 } {global 1}  }
	{ scoring_fn_target_V_10 int 28 regular {array 20 { 0 3 } 0 1 } {global 1}  }
	{ scoring_fn_target_V_11 int 28 regular {array 20 { 0 3 } 0 1 } {global 1}  }
	{ scoring_fn_target_V_12 int 28 regular {array 20 { 0 3 } 0 1 } {global 1}  }
	{ scoring_fn_target_V_13 int 28 regular {array 20 { 0 3 } 0 1 } {global 1}  }
	{ scoring_fn_target_V_14 int 28 regular {array 20 { 0 3 } 0 1 } {global 1}  }
	{ scoring_fn_target_V_15 int 28 regular {array 20 { 0 3 } 0 1 } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "node_feature_in","offset": { "type": "dynamic","port_name": "node_feature_in","bundle": "control"},"direction": "READONLY"},{"cName": "edge_list_in","offset": { "type": "dynamic","port_name": "edge_list_in","bundle": "control"},"direction": "READONLY"},{"cName": "graph_attr","offset": { "type": "dynamic","port_name": "graph_attr","bundle": "control"},},{"cName": "task_tb","offset": { "type": "dynamic","port_name": "task_tb","bundle": "control"},"direction": "WRITEONLY"},{"cName": "graph_pred_linear_weight_fixed","offset": { "type": "dynamic","port_name": "graph_pred_linear_weight_fixed","bundle": "control"},"direction": "READONLY"},{"cName": "graph_pred_linear_bias_fixed","offset": { "type": "dynamic","port_name": "graph_pred_linear_bias_fixed","bundle": "control"},"direction": "READONLY"},{"cName": "gat_net_scoring_fn_target_fixed","offset": { "type": "dynamic","port_name": "gat_net_scoring_fn_target_fixed","bundle": "control"},"direction": "READONLY"},{"cName": "gat_net_scoring_fn_source_fixed","offset": { "type": "dynamic","port_name": "gat_net_scoring_fn_source_fixed","bundle": "control"},"direction": "READONLY"},{"cName": "gat_net_linear_proj_weight_fixed","offset": { "type": "dynamic","port_name": "gat_net_linear_proj_weight_fixed","bundle": "control"},"direction": "READONLY"},{"cName": "gat_net_skip_proj_weight_fixed","offset": { "type": "dynamic","port_name": "gat_net_skip_proj_weight_fixed","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "sext_ln263", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "scoring_fn_target_V_0", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_1", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_2", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_3", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_4", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_5", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_6", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_7", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_8", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_9", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_10", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_11", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_12", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_13", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_14", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scoring_fn_target_V_15", "interface" : "memory", "bitwidth" : 28, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 116
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_mem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_mem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_mem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_mem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_mem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_mem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_mem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_mem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_mem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_mem_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln263 sc_in sc_lv 62 signal 1 } 
	{ scoring_fn_target_V_0_address0 sc_out sc_lv 5 signal 2 } 
	{ scoring_fn_target_V_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ scoring_fn_target_V_0_we0 sc_out sc_logic 1 signal 2 } 
	{ scoring_fn_target_V_0_d0 sc_out sc_lv 28 signal 2 } 
	{ scoring_fn_target_V_1_address0 sc_out sc_lv 5 signal 3 } 
	{ scoring_fn_target_V_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ scoring_fn_target_V_1_we0 sc_out sc_logic 1 signal 3 } 
	{ scoring_fn_target_V_1_d0 sc_out sc_lv 28 signal 3 } 
	{ scoring_fn_target_V_2_address0 sc_out sc_lv 5 signal 4 } 
	{ scoring_fn_target_V_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ scoring_fn_target_V_2_we0 sc_out sc_logic 1 signal 4 } 
	{ scoring_fn_target_V_2_d0 sc_out sc_lv 28 signal 4 } 
	{ scoring_fn_target_V_3_address0 sc_out sc_lv 5 signal 5 } 
	{ scoring_fn_target_V_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ scoring_fn_target_V_3_we0 sc_out sc_logic 1 signal 5 } 
	{ scoring_fn_target_V_3_d0 sc_out sc_lv 28 signal 5 } 
	{ scoring_fn_target_V_4_address0 sc_out sc_lv 5 signal 6 } 
	{ scoring_fn_target_V_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ scoring_fn_target_V_4_we0 sc_out sc_logic 1 signal 6 } 
	{ scoring_fn_target_V_4_d0 sc_out sc_lv 28 signal 6 } 
	{ scoring_fn_target_V_5_address0 sc_out sc_lv 5 signal 7 } 
	{ scoring_fn_target_V_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ scoring_fn_target_V_5_we0 sc_out sc_logic 1 signal 7 } 
	{ scoring_fn_target_V_5_d0 sc_out sc_lv 28 signal 7 } 
	{ scoring_fn_target_V_6_address0 sc_out sc_lv 5 signal 8 } 
	{ scoring_fn_target_V_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ scoring_fn_target_V_6_we0 sc_out sc_logic 1 signal 8 } 
	{ scoring_fn_target_V_6_d0 sc_out sc_lv 28 signal 8 } 
	{ scoring_fn_target_V_7_address0 sc_out sc_lv 5 signal 9 } 
	{ scoring_fn_target_V_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ scoring_fn_target_V_7_we0 sc_out sc_logic 1 signal 9 } 
	{ scoring_fn_target_V_7_d0 sc_out sc_lv 28 signal 9 } 
	{ scoring_fn_target_V_8_address0 sc_out sc_lv 5 signal 10 } 
	{ scoring_fn_target_V_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ scoring_fn_target_V_8_we0 sc_out sc_logic 1 signal 10 } 
	{ scoring_fn_target_V_8_d0 sc_out sc_lv 28 signal 10 } 
	{ scoring_fn_target_V_9_address0 sc_out sc_lv 5 signal 11 } 
	{ scoring_fn_target_V_9_ce0 sc_out sc_logic 1 signal 11 } 
	{ scoring_fn_target_V_9_we0 sc_out sc_logic 1 signal 11 } 
	{ scoring_fn_target_V_9_d0 sc_out sc_lv 28 signal 11 } 
	{ scoring_fn_target_V_10_address0 sc_out sc_lv 5 signal 12 } 
	{ scoring_fn_target_V_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ scoring_fn_target_V_10_we0 sc_out sc_logic 1 signal 12 } 
	{ scoring_fn_target_V_10_d0 sc_out sc_lv 28 signal 12 } 
	{ scoring_fn_target_V_11_address0 sc_out sc_lv 5 signal 13 } 
	{ scoring_fn_target_V_11_ce0 sc_out sc_logic 1 signal 13 } 
	{ scoring_fn_target_V_11_we0 sc_out sc_logic 1 signal 13 } 
	{ scoring_fn_target_V_11_d0 sc_out sc_lv 28 signal 13 } 
	{ scoring_fn_target_V_12_address0 sc_out sc_lv 5 signal 14 } 
	{ scoring_fn_target_V_12_ce0 sc_out sc_logic 1 signal 14 } 
	{ scoring_fn_target_V_12_we0 sc_out sc_logic 1 signal 14 } 
	{ scoring_fn_target_V_12_d0 sc_out sc_lv 28 signal 14 } 
	{ scoring_fn_target_V_13_address0 sc_out sc_lv 5 signal 15 } 
	{ scoring_fn_target_V_13_ce0 sc_out sc_logic 1 signal 15 } 
	{ scoring_fn_target_V_13_we0 sc_out sc_logic 1 signal 15 } 
	{ scoring_fn_target_V_13_d0 sc_out sc_lv 28 signal 15 } 
	{ scoring_fn_target_V_14_address0 sc_out sc_lv 5 signal 16 } 
	{ scoring_fn_target_V_14_ce0 sc_out sc_logic 1 signal 16 } 
	{ scoring_fn_target_V_14_we0 sc_out sc_logic 1 signal 16 } 
	{ scoring_fn_target_V_14_d0 sc_out sc_lv 28 signal 16 } 
	{ scoring_fn_target_V_15_address0 sc_out sc_lv 5 signal 17 } 
	{ scoring_fn_target_V_15_ce0 sc_out sc_logic 1 signal 17 } 
	{ scoring_fn_target_V_15_we0 sc_out sc_logic 1 signal 17 } 
	{ scoring_fn_target_V_15_d0 sc_out sc_lv 28 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWID" }} , 
 	{ "name": "m_axi_mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_mem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_mem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_mem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_mem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_mem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_mem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_mem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_mem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_mem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WVALID" }} , 
 	{ "name": "m_axi_mem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WREADY" }} , 
 	{ "name": "m_axi_mem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "WDATA" }} , 
 	{ "name": "m_axi_mem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_mem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WLAST" }} , 
 	{ "name": "m_axi_mem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WID" }} , 
 	{ "name": "m_axi_mem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "WUSER" }} , 
 	{ "name": "m_axi_mem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_mem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_mem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_mem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARID" }} , 
 	{ "name": "m_axi_mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_mem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_mem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_mem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_mem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_mem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_mem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_mem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "mem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_mem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_mem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RVALID" }} , 
 	{ "name": "m_axi_mem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RREADY" }} , 
 	{ "name": "m_axi_mem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mem", "role": "RDATA" }} , 
 	{ "name": "m_axi_mem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RLAST" }} , 
 	{ "name": "m_axi_mem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RID" }} , 
 	{ "name": "m_axi_mem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "RUSER" }} , 
 	{ "name": "m_axi_mem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "RRESP" }} , 
 	{ "name": "m_axi_mem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BVALID" }} , 
 	{ "name": "m_axi_mem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BREADY" }} , 
 	{ "name": "m_axi_mem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "mem", "role": "BRESP" }} , 
 	{ "name": "m_axi_mem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BID" }} , 
 	{ "name": "m_axi_mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BUSER" }} , 
 	{ "name": "sext_ln263", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln263", "role": "default" }} , 
 	{ "name": "scoring_fn_target_V_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_0", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_0", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_0", "role": "we0" }} , 
 	{ "name": "scoring_fn_target_V_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_0", "role": "d0" }} , 
 	{ "name": "scoring_fn_target_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_1", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_1", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_1", "role": "we0" }} , 
 	{ "name": "scoring_fn_target_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_1", "role": "d0" }} , 
 	{ "name": "scoring_fn_target_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_2", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_2", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_2", "role": "we0" }} , 
 	{ "name": "scoring_fn_target_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_2", "role": "d0" }} , 
 	{ "name": "scoring_fn_target_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_3", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_3", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_3", "role": "we0" }} , 
 	{ "name": "scoring_fn_target_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_3", "role": "d0" }} , 
 	{ "name": "scoring_fn_target_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_4", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_4", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_4", "role": "we0" }} , 
 	{ "name": "scoring_fn_target_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_4", "role": "d0" }} , 
 	{ "name": "scoring_fn_target_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_5", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_5", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_5", "role": "we0" }} , 
 	{ "name": "scoring_fn_target_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_5", "role": "d0" }} , 
 	{ "name": "scoring_fn_target_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_6", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_6", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_6", "role": "we0" }} , 
 	{ "name": "scoring_fn_target_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_6", "role": "d0" }} , 
 	{ "name": "scoring_fn_target_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_7", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_7", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_7", "role": "we0" }} , 
 	{ "name": "scoring_fn_target_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_7", "role": "d0" }} , 
 	{ "name": "scoring_fn_target_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_8", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_8", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_8", "role": "we0" }} , 
 	{ "name": "scoring_fn_target_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_8", "role": "d0" }} , 
 	{ "name": "scoring_fn_target_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_9", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_9", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_9", "role": "we0" }} , 
 	{ "name": "scoring_fn_target_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_9", "role": "d0" }} , 
 	{ "name": "scoring_fn_target_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_10", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_10", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_10", "role": "we0" }} , 
 	{ "name": "scoring_fn_target_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_10", "role": "d0" }} , 
 	{ "name": "scoring_fn_target_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_11", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_11", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_11", "role": "we0" }} , 
 	{ "name": "scoring_fn_target_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_11", "role": "d0" }} , 
 	{ "name": "scoring_fn_target_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_12", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_12", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_12", "role": "we0" }} , 
 	{ "name": "scoring_fn_target_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_12", "role": "d0" }} , 
 	{ "name": "scoring_fn_target_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_13", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_13", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_13", "role": "we0" }} , 
 	{ "name": "scoring_fn_target_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_13", "role": "d0" }} , 
 	{ "name": "scoring_fn_target_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_14", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_14", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_14", "role": "we0" }} , 
 	{ "name": "scoring_fn_target_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_14", "role": "d0" }} , 
 	{ "name": "scoring_fn_target_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "scoring_fn_target_V_15", "role": "address0" }} , 
 	{ "name": "scoring_fn_target_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_15", "role": "ce0" }} , 
 	{ "name": "scoring_fn_target_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scoring_fn_target_V_15", "role": "we0" }} , 
 	{ "name": "scoring_fn_target_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "scoring_fn_target_V_15", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "load_weights_first_layer_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_264_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln263", "Type" : "None", "Direction" : "I"},
			{"Name" : "scoring_fn_target_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scoring_fn_target_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scoring_fn_target_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scoring_fn_target_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scoring_fn_target_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scoring_fn_target_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scoring_fn_target_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scoring_fn_target_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scoring_fn_target_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scoring_fn_target_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scoring_fn_target_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scoring_fn_target_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scoring_fn_target_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scoring_fn_target_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scoring_fn_target_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scoring_fn_target_V_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_263_1_VITIS_LOOP_264_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	load_weights_first_layer_Pipeline_VITIS_LOOP_263_1_VITIS_LOOP_264_2 {
		mem {Type I LastRead 1 FirstWrite -1}
		sext_ln263 {Type I LastRead 0 FirstWrite -1}
		scoring_fn_target_V_0 {Type O LastRead -1 FirstWrite 2}
		scoring_fn_target_V_1 {Type O LastRead -1 FirstWrite 2}
		scoring_fn_target_V_2 {Type O LastRead -1 FirstWrite 2}
		scoring_fn_target_V_3 {Type O LastRead -1 FirstWrite 2}
		scoring_fn_target_V_4 {Type O LastRead -1 FirstWrite 2}
		scoring_fn_target_V_5 {Type O LastRead -1 FirstWrite 2}
		scoring_fn_target_V_6 {Type O LastRead -1 FirstWrite 2}
		scoring_fn_target_V_7 {Type O LastRead -1 FirstWrite 2}
		scoring_fn_target_V_8 {Type O LastRead -1 FirstWrite 2}
		scoring_fn_target_V_9 {Type O LastRead -1 FirstWrite 2}
		scoring_fn_target_V_10 {Type O LastRead -1 FirstWrite 2}
		scoring_fn_target_V_11 {Type O LastRead -1 FirstWrite 2}
		scoring_fn_target_V_12 {Type O LastRead -1 FirstWrite 2}
		scoring_fn_target_V_13 {Type O LastRead -1 FirstWrite 2}
		scoring_fn_target_V_14 {Type O LastRead -1 FirstWrite 2}
		scoring_fn_target_V_15 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "67", "Max" : "67"}
	, {"Name" : "Interval", "Min" : "67", "Max" : "67"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mem { m_axi {  { m_axi_mem_AWVALID VALID 1 1 }  { m_axi_mem_AWREADY READY 0 1 }  { m_axi_mem_AWADDR ADDR 1 64 }  { m_axi_mem_AWID ID 1 1 }  { m_axi_mem_AWLEN LEN 1 32 }  { m_axi_mem_AWSIZE SIZE 1 3 }  { m_axi_mem_AWBURST BURST 1 2 }  { m_axi_mem_AWLOCK LOCK 1 2 }  { m_axi_mem_AWCACHE CACHE 1 4 }  { m_axi_mem_AWPROT PROT 1 3 }  { m_axi_mem_AWQOS QOS 1 4 }  { m_axi_mem_AWREGION REGION 1 4 }  { m_axi_mem_AWUSER USER 1 1 }  { m_axi_mem_WVALID VALID 1 1 }  { m_axi_mem_WREADY READY 0 1 }  { m_axi_mem_WDATA DATA 1 32 }  { m_axi_mem_WSTRB STRB 1 4 }  { m_axi_mem_WLAST LAST 1 1 }  { m_axi_mem_WID ID 1 1 }  { m_axi_mem_WUSER USER 1 1 }  { m_axi_mem_ARVALID VALID 1 1 }  { m_axi_mem_ARREADY READY 0 1 }  { m_axi_mem_ARADDR ADDR 1 64 }  { m_axi_mem_ARID ID 1 1 }  { m_axi_mem_ARLEN LEN 1 32 }  { m_axi_mem_ARSIZE SIZE 1 3 }  { m_axi_mem_ARBURST BURST 1 2 }  { m_axi_mem_ARLOCK LOCK 1 2 }  { m_axi_mem_ARCACHE CACHE 1 4 }  { m_axi_mem_ARPROT PROT 1 3 }  { m_axi_mem_ARQOS QOS 1 4 }  { m_axi_mem_ARREGION REGION 1 4 }  { m_axi_mem_ARUSER USER 1 1 }  { m_axi_mem_RVALID VALID 0 1 }  { m_axi_mem_RREADY READY 1 1 }  { m_axi_mem_RDATA DATA 0 32 }  { m_axi_mem_RLAST LAST 0 1 }  { m_axi_mem_RID ID 0 1 }  { m_axi_mem_RUSER USER 0 1 }  { m_axi_mem_RRESP RESP 0 2 }  { m_axi_mem_BVALID VALID 0 1 }  { m_axi_mem_BREADY READY 1 1 }  { m_axi_mem_BRESP RESP 0 2 }  { m_axi_mem_BID ID 0 1 }  { m_axi_mem_BUSER USER 0 1 } } }
	sext_ln263 { ap_none {  { sext_ln263 in_data 0 62 } } }
	scoring_fn_target_V_0 { ap_memory {  { scoring_fn_target_V_0_address0 mem_address 1 5 }  { scoring_fn_target_V_0_ce0 mem_ce 1 1 }  { scoring_fn_target_V_0_we0 mem_we 1 1 }  { scoring_fn_target_V_0_d0 mem_din 1 28 } } }
	scoring_fn_target_V_1 { ap_memory {  { scoring_fn_target_V_1_address0 mem_address 1 5 }  { scoring_fn_target_V_1_ce0 mem_ce 1 1 }  { scoring_fn_target_V_1_we0 mem_we 1 1 }  { scoring_fn_target_V_1_d0 mem_din 1 28 } } }
	scoring_fn_target_V_2 { ap_memory {  { scoring_fn_target_V_2_address0 mem_address 1 5 }  { scoring_fn_target_V_2_ce0 mem_ce 1 1 }  { scoring_fn_target_V_2_we0 mem_we 1 1 }  { scoring_fn_target_V_2_d0 mem_din 1 28 } } }
	scoring_fn_target_V_3 { ap_memory {  { scoring_fn_target_V_3_address0 mem_address 1 5 }  { scoring_fn_target_V_3_ce0 mem_ce 1 1 }  { scoring_fn_target_V_3_we0 mem_we 1 1 }  { scoring_fn_target_V_3_d0 mem_din 1 28 } } }
	scoring_fn_target_V_4 { ap_memory {  { scoring_fn_target_V_4_address0 mem_address 1 5 }  { scoring_fn_target_V_4_ce0 mem_ce 1 1 }  { scoring_fn_target_V_4_we0 mem_we 1 1 }  { scoring_fn_target_V_4_d0 mem_din 1 28 } } }
	scoring_fn_target_V_5 { ap_memory {  { scoring_fn_target_V_5_address0 mem_address 1 5 }  { scoring_fn_target_V_5_ce0 mem_ce 1 1 }  { scoring_fn_target_V_5_we0 mem_we 1 1 }  { scoring_fn_target_V_5_d0 mem_din 1 28 } } }
	scoring_fn_target_V_6 { ap_memory {  { scoring_fn_target_V_6_address0 mem_address 1 5 }  { scoring_fn_target_V_6_ce0 mem_ce 1 1 }  { scoring_fn_target_V_6_we0 mem_we 1 1 }  { scoring_fn_target_V_6_d0 mem_din 1 28 } } }
	scoring_fn_target_V_7 { ap_memory {  { scoring_fn_target_V_7_address0 mem_address 1 5 }  { scoring_fn_target_V_7_ce0 mem_ce 1 1 }  { scoring_fn_target_V_7_we0 mem_we 1 1 }  { scoring_fn_target_V_7_d0 mem_din 1 28 } } }
	scoring_fn_target_V_8 { ap_memory {  { scoring_fn_target_V_8_address0 mem_address 1 5 }  { scoring_fn_target_V_8_ce0 mem_ce 1 1 }  { scoring_fn_target_V_8_we0 mem_we 1 1 }  { scoring_fn_target_V_8_d0 mem_din 1 28 } } }
	scoring_fn_target_V_9 { ap_memory {  { scoring_fn_target_V_9_address0 mem_address 1 5 }  { scoring_fn_target_V_9_ce0 mem_ce 1 1 }  { scoring_fn_target_V_9_we0 mem_we 1 1 }  { scoring_fn_target_V_9_d0 mem_din 1 28 } } }
	scoring_fn_target_V_10 { ap_memory {  { scoring_fn_target_V_10_address0 mem_address 1 5 }  { scoring_fn_target_V_10_ce0 mem_ce 1 1 }  { scoring_fn_target_V_10_we0 mem_we 1 1 }  { scoring_fn_target_V_10_d0 mem_din 1 28 } } }
	scoring_fn_target_V_11 { ap_memory {  { scoring_fn_target_V_11_address0 mem_address 1 5 }  { scoring_fn_target_V_11_ce0 mem_ce 1 1 }  { scoring_fn_target_V_11_we0 mem_we 1 1 }  { scoring_fn_target_V_11_d0 mem_din 1 28 } } }
	scoring_fn_target_V_12 { ap_memory {  { scoring_fn_target_V_12_address0 mem_address 1 5 }  { scoring_fn_target_V_12_ce0 mem_ce 1 1 }  { scoring_fn_target_V_12_we0 mem_we 1 1 }  { scoring_fn_target_V_12_d0 mem_din 1 28 } } }
	scoring_fn_target_V_13 { ap_memory {  { scoring_fn_target_V_13_address0 mem_address 1 5 }  { scoring_fn_target_V_13_ce0 mem_ce 1 1 }  { scoring_fn_target_V_13_we0 mem_we 1 1 }  { scoring_fn_target_V_13_d0 mem_din 1 28 } } }
	scoring_fn_target_V_14 { ap_memory {  { scoring_fn_target_V_14_address0 mem_address 1 5 }  { scoring_fn_target_V_14_ce0 mem_ce 1 1 }  { scoring_fn_target_V_14_we0 mem_we 1 1 }  { scoring_fn_target_V_14_d0 mem_din 1 28 } } }
	scoring_fn_target_V_15 { ap_memory {  { scoring_fn_target_V_15_address0 mem_address 1 5 }  { scoring_fn_target_V_15_ce0 mem_ce 1 1 }  { scoring_fn_target_V_15_we0 mem_we 1 1 }  { scoring_fn_target_V_15_d0 mem_din 1 28 } } }
}
