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
	{ graph_attr int 64 unused {axi_slave 0}  }
	{ task_r int 64 regular {axi_slave 0}  }
	{ gnn_node_mlp_1_weights_fixed int 64 unused {axi_slave 0}  }
	{ gnn_node_mlp_1_bias_fixed int 64 unused {axi_slave 0}  }
	{ gnn_node_mlp_2_weights_fixed int 64 unused {axi_slave 0}  }
	{ gnn_node_mlp_2_bias_fixed int 64 unused {axi_slave 0}  }
	{ gnn_node_embedding_fixed int 64 unused {axi_slave 0}  }
	{ gnn_edge_embedding_fixed int 64 unused {axi_slave 0}  }
	{ graph_pred_linear_weight_fixed int 64 unused {axi_slave 0}  }
	{ graph_pred_linear_bias_fixed int 64 unused {axi_slave 0}  }
	{ eps_fixed int 64 unused {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "node_feature_in","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "node_feature_in","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "edge_list_in","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "edge_list_in","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "edge_attr_in","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "edge_attr_in","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "graph_attr","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "graph_attr","bundle": "control"},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "task","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "task_r","bundle": "control"},"direction": "READWRITE","cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "gnn_node_mlp_1_weights_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "gnn_node_mlp_1_weights_fixed","bundle": "control"},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "gnn_node_mlp_1_bias_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "gnn_node_mlp_1_bias_fixed","bundle": "control"},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "gnn_node_mlp_2_weights_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "gnn_node_mlp_2_weights_fixed","bundle": "control"},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "gnn_node_mlp_2_bias_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "gnn_node_mlp_2_bias_fixed","bundle": "control"},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "gnn_node_embedding_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "gnn_node_embedding_fixed","bundle": "control"},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "gnn_edge_embedding_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "gnn_edge_embedding_fixed","bundle": "control"},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "graph_pred_linear_weight_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "graph_pred_linear_weight_fixed","bundle": "control"},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "graph_pred_linear_bias_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "graph_pred_linear_bias_fixed","bundle": "control"},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]},{"cName": "eps_fixed","cData": "int","bit_use": { "low": 0,"up": 0},"offset": { "type": "dynamic","port_name": "eps_fixed","bundle": "control"},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "126", "234", "239", "240"],
		"CDFG" : "GIN_compute_one_graph",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "45959", "EstimateLatencyMax" : "45959",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "234", "SubInstance" : "grp_load_graph_fu_1322", "Port" : "mem"},
					{"ID" : "240", "SubInstance" : "grp_global_graph_prediction_fu_1545", "Port" : "mem"}]},
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
			{"Name" : "node_feature", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "234", "SubInstance" : "grp_load_graph_fu_1322", "Port" : "node_feature"}]},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "234", "SubInstance" : "grp_load_graph_fu_1322", "Port" : "edge_list"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "edge_list"}]},
			{"Name" : "edge_attr_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "234", "SubInstance" : "grp_load_graph_fu_1322", "Port" : "edge_attr_0"}]},
			{"Name" : "edge_attr_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "234", "SubInstance" : "grp_load_graph_fu_1322", "Port" : "edge_attr_1"}]},
			{"Name" : "edge_attr_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "234", "SubInstance" : "grp_load_graph_fu_1322", "Port" : "edge_attr_2"}]},
			{"Name" : "node_embedding_V_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_0"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_0"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_0"}]},
			{"Name" : "node_embedding_V_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_1"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_1"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_1"}]},
			{"Name" : "node_embedding_V_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_2"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_2"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_2"}]},
			{"Name" : "node_embedding_V_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_3"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_3"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_3"}]},
			{"Name" : "node_embedding_V_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_4"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_4"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_4"}]},
			{"Name" : "node_embedding_V_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_5"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_5"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_5"}]},
			{"Name" : "node_embedding_V_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_6"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_6"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_6"}]},
			{"Name" : "node_embedding_V_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_7"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_7"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_7"}]},
			{"Name" : "node_embedding_V_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_8"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_8"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_8"}]},
			{"Name" : "node_embedding_V_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_9"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_9"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_9"}]},
			{"Name" : "node_embedding_V_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_10"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_10"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_10"}]},
			{"Name" : "node_embedding_V_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_11"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_11"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_11"}]},
			{"Name" : "node_embedding_V_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_12"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_12"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_12"}]},
			{"Name" : "node_embedding_V_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_13"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_13"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_13"}]},
			{"Name" : "node_embedding_V_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_14"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_14"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_14"}]},
			{"Name" : "node_embedding_V_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_15"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_15"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_15"}]},
			{"Name" : "node_embedding_V_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_16"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_16"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_16"}]},
			{"Name" : "node_embedding_V_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_17"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_17"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_17"}]},
			{"Name" : "node_embedding_V_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_18"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_18"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_18"}]},
			{"Name" : "node_embedding_V_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_19"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_19"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_19"}]},
			{"Name" : "node_embedding_V_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_20"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_20"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_20"}]},
			{"Name" : "node_embedding_V_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_21"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_21"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_21"}]},
			{"Name" : "node_embedding_V_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_22"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_22"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_22"}]},
			{"Name" : "node_embedding_V_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_23"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_23"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_23"}]},
			{"Name" : "node_embedding_V_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_24"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_24"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_24"}]},
			{"Name" : "node_embedding_V_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_25"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_25"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_25"}]},
			{"Name" : "node_embedding_V_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_26"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_26"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_26"}]},
			{"Name" : "node_embedding_V_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_27"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_27"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_27"}]},
			{"Name" : "node_embedding_V_28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_28"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_28"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_28"}]},
			{"Name" : "node_embedding_V_29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_29"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_29"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_29"}]},
			{"Name" : "node_embedding_V_30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_30"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_30"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_30"}]},
			{"Name" : "node_embedding_V_31", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_31"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_31"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_31"}]},
			{"Name" : "node_embedding_V_32", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_32"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_32"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_32"}]},
			{"Name" : "node_embedding_V_33", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_33"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_33"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_33"}]},
			{"Name" : "node_embedding_V_34", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_34"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_34"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_34"}]},
			{"Name" : "node_embedding_V_35", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_35"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_35"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_35"}]},
			{"Name" : "node_embedding_V_36", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_36"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_36"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_36"}]},
			{"Name" : "node_embedding_V_37", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_37"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_37"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_37"}]},
			{"Name" : "node_embedding_V_38", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_38"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_38"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_38"}]},
			{"Name" : "node_embedding_V_39", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_39"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_39"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_39"}]},
			{"Name" : "node_embedding_V_40", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_40"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_40"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_40"}]},
			{"Name" : "node_embedding_V_41", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_41"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_41"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_41"}]},
			{"Name" : "node_embedding_V_42", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_42"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_42"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_42"}]},
			{"Name" : "node_embedding_V_43", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_43"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_43"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_43"}]},
			{"Name" : "node_embedding_V_44", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_44"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_44"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_44"}]},
			{"Name" : "node_embedding_V_45", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_45"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_45"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_45"}]},
			{"Name" : "node_embedding_V_46", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_46"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_46"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_46"}]},
			{"Name" : "node_embedding_V_47", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_47"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_47"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_47"}]},
			{"Name" : "node_embedding_V_48", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_48"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_48"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_48"}]},
			{"Name" : "node_embedding_V_49", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_49"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_49"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_49"}]},
			{"Name" : "node_embedding_V_50", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_50"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_50"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_50"}]},
			{"Name" : "node_embedding_V_51", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_51"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_51"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_51"}]},
			{"Name" : "node_embedding_V_52", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_52"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_52"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_52"}]},
			{"Name" : "node_embedding_V_53", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_53"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_53"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_53"}]},
			{"Name" : "node_embedding_V_54", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_54"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_54"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_54"}]},
			{"Name" : "node_embedding_V_55", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_55"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_55"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_55"}]},
			{"Name" : "node_embedding_V_56", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_56"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_56"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_56"}]},
			{"Name" : "node_embedding_V_57", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_57"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_57"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_57"}]},
			{"Name" : "node_embedding_V_58", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_58"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_58"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_58"}]},
			{"Name" : "node_embedding_V_59", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_59"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_59"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_59"}]},
			{"Name" : "node_embedding_V_60", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_60"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_60"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_60"}]},
			{"Name" : "node_embedding_V_61", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_61"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_61"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_61"}]},
			{"Name" : "node_embedding_V_62", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_62"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_62"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_62"}]},
			{"Name" : "node_embedding_V_63", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_63"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_63"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_63"}]},
			{"Name" : "node_embedding_V_64", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_64"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_64"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_64"}]},
			{"Name" : "node_embedding_V_65", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_65"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_65"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_65"}]},
			{"Name" : "node_embedding_V_66", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_66"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_66"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_66"}]},
			{"Name" : "node_embedding_V_67", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_67"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_67"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_67"}]},
			{"Name" : "node_embedding_V_68", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_68"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_68"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_68"}]},
			{"Name" : "node_embedding_V_69", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_69"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_69"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_69"}]},
			{"Name" : "node_embedding_V_70", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_70"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_70"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_70"}]},
			{"Name" : "node_embedding_V_71", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_71"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_71"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_71"}]},
			{"Name" : "node_embedding_V_72", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_72"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_72"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_72"}]},
			{"Name" : "node_embedding_V_73", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_73"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_73"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_73"}]},
			{"Name" : "node_embedding_V_74", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_74"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_74"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_74"}]},
			{"Name" : "node_embedding_V_75", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_75"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_75"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_75"}]},
			{"Name" : "node_embedding_V_76", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_76"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_76"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_76"}]},
			{"Name" : "node_embedding_V_77", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_77"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_77"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_77"}]},
			{"Name" : "node_embedding_V_78", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_78"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_78"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_78"}]},
			{"Name" : "node_embedding_V_79", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_79"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_79"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_79"}]},
			{"Name" : "node_embedding_V_80", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_80"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_80"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_80"}]},
			{"Name" : "node_embedding_V_81", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_81"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_81"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_81"}]},
			{"Name" : "node_embedding_V_82", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_82"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_82"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_82"}]},
			{"Name" : "node_embedding_V_83", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_83"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_83"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_83"}]},
			{"Name" : "node_embedding_V_84", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_84"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_84"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_84"}]},
			{"Name" : "node_embedding_V_85", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_85"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_85"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_85"}]},
			{"Name" : "node_embedding_V_86", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_86"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_86"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_86"}]},
			{"Name" : "node_embedding_V_87", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_87"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_87"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_87"}]},
			{"Name" : "node_embedding_V_88", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_88"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_88"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_88"}]},
			{"Name" : "node_embedding_V_89", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_89"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_89"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_89"}]},
			{"Name" : "node_embedding_V_90", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_90"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_90"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_90"}]},
			{"Name" : "node_embedding_V_91", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_91"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_91"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_91"}]},
			{"Name" : "node_embedding_V_92", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_92"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_92"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_92"}]},
			{"Name" : "node_embedding_V_93", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_93"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_93"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_93"}]},
			{"Name" : "node_embedding_V_94", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_94"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_94"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_94"}]},
			{"Name" : "node_embedding_V_95", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_95"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_95"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_95"}]},
			{"Name" : "node_embedding_V_96", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_96"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_96"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_96"}]},
			{"Name" : "node_embedding_V_97", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_97"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_97"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_97"}]},
			{"Name" : "node_embedding_V_98", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_98"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_98"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_98"}]},
			{"Name" : "node_embedding_V_99", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "239", "SubInstance" : "grp_compute_node_embedding_fu_1341", "Port" : "node_embedding_V_99"},
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "node_embedding_V_99"},
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "node_embedding_V_99"}]},
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "message_V"}]},
			{"Name" : "mlp_in_V_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_1"}]},
			{"Name" : "mlp_in_V_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_3"}]},
			{"Name" : "mlp_in_V_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_5"}]},
			{"Name" : "mlp_in_V_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_7"}]},
			{"Name" : "mlp_in_V_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_9"}]},
			{"Name" : "mlp_in_V_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_11"}]},
			{"Name" : "mlp_in_V_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_13"}]},
			{"Name" : "mlp_in_V_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_15"}]},
			{"Name" : "mlp_in_V_17", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_17"}]},
			{"Name" : "mlp_in_V_19", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_19"}]},
			{"Name" : "mlp_in_V_21", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_21"}]},
			{"Name" : "mlp_in_V_23", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_23"}]},
			{"Name" : "mlp_in_V_25", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_25"}]},
			{"Name" : "mlp_in_V_27", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_27"}]},
			{"Name" : "mlp_in_V_29", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_29"}]},
			{"Name" : "mlp_in_V_31", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_31"}]},
			{"Name" : "mlp_in_V_33", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_33"}]},
			{"Name" : "mlp_in_V_35", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_35"}]},
			{"Name" : "mlp_in_V_37", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_37"}]},
			{"Name" : "mlp_in_V_39", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_39"}]},
			{"Name" : "mlp_in_V_41", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_41"}]},
			{"Name" : "mlp_in_V_43", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_43"}]},
			{"Name" : "mlp_in_V_45", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_45"}]},
			{"Name" : "mlp_in_V_47", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_47"}]},
			{"Name" : "mlp_in_V_49", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_49"}]},
			{"Name" : "mlp_in_V_51", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_51"}]},
			{"Name" : "mlp_in_V_53", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_53"}]},
			{"Name" : "mlp_in_V_55", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_55"}]},
			{"Name" : "mlp_in_V_57", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_57"}]},
			{"Name" : "mlp_in_V_59", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_59"}]},
			{"Name" : "mlp_in_V_61", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_61"}]},
			{"Name" : "mlp_in_V_63", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_63"}]},
			{"Name" : "mlp_in_V_65", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_65"}]},
			{"Name" : "mlp_in_V_67", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_67"}]},
			{"Name" : "mlp_in_V_69", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_69"}]},
			{"Name" : "mlp_in_V_71", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_71"}]},
			{"Name" : "mlp_in_V_73", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_73"}]},
			{"Name" : "mlp_in_V_75", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_75"}]},
			{"Name" : "mlp_in_V_77", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_77"}]},
			{"Name" : "mlp_in_V_79", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_79"}]},
			{"Name" : "mlp_in_V_81", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_81"}]},
			{"Name" : "mlp_in_V_83", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_83"}]},
			{"Name" : "mlp_in_V_85", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_85"}]},
			{"Name" : "mlp_in_V_87", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_87"}]},
			{"Name" : "mlp_in_V_89", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_89"}]},
			{"Name" : "mlp_in_V_91", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_91"}]},
			{"Name" : "mlp_in_V_93", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_93"}]},
			{"Name" : "mlp_in_V_95", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_95"}]},
			{"Name" : "mlp_in_V_97", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_97"}]},
			{"Name" : "mlp_in_V_99", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_99"}]},
			{"Name" : "mlp_in_V_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_0"}]},
			{"Name" : "mlp_in_V_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_2"}]},
			{"Name" : "mlp_in_V_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_4"}]},
			{"Name" : "mlp_in_V_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_6"}]},
			{"Name" : "mlp_in_V_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_8"}]},
			{"Name" : "mlp_in_V_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_10"}]},
			{"Name" : "mlp_in_V_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_12"}]},
			{"Name" : "mlp_in_V_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_14"}]},
			{"Name" : "mlp_in_V_16", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_16"}]},
			{"Name" : "mlp_in_V_18", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_18"}]},
			{"Name" : "mlp_in_V_20", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_20"}]},
			{"Name" : "mlp_in_V_22", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_22"}]},
			{"Name" : "mlp_in_V_24", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_24"}]},
			{"Name" : "mlp_in_V_26", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_26"}]},
			{"Name" : "mlp_in_V_28", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_28"}]},
			{"Name" : "mlp_in_V_30", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_30"}]},
			{"Name" : "mlp_in_V_32", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_32"}]},
			{"Name" : "mlp_in_V_34", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_34"}]},
			{"Name" : "mlp_in_V_36", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_36"}]},
			{"Name" : "mlp_in_V_38", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_38"}]},
			{"Name" : "mlp_in_V_40", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_40"}]},
			{"Name" : "mlp_in_V_42", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_42"}]},
			{"Name" : "mlp_in_V_44", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_44"}]},
			{"Name" : "mlp_in_V_46", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_46"}]},
			{"Name" : "mlp_in_V_48", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_48"}]},
			{"Name" : "mlp_in_V_50", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_50"}]},
			{"Name" : "mlp_in_V_52", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_52"}]},
			{"Name" : "mlp_in_V_54", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_54"}]},
			{"Name" : "mlp_in_V_56", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_56"}]},
			{"Name" : "mlp_in_V_58", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_58"}]},
			{"Name" : "mlp_in_V_60", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_60"}]},
			{"Name" : "mlp_in_V_62", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_62"}]},
			{"Name" : "mlp_in_V_64", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_64"}]},
			{"Name" : "mlp_in_V_66", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_66"}]},
			{"Name" : "mlp_in_V_68", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_68"}]},
			{"Name" : "mlp_in_V_70", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_70"}]},
			{"Name" : "mlp_in_V_72", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_72"}]},
			{"Name" : "mlp_in_V_74", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_74"}]},
			{"Name" : "mlp_in_V_76", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_76"}]},
			{"Name" : "mlp_in_V_78", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_78"}]},
			{"Name" : "mlp_in_V_80", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_80"}]},
			{"Name" : "mlp_in_V_82", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_82"}]},
			{"Name" : "mlp_in_V_84", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_84"}]},
			{"Name" : "mlp_in_V_86", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_86"}]},
			{"Name" : "mlp_in_V_88", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_88"}]},
			{"Name" : "mlp_in_V_90", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_90"}]},
			{"Name" : "mlp_in_V_92", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_92"}]},
			{"Name" : "mlp_in_V_94", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_94"}]},
			{"Name" : "mlp_in_V_96", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_96"}]},
			{"Name" : "mlp_in_V_98", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "grp_compute_CONV_layer_fu_912", "Port" : "mlp_in_V_98"}]},
			{"Name" : "graph_embedding_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "104", "SubInstance" : "grp_global_mean_pooling_fu_706", "Port" : "graph_embedding_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.edge_list_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_2_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_4_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_5_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_6_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_7_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_8_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_9_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_10_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_11_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_12_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_13_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_14_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_15_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_16_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_17_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_18_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_19_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_20_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_21_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_22_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_23_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_24_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_25_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_26_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_27_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_28_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_29_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_30_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_31_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_32_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_33_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_34_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_35_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_36_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_37_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_38_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_39_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_40_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_41_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_42_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_43_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_44_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_45_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_46_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_47_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_48_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_49_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_50_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_51_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_52_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_53_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_54_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_55_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_56_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_57_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_58_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_59_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_60_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_61_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_62_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_63_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_64_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_65_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_66_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_67_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_68_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_69_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_70_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_71_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_72_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_73_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_74_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_75_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_76_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_77_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_78_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_79_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_80_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_81_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_82_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_83_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_84_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_85_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_86_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_87_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_88_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_89_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_90_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_91_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_92_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_93_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_94_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_95_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_96_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_97_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_98_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_99_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_m_axi_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706", "Parent" : "0", "Child" : ["105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125"],
		"CDFG" : "global_mean_pooling",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "112", "EstimateLatencyMax" : "112",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "graph_embedding_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_64", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_65", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_66", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_67", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_68", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_69", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_70", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_71", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_72", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_73", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_74", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_75", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_76", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_77", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_78", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_79", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_80", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_81", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_82", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_83", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_84", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_85", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_86", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_87", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_88", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_89", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_90", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_91", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_92", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_93", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_94", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_95", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_96", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_97", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_98", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_99", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.graph_embedding_V_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U424", "Parent" : "104"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U425", "Parent" : "104"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U426", "Parent" : "104"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U427", "Parent" : "104"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U428", "Parent" : "104"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U429", "Parent" : "104"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U430", "Parent" : "104"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U431", "Parent" : "104"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U432", "Parent" : "104"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U433", "Parent" : "104"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U434", "Parent" : "104"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U435", "Parent" : "104"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U436", "Parent" : "104"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U437", "Parent" : "104"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U438", "Parent" : "104"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U439", "Parent" : "104"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U440", "Parent" : "104"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U441", "Parent" : "104"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mux_1007_28_1_1_U442", "Parent" : "104"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_706.mul_28s_30ns_57_1_1_U443", "Parent" : "104"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912", "Parent" : "0", "Child" : ["127", "128", "231"],
		"CDFG" : "compute_CONV_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8786", "EstimateLatencyMax" : "8786",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "message_V"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "message_V"}]},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "edge_list"}]},
			{"Name" : "node_embedding_V_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_0"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_0"}]},
			{"Name" : "node_embedding_V_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_1"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_1"}]},
			{"Name" : "node_embedding_V_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_2"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_2"}]},
			{"Name" : "node_embedding_V_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_3"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_3"}]},
			{"Name" : "node_embedding_V_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_4"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_4"}]},
			{"Name" : "node_embedding_V_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_5"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_5"}]},
			{"Name" : "node_embedding_V_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_6"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_6"}]},
			{"Name" : "node_embedding_V_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_7"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_7"}]},
			{"Name" : "node_embedding_V_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_8"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_8"}]},
			{"Name" : "node_embedding_V_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_9"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_9"}]},
			{"Name" : "node_embedding_V_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_10"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_10"}]},
			{"Name" : "node_embedding_V_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_11"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_11"}]},
			{"Name" : "node_embedding_V_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_12"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_12"}]},
			{"Name" : "node_embedding_V_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_13"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_13"}]},
			{"Name" : "node_embedding_V_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_14"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_14"}]},
			{"Name" : "node_embedding_V_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_15"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_15"}]},
			{"Name" : "node_embedding_V_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_16"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_16"}]},
			{"Name" : "node_embedding_V_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_17"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_17"}]},
			{"Name" : "node_embedding_V_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_18"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_18"}]},
			{"Name" : "node_embedding_V_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_19"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_19"}]},
			{"Name" : "node_embedding_V_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_20"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_20"}]},
			{"Name" : "node_embedding_V_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_21"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_21"}]},
			{"Name" : "node_embedding_V_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_22"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_22"}]},
			{"Name" : "node_embedding_V_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_23"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_23"}]},
			{"Name" : "node_embedding_V_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_24"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_24"}]},
			{"Name" : "node_embedding_V_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_25"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_25"}]},
			{"Name" : "node_embedding_V_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_26"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_26"}]},
			{"Name" : "node_embedding_V_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_27"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_27"}]},
			{"Name" : "node_embedding_V_28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_28"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_28"}]},
			{"Name" : "node_embedding_V_29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_29"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_29"}]},
			{"Name" : "node_embedding_V_30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_30"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_30"}]},
			{"Name" : "node_embedding_V_31", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_31"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_31"}]},
			{"Name" : "node_embedding_V_32", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_32"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_32"}]},
			{"Name" : "node_embedding_V_33", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_33"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_33"}]},
			{"Name" : "node_embedding_V_34", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_34"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_34"}]},
			{"Name" : "node_embedding_V_35", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_35"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_35"}]},
			{"Name" : "node_embedding_V_36", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_36"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_36"}]},
			{"Name" : "node_embedding_V_37", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_37"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_37"}]},
			{"Name" : "node_embedding_V_38", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_38"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_38"}]},
			{"Name" : "node_embedding_V_39", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_39"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_39"}]},
			{"Name" : "node_embedding_V_40", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_40"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_40"}]},
			{"Name" : "node_embedding_V_41", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_41"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_41"}]},
			{"Name" : "node_embedding_V_42", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_42"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_42"}]},
			{"Name" : "node_embedding_V_43", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_43"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_43"}]},
			{"Name" : "node_embedding_V_44", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_44"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_44"}]},
			{"Name" : "node_embedding_V_45", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_45"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_45"}]},
			{"Name" : "node_embedding_V_46", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_46"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_46"}]},
			{"Name" : "node_embedding_V_47", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_47"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_47"}]},
			{"Name" : "node_embedding_V_48", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_48"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_48"}]},
			{"Name" : "node_embedding_V_49", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_49"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_49"}]},
			{"Name" : "node_embedding_V_50", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_50"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_50"}]},
			{"Name" : "node_embedding_V_51", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_51"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_51"}]},
			{"Name" : "node_embedding_V_52", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_52"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_52"}]},
			{"Name" : "node_embedding_V_53", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_53"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_53"}]},
			{"Name" : "node_embedding_V_54", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_54"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_54"}]},
			{"Name" : "node_embedding_V_55", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_55"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_55"}]},
			{"Name" : "node_embedding_V_56", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_56"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_56"}]},
			{"Name" : "node_embedding_V_57", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_57"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_57"}]},
			{"Name" : "node_embedding_V_58", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_58"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_58"}]},
			{"Name" : "node_embedding_V_59", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_59"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_59"}]},
			{"Name" : "node_embedding_V_60", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_60"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_60"}]},
			{"Name" : "node_embedding_V_61", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_61"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_61"}]},
			{"Name" : "node_embedding_V_62", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_62"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_62"}]},
			{"Name" : "node_embedding_V_63", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_63"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_63"}]},
			{"Name" : "node_embedding_V_64", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_64"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_64"}]},
			{"Name" : "node_embedding_V_65", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_65"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_65"}]},
			{"Name" : "node_embedding_V_66", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_66"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_66"}]},
			{"Name" : "node_embedding_V_67", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_67"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_67"}]},
			{"Name" : "node_embedding_V_68", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_68"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_68"}]},
			{"Name" : "node_embedding_V_69", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_69"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_69"}]},
			{"Name" : "node_embedding_V_70", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_70"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_70"}]},
			{"Name" : "node_embedding_V_71", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_71"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_71"}]},
			{"Name" : "node_embedding_V_72", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_72"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_72"}]},
			{"Name" : "node_embedding_V_73", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_73"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_73"}]},
			{"Name" : "node_embedding_V_74", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_74"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_74"}]},
			{"Name" : "node_embedding_V_75", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_75"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_75"}]},
			{"Name" : "node_embedding_V_76", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_76"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_76"}]},
			{"Name" : "node_embedding_V_77", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_77"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_77"}]},
			{"Name" : "node_embedding_V_78", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_78"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_78"}]},
			{"Name" : "node_embedding_V_79", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_79"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_79"}]},
			{"Name" : "node_embedding_V_80", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_80"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_80"}]},
			{"Name" : "node_embedding_V_81", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_81"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_81"}]},
			{"Name" : "node_embedding_V_82", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_82"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_82"}]},
			{"Name" : "node_embedding_V_83", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_83"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_83"}]},
			{"Name" : "node_embedding_V_84", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_84"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_84"}]},
			{"Name" : "node_embedding_V_85", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_85"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_85"}]},
			{"Name" : "node_embedding_V_86", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_86"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_86"}]},
			{"Name" : "node_embedding_V_87", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_87"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_87"}]},
			{"Name" : "node_embedding_V_88", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_88"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_88"}]},
			{"Name" : "node_embedding_V_89", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_89"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_89"}]},
			{"Name" : "node_embedding_V_90", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_90"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_90"}]},
			{"Name" : "node_embedding_V_91", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_91"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_91"}]},
			{"Name" : "node_embedding_V_92", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_92"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_92"}]},
			{"Name" : "node_embedding_V_93", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_93"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_93"}]},
			{"Name" : "node_embedding_V_94", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_94"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_94"}]},
			{"Name" : "node_embedding_V_95", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_95"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_95"}]},
			{"Name" : "node_embedding_V_96", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_96"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_96"}]},
			{"Name" : "node_embedding_V_97", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_97"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_97"}]},
			{"Name" : "node_embedding_V_98", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_98"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_98"}]},
			{"Name" : "node_embedding_V_99", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "node_embedding_V_99"},
					{"ID" : "231", "SubInstance" : "grp_compute_edge_embedding_and_message_passing_fu_826", "Port" : "node_embedding_V_99"}]},
			{"Name" : "mlp_in_V_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_1"}]},
			{"Name" : "mlp_in_V_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_3"}]},
			{"Name" : "mlp_in_V_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_5"}]},
			{"Name" : "mlp_in_V_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_7"}]},
			{"Name" : "mlp_in_V_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_9"}]},
			{"Name" : "mlp_in_V_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_11"}]},
			{"Name" : "mlp_in_V_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_13"}]},
			{"Name" : "mlp_in_V_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_15"}]},
			{"Name" : "mlp_in_V_17", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_17"}]},
			{"Name" : "mlp_in_V_19", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_19"}]},
			{"Name" : "mlp_in_V_21", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_21"}]},
			{"Name" : "mlp_in_V_23", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_23"}]},
			{"Name" : "mlp_in_V_25", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_25"}]},
			{"Name" : "mlp_in_V_27", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_27"}]},
			{"Name" : "mlp_in_V_29", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_29"}]},
			{"Name" : "mlp_in_V_31", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_31"}]},
			{"Name" : "mlp_in_V_33", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_33"}]},
			{"Name" : "mlp_in_V_35", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_35"}]},
			{"Name" : "mlp_in_V_37", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_37"}]},
			{"Name" : "mlp_in_V_39", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_39"}]},
			{"Name" : "mlp_in_V_41", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_41"}]},
			{"Name" : "mlp_in_V_43", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_43"}]},
			{"Name" : "mlp_in_V_45", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_45"}]},
			{"Name" : "mlp_in_V_47", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_47"}]},
			{"Name" : "mlp_in_V_49", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_49"}]},
			{"Name" : "mlp_in_V_51", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_51"}]},
			{"Name" : "mlp_in_V_53", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_53"}]},
			{"Name" : "mlp_in_V_55", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_55"}]},
			{"Name" : "mlp_in_V_57", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_57"}]},
			{"Name" : "mlp_in_V_59", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_59"}]},
			{"Name" : "mlp_in_V_61", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_61"}]},
			{"Name" : "mlp_in_V_63", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_63"}]},
			{"Name" : "mlp_in_V_65", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_65"}]},
			{"Name" : "mlp_in_V_67", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_67"}]},
			{"Name" : "mlp_in_V_69", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_69"}]},
			{"Name" : "mlp_in_V_71", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_71"}]},
			{"Name" : "mlp_in_V_73", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_73"}]},
			{"Name" : "mlp_in_V_75", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_75"}]},
			{"Name" : "mlp_in_V_77", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_77"}]},
			{"Name" : "mlp_in_V_79", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_79"}]},
			{"Name" : "mlp_in_V_81", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_81"}]},
			{"Name" : "mlp_in_V_83", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_83"}]},
			{"Name" : "mlp_in_V_85", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_85"}]},
			{"Name" : "mlp_in_V_87", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_87"}]},
			{"Name" : "mlp_in_V_89", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_89"}]},
			{"Name" : "mlp_in_V_91", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_91"}]},
			{"Name" : "mlp_in_V_93", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_93"}]},
			{"Name" : "mlp_in_V_95", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_95"}]},
			{"Name" : "mlp_in_V_97", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_97"}]},
			{"Name" : "mlp_in_V_99", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_99"}]},
			{"Name" : "mlp_in_V_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_0"}]},
			{"Name" : "mlp_in_V_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_2"}]},
			{"Name" : "mlp_in_V_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_4"}]},
			{"Name" : "mlp_in_V_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_6"}]},
			{"Name" : "mlp_in_V_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_8"}]},
			{"Name" : "mlp_in_V_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_10"}]},
			{"Name" : "mlp_in_V_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_12"}]},
			{"Name" : "mlp_in_V_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_14"}]},
			{"Name" : "mlp_in_V_16", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_16"}]},
			{"Name" : "mlp_in_V_18", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_18"}]},
			{"Name" : "mlp_in_V_20", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_20"}]},
			{"Name" : "mlp_in_V_22", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_22"}]},
			{"Name" : "mlp_in_V_24", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_24"}]},
			{"Name" : "mlp_in_V_26", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_26"}]},
			{"Name" : "mlp_in_V_28", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_28"}]},
			{"Name" : "mlp_in_V_30", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_30"}]},
			{"Name" : "mlp_in_V_32", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_32"}]},
			{"Name" : "mlp_in_V_34", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_34"}]},
			{"Name" : "mlp_in_V_36", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_36"}]},
			{"Name" : "mlp_in_V_38", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_38"}]},
			{"Name" : "mlp_in_V_40", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_40"}]},
			{"Name" : "mlp_in_V_42", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_42"}]},
			{"Name" : "mlp_in_V_44", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_44"}]},
			{"Name" : "mlp_in_V_46", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_46"}]},
			{"Name" : "mlp_in_V_48", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_48"}]},
			{"Name" : "mlp_in_V_50", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_50"}]},
			{"Name" : "mlp_in_V_52", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_52"}]},
			{"Name" : "mlp_in_V_54", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_54"}]},
			{"Name" : "mlp_in_V_56", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_56"}]},
			{"Name" : "mlp_in_V_58", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_58"}]},
			{"Name" : "mlp_in_V_60", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_60"}]},
			{"Name" : "mlp_in_V_62", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_62"}]},
			{"Name" : "mlp_in_V_64", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_64"}]},
			{"Name" : "mlp_in_V_66", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_66"}]},
			{"Name" : "mlp_in_V_68", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_68"}]},
			{"Name" : "mlp_in_V_70", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_70"}]},
			{"Name" : "mlp_in_V_72", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_72"}]},
			{"Name" : "mlp_in_V_74", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_74"}]},
			{"Name" : "mlp_in_V_76", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_76"}]},
			{"Name" : "mlp_in_V_78", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_78"}]},
			{"Name" : "mlp_in_V_80", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_80"}]},
			{"Name" : "mlp_in_V_82", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_82"}]},
			{"Name" : "mlp_in_V_84", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_84"}]},
			{"Name" : "mlp_in_V_86", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_86"}]},
			{"Name" : "mlp_in_V_88", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_88"}]},
			{"Name" : "mlp_in_V_90", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_90"}]},
			{"Name" : "mlp_in_V_92", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_92"}]},
			{"Name" : "mlp_in_V_94", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_94"}]},
			{"Name" : "mlp_in_V_96", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_96"}]},
			{"Name" : "mlp_in_V_98", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_MLP_fu_418", "Port" : "mlp_in_V_98"}]}]},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.message_V_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418", "Parent" : "126", "Child" : ["129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230"],
		"CDFG" : "MLP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2875", "EstimateLatencyMax" : "2875",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_98", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_99", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_21", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_23", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_25", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_27", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_29", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_31", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_33", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_35", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_37", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_39", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_41", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_43", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_45", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_47", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_49", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_51", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_53", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_55", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_57", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_59", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_61", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_63", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_65", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_67", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_69", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_71", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_73", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_75", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_77", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_79", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_81", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_83", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_85", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_87", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_89", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_91", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_93", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_95", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_97", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_20", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_22", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_24", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_26", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_28", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_30", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_32", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_34", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_36", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_38", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_40", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_42", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_44", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_46", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_48", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_50", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_52", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_54", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_56", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_58", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_60", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_62", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_64", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_66", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_68", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_70", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_72", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_74", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_76", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_78", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_80", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_82", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_84", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_86", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_88", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_90", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_92", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_94", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "node_embedding_V_96", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "mlp_in_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_47", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_49", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_51", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_53", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_55", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_57", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_59", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_61", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_63", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_65", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_67", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_69", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_71", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_73", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_75", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_77", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_79", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_81", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_83", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_85", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_87", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_89", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_91", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_93", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_95", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_97", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_99", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_48", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_50", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_52", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_54", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_56", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_58", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_60", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_62", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_64", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_66", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_68", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_70", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_72", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_74", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_76", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_78", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_80", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_82", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_84", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_86", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_88", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_90", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_92", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_94", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_96", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mlp_in_V_98", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_1_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_3_U", "Parent" : "128"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_5_U", "Parent" : "128"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_7_U", "Parent" : "128"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_9_U", "Parent" : "128"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_11_U", "Parent" : "128"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_13_U", "Parent" : "128"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_15_U", "Parent" : "128"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_17_U", "Parent" : "128"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_19_U", "Parent" : "128"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_21_U", "Parent" : "128"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_23_U", "Parent" : "128"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_25_U", "Parent" : "128"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_27_U", "Parent" : "128"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_29_U", "Parent" : "128"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_31_U", "Parent" : "128"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_33_U", "Parent" : "128"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_35_U", "Parent" : "128"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_37_U", "Parent" : "128"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_39_U", "Parent" : "128"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_41_U", "Parent" : "128"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_43_U", "Parent" : "128"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_45_U", "Parent" : "128"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_47_U", "Parent" : "128"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_49_U", "Parent" : "128"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_51_U", "Parent" : "128"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_53_U", "Parent" : "128"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_55_U", "Parent" : "128"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_57_U", "Parent" : "128"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_59_U", "Parent" : "128"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_61_U", "Parent" : "128"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_63_U", "Parent" : "128"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_65_U", "Parent" : "128"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_67_U", "Parent" : "128"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_69_U", "Parent" : "128"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_71_U", "Parent" : "128"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_73_U", "Parent" : "128"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_75_U", "Parent" : "128"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_77_U", "Parent" : "128"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_79_U", "Parent" : "128"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_81_U", "Parent" : "128"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_83_U", "Parent" : "128"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_85_U", "Parent" : "128"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_87_U", "Parent" : "128"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_89_U", "Parent" : "128"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_91_U", "Parent" : "128"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_93_U", "Parent" : "128"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_95_U", "Parent" : "128"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_97_U", "Parent" : "128"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_99_U", "Parent" : "128"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_0_U", "Parent" : "128"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_2_U", "Parent" : "128"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_4_U", "Parent" : "128"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_6_U", "Parent" : "128"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_8_U", "Parent" : "128"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_10_U", "Parent" : "128"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_12_U", "Parent" : "128"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_14_U", "Parent" : "128"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_16_U", "Parent" : "128"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_18_U", "Parent" : "128"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_20_U", "Parent" : "128"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_22_U", "Parent" : "128"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_24_U", "Parent" : "128"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_26_U", "Parent" : "128"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_28_U", "Parent" : "128"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_30_U", "Parent" : "128"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_32_U", "Parent" : "128"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_34_U", "Parent" : "128"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_36_U", "Parent" : "128"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_38_U", "Parent" : "128"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_40_U", "Parent" : "128"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_42_U", "Parent" : "128"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_44_U", "Parent" : "128"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_46_U", "Parent" : "128"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_48_U", "Parent" : "128"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_50_U", "Parent" : "128"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_52_U", "Parent" : "128"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_54_U", "Parent" : "128"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_56_U", "Parent" : "128"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_58_U", "Parent" : "128"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_60_U", "Parent" : "128"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_62_U", "Parent" : "128"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_64_U", "Parent" : "128"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_66_U", "Parent" : "128"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_68_U", "Parent" : "128"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_70_U", "Parent" : "128"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_72_U", "Parent" : "128"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_74_U", "Parent" : "128"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_76_U", "Parent" : "128"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_78_U", "Parent" : "128"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_80_U", "Parent" : "128"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_82_U", "Parent" : "128"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_84_U", "Parent" : "128"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_86_U", "Parent" : "128"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_88_U", "Parent" : "128"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_90_U", "Parent" : "128"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_92_U", "Parent" : "128"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_94_U", "Parent" : "128"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_96_U", "Parent" : "128"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mlp_in_V_98_U", "Parent" : "128"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mul_5ns_8ns_12_1_1_U214", "Parent" : "128"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_MLP_fu_418.mux_1287_28_1_1_U215", "Parent" : "128"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_compute_edge_embedding_and_message_passing_fu_826", "Parent" : "126", "Child" : ["232", "233"],
		"CDFG" : "compute_edge_embedding_and_message_passing",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5908", "EstimateLatencyMax" : "5908",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "message_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_64", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_65", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_66", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_67", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_68", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_69", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_70", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_71", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_72", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_73", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_74", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_75", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_76", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_77", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_78", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_79", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_80", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_81", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_82", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_83", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_84", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_85", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_86", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_87", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_88", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_89", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_90", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_91", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_92", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_93", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_94", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_95", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_96", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_97", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_98", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V_99", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_compute_edge_embedding_and_message_passing_fu_826.mux_1007_28_1_1_U108", "Parent" : "231"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_912.grp_compute_edge_embedding_and_message_passing_fu_826.mac_muladd_15s_8ns_7ns_15_4_1_U109", "Parent" : "231"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_load_graph_fu_1322", "Parent" : "0", "Child" : ["235", "236", "237", "238"],
		"CDFG" : "load_graph",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "398", "EstimateLatencyMax" : "398",
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
			{"Name" : "node_feature", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_attr_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_attr_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "edge_attr_2", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_graph_fu_1322.node_feature_U", "Parent" : "234"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_graph_fu_1322.edge_attr_0_U", "Parent" : "234"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_graph_fu_1322.edge_attr_1_U", "Parent" : "234"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_graph_fu_1322.edge_attr_2_U", "Parent" : "234"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_node_embedding_fu_1341", "Parent" : "0",
		"CDFG" : "compute_node_embedding",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1902", "EstimateLatencyMax" : "1902",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "node_embedding_V_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_47", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_48", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_49", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_50", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_51", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_52", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_53", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_54", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_55", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_56", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_57", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_58", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_59", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_60", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_61", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_62", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_63", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_64", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_65", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_66", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_67", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_68", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_69", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_70", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_71", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_72", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_73", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_74", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_75", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_76", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_77", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_78", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_79", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_80", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_81", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_82", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_83", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_84", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_85", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_86", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_87", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_88", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_89", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_90", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_91", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_92", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_93", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_94", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_95", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_96", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_97", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_98", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V_99", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_global_graph_prediction_fu_1545", "Parent" : "0",
		"CDFG" : "global_graph_prediction",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
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
			{"Name" : "d_out", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	GIN_compute_one_graph {
		mem {Type IO LastRead 24 FirstWrite -1}
		node_feature_in {Type I LastRead 0 FirstWrite -1}
		edge_list_in {Type I LastRead 0 FirstWrite -1}
		edge_attr_in {Type I LastRead 0 FirstWrite -1}
		graph_attr {Type I LastRead -1 FirstWrite -1}
		task_r {Type I LastRead 0 FirstWrite -1}
		gnn_node_mlp_1_weights_fixed {Type I LastRead -1 FirstWrite -1}
		gnn_node_mlp_1_bias_fixed {Type I LastRead -1 FirstWrite -1}
		gnn_node_mlp_2_weights_fixed {Type I LastRead -1 FirstWrite -1}
		gnn_node_mlp_2_bias_fixed {Type I LastRead -1 FirstWrite -1}
		gnn_node_embedding_fixed {Type I LastRead -1 FirstWrite -1}
		gnn_edge_embedding_fixed {Type I LastRead -1 FirstWrite -1}
		graph_pred_linear_weight_fixed {Type I LastRead -1 FirstWrite -1}
		graph_pred_linear_bias_fixed {Type I LastRead -1 FirstWrite -1}
		eps_fixed {Type I LastRead -1 FirstWrite -1}
		node_feature {Type O LastRead -1 FirstWrite -1}
		edge_list {Type IO LastRead -1 FirstWrite -1}
		edge_attr_0 {Type O LastRead -1 FirstWrite -1}
		edge_attr_1 {Type O LastRead -1 FirstWrite -1}
		edge_attr_2 {Type O LastRead -1 FirstWrite -1}
		node_embedding_V_0 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_1 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_2 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_3 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_4 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_5 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_6 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_7 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_8 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_9 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_10 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_11 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_12 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_13 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_14 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_15 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_16 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_17 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_18 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_19 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_20 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_21 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_22 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_23 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_24 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_25 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_26 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_27 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_28 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_29 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_30 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_31 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_32 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_33 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_34 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_35 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_36 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_37 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_38 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_39 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_40 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_41 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_42 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_43 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_44 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_45 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_46 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_47 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_48 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_49 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_50 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_51 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_52 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_53 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_54 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_55 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_56 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_57 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_58 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_59 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_60 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_61 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_62 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_63 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_64 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_65 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_66 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_67 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_68 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_69 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_70 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_71 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_72 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_73 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_74 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_75 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_76 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_77 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_78 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_79 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_80 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_81 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_82 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_83 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_84 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_85 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_86 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_87 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_88 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_89 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_90 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_91 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_92 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_93 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_94 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_95 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_96 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_97 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_98 {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V_99 {Type IO LastRead -1 FirstWrite -1}
		message_V {Type IO LastRead -1 FirstWrite -1}
		mlp_in_V_1 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_3 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_5 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_7 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_9 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_11 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_13 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_15 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_17 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_19 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_21 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_23 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_25 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_27 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_29 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_31 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_33 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_35 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_37 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_39 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_41 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_43 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_45 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_47 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_49 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_51 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_53 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_55 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_57 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_59 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_61 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_63 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_65 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_67 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_69 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_71 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_73 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_75 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_77 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_79 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_81 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_83 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_85 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_87 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_89 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_91 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_93 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_95 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_97 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_99 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_0 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_2 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_4 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_6 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_8 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_10 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_12 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_14 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_16 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_18 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_20 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_22 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_24 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_26 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_28 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_30 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_32 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_34 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_36 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_38 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_40 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_42 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_44 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_46 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_48 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_50 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_52 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_54 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_56 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_58 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_60 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_62 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_64 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_66 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_68 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_70 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_72 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_74 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_76 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_78 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_80 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_82 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_84 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_86 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_88 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_90 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_92 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_94 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_96 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_98 {Type O LastRead -1 FirstWrite -1}
		graph_embedding_V {Type O LastRead -1 FirstWrite -1}}
	global_mean_pooling {
		graph_embedding_V {Type O LastRead -1 FirstWrite -1}
		node_embedding_V_0 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_1 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_2 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_3 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_4 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_5 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_6 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_7 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_8 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_9 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_10 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_11 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_12 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_13 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_14 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_15 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_16 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_17 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_18 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_19 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_20 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_21 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_22 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_23 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_24 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_25 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_26 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_27 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_28 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_29 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_30 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_31 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_32 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_33 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_34 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_35 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_36 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_37 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_38 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_39 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_40 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_41 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_42 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_43 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_44 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_45 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_46 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_47 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_48 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_49 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_50 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_51 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_52 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_53 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_54 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_55 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_56 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_57 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_58 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_59 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_60 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_61 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_62 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_63 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_64 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_65 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_66 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_67 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_68 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_69 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_70 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_71 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_72 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_73 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_74 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_75 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_76 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_77 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_78 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_79 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_80 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_81 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_82 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_83 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_84 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_85 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_86 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_87 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_88 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_89 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_90 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_91 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_92 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_93 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_94 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_95 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_96 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_97 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_98 {Type I LastRead 10 FirstWrite -1}
		node_embedding_V_99 {Type I LastRead 10 FirstWrite -1}}
	compute_CONV_layer {
		layer {Type I LastRead 2 FirstWrite -1}
		message_V {Type IO LastRead -1 FirstWrite -1}
		edge_list {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_0 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_1 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_2 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_3 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_4 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_5 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_6 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_7 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_8 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_9 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_10 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_11 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_12 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_13 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_14 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_15 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_16 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_17 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_18 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_19 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_20 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_21 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_22 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_23 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_24 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_25 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_26 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_27 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_28 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_29 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_30 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_31 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_32 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_33 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_34 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_35 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_36 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_37 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_38 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_39 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_40 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_41 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_42 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_43 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_44 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_45 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_46 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_47 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_48 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_49 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_50 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_51 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_52 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_53 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_54 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_55 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_56 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_57 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_58 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_59 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_60 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_61 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_62 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_63 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_64 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_65 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_66 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_67 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_68 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_69 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_70 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_71 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_72 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_73 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_74 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_75 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_76 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_77 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_78 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_79 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_80 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_81 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_82 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_83 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_84 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_85 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_86 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_87 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_88 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_89 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_90 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_91 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_92 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_93 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_94 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_95 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_96 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_97 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_98 {Type IO LastRead 7 FirstWrite -1}
		node_embedding_V_99 {Type IO LastRead 7 FirstWrite -1}
		mlp_in_V_1 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_3 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_5 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_7 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_9 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_11 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_13 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_15 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_17 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_19 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_21 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_23 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_25 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_27 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_29 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_31 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_33 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_35 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_37 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_39 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_41 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_43 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_45 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_47 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_49 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_51 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_53 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_55 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_57 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_59 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_61 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_63 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_65 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_67 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_69 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_71 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_73 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_75 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_77 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_79 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_81 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_83 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_85 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_87 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_89 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_91 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_93 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_95 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_97 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_99 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_0 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_2 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_4 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_6 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_8 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_10 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_12 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_14 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_16 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_18 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_20 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_22 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_24 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_26 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_28 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_30 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_32 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_34 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_36 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_38 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_40 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_42 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_44 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_46 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_48 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_50 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_52 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_54 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_56 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_58 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_60 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_62 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_64 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_66 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_68 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_70 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_72 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_74 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_76 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_78 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_80 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_82 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_84 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_86 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_88 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_90 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_92 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_94 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_96 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_98 {Type O LastRead -1 FirstWrite -1}}
	MLP {
		layer {Type I LastRead 0 FirstWrite -1}
		message_V {Type I LastRead 2 FirstWrite -1}
		node_embedding_V_98 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_99 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_1 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_3 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_5 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_7 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_9 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_11 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_13 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_15 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_17 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_19 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_21 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_23 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_25 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_27 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_29 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_31 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_33 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_35 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_37 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_39 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_41 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_43 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_45 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_47 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_49 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_51 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_53 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_55 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_57 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_59 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_61 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_63 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_65 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_67 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_69 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_71 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_73 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_75 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_77 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_79 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_81 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_83 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_85 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_87 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_89 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_91 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_93 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_95 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_97 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_0 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_2 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_4 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_6 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_8 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_10 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_12 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_14 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_16 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_18 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_20 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_22 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_24 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_26 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_28 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_30 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_32 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_34 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_36 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_38 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_40 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_42 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_44 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_46 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_48 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_50 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_52 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_54 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_56 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_58 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_60 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_62 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_64 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_66 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_68 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_70 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_72 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_74 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_76 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_78 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_80 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_82 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_84 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_86 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_88 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_90 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_92 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_94 {Type IO LastRead 5 FirstWrite 3}
		node_embedding_V_96 {Type IO LastRead 5 FirstWrite 3}
		mlp_in_V_1 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_3 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_5 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_7 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_9 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_11 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_13 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_15 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_17 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_19 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_21 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_23 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_25 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_27 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_29 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_31 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_33 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_35 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_37 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_39 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_41 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_43 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_45 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_47 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_49 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_51 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_53 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_55 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_57 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_59 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_61 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_63 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_65 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_67 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_69 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_71 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_73 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_75 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_77 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_79 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_81 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_83 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_85 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_87 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_89 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_91 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_93 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_95 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_97 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_99 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_0 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_2 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_4 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_6 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_8 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_10 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_12 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_14 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_16 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_18 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_20 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_22 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_24 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_26 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_28 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_30 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_32 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_34 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_36 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_38 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_40 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_42 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_44 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_46 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_48 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_50 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_52 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_54 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_56 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_58 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_60 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_62 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_64 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_66 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_68 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_70 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_72 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_74 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_76 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_78 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_80 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_82 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_84 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_86 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_88 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_90 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_92 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_94 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_96 {Type O LastRead -1 FirstWrite -1}
		mlp_in_V_98 {Type O LastRead -1 FirstWrite -1}}
	compute_edge_embedding_and_message_passing {
		message_V {Type IO LastRead 7 FirstWrite 1}
		edge_list {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_0 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_1 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_2 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_3 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_4 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_5 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_6 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_7 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_8 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_9 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_10 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_11 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_12 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_13 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_14 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_15 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_16 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_17 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_18 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_19 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_20 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_21 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_22 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_23 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_24 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_25 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_26 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_27 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_28 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_29 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_30 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_31 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_32 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_33 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_34 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_35 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_36 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_37 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_38 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_39 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_40 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_41 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_42 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_43 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_44 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_45 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_46 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_47 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_48 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_49 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_50 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_51 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_52 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_53 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_54 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_55 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_56 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_57 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_58 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_59 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_60 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_61 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_62 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_63 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_64 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_65 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_66 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_67 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_68 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_69 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_70 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_71 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_72 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_73 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_74 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_75 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_76 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_77 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_78 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_79 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_80 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_81 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_82 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_83 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_84 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_85 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_86 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_87 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_88 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_89 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_90 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_91 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_92 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_93 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_94 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_95 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_96 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_97 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_98 {Type I LastRead 7 FirstWrite -1}
		node_embedding_V_99 {Type I LastRead 7 FirstWrite -1}}
	load_graph {
		mem {Type I LastRead 24 FirstWrite -1}
		node_feature_in {Type I LastRead 0 FirstWrite -1}
		edge_list_in {Type I LastRead 6 FirstWrite -1}
		edge_attr_in {Type I LastRead 6 FirstWrite -1}
		node_feature {Type O LastRead -1 FirstWrite -1}
		edge_list {Type O LastRead -1 FirstWrite 25}
		edge_attr_0 {Type O LastRead -1 FirstWrite -1}
		edge_attr_1 {Type O LastRead -1 FirstWrite -1}
		edge_attr_2 {Type O LastRead -1 FirstWrite -1}}
	compute_node_embedding {
		node_embedding_V_0 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_1 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_2 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_3 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_4 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_5 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_6 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_7 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_8 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_9 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_10 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_11 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_12 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_13 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_14 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_15 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_16 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_17 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_18 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_19 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_20 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_21 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_22 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_23 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_24 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_25 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_26 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_27 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_28 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_29 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_30 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_31 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_32 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_33 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_34 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_35 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_36 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_37 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_38 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_39 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_40 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_41 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_42 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_43 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_44 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_45 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_46 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_47 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_48 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_49 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_50 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_51 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_52 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_53 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_54 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_55 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_56 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_57 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_58 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_59 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_60 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_61 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_62 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_63 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_64 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_65 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_66 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_67 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_68 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_69 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_70 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_71 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_72 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_73 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_74 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_75 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_76 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_77 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_78 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_79 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_80 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_81 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_82 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_83 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_84 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_85 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_86 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_87 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_88 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_89 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_90 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_91 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_92 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_93 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_94 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_95 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_96 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_97 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_98 {Type O LastRead -1 FirstWrite 1}
		node_embedding_V_99 {Type O LastRead -1 FirstWrite 1}}
	global_graph_prediction {
		mem {Type O LastRead 2 FirstWrite 1}
		d_out {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "45959", "Max" : "45959"}
	, {"Name" : "Interval", "Min" : "45960", "Max" : "45960"}
]}

set PipelineEnableSignalInfo {[
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
