set moduleName GIN_compute_one_graph
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {GIN_compute_one_graph}
set C_modelType { void 0 }
set C_modelArgList {
	{ mem int 32 regular {axi_master 2}  }
	{ node_feature_in int 64 regular {axi_slave 0}  }
	{ edge_list_in int 64 regular {axi_slave 0}  }
	{ edge_attr_in int 64 regular {axi_slave 0}  }
	{ graph_attr int 64 regular {axi_slave 0}  }
	{ task_r int 64 regular {axi_slave 0}  }
	{ gnn_node_mlp_1_weights_fixed int 64 regular {axi_slave 0}  }
	{ gnn_node_mlp_1_bias_fixed int 64 regular {axi_slave 0}  }
	{ gnn_node_mlp_2_weights_fixed int 64 regular {axi_slave 0}  }
	{ gnn_node_mlp_2_bias_fixed int 64 regular {axi_slave 0}  }
	{ gnn_node_embedding_fixed int 64 regular {axi_slave 0}  }
	{ gnn_edge_embedding_fixed int 64 regular {axi_slave 0}  }
	{ graph_pred_linear_weight_fixed int 64 regular {axi_slave 0}  }
	{ graph_pred_linear_bias_fixed int 64 regular {axi_slave 0}  }
	{ eps_fixed int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "node_feature_in","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "node_feature_in","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "edge_list_in","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "edge_list_in","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "edge_attr_in","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "edge_attr_in","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "graph_attr","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "graph_attr","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "task","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "task_r","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "gnn_node_mlp_1_weights_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "gnn_node_mlp_1_weights_fixed","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "gnn_node_mlp_1_bias_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "gnn_node_mlp_1_bias_fixed","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "gnn_node_mlp_2_weights_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "gnn_node_mlp_2_weights_fixed","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "gnn_node_mlp_2_bias_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "gnn_node_mlp_2_bias_fixed","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "gnn_node_embedding_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "gnn_node_embedding_fixed","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "gnn_edge_embedding_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "gnn_edge_embedding_fixed","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "graph_pred_linear_weight_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "graph_pred_linear_weight_fixed","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "graph_pred_linear_bias_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "graph_pred_linear_bias_fixed","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "eps_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "eps_fixed","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "node_feature_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "edge_list_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "edge_attr_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "graph_attr", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "task_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "gnn_node_mlp_1_weights_fixed", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} , 
 	{ "Name" : "gnn_node_mlp_1_bias_fixed", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":99}} , 
 	{ "Name" : "gnn_node_mlp_2_weights_fixed", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":100}, "offset_end" : {"in":111}} , 
 	{ "Name" : "gnn_node_mlp_2_bias_fixed", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":123}} , 
 	{ "Name" : "gnn_node_embedding_fixed", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":124}, "offset_end" : {"in":135}} , 
 	{ "Name" : "gnn_edge_embedding_fixed", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":147}} , 
 	{ "Name" : "graph_pred_linear_weight_fixed", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":148}, "offset_end" : {"in":159}} , 
 	{ "Name" : "graph_pred_linear_bias_fixed", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":171}} , 
 	{ "Name" : "eps_fixed", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":172}, "offset_end" : {"in":183}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_mem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_mem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_mem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_mem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_mem_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_mem_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"GIN_compute_one_graph","role":"start","value":"0","valid_bit":"0"},{"name":"GIN_compute_one_graph","role":"continue","value":"0","valid_bit":"4"},{"name":"GIN_compute_one_graph","role":"auto_start","value":"0","valid_bit":"7"},{"name":"node_feature_in","role":"data","value":"16"},{"name":"edge_list_in","role":"data","value":"28"},{"name":"edge_attr_in","role":"data","value":"40"},{"name":"graph_attr","role":"data","value":"52"},{"name":"task_r","role":"data","value":"64"},{"name":"gnn_node_mlp_1_weights_fixed","role":"data","value":"76"},{"name":"gnn_node_mlp_1_bias_fixed","role":"data","value":"88"},{"name":"gnn_node_mlp_2_weights_fixed","role":"data","value":"100"},{"name":"gnn_node_mlp_2_bias_fixed","role":"data","value":"112"},{"name":"gnn_node_embedding_fixed","role":"data","value":"124"},{"name":"gnn_edge_embedding_fixed","role":"data","value":"136"},{"name":"graph_pred_linear_weight_fixed","role":"data","value":"148"},{"name":"graph_pred_linear_bias_fixed","role":"data","value":"160"},{"name":"eps_fixed","role":"data","value":"172"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"GIN_compute_one_graph","role":"start","value":"0","valid_bit":"0"},{"name":"GIN_compute_one_graph","role":"done","value":"0","valid_bit":"1"},{"name":"GIN_compute_one_graph","role":"idle","value":"0","valid_bit":"2"},{"name":"GIN_compute_one_graph","role":"ready","value":"0","valid_bit":"3"},{"name":"GIN_compute_one_graph","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_mem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_mem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_mem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_mem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "AWID" }} , 
 	{ "name": "m_axi_mem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_mem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mem", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_mem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "277", "278", "280", "284", "286", "287"],
		"CDFG" : "GIN_compute_one_graph",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "mem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "mem_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "277", "SubInstance" : "grp_load_graph_fu_604", "Port" : "mem"},
					{"ID" : "284", "SubInstance" : "grp_global_graph_prediction_fu_643", "Port" : "mem"},
					{"ID" : "13", "SubInstance" : "grp_compute_CONV_layer_fu_566", "Port" : "mem"}]},
			{"Name" : "node_feature_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_list_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_attr_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "graph_attr", "Type" : "None", "Direction" : "I"},
			{"Name" : "task_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_1_weights_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_1_bias_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_2_weights_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_2_bias_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_embedding_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_edge_embedding_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "graph_pred_linear_weight_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "graph_pred_linear_bias_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "eps_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_eps_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_compute_CONV_layer_fu_566", "Port" : "mlp_eps_V"}]},
			{"Name" : "graph_pred_weights_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "284", "SubInstance" : "grp_global_graph_prediction_fu_643", "Port" : "graph_pred_weights_V"}]},
			{"Name" : "node_embedding_table_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_compute_node_embedding_fu_630", "Port" : "node_embedding_table_V"}]},
			{"Name" : "edge_embedding_table_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_compute_CONV_layer_fu_566", "Port" : "edge_embedding_table_V"}]},
			{"Name" : "node_feature", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_compute_node_embedding_fu_630", "Port" : "node_feature"},
					{"ID" : "277", "SubInstance" : "grp_load_graph_fu_604", "Port" : "node_feature"}]},
			{"Name" : "edge_attr", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "277", "SubInstance" : "grp_load_graph_fu_604", "Port" : "edge_attr"},
					{"ID" : "13", "SubInstance" : "grp_compute_CONV_layer_fu_566", "Port" : "edge_attr"}]},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "277", "SubInstance" : "grp_load_graph_fu_604", "Port" : "edge_list"},
					{"ID" : "13", "SubInstance" : "grp_compute_CONV_layer_fu_566", "Port" : "edge_list"}]},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_compute_node_embedding_fu_630", "Port" : "node_embedding_V"},
					{"ID" : "278", "SubInstance" : "grp_global_mean_pooling_fu_621", "Port" : "node_embedding_V"},
					{"ID" : "13", "SubInstance" : "grp_compute_CONV_layer_fu_566", "Port" : "node_embedding_V"}]},
			{"Name" : "nd_feature_table_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_compute_node_embedding_fu_630", "Port" : "nd_feature_table_1"}]},
			{"Name" : "edge_embedding_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_compute_CONV_layer_fu_566", "Port" : "edge_embedding_V"}]},
			{"Name" : "ed_feature_table_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_compute_CONV_layer_fu_566", "Port" : "ed_feature_table_1"}]},
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_compute_CONV_layer_fu_566", "Port" : "message_V"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_compute_CONV_layer_fu_566", "Port" : "mlp_1_bias_V"}]},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_compute_CONV_layer_fu_566", "Port" : "mlp_1_weights_V"}]},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_compute_CONV_layer_fu_566", "Port" : "mlp_2_bias_V"}]},
			{"Name" : "mlp_2_weights_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_compute_CONV_layer_fu_566", "Port" : "mlp_2_weights_V"}]},
			{"Name" : "graph_embedding_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "278", "SubInstance" : "grp_global_mean_pooling_fu_621", "Port" : "graph_embedding_V"},
					{"ID" : "284", "SubInstance" : "grp_global_graph_prediction_fu_643", "Port" : "graph_embedding_V"}]},
			{"Name" : "graph_pred_bias_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "284", "SubInstance" : "grp_global_graph_prediction_fu_643", "Port" : "graph_pred_bias_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mlp_eps_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.graph_pred_weights_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_table_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.edge_embedding_table_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_feature_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.edge_attr_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.edge_list_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.graph_embedding_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.graph_pred_bias_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_m_axi_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566", "Parent" : "0", "Child" : ["14", "15", "16", "17", "18", "19", "20", "263", "267", "272"],
		"CDFG" : "compute_CONV_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "263", "SubInstance" : "grp_load_mlp_weights_one_layer_fu_133", "Port" : "mem"}]},
			{"Name" : "num_of_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_of_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_1_weights_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_1_bias_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_2_weights_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_2_bias_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_embedding_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "grp_compute_edge_embedding_fu_157", "Port" : "edge_embedding_V"},
					{"ID" : "272", "SubInstance" : "grp_message_passing_fu_173", "Port" : "edge_embedding_V"}]},
			{"Name" : "ed_feature_table_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "grp_compute_edge_embedding_fu_157", "Port" : "ed_feature_table_1"}]},
			{"Name" : "edge_embedding_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "grp_compute_edge_embedding_fu_157", "Port" : "edge_embedding_table_V"}]},
			{"Name" : "edge_attr", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "267", "SubInstance" : "grp_compute_edge_embedding_fu_157", "Port" : "edge_attr"}]},
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_MLP_fu_112", "Port" : "message_V"},
					{"ID" : "272", "SubInstance" : "grp_message_passing_fu_173", "Port" : "message_V"}]},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "272", "SubInstance" : "grp_message_passing_fu_173", "Port" : "edge_list"}]},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_MLP_fu_112", "Port" : "node_embedding_V"},
					{"ID" : "272", "SubInstance" : "grp_message_passing_fu_173", "Port" : "node_embedding_V"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_MLP_fu_112", "Port" : "mlp_1_bias_V"},
					{"ID" : "263", "SubInstance" : "grp_load_mlp_weights_one_layer_fu_133", "Port" : "mlp_1_bias_V"}]},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_MLP_fu_112", "Port" : "mlp_1_weights_V"},
					{"ID" : "263", "SubInstance" : "grp_load_mlp_weights_one_layer_fu_133", "Port" : "mlp_1_weights_V"}]},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_MLP_fu_112", "Port" : "mlp_2_bias_V"},
					{"ID" : "263", "SubInstance" : "grp_load_mlp_weights_one_layer_fu_133", "Port" : "mlp_2_bias_V"}]},
			{"Name" : "mlp_2_weights_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_MLP_fu_112", "Port" : "mlp_2_weights_V"},
					{"ID" : "263", "SubInstance" : "grp_load_mlp_weights_one_layer_fu_133", "Port" : "mlp_2_weights_V"}]},
			{"Name" : "mlp_eps_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_MLP_fu_112", "Port" : "mlp_eps_V"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.edge_embedding_V_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.message_V_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.mlp_1_bias_V_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.mlp_1_weights_V_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.mlp_2_bias_V_U", "Parent" : "13"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.mlp_2_weights_V_U", "Parent" : "13"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112", "Parent" : "13", "Child" : ["21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "172", "259", "260", "261", "262"],
		"CDFG" : "MLP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "num_of_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_eps_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "grp_MLP_batch_nodes_300_600_s_fu_926", "Port" : "mlp_1_weights_V"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "grp_MLP_batch_nodes_300_600_s_fu_926", "Port" : "mlp_1_bias_V"}]},
			{"Name" : "mlp_2_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_MLP_batch_nodes_600_300_s_fu_883", "Port" : "mlp_2_weights_V"}]},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_MLP_batch_nodes_600_300_s_fu_883", "Port" : "mlp_2_bias_V"}]}]},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_1_V_0_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_1_V_1_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_1_V_2_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_1_V_3_U", "Parent" : "20"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_1_V_4_U", "Parent" : "20"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_1_V_5_U", "Parent" : "20"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_1_V_6_U", "Parent" : "20"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_1_V_7_U", "Parent" : "20"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_1_V_8_U", "Parent" : "20"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_1_V_9_U", "Parent" : "20"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_1_V_10_U", "Parent" : "20"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_1_V_11_U", "Parent" : "20"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_1_V_12_U", "Parent" : "20"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_1_V_13_U", "Parent" : "20"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_1_V_14_U", "Parent" : "20"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_1_V_15_U", "Parent" : "20"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_2_V_0_U", "Parent" : "20"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_2_V_1_U", "Parent" : "20"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_2_V_2_U", "Parent" : "20"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_2_V_3_U", "Parent" : "20"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_2_V_4_U", "Parent" : "20"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_2_V_5_U", "Parent" : "20"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_2_V_6_U", "Parent" : "20"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_2_V_7_U", "Parent" : "20"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_2_V_8_U", "Parent" : "20"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_2_V_9_U", "Parent" : "20"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_2_V_10_U", "Parent" : "20"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_2_V_11_U", "Parent" : "20"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_2_V_12_U", "Parent" : "20"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_2_V_13_U", "Parent" : "20"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_2_V_14_U", "Parent" : "20"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_2_V_15_U", "Parent" : "20"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_3_0_U", "Parent" : "20"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_3_1_U", "Parent" : "20"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_3_2_U", "Parent" : "20"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_3_3_U", "Parent" : "20"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_3_4_U", "Parent" : "20"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_3_5_U", "Parent" : "20"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_3_6_U", "Parent" : "20"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_3_7_U", "Parent" : "20"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_3_8_U", "Parent" : "20"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_3_9_U", "Parent" : "20"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_3_10_U", "Parent" : "20"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_3_11_U", "Parent" : "20"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_3_12_U", "Parent" : "20"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_3_13_U", "Parent" : "20"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_3_14_U", "Parent" : "20"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mlp_buf_3_15_U", "Parent" : "20"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883", "Parent" : "20", "Child" : ["70", "71", "73", "74", "76", "78", "80", "82", "84", "86", "88", "90", "92", "94", "96", "98", "100", "102", "104", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171"],
		"CDFG" : "MLP_batch_nodes_600_300_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "622", "EstimateLatencyMax" : "622",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "70", "Name" : "MLP_batch_nodes_600_300_entry162_U0"},
			{"ID" : "71", "Name" : "load_mlp_weight_vector_600_300_U0"},
			{"ID" : "73", "Name" : "MLP_batch_nodes_600_300_Block_split13_proc_U0"},
			{"ID" : "74", "Name" : "MLP_PE_600_300_58_U0"},
			{"ID" : "76", "Name" : "MLP_PE_600_300_59_U0"},
			{"ID" : "78", "Name" : "MLP_PE_600_300_60_U0"},
			{"ID" : "80", "Name" : "MLP_PE_600_300_61_U0"},
			{"ID" : "82", "Name" : "MLP_PE_600_300_62_U0"},
			{"ID" : "84", "Name" : "MLP_PE_600_300_63_U0"},
			{"ID" : "86", "Name" : "MLP_PE_600_300_64_U0"},
			{"ID" : "88", "Name" : "MLP_PE_600_300_65_U0"},
			{"ID" : "90", "Name" : "MLP_PE_600_300_66_U0"},
			{"ID" : "92", "Name" : "MLP_PE_600_300_67_U0"},
			{"ID" : "94", "Name" : "MLP_PE_600_300_68_U0"},
			{"ID" : "96", "Name" : "MLP_PE_600_300_69_U0"},
			{"ID" : "98", "Name" : "MLP_PE_600_300_70_U0"},
			{"ID" : "100", "Name" : "MLP_PE_600_300_71_U0"},
			{"ID" : "102", "Name" : "MLP_PE_600_300_72_U0"},
			{"ID" : "104", "Name" : "MLP_PE_600_300_73_U0"}],
		"OutputProcess" : [
			{"ID" : "74", "Name" : "MLP_PE_600_300_58_U0"},
			{"ID" : "76", "Name" : "MLP_PE_600_300_59_U0"},
			{"ID" : "78", "Name" : "MLP_PE_600_300_60_U0"},
			{"ID" : "80", "Name" : "MLP_PE_600_300_61_U0"},
			{"ID" : "82", "Name" : "MLP_PE_600_300_62_U0"},
			{"ID" : "84", "Name" : "MLP_PE_600_300_63_U0"},
			{"ID" : "86", "Name" : "MLP_PE_600_300_64_U0"},
			{"ID" : "88", "Name" : "MLP_PE_600_300_65_U0"},
			{"ID" : "90", "Name" : "MLP_PE_600_300_66_U0"},
			{"ID" : "92", "Name" : "MLP_PE_600_300_67_U0"},
			{"ID" : "94", "Name" : "MLP_PE_600_300_68_U0"},
			{"ID" : "96", "Name" : "MLP_PE_600_300_69_U0"},
			{"ID" : "98", "Name" : "MLP_PE_600_300_70_U0"},
			{"ID" : "100", "Name" : "MLP_PE_600_300_71_U0"},
			{"ID" : "102", "Name" : "MLP_PE_600_300_72_U0"},
			{"ID" : "104", "Name" : "MLP_PE_600_300_73_U0"}],
		"Port" : [
			{"Name" : "mlp_in_local", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "MLP_PE_600_300_58_U0", "Port" : "mlp_in_local"}]},
			{"Name" : "mlp_in_local1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "MLP_PE_600_300_59_U0", "Port" : "mlp_in_local1"}]},
			{"Name" : "mlp_in_local2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "MLP_PE_600_300_60_U0", "Port" : "mlp_in_local2"}]},
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "MLP_PE_600_300_61_U0", "Port" : "mlp_in_local3"}]},
			{"Name" : "mlp_in_local4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "MLP_PE_600_300_62_U0", "Port" : "mlp_in_local4"}]},
			{"Name" : "mlp_in_local5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "MLP_PE_600_300_63_U0", "Port" : "mlp_in_local5"}]},
			{"Name" : "mlp_in_local6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "MLP_PE_600_300_64_U0", "Port" : "mlp_in_local6"}]},
			{"Name" : "mlp_in_local7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "MLP_PE_600_300_65_U0", "Port" : "mlp_in_local7"}]},
			{"Name" : "mlp_in_local8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "MLP_PE_600_300_66_U0", "Port" : "mlp_in_local8"}]},
			{"Name" : "mlp_in_local9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "MLP_PE_600_300_67_U0", "Port" : "mlp_in_local9"}]},
			{"Name" : "mlp_in_local10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "MLP_PE_600_300_68_U0", "Port" : "mlp_in_local10"}]},
			{"Name" : "mlp_in_local11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "MLP_PE_600_300_69_U0", "Port" : "mlp_in_local11"}]},
			{"Name" : "mlp_in_local12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "MLP_PE_600_300_70_U0", "Port" : "mlp_in_local12"}]},
			{"Name" : "mlp_in_local13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "MLP_PE_600_300_71_U0", "Port" : "mlp_in_local13"}]},
			{"Name" : "mlp_in_local14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "MLP_PE_600_300_72_U0", "Port" : "mlp_in_local14"}]},
			{"Name" : "mlp_in_local15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "MLP_PE_600_300_73_U0", "Port" : "mlp_in_local15"}]},
			{"Name" : "mlp_out_local", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "MLP_PE_600_300_58_U0", "Port" : "mlp_out_local"}]},
			{"Name" : "mlp_out_local16", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "MLP_PE_600_300_59_U0", "Port" : "mlp_out_local16"}]},
			{"Name" : "mlp_out_local17", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "MLP_PE_600_300_60_U0", "Port" : "mlp_out_local17"}]},
			{"Name" : "mlp_out_local18", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "80", "SubInstance" : "MLP_PE_600_300_61_U0", "Port" : "mlp_out_local18"}]},
			{"Name" : "mlp_out_local19", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "MLP_PE_600_300_62_U0", "Port" : "mlp_out_local19"}]},
			{"Name" : "mlp_out_local20", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "84", "SubInstance" : "MLP_PE_600_300_63_U0", "Port" : "mlp_out_local20"}]},
			{"Name" : "mlp_out_local21", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "MLP_PE_600_300_64_U0", "Port" : "mlp_out_local21"}]},
			{"Name" : "mlp_out_local22", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "MLP_PE_600_300_65_U0", "Port" : "mlp_out_local22"}]},
			{"Name" : "mlp_out_local23", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "MLP_PE_600_300_66_U0", "Port" : "mlp_out_local23"}]},
			{"Name" : "mlp_out_local24", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "MLP_PE_600_300_67_U0", "Port" : "mlp_out_local24"}]},
			{"Name" : "mlp_out_local25", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "MLP_PE_600_300_68_U0", "Port" : "mlp_out_local25"}]},
			{"Name" : "mlp_out_local26", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "96", "SubInstance" : "MLP_PE_600_300_69_U0", "Port" : "mlp_out_local26"}]},
			{"Name" : "mlp_out_local27", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "98", "SubInstance" : "MLP_PE_600_300_70_U0", "Port" : "mlp_out_local27"}]},
			{"Name" : "mlp_out_local28", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "MLP_PE_600_300_71_U0", "Port" : "mlp_out_local28"}]},
			{"Name" : "mlp_out_local29", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "MLP_PE_600_300_72_U0", "Port" : "mlp_out_local29"}]},
			{"Name" : "mlp_out_local30", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "MLP_PE_600_300_73_U0", "Port" : "mlp_out_local30"}]},
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_relu", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_2_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "load_mlp_weight_vector_600_300_U0", "Port" : "mlp_2_weights_V"}]},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "73", "SubInstance" : "MLP_batch_nodes_600_300_Block_split13_proc_U0", "Port" : "mlp_2_bias_V"}]}]},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_batch_nodes_600_300_entry162_U0", "Parent" : "69",
		"CDFG" : "MLP_batch_nodes_600_300_entry162",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "do_relu", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "71", "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "73", "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "108", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.load_mlp_weight_vector_600_300_U0", "Parent" : "69", "Child" : ["72"],
		"CDFG" : "load_mlp_weight_vector_600_300_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "605", "EstimateLatencyMax" : "605",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_vector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_vector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "106", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_weights_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.load_mlp_weight_vector_600_300_U0.mul_mul_9ns_11ns_18_4_1_U303", "Parent" : "71"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_batch_nodes_600_300_Block_split13_proc_U0", "Parent" : "69",
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
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "107", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "74", "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_58_U0", "Parent" : "69", "Child" : ["75"],
		"CDFG" : "MLP_PE_600_300_58",
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
			{"Name" : "mlp_weight_fifo_0_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_0_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "73", "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "71", "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "108", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_58_U0.mul_32s_31ns_54_1_1_U312", "Parent" : "74"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_59_U0", "Parent" : "69", "Child" : ["77"],
		"CDFG" : "MLP_PE_600_300_59",
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
			{"Name" : "mlp_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "74", "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_59_U0.mul_32s_31ns_54_1_1_U324", "Parent" : "76"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_60_U0", "Parent" : "69", "Child" : ["79"],
		"CDFG" : "MLP_PE_600_300_60",
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
			{"Name" : "mlp_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "118", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "119", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "122", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "80", "DependentChan" : "123", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_60_U0.mul_32s_31ns_54_1_1_U335", "Parent" : "78"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_61_U0", "Parent" : "69", "Child" : ["81"],
		"CDFG" : "MLP_PE_600_300_61",
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
			{"Name" : "mlp_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "120", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_4_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_4_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "121", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "122", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "78", "DependentChan" : "123", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "125", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "126", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "81", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_61_U0.mul_32s_31ns_54_1_1_U346", "Parent" : "80"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_62_U0", "Parent" : "69", "Child" : ["83"],
		"CDFG" : "MLP_PE_600_300_62",
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
			{"Name" : "mlp_weight_fifo_4_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "124", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_4_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_5_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "128", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_5_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "125", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "126", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "80", "DependentChan" : "127", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "129", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "130", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "84", "DependentChan" : "131", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_62_U0.mul_32s_31ns_54_1_1_U357", "Parent" : "82"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_63_U0", "Parent" : "69", "Child" : ["85"],
		"CDFG" : "MLP_PE_600_300_63",
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
			{"Name" : "mlp_weight_fifo_5_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "128", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_5_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_6_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_6_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "129", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "130", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "82", "DependentChan" : "131", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "134", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "86", "DependentChan" : "135", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_63_U0.mul_32s_31ns_54_1_1_U368", "Parent" : "84"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_64_U0", "Parent" : "69", "Child" : ["87"],
		"CDFG" : "MLP_PE_600_300_64",
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
			{"Name" : "mlp_weight_fifo_6_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "132", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_6_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_7_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "88", "DependentChan" : "136", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_7_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "133", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "134", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "84", "DependentChan" : "135", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "88", "DependentChan" : "137", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "88", "DependentChan" : "138", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "88", "DependentChan" : "139", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "87", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_64_U0.mul_32s_31ns_54_1_1_U379", "Parent" : "86"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_65_U0", "Parent" : "69", "Child" : ["89"],
		"CDFG" : "MLP_PE_600_300_65",
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
			{"Name" : "mlp_weight_fifo_7_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "136", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_7_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_8_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "140", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_8_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "137", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "138", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "86", "DependentChan" : "139", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "141", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "142", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "90", "DependentChan" : "143", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_65_U0.mul_32s_31ns_54_1_1_U390", "Parent" : "88"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_66_U0", "Parent" : "69", "Child" : ["91"],
		"CDFG" : "MLP_PE_600_300_66",
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
			{"Name" : "mlp_weight_fifo_8_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "88", "DependentChan" : "140", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_8_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_9_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "92", "DependentChan" : "144", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_9_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "88", "DependentChan" : "141", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "88", "DependentChan" : "142", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "88", "DependentChan" : "143", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "92", "DependentChan" : "145", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "92", "DependentChan" : "146", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "92", "DependentChan" : "147", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_66_U0.mul_32s_31ns_54_1_1_U401", "Parent" : "90"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_67_U0", "Parent" : "69", "Child" : ["93"],
		"CDFG" : "MLP_PE_600_300_67",
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
			{"Name" : "mlp_weight_fifo_9_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "144", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_9_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_10_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "94", "DependentChan" : "148", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_10_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "145", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "146", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "90", "DependentChan" : "147", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "94", "DependentChan" : "149", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "94", "DependentChan" : "150", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "94", "DependentChan" : "151", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_67_U0.mul_32s_31ns_54_1_1_U412", "Parent" : "92"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_68_U0", "Parent" : "69", "Child" : ["95"],
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
			{"Name" : "mlp_weight_fifo_10_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "148", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_10_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_11_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "96", "DependentChan" : "152", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_11_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "149", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "150", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "92", "DependentChan" : "151", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "96", "DependentChan" : "153", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "96", "DependentChan" : "154", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "96", "DependentChan" : "155", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_68_U0.mul_32s_31ns_54_1_1_U423", "Parent" : "94"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_69_U0", "Parent" : "69", "Child" : ["97"],
		"CDFG" : "MLP_PE_600_300_69",
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
			{"Name" : "mlp_weight_fifo_11_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "94", "DependentChan" : "152", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_11_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_12_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "98", "DependentChan" : "156", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_12_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "94", "DependentChan" : "153", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "94", "DependentChan" : "154", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "94", "DependentChan" : "155", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "98", "DependentChan" : "157", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "98", "DependentChan" : "158", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "98", "DependentChan" : "159", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_69_U0.mul_32s_31ns_54_1_1_U434", "Parent" : "96"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_70_U0", "Parent" : "69", "Child" : ["99"],
		"CDFG" : "MLP_PE_600_300_70",
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
			{"Name" : "mlp_weight_fifo_12_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "96", "DependentChan" : "156", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_12_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_13_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "160", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_13_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "96", "DependentChan" : "157", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "96", "DependentChan" : "158", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "96", "DependentChan" : "159", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "161", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "162", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "163", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_70_U0.mul_32s_31ns_54_1_1_U445", "Parent" : "98"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_71_U0", "Parent" : "69", "Child" : ["101"],
		"CDFG" : "MLP_PE_600_300_71",
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
			{"Name" : "mlp_weight_fifo_13_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "98", "DependentChan" : "160", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_13_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_14_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "164", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_14_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "98", "DependentChan" : "161", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "98", "DependentChan" : "162", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "98", "DependentChan" : "163", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "165", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "166", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "167", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_71_U0.mul_32s_31ns_54_1_1_U456", "Parent" : "100"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_72_U0", "Parent" : "69", "Child" : ["103"],
		"CDFG" : "MLP_PE_600_300_72",
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
			{"Name" : "mlp_weight_fifo_14_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "164", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_14_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_15_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "104", "DependentChan" : "168", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_15_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "165", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "166", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "100", "DependentChan" : "167", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "104", "DependentChan" : "169", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "104", "DependentChan" : "170", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "104", "DependentChan" : "171", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_72_U0.mul_32s_31ns_54_1_1_U467", "Parent" : "102"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_73_U0", "Parent" : "69", "Child" : ["105"],
		"CDFG" : "MLP_PE_600_300_73",
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
			{"Name" : "mlp_weight_fifo_15_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "102", "DependentChan" : "168", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_15_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_2_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "102", "DependentChan" : "169", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_2_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "102", "DependentChan" : "170", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "do_relu", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "102", "DependentChan" : "171", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "do_relu_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.MLP_PE_600_300_73_U0.mul_32s_31ns_54_1_1_U478", "Parent" : "104"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c_U", "Parent" : "69"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c38_U", "Parent" : "69"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c_U", "Parent" : "69"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_0_V_V_U", "Parent" : "69"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c39_U", "Parent" : "69"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c_U", "Parent" : "69"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_1_V_V_U", "Parent" : "69"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c40_U", "Parent" : "69"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c41_U", "Parent" : "69"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c42_U", "Parent" : "69"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_2_V_V_U", "Parent" : "69"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c43_U", "Parent" : "69"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c44_U", "Parent" : "69"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c45_U", "Parent" : "69"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_3_V_V_U", "Parent" : "69"},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c46_U", "Parent" : "69"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c47_U", "Parent" : "69"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c48_U", "Parent" : "69"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_4_V_V_U", "Parent" : "69"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c49_U", "Parent" : "69"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c50_U", "Parent" : "69"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c51_U", "Parent" : "69"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_5_V_V_U", "Parent" : "69"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c52_U", "Parent" : "69"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c53_U", "Parent" : "69"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c54_U", "Parent" : "69"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_6_V_V_U", "Parent" : "69"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c55_U", "Parent" : "69"},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c56_U", "Parent" : "69"},
	{"ID" : "135", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c57_U", "Parent" : "69"},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_7_V_V_U", "Parent" : "69"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c58_U", "Parent" : "69"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c59_U", "Parent" : "69"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c60_U", "Parent" : "69"},
	{"ID" : "140", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_8_V_V_U", "Parent" : "69"},
	{"ID" : "141", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c61_U", "Parent" : "69"},
	{"ID" : "142", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c62_U", "Parent" : "69"},
	{"ID" : "143", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c63_U", "Parent" : "69"},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_9_V_V_U", "Parent" : "69"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c64_U", "Parent" : "69"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c65_U", "Parent" : "69"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c66_U", "Parent" : "69"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_10_V_V_U", "Parent" : "69"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c67_U", "Parent" : "69"},
	{"ID" : "150", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c68_U", "Parent" : "69"},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c69_U", "Parent" : "69"},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_11_V_V_U", "Parent" : "69"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c70_U", "Parent" : "69"},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c71_U", "Parent" : "69"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c72_U", "Parent" : "69"},
	{"ID" : "156", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_12_V_V_U", "Parent" : "69"},
	{"ID" : "157", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c73_U", "Parent" : "69"},
	{"ID" : "158", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c74_U", "Parent" : "69"},
	{"ID" : "159", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c75_U", "Parent" : "69"},
	{"ID" : "160", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_13_V_V_U", "Parent" : "69"},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c76_U", "Parent" : "69"},
	{"ID" : "162", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c77_U", "Parent" : "69"},
	{"ID" : "163", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c78_U", "Parent" : "69"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_14_V_V_U", "Parent" : "69"},
	{"ID" : "165", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c79_U", "Parent" : "69"},
	{"ID" : "166", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c80_U", "Parent" : "69"},
	{"ID" : "167", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c81_U", "Parent" : "69"},
	{"ID" : "168", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_weight_fifo_15_V_V_U", "Parent" : "69"},
	{"ID" : "169", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.mlp_2_bias_V_load_loc_c82_U", "Parent" : "69"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.d_out_c83_U", "Parent" : "69"},
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_600_300_s_fu_883.do_relu_c84_U", "Parent" : "69"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926", "Parent" : "20", "Child" : ["173", "174", "176", "177", "179", "181", "183", "185", "187", "189", "191", "193", "195", "197", "199", "201", "203", "205", "207", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258"],
		"CDFG" : "MLP_batch_nodes_300_600_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "322", "EstimateLatencyMax" : "322",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "173", "Name" : "MLP_batch_nodes_300_600_entry142_U0"},
			{"ID" : "174", "Name" : "load_mlp_weight_vector_300_600_U0"},
			{"ID" : "176", "Name" : "MLP_batch_nodes_300_600_Block_split13_proc_U0"},
			{"ID" : "177", "Name" : "MLP_PE_300_600_42_U0"},
			{"ID" : "179", "Name" : "MLP_PE_300_600_43_U0"},
			{"ID" : "181", "Name" : "MLP_PE_300_600_44_U0"},
			{"ID" : "183", "Name" : "MLP_PE_300_600_45_U0"},
			{"ID" : "185", "Name" : "MLP_PE_300_600_46_U0"},
			{"ID" : "187", "Name" : "MLP_PE_300_600_47_U0"},
			{"ID" : "189", "Name" : "MLP_PE_300_600_48_U0"},
			{"ID" : "191", "Name" : "MLP_PE_300_600_49_U0"},
			{"ID" : "193", "Name" : "MLP_PE_300_600_50_U0"},
			{"ID" : "195", "Name" : "MLP_PE_300_600_51_U0"},
			{"ID" : "197", "Name" : "MLP_PE_300_600_52_U0"},
			{"ID" : "199", "Name" : "MLP_PE_300_600_53_U0"},
			{"ID" : "201", "Name" : "MLP_PE_300_600_54_U0"},
			{"ID" : "203", "Name" : "MLP_PE_300_600_55_U0"},
			{"ID" : "205", "Name" : "MLP_PE_300_600_56_U0"},
			{"ID" : "207", "Name" : "MLP_PE_300_600_57_U0"}],
		"OutputProcess" : [
			{"ID" : "177", "Name" : "MLP_PE_300_600_42_U0"},
			{"ID" : "179", "Name" : "MLP_PE_300_600_43_U0"},
			{"ID" : "181", "Name" : "MLP_PE_300_600_44_U0"},
			{"ID" : "183", "Name" : "MLP_PE_300_600_45_U0"},
			{"ID" : "185", "Name" : "MLP_PE_300_600_46_U0"},
			{"ID" : "187", "Name" : "MLP_PE_300_600_47_U0"},
			{"ID" : "189", "Name" : "MLP_PE_300_600_48_U0"},
			{"ID" : "191", "Name" : "MLP_PE_300_600_49_U0"},
			{"ID" : "193", "Name" : "MLP_PE_300_600_50_U0"},
			{"ID" : "195", "Name" : "MLP_PE_300_600_51_U0"},
			{"ID" : "197", "Name" : "MLP_PE_300_600_52_U0"},
			{"ID" : "199", "Name" : "MLP_PE_300_600_53_U0"},
			{"ID" : "201", "Name" : "MLP_PE_300_600_54_U0"},
			{"ID" : "203", "Name" : "MLP_PE_300_600_55_U0"},
			{"ID" : "205", "Name" : "MLP_PE_300_600_56_U0"},
			{"ID" : "207", "Name" : "MLP_PE_300_600_57_U0"}],
		"Port" : [
			{"Name" : "mlp_in_local", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "MLP_PE_300_600_42_U0", "Port" : "mlp_in_local"}]},
			{"Name" : "mlp_in_local1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "MLP_PE_300_600_43_U0", "Port" : "mlp_in_local1"}]},
			{"Name" : "mlp_in_local2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "MLP_PE_300_600_44_U0", "Port" : "mlp_in_local2"}]},
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "183", "SubInstance" : "MLP_PE_300_600_45_U0", "Port" : "mlp_in_local3"}]},
			{"Name" : "mlp_in_local4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "MLP_PE_300_600_46_U0", "Port" : "mlp_in_local4"}]},
			{"Name" : "mlp_in_local5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "MLP_PE_300_600_47_U0", "Port" : "mlp_in_local5"}]},
			{"Name" : "mlp_in_local6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "189", "SubInstance" : "MLP_PE_300_600_48_U0", "Port" : "mlp_in_local6"}]},
			{"Name" : "mlp_in_local7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "MLP_PE_300_600_49_U0", "Port" : "mlp_in_local7"}]},
			{"Name" : "mlp_in_local8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "MLP_PE_300_600_50_U0", "Port" : "mlp_in_local8"}]},
			{"Name" : "mlp_in_local9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "MLP_PE_300_600_51_U0", "Port" : "mlp_in_local9"}]},
			{"Name" : "mlp_in_local10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "MLP_PE_300_600_52_U0", "Port" : "mlp_in_local10"}]},
			{"Name" : "mlp_in_local11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "199", "SubInstance" : "MLP_PE_300_600_53_U0", "Port" : "mlp_in_local11"}]},
			{"Name" : "mlp_in_local12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "MLP_PE_300_600_54_U0", "Port" : "mlp_in_local12"}]},
			{"Name" : "mlp_in_local13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "MLP_PE_300_600_55_U0", "Port" : "mlp_in_local13"}]},
			{"Name" : "mlp_in_local14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "MLP_PE_300_600_56_U0", "Port" : "mlp_in_local14"}]},
			{"Name" : "mlp_in_local15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "MLP_PE_300_600_57_U0", "Port" : "mlp_in_local15"}]},
			{"Name" : "mlp_out_local", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "MLP_PE_300_600_42_U0", "Port" : "mlp_out_local"}]},
			{"Name" : "mlp_out_local16", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "179", "SubInstance" : "MLP_PE_300_600_43_U0", "Port" : "mlp_out_local16"}]},
			{"Name" : "mlp_out_local17", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "MLP_PE_300_600_44_U0", "Port" : "mlp_out_local17"}]},
			{"Name" : "mlp_out_local18", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "183", "SubInstance" : "MLP_PE_300_600_45_U0", "Port" : "mlp_out_local18"}]},
			{"Name" : "mlp_out_local19", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "MLP_PE_300_600_46_U0", "Port" : "mlp_out_local19"}]},
			{"Name" : "mlp_out_local20", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "187", "SubInstance" : "MLP_PE_300_600_47_U0", "Port" : "mlp_out_local20"}]},
			{"Name" : "mlp_out_local21", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "189", "SubInstance" : "MLP_PE_300_600_48_U0", "Port" : "mlp_out_local21"}]},
			{"Name" : "mlp_out_local22", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "MLP_PE_300_600_49_U0", "Port" : "mlp_out_local22"}]},
			{"Name" : "mlp_out_local23", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "MLP_PE_300_600_50_U0", "Port" : "mlp_out_local23"}]},
			{"Name" : "mlp_out_local24", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "MLP_PE_300_600_51_U0", "Port" : "mlp_out_local24"}]},
			{"Name" : "mlp_out_local25", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "MLP_PE_300_600_52_U0", "Port" : "mlp_out_local25"}]},
			{"Name" : "mlp_out_local26", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "199", "SubInstance" : "MLP_PE_300_600_53_U0", "Port" : "mlp_out_local26"}]},
			{"Name" : "mlp_out_local27", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "MLP_PE_300_600_54_U0", "Port" : "mlp_out_local27"}]},
			{"Name" : "mlp_out_local28", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "203", "SubInstance" : "MLP_PE_300_600_55_U0", "Port" : "mlp_out_local28"}]},
			{"Name" : "mlp_out_local29", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "205", "SubInstance" : "MLP_PE_300_600_56_U0", "Port" : "mlp_out_local29"}]},
			{"Name" : "mlp_out_local30", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "207", "SubInstance" : "MLP_PE_300_600_57_U0", "Port" : "mlp_out_local30"}]},
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "174", "SubInstance" : "load_mlp_weight_vector_300_600_U0", "Port" : "mlp_1_weights_V"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "176", "SubInstance" : "MLP_batch_nodes_300_600_Block_split13_proc_U0", "Port" : "mlp_1_bias_V"}]}]},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_batch_nodes_300_600_entry142_U0", "Parent" : "172",
		"CDFG" : "MLP_batch_nodes_300_600_entry142",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "174", "DependentChan" : "209", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "176", "DependentChan" : "210", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "174", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.load_mlp_weight_vector_300_600_U0", "Parent" : "172", "Child" : ["175"],
		"CDFG" : "load_mlp_weight_vector_300_600_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "305", "EstimateLatencyMax" : "305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_vector", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "177", "DependentChan" : "211", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_vector_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "173", "DependentChan" : "209", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "177", "DependentChan" : "212", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "175", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.load_mlp_weight_vector_300_600_U0.mul_mul_10ns_10ns_18_4_1_U62", "Parent" : "174"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_batch_nodes_300_600_Block_split13_proc_U0", "Parent" : "172",
		"CDFG" : "MLP_batch_nodes_300_600_Block_split13_proc",
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
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "173", "DependentChan" : "210", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "177", "DependentChan" : "213", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_out_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_42_U0", "Parent" : "172", "Child" : ["178"],
		"CDFG" : "MLP_PE_300_600_42",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_0_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "174", "DependentChan" : "211", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_0_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "214", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "176", "DependentChan" : "213", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "174", "DependentChan" : "212", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "215", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "179", "DependentChan" : "216", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_42_U0.mul_32s_32s_54_1_1_U71", "Parent" : "177"},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_43_U0", "Parent" : "172", "Child" : ["180"],
		"CDFG" : "MLP_PE_300_600_43",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_1_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "177", "DependentChan" : "214", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_1_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "181", "DependentChan" : "217", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "177", "DependentChan" : "215", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "177", "DependentChan" : "216", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "181", "DependentChan" : "218", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "181", "DependentChan" : "219", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_43_U0.mul_32s_32s_54_1_1_U81", "Parent" : "179"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_44_U0", "Parent" : "172", "Child" : ["182"],
		"CDFG" : "MLP_PE_300_600_44",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_2_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "217", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_2_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "183", "DependentChan" : "220", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "218", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "179", "DependentChan" : "219", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "183", "DependentChan" : "221", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "183", "DependentChan" : "222", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "182", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_44_U0.mul_32s_32s_54_1_1_U90", "Parent" : "181"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_45_U0", "Parent" : "172", "Child" : ["184"],
		"CDFG" : "MLP_PE_300_600_45",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_3_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "220", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_3_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_4_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "223", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_4_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "221", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "181", "DependentChan" : "222", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "224", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "185", "DependentChan" : "225", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_45_U0.mul_32s_32s_54_1_1_U99", "Parent" : "183"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_46_U0", "Parent" : "172", "Child" : ["186"],
		"CDFG" : "MLP_PE_300_600_46",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_4_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "183", "DependentChan" : "223", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_4_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_5_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "226", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_5_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "183", "DependentChan" : "224", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "183", "DependentChan" : "225", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "227", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "187", "DependentChan" : "228", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_46_U0.mul_32s_32s_54_1_1_U108", "Parent" : "185"},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_47_U0", "Parent" : "172", "Child" : ["188"],
		"CDFG" : "MLP_PE_300_600_47",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_5_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "226", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_5_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_6_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "189", "DependentChan" : "229", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_6_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "227", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "185", "DependentChan" : "228", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "189", "DependentChan" : "230", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "189", "DependentChan" : "231", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "188", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_47_U0.mul_32s_32s_54_1_1_U117", "Parent" : "187"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_48_U0", "Parent" : "172", "Child" : ["190"],
		"CDFG" : "MLP_PE_300_600_48",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_6_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "229", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_6_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_7_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "191", "DependentChan" : "232", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_7_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "230", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "187", "DependentChan" : "231", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "191", "DependentChan" : "233", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "191", "DependentChan" : "234", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "190", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_48_U0.mul_32s_32s_54_1_1_U126", "Parent" : "189"},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_49_U0", "Parent" : "172", "Child" : ["192"],
		"CDFG" : "MLP_PE_300_600_49",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_7_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "189", "DependentChan" : "232", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_7_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_8_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "193", "DependentChan" : "235", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_8_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "189", "DependentChan" : "233", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "189", "DependentChan" : "234", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "193", "DependentChan" : "236", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "193", "DependentChan" : "237", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "192", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_49_U0.mul_32s_32s_54_1_1_U135", "Parent" : "191"},
	{"ID" : "193", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_50_U0", "Parent" : "172", "Child" : ["194"],
		"CDFG" : "MLP_PE_300_600_50",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_8_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "191", "DependentChan" : "235", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_8_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_9_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "195", "DependentChan" : "238", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_9_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "191", "DependentChan" : "236", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "191", "DependentChan" : "237", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "195", "DependentChan" : "239", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "195", "DependentChan" : "240", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "194", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_50_U0.mul_32s_32s_54_1_1_U144", "Parent" : "193"},
	{"ID" : "195", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_51_U0", "Parent" : "172", "Child" : ["196"],
		"CDFG" : "MLP_PE_300_600_51",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_9_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "193", "DependentChan" : "238", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_9_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_10_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "197", "DependentChan" : "241", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_10_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "193", "DependentChan" : "239", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "193", "DependentChan" : "240", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "197", "DependentChan" : "242", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "197", "DependentChan" : "243", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "196", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_51_U0.mul_32s_32s_54_1_1_U153", "Parent" : "195"},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_52_U0", "Parent" : "172", "Child" : ["198"],
		"CDFG" : "MLP_PE_300_600_52",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_10_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "195", "DependentChan" : "241", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_10_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_11_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "199", "DependentChan" : "244", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_11_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "195", "DependentChan" : "242", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "195", "DependentChan" : "243", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "199", "DependentChan" : "245", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "199", "DependentChan" : "246", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "198", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_52_U0.mul_32s_32s_54_1_1_U162", "Parent" : "197"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_53_U0", "Parent" : "172", "Child" : ["200"],
		"CDFG" : "MLP_PE_300_600_53",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_11_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "197", "DependentChan" : "244", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_11_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_12_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "247", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_12_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "197", "DependentChan" : "245", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "197", "DependentChan" : "246", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "248", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "201", "DependentChan" : "249", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "200", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_53_U0.mul_32s_32s_54_1_1_U171", "Parent" : "199"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_54_U0", "Parent" : "172", "Child" : ["202"],
		"CDFG" : "MLP_PE_300_600_54",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_12_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "199", "DependentChan" : "247", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_12_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_13_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "250", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_13_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "199", "DependentChan" : "248", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "199", "DependentChan" : "249", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "251", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "203", "DependentChan" : "252", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "202", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_54_U0.mul_32s_32s_54_1_1_U180", "Parent" : "201"},
	{"ID" : "203", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_55_U0", "Parent" : "172", "Child" : ["204"],
		"CDFG" : "MLP_PE_300_600_55",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_13_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "201", "DependentChan" : "250", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_13_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_14_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "205", "DependentChan" : "253", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_14_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "201", "DependentChan" : "251", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "201", "DependentChan" : "252", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "205", "DependentChan" : "254", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "205", "DependentChan" : "255", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "204", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_55_U0.mul_32s_32s_54_1_1_U189", "Parent" : "203"},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_56_U0", "Parent" : "172", "Child" : ["206"],
		"CDFG" : "MLP_PE_300_600_56",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_14_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "203", "DependentChan" : "253", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_14_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_weight_fifo_15_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "207", "DependentChan" : "256", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_15_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "203", "DependentChan" : "254", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "203", "DependentChan" : "255", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "207", "DependentChan" : "257", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "d_out_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "207", "DependentChan" : "258", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "206", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_56_U0.mul_32s_32s_54_1_1_U198", "Parent" : "205"},
	{"ID" : "207", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_57_U0", "Parent" : "172", "Child" : ["208"],
		"CDFG" : "MLP_PE_300_600_57",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "302", "EstimateLatencyMax" : "302",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_weight_fifo_15_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "205", "DependentChan" : "256", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "mlp_weight_fifo_15_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_1_bias_V_load_loc", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "205", "DependentChan" : "257", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "mlp_1_bias_V_load_loc_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mlp_in_local15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mlp_out_local30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "d_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "205", "DependentChan" : "258", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "d_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "208", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.MLP_PE_300_600_57_U0.mul_32s_32s_54_1_1_U207", "Parent" : "207"},
	{"ID" : "209", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c_U", "Parent" : "172"},
	{"ID" : "210", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c38_U", "Parent" : "172"},
	{"ID" : "211", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_0_V_V_U", "Parent" : "172"},
	{"ID" : "212", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c39_U", "Parent" : "172"},
	{"ID" : "213", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c_U", "Parent" : "172"},
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_1_V_V_U", "Parent" : "172"},
	{"ID" : "215", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c40_U", "Parent" : "172"},
	{"ID" : "216", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c41_U", "Parent" : "172"},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_2_V_V_U", "Parent" : "172"},
	{"ID" : "218", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c42_U", "Parent" : "172"},
	{"ID" : "219", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c43_U", "Parent" : "172"},
	{"ID" : "220", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_3_V_V_U", "Parent" : "172"},
	{"ID" : "221", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c44_U", "Parent" : "172"},
	{"ID" : "222", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c45_U", "Parent" : "172"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_4_V_V_U", "Parent" : "172"},
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c46_U", "Parent" : "172"},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c47_U", "Parent" : "172"},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_5_V_V_U", "Parent" : "172"},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c48_U", "Parent" : "172"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c49_U", "Parent" : "172"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_6_V_V_U", "Parent" : "172"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c50_U", "Parent" : "172"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c51_U", "Parent" : "172"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_7_V_V_U", "Parent" : "172"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c52_U", "Parent" : "172"},
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c53_U", "Parent" : "172"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_8_V_V_U", "Parent" : "172"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c54_U", "Parent" : "172"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c55_U", "Parent" : "172"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_9_V_V_U", "Parent" : "172"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c56_U", "Parent" : "172"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c57_U", "Parent" : "172"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_10_V_V_U", "Parent" : "172"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c58_U", "Parent" : "172"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c59_U", "Parent" : "172"},
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_11_V_V_U", "Parent" : "172"},
	{"ID" : "245", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c60_U", "Parent" : "172"},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c61_U", "Parent" : "172"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_12_V_V_U", "Parent" : "172"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c62_U", "Parent" : "172"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c63_U", "Parent" : "172"},
	{"ID" : "250", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_13_V_V_U", "Parent" : "172"},
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c64_U", "Parent" : "172"},
	{"ID" : "252", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c65_U", "Parent" : "172"},
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_14_V_V_U", "Parent" : "172"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c66_U", "Parent" : "172"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c67_U", "Parent" : "172"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_weight_fifo_15_V_V_U", "Parent" : "172"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.mlp_1_bias_V_load_loc_c68_U", "Parent" : "172"},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.grp_MLP_batch_nodes_300_600_s_fu_926.d_out_c69_U", "Parent" : "172"},
	{"ID" : "259", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mul_33s_32s_54_1_1_U587", "Parent" : "20"},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mux_164_32_1_1_U588", "Parent" : "20"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mac_muladd_10ns_10ns_9ns_19_4_1_U589", "Parent" : "20"},
	{"ID" : "262", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_MLP_fu_112.mac_muladd_10ns_10ns_9ns_19_4_1_U590", "Parent" : "20"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_load_mlp_weights_one_layer_fu_133", "Parent" : "13", "Child" : ["264", "265", "266"],
		"CDFG" : "load_mlp_weights_one_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "371702", "EstimateLatencyMax" : "371702",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "mem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_1_weights_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_1_bias_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_2_weights_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "gnn_node_mlp_2_bias_fixed", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_1_bias_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_1_weights_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_2_bias_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_2_weights_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "264", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_load_mlp_weights_one_layer_fu_133.mul_3ns_11ns_13_1_1_U43", "Parent" : "263"},
	{"ID" : "265", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_load_mlp_weights_one_layer_fu_133.mul_3ns_19ns_21_1_1_U44", "Parent" : "263"},
	{"ID" : "266", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_load_mlp_weights_one_layer_fu_133.mul_3ns_10ns_12_1_1_U45", "Parent" : "263"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_compute_edge_embedding_fu_157", "Parent" : "13", "Child" : ["268", "269", "270", "271"],
		"CDFG" : "compute_edge_embedding",
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
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_embedding_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "ed_feature_table_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edge_embedding_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edge_attr", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "268", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_compute_edge_embedding_fu_157.ed_feature_table_1_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_compute_edge_embedding_fu_157.mul_3ns_5ns_7_1_1_U19", "Parent" : "267"},
	{"ID" : "270", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_compute_edge_embedding_fu_157.mul_7ns_10ns_15_1_1_U20", "Parent" : "267"},
	{"ID" : "271", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_compute_edge_embedding_fu_157.mul_mul_20s_10ns_20_4_1_U21", "Parent" : "267"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_message_passing_fu_173", "Parent" : "13", "Child" : ["273", "274", "275", "276"],
		"CDFG" : "message_passing",
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
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "edge_embedding_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "273", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_message_passing_fu_173.mul_32ns_10ns_41_1_1_U31", "Parent" : "272"},
	{"ID" : "274", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_message_passing_fu_173.mac_muladd_20s_10ns_9ns_20_4_1_U32", "Parent" : "272"},
	{"ID" : "275", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_message_passing_fu_173.mac_muladd_19s_10ns_9ns_19_4_1_U33", "Parent" : "272"},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_566.grp_message_passing_fu_173.mac_muladd_19s_10ns_9ns_19_4_1_U34", "Parent" : "272"},
	{"ID" : "277", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_load_graph_fu_604", "Parent" : "0",
		"CDFG" : "load_graph",
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
			{"Name" : "mem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "mem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "node_feature_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_list_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "edge_attr_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_of_nodes", "Type" : "None", "Direction" : "I"},
			{"Name" : "num_of_edges", "Type" : "None", "Direction" : "I"},
			{"Name" : "node_feature", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_attr", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "278", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_621", "Parent" : "0", "Child" : ["279"],
		"CDFG" : "global_mean_pooling",
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
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "graph_embedding_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_621.sdiv_32ns_32ns_32_36_seq_1_U623", "Parent" : "278"},
	{"ID" : "280", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_node_embedding_fu_630", "Parent" : "0", "Child" : ["281", "282", "283"],
		"CDFG" : "compute_node_embedding",
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
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "nd_feature_table_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_feature", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_node_embedding_fu_630.nd_feature_table_1_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_node_embedding_fu_630.mul_8ns_10ns_16_1_1_U10", "Parent" : "280"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_node_embedding_fu_630.mul_mul_19s_10ns_19_4_1_U11", "Parent" : "280"},
	{"ID" : "284", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_global_graph_prediction_fu_643", "Parent" : "0", "Child" : ["285"],
		"CDFG" : "global_graph_prediction",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "309", "EstimateLatencyMax" : "309",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "mem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "mem_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "graph_embedding_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "graph_pred_weights_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "graph_pred_bias_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_graph_prediction_fu_643.mul_32s_32s_54_1_1_U628", "Parent" : "284"},
	{"ID" : "286", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_10ns_9ns_16_4_1_U634", "Parent" : "0"},
	{"ID" : "287", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_7ns_10ns_9ns_15_4_1_U635", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	GIN_compute_one_graph {
		mem {Type IO LastRead 43 FirstWrite -1}
		node_feature_in {Type I LastRead 0 FirstWrite -1}
		edge_list_in {Type I LastRead 0 FirstWrite -1}
		edge_attr_in {Type I LastRead 0 FirstWrite -1}
		graph_attr {Type I LastRead 0 FirstWrite -1}
		task_r {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_1_weights_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_1_bias_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_2_weights_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_2_bias_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_node_embedding_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_edge_embedding_fixed {Type I LastRead 0 FirstWrite -1}
		graph_pred_linear_weight_fixed {Type I LastRead 0 FirstWrite -1}
		graph_pred_linear_bias_fixed {Type I LastRead 0 FirstWrite -1}
		eps_fixed {Type I LastRead 0 FirstWrite -1}
		mlp_eps_V {Type IO LastRead -1 FirstWrite -1}
		graph_pred_weights_V {Type IO LastRead -1 FirstWrite -1}
		node_embedding_table_V {Type IO LastRead -1 FirstWrite -1}
		edge_embedding_table_V {Type IO LastRead -1 FirstWrite -1}
		node_feature {Type IO LastRead -1 FirstWrite -1}
		edge_attr {Type IO LastRead -1 FirstWrite -1}
		edge_list {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V {Type IO LastRead -1 FirstWrite -1}
		nd_feature_table_1 {Type I LastRead -1 FirstWrite -1}
		edge_embedding_V {Type IO LastRead -1 FirstWrite -1}
		ed_feature_table_1 {Type I LastRead -1 FirstWrite -1}
		message_V {Type IO LastRead -1 FirstWrite -1}
		mlp_1_bias_V {Type IO LastRead -1 FirstWrite -1}
		mlp_1_weights_V {Type IO LastRead -1 FirstWrite -1}
		mlp_2_bias_V {Type IO LastRead -1 FirstWrite -1}
		mlp_2_weights_V {Type IO LastRead -1 FirstWrite -1}
		graph_embedding_V {Type IO LastRead -1 FirstWrite -1}
		graph_pred_bias_V {Type IO LastRead -1 FirstWrite -1}}
	compute_CONV_layer {
		mem {Type I LastRead 13 FirstWrite -1}
		num_of_nodes {Type I LastRead 4 FirstWrite -1}
		num_of_edges {Type I LastRead 0 FirstWrite -1}
		layer {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_1_weights_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_1_bias_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_2_weights_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_2_bias_fixed {Type I LastRead 0 FirstWrite -1}
		edge_embedding_V {Type IO LastRead -1 FirstWrite -1}
		ed_feature_table_1 {Type I LastRead -1 FirstWrite -1}
		edge_embedding_table_V {Type I LastRead 9 FirstWrite -1}
		edge_attr {Type I LastRead 3 FirstWrite -1}
		message_V {Type IO LastRead -1 FirstWrite -1}
		edge_list {Type I LastRead 4 FirstWrite -1}
		node_embedding_V {Type IO LastRead 7 FirstWrite -1}
		mlp_1_bias_V {Type IO LastRead -1 FirstWrite -1}
		mlp_1_weights_V {Type IO LastRead -1 FirstWrite -1}
		mlp_2_bias_V {Type IO LastRead -1 FirstWrite -1}
		mlp_2_weights_V {Type IO LastRead -1 FirstWrite -1}
		mlp_eps_V {Type I LastRead 0 FirstWrite -1}}
	MLP {
		num_of_nodes {Type I LastRead 1 FirstWrite -1}
		layer {Type I LastRead 0 FirstWrite -1}
		mlp_eps_V {Type I LastRead 0 FirstWrite -1}
		node_embedding_V {Type IO LastRead 7 FirstWrite 11}
		message_V {Type I LastRead 8 FirstWrite -1}
		mlp_1_weights_V {Type I LastRead 4 FirstWrite -1}
		mlp_1_bias_V {Type I LastRead 0 FirstWrite -1}
		mlp_2_weights_V {Type I LastRead 4 FirstWrite -1}
		mlp_2_bias_V {Type I LastRead 0 FirstWrite -1}}
	MLP_batch_nodes_600_300_s {
		mlp_in_local {Type I LastRead 1 FirstWrite -1}
		mlp_in_local1 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local2 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local3 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local4 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local5 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local6 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local7 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local8 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local9 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local10 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local11 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local12 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local13 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local14 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local15 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local {Type O LastRead -1 FirstWrite 2}
		mlp_out_local16 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local17 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local18 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local19 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local20 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local21 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local22 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local23 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local24 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local25 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local26 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local27 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local28 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local29 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local30 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_weights_V {Type I LastRead 4 FirstWrite -1}
		mlp_2_bias_V {Type I LastRead 0 FirstWrite -1}}
	MLP_batch_nodes_600_300_entry162 {
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		d_out_out1 {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	load_mlp_weight_vector_600_300_s {
		mlp_weight_vector {Type O LastRead -1 FirstWrite 5}
		d_out {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		mlp_2_weights_V {Type I LastRead 4 FirstWrite -1}}
	MLP_batch_nodes_600_300_Block_split13_proc {
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_out_out {Type O LastRead -1 FirstWrite 1}
		mlp_2_bias_V {Type I LastRead 0 FirstWrite -1}}
	MLP_PE_600_300_58 {
		mlp_weight_fifo_0_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_1_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local {Type I LastRead 1 FirstWrite -1}
		mlp_out_local {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_59 {
		mlp_weight_fifo_1_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_2_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local1 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local16 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_60 {
		mlp_weight_fifo_2_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_3_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local2 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local17 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_61 {
		mlp_weight_fifo_3_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_4_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local3 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local18 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_62 {
		mlp_weight_fifo_4_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_5_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local4 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local19 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_63 {
		mlp_weight_fifo_5_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_6_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local5 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local20 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_64 {
		mlp_weight_fifo_6_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_7_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local6 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local21 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_65 {
		mlp_weight_fifo_7_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_8_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local7 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local22 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_66 {
		mlp_weight_fifo_8_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_9_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local8 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local23 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_67 {
		mlp_weight_fifo_9_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_10_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local9 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local24 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
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
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_69 {
		mlp_weight_fifo_11_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_12_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local11 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local26 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_70 {
		mlp_weight_fifo_12_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_13_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local12 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local27 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_71 {
		mlp_weight_fifo_13_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_14_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local13 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local28 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_72 {
		mlp_weight_fifo_14_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_15_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local14 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local29 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}
		mlp_2_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		do_relu_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_600_300_73 {
		mlp_weight_fifo_15_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_2_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local15 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local30 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		do_relu {Type I LastRead 0 FirstWrite -1}}
	MLP_batch_nodes_300_600_s {
		mlp_in_local {Type I LastRead 1 FirstWrite -1}
		mlp_in_local1 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local2 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local3 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local4 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local5 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local6 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local7 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local8 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local9 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local10 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local11 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local12 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local13 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local14 {Type I LastRead 1 FirstWrite -1}
		mlp_in_local15 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local {Type O LastRead -1 FirstWrite 2}
		mlp_out_local16 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local17 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local18 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local19 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local20 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local21 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local22 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local23 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local24 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local25 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local26 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local27 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local28 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local29 {Type O LastRead -1 FirstWrite 2}
		mlp_out_local30 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_weights_V {Type I LastRead 4 FirstWrite -1}
		mlp_1_bias_V {Type I LastRead 0 FirstWrite -1}}
	MLP_batch_nodes_300_600_entry142 {
		d_out {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		d_out_out1 {Type O LastRead -1 FirstWrite 0}}
	load_mlp_weight_vector_300_600_s {
		mlp_weight_vector {Type O LastRead -1 FirstWrite 5}
		d_out {Type I LastRead 0 FirstWrite -1}
		d_out_out {Type O LastRead -1 FirstWrite 0}
		mlp_1_weights_V {Type I LastRead 4 FirstWrite -1}}
	MLP_batch_nodes_300_600_Block_split13_proc {
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_out_out {Type O LastRead -1 FirstWrite 1}
		mlp_1_bias_V {Type I LastRead 0 FirstWrite -1}}
	MLP_PE_300_600_42 {
		mlp_weight_fifo_0_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_1_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local {Type I LastRead 1 FirstWrite -1}
		mlp_out_local {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_43 {
		mlp_weight_fifo_1_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_2_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local1 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local16 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_44 {
		mlp_weight_fifo_2_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_3_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local2 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local17 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_45 {
		mlp_weight_fifo_3_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_4_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local3 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local18 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_46 {
		mlp_weight_fifo_4_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_5_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local4 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local19 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_47 {
		mlp_weight_fifo_5_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_6_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local5 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local20 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_48 {
		mlp_weight_fifo_6_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_7_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local6 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local21 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_49 {
		mlp_weight_fifo_7_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_8_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local7 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local22 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_50 {
		mlp_weight_fifo_8_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_9_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local8 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local23 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_51 {
		mlp_weight_fifo_9_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_10_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local9 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local24 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_52 {
		mlp_weight_fifo_10_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_11_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local10 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local25 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_53 {
		mlp_weight_fifo_11_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_12_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local11 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local26 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_54 {
		mlp_weight_fifo_12_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_13_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local12 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local27 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_55 {
		mlp_weight_fifo_13_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_14_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local13 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local28 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_56 {
		mlp_weight_fifo_14_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_weight_fifo_15_V_V {Type O LastRead -1 FirstWrite 2}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local14 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local29 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V_load_loc_out {Type O LastRead -1 FirstWrite 0}
		d_out_out {Type O LastRead -1 FirstWrite 0}}
	MLP_PE_300_600_57 {
		mlp_weight_fifo_15_V_V {Type I LastRead 2 FirstWrite -1}
		mlp_1_bias_V_load_loc {Type I LastRead 0 FirstWrite -1}
		mlp_in_local15 {Type I LastRead 1 FirstWrite -1}
		mlp_out_local30 {Type O LastRead -1 FirstWrite 2}
		d_out {Type I LastRead 0 FirstWrite -1}}
	load_mlp_weights_one_layer {
		mem {Type I LastRead 13 FirstWrite -1}
		layer {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_1_weights_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_1_bias_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_2_weights_fixed {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_2_bias_fixed {Type I LastRead 0 FirstWrite -1}
		mlp_1_bias_V {Type O LastRead -1 FirstWrite 10}
		mlp_1_weights_V {Type O LastRead -1 FirstWrite 13}
		mlp_2_bias_V {Type O LastRead -1 FirstWrite 11}
		mlp_2_weights_V {Type O LastRead -1 FirstWrite 14}}
	compute_edge_embedding {
		num_of_edges {Type I LastRead 0 FirstWrite -1}
		layer {Type I LastRead 0 FirstWrite -1}
		edge_embedding_V {Type IO LastRead 9 FirstWrite 1}
		ed_feature_table_1 {Type I LastRead -1 FirstWrite -1}
		edge_embedding_table_V {Type I LastRead 9 FirstWrite -1}
		edge_attr {Type I LastRead 3 FirstWrite -1}}
	message_passing {
		num_of_edges {Type I LastRead 0 FirstWrite -1}
		message_V {Type IO LastRead 7 FirstWrite 1}
		edge_list {Type I LastRead 4 FirstWrite -1}
		edge_embedding_V {Type I LastRead 7 FirstWrite -1}
		node_embedding_V {Type I LastRead 7 FirstWrite -1}}
	load_graph {
		mem {Type I LastRead 27 FirstWrite -1}
		node_feature_in {Type I LastRead 1 FirstWrite -1}
		edge_list_in {Type I LastRead 1 FirstWrite -1}
		edge_attr_in {Type I LastRead 1 FirstWrite -1}
		num_of_nodes {Type I LastRead 0 FirstWrite -1}
		num_of_edges {Type I LastRead 1 FirstWrite -1}
		node_feature {Type O LastRead -1 FirstWrite 10}
		edge_attr {Type O LastRead -1 FirstWrite 19}
		edge_list {Type O LastRead -1 FirstWrite 28}}
	global_mean_pooling {
		num_of_nodes {Type I LastRead 0 FirstWrite -1}
		node_embedding_V {Type I LastRead 2 FirstWrite -1}
		graph_embedding_V {Type O LastRead -1 FirstWrite 38}}
	compute_node_embedding {
		num_of_nodes {Type I LastRead 0 FirstWrite -1}
		node_embedding_V {Type IO LastRead 9 FirstWrite 1}
		nd_feature_table_1 {Type I LastRead -1 FirstWrite -1}
		node_embedding_table_V {Type I LastRead 9 FirstWrite -1}
		node_feature {Type I LastRead 3 FirstWrite -1}}
	global_graph_prediction {
		mem {Type O LastRead 5 FirstWrite 4}
		d_out {Type I LastRead 1 FirstWrite -1}
		graph_embedding_V {Type I LastRead 2 FirstWrite -1}
		graph_pred_weights_V {Type I LastRead 2 FirstWrite -1}
		graph_pred_bias_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
]}

set Spec2ImplPortList { 
	mem { m_axi {  { m_axi_mem_AWVALID VALID 1 1 }  { m_axi_mem_AWREADY READY 0 1 }  { m_axi_mem_AWADDR ADDR 1 64 }  { m_axi_mem_AWID ID 1 1 }  { m_axi_mem_AWLEN LEN 1 8 }  { m_axi_mem_AWSIZE SIZE 1 3 }  { m_axi_mem_AWBURST BURST 1 2 }  { m_axi_mem_AWLOCK LOCK 1 2 }  { m_axi_mem_AWCACHE CACHE 1 4 }  { m_axi_mem_AWPROT PROT 1 3 }  { m_axi_mem_AWQOS QOS 1 4 }  { m_axi_mem_AWREGION REGION 1 4 }  { m_axi_mem_AWUSER USER 1 1 }  { m_axi_mem_WVALID VALID 1 1 }  { m_axi_mem_WREADY READY 0 1 }  { m_axi_mem_WDATA DATA 1 32 }  { m_axi_mem_WSTRB STRB 1 4 }  { m_axi_mem_WLAST LAST 1 1 }  { m_axi_mem_WID ID 1 1 }  { m_axi_mem_WUSER USER 1 1 }  { m_axi_mem_ARVALID VALID 1 1 }  { m_axi_mem_ARREADY READY 0 1 }  { m_axi_mem_ARADDR ADDR 1 64 }  { m_axi_mem_ARID ID 1 1 }  { m_axi_mem_ARLEN LEN 1 8 }  { m_axi_mem_ARSIZE SIZE 1 3 }  { m_axi_mem_ARBURST BURST 1 2 }  { m_axi_mem_ARLOCK LOCK 1 2 }  { m_axi_mem_ARCACHE CACHE 1 4 }  { m_axi_mem_ARPROT PROT 1 3 }  { m_axi_mem_ARQOS QOS 1 4 }  { m_axi_mem_ARREGION REGION 1 4 }  { m_axi_mem_ARUSER USER 1 1 }  { m_axi_mem_RVALID VALID 0 1 }  { m_axi_mem_RREADY READY 1 1 }  { m_axi_mem_RDATA DATA 0 32 }  { m_axi_mem_RLAST LAST 0 1 }  { m_axi_mem_RID ID 0 1 }  { m_axi_mem_RUSER USER 0 1 }  { m_axi_mem_RRESP RESP 0 2 }  { m_axi_mem_BVALID VALID 0 1 }  { m_axi_mem_BREADY READY 1 1 }  { m_axi_mem_BRESP RESP 0 2 }  { m_axi_mem_BID ID 0 1 }  { m_axi_mem_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ mem { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ mem 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ mem 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
