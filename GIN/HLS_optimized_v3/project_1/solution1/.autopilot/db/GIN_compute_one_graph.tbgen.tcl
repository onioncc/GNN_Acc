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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "25", "28", "29", "37", "42", "45", "48"],
		"CDFG" : "GIN_compute_one_graph",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16015", "EstimateLatencyMax" : "71245",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_load_graph_fu_708", "Port" : "mem"},
					{"ID" : "48", "SubInstance" : "grp_global_graph_prediction_fu_739", "Port" : "mem"}]},
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
					{"ID" : "37", "SubInstance" : "grp_load_graph_fu_708", "Port" : "node_feature"}]},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_load_graph_fu_708", "Port" : "edge_list"},
					{"ID" : "28", "SubInstance" : "grp_prepare_degree_neighbor_table_fu_686", "Port" : "edge_list"}]},
			{"Name" : "edge_attr_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_load_graph_fu_708", "Port" : "edge_attr_0"}]},
			{"Name" : "edge_attr_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_load_graph_fu_708", "Port" : "edge_attr_1"}]},
			{"Name" : "edge_attr_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "grp_load_graph_fu_708", "Port" : "edge_attr_2"}]},
			{"Name" : "degree_table", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_compute_node_embedding_fu_696", "Port" : "degree_table"},
					{"ID" : "9", "SubInstance" : "grp_compute_CONV_layer_fu_662", "Port" : "degree_table"},
					{"ID" : "28", "SubInstance" : "grp_prepare_degree_neighbor_table_fu_686", "Port" : "degree_table"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_compute_node_embedding_fu_696", "Port" : "neighbor_table"},
					{"ID" : "9", "SubInstance" : "grp_compute_CONV_layer_fu_662", "Port" : "neighbor_table"},
					{"ID" : "28", "SubInstance" : "grp_prepare_degree_neighbor_table_fu_686", "Port" : "neighbor_table"}]},
			{"Name" : "message1_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_compute_node_embedding_fu_696", "Port" : "message1_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_CONV_layer_fu_662", "Port" : "message1_V"},
					{"ID" : "42", "SubInstance" : "grp_clear_message_table_fu_727", "Port" : "message_tb"}]},
			{"Name" : "message2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_CONV_layer_fu_662", "Port" : "message2_V"},
					{"ID" : "45", "SubInstance" : "grp_clear_message_table_fu_733", "Port" : "message_tb"}]},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_compute_node_embedding_fu_696", "Port" : "node_embedding_V"},
					{"ID" : "25", "SubInstance" : "grp_global_mean_pooling_fu_678", "Port" : "node_embedding_V"},
					{"ID" : "9", "SubInstance" : "grp_compute_CONV_layer_fu_662", "Port" : "node_embedding_V"}]},
			{"Name" : "graph_embedding_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "grp_global_mean_pooling_fu_678", "Port" : "graph_embedding_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.edge_list_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.degree_table_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.neighbor_table_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.message1_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.message2_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.node_embedding_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mem_m_axi_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_662", "Parent" : "0", "Child" : ["10", "11", "12", "19", "22"],
		"CDFG" : "compute_CONV_layer",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2123", "EstimateLatencyMax" : "11649",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "message2_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_clear_message_table_fu_3110", "Port" : "message_tb"},
					{"ID" : "12", "SubInstance" : "grp_MLP_wrapper_fu_2680", "Port" : "message_tb"},
					{"ID" : "19", "SubInstance" : "grp_message_passing_one_node_vec_fu_3096", "Port" : "message_tb"}]},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_MLP_wrapper_fu_2680", "Port" : "node_embedding_V"}]},
			{"Name" : "message1_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_clear_message_table_fu_3110", "Port" : "message_tb"},
					{"ID" : "12", "SubInstance" : "grp_MLP_wrapper_fu_2680", "Port" : "message_tb"},
					{"ID" : "19", "SubInstance" : "grp_message_passing_one_node_vec_fu_3096", "Port" : "message_tb"}]},
			{"Name" : "degree_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_message_passing_one_node_vec_fu_3096", "Port" : "degree_table"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_message_passing_one_node_vec_fu_3096", "Port" : "neighbor_table"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_662.emb_vec1_V_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_662.emb_vec2_V_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_662.grp_MLP_wrapper_fu_2680", "Parent" : "9", "Child" : ["13", "15", "16"],
		"CDFG" : "MLP_wrapper",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "207", "EstimateLatencyMax" : "207",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "mlp_in_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in1214_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in16_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in17_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in18_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in19_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in20_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in21_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in22_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in23_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in2427_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in25_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in26_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in27_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in28_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in29_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in30_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in31_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in32_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in33_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in34_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in3539_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in36_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in37_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in38_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in39_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in40_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in41_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in42_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in43_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in44_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in45_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in4651_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in47_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in48_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in49_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in50_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in51_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in52_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in53_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in54_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in55_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in56_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in5763_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in58_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in59_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in60_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in61_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in62_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in63_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in64_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in65_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in66_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in67_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in6875_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in69_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in70_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in71_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in72_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in73_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in74_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in75_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in76_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in77_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in78_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in7987_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in80_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in81_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in82_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in83_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in84_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in85_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in86_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in87_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in88_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in89_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in90_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in91_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in92_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in93_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in94_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in95_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in96_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in97_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in98_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_in99_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out100_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out101_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out102_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out103_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out104_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out105_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out106_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out107_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out108_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out109_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out110_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out111_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out112_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out113_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out114_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out115_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out116_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out117_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out118_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out119_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out120_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out121_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out122_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out123_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out124_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out125_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out126_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out127_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out128_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out129_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out130_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out131_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out132_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out133_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out134_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out135_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out136_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out137_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out138_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out139_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out140_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out141_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out142_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out143_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out144_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out145_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out146_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out147_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out148_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out149_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out150_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out151_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out152_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out153_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out154_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out155_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out156_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out157_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out158_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out159_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out160_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out161_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out162_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out163_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out164_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out165_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out166_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out167_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out168_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out169_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out170_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out171_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out172_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out173_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out174_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out175_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out176_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out177_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out178_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out179_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out180_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out181_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out182_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out183_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out184_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out185_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out186_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out187_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out188_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out189_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out190_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out191_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out192_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out193_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out194_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out195_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out196_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out197_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "mlp_out198_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "nd", "Type" : "None", "Direction" : "I"},
			{"Name" : "emb_vec", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_update_node_embedding_with_Relu_fu_2058", "Port" : "emb_vec"}]},
			{"Name" : "message_tb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_prepare_mlp_in_fu_1644", "Port" : "message_tb"}]},
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_prepare_mlp_in_fu_1644", "Port" : "node_embedding_V"},
					{"ID" : "16", "SubInstance" : "grp_update_node_embedding_with_Relu_fu_2058", "Port" : "node_embedding_V"}]}]},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_662.grp_MLP_wrapper_fu_2680.grp_prepare_mlp_in_fu_1644", "Parent" : "12", "Child" : ["14"],
		"CDFG" : "prepare_mlp_in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read64", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read65", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read66", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read67", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read68", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read69", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read70", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read71", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read72", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read73", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read74", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read75", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read76", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read77", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read78", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read79", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read80", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read81", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read82", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read83", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read84", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read85", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read86", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read87", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read88", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read89", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read90", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read91", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read92", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read93", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read94", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read95", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read96", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read97", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read98", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read99", "Type" : "None", "Direction" : "I"},
			{"Name" : "nd", "Type" : "None", "Direction" : "I"},
			{"Name" : "message_tb", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_662.grp_MLP_wrapper_fu_2680.grp_prepare_mlp_in_fu_1644.mul_5ns_8ns_12_1_1_U34", "Parent" : "13"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_662.grp_MLP_wrapper_fu_2680.grp_prepare_mlp_out_fu_1854", "Parent" : "12",
		"CDFG" : "prepare_mlp_out",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read64", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read65", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read66", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read67", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read68", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read69", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read70", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read71", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read72", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read73", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read74", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read75", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read76", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read77", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read78", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read79", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read80", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read81", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read82", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read83", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read84", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read85", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read86", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read87", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read88", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read89", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read90", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read91", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read92", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read93", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read94", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read95", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read96", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read97", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read98", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read99", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_662.grp_MLP_wrapper_fu_2680.grp_update_node_embedding_with_Relu_fu_2058", "Parent" : "12", "Child" : ["17", "18"],
		"CDFG" : "update_node_embedding_with_Relu",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read64", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read65", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read66", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read67", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read68", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read69", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read70", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read71", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read72", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read73", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read74", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read75", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read76", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read77", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read78", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read79", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read80", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read81", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read82", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read83", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read84", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read85", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read86", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read87", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read88", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read89", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read90", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read91", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read92", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read93", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read94", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read95", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read96", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read97", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read98", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read99", "Type" : "None", "Direction" : "I"},
			{"Name" : "emb_vec", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "nd", "Type" : "None", "Direction" : "I"},
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_662.grp_MLP_wrapper_fu_2680.grp_update_node_embedding_with_Relu_fu_2058.mul_5ns_8ns_12_1_1_U238", "Parent" : "16"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_662.grp_MLP_wrapper_fu_2680.grp_update_node_embedding_with_Relu_fu_2058.mux_1007_32_1_1_U239", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_662.grp_message_passing_one_node_vec_fu_3096", "Parent" : "9", "Child" : ["20", "21"],
		"CDFG" : "message_passing_one_node_vec",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "107", "EstimateLatencyMax" : "507",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "emb_vec", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nd_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "message_tb", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "degree_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_662.grp_message_passing_one_node_vec_fu_3096.mul_32ns_8ns_39_1_1_U20", "Parent" : "19"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_662.grp_message_passing_one_node_vec_fu_3096.mac_muladd_8ns_8ns_7ns_15_4_1_U21", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_662.grp_clear_message_table_fu_3110", "Parent" : "9", "Child" : ["23"],
		"CDFG" : "clear_message_table",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1977", "EstimateLatencyMax" : "1977",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "message_tb", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_clear_message_table_one_node_fu_38", "Port" : "message_tb"}]}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_662.grp_clear_message_table_fu_3110.grp_clear_message_table_one_node_fu_38", "Parent" : "22", "Child" : ["24"],
		"CDFG" : "clear_message_table_one_node",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "message_tb", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "message_tb_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_compute_CONV_layer_fu_662.grp_clear_message_table_fu_3110.grp_clear_message_table_one_node_fu_38.mul_5ns_8ns_12_1_1_U11", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_678", "Parent" : "0", "Child" : ["26", "27"],
		"CDFG" : "global_mean_pooling",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1007", "EstimateLatencyMax" : "1007",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "graph_embedding_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_678.graph_embedding_V_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_global_mean_pooling_fu_678.mul_32s_34ns_65_1_1_U557", "Parent" : "25"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_prepare_degree_neighbor_table_fu_686", "Parent" : "0",
		"CDFG" : "prepare_degree_neighbor_table",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "223", "EstimateLatencyMax" : "223",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "degree_table", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "edge_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_node_embedding_fu_696", "Parent" : "0", "Child" : ["30", "31", "32", "35"],
		"CDFG" : "compute_node_embedding",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2174", "EstimateLatencyMax" : "9774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_one_node_embedding_fu_73", "Port" : "node_embedding_V"}]},
			{"Name" : "degree_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_message_passing_one_node_vec_fu_60", "Port" : "degree_table"}]},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_message_passing_one_node_vec_fu_60", "Port" : "neighbor_table"}]},
			{"Name" : "message1_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_message_passing_one_node_vec_fu_60", "Port" : "message_tb"}]}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_node_embedding_fu_696.emb_vec1_V_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_node_embedding_fu_696.emb_vec2_V_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_node_embedding_fu_696.grp_message_passing_one_node_vec_fu_60", "Parent" : "29", "Child" : ["33", "34"],
		"CDFG" : "message_passing_one_node_vec",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "107", "EstimateLatencyMax" : "507",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "emb_vec", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "nd_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "message_tb", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "degree_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "neighbor_table", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_node_embedding_fu_696.grp_message_passing_one_node_vec_fu_60.mul_32ns_8ns_39_1_1_U20", "Parent" : "32"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_node_embedding_fu_696.grp_message_passing_one_node_vec_fu_60.mac_muladd_8ns_8ns_7ns_15_4_1_U21", "Parent" : "32"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_node_embedding_fu_696.grp_one_node_embedding_fu_73", "Parent" : "29", "Child" : ["36"],
		"CDFG" : "one_node_embedding",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "nd", "Type" : "None", "Direction" : "I"},
			{"Name" : "emb_vec", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "node_embedding_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_compute_node_embedding_fu_696.grp_one_node_embedding_fu_73.mul_5ns_8ns_12_1_1_U16", "Parent" : "35"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_load_graph_fu_708", "Parent" : "0", "Child" : ["38", "39", "40", "41"],
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
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_graph_fu_708.node_feature_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_graph_fu_708.edge_attr_0_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_graph_fu_708.edge_attr_1_U", "Parent" : "37"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_load_graph_fu_708.edge_attr_2_U", "Parent" : "37"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_clear_message_table_fu_727", "Parent" : "0", "Child" : ["43"],
		"CDFG" : "clear_message_table",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1977", "EstimateLatencyMax" : "1977",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "message_tb", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_clear_message_table_one_node_fu_38", "Port" : "message_tb"}]}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clear_message_table_fu_727.grp_clear_message_table_one_node_fu_38", "Parent" : "42", "Child" : ["44"],
		"CDFG" : "clear_message_table_one_node",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "message_tb", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "message_tb_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_clear_message_table_fu_727.grp_clear_message_table_one_node_fu_38.mul_5ns_8ns_12_1_1_U11", "Parent" : "43"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_clear_message_table_fu_733", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "clear_message_table",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1977", "EstimateLatencyMax" : "1977",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "message_tb", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_clear_message_table_one_node_fu_38", "Port" : "message_tb"}]}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_clear_message_table_fu_733.grp_clear_message_table_one_node_fu_38", "Parent" : "45", "Child" : ["47"],
		"CDFG" : "clear_message_table_one_node",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "message_tb", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "message_tb_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_clear_message_table_fu_733.grp_clear_message_table_one_node_fu_38.mul_5ns_8ns_12_1_1_U11", "Parent" : "46"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_global_graph_prediction_fu_739", "Parent" : "0",
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
		degree_table {Type IO LastRead -1 FirstWrite -1}
		neighbor_table {Type IO LastRead -1 FirstWrite -1}
		message1_V {Type IO LastRead -1 FirstWrite -1}
		message2_V {Type IO LastRead -1 FirstWrite -1}
		node_embedding_V {Type IO LastRead -1 FirstWrite -1}
		graph_embedding_V {Type O LastRead -1 FirstWrite -1}}
	compute_CONV_layer {
		layer {Type I LastRead 0 FirstWrite -1}
		message2_V {Type IO LastRead 6 FirstWrite -1}
		node_embedding_V {Type IO LastRead 1 FirstWrite -1}
		message1_V {Type IO LastRead 6 FirstWrite -1}
		degree_table {Type I LastRead 1 FirstWrite -1}
		neighbor_table {Type I LastRead 2 FirstWrite -1}}
	MLP_wrapper {
		mlp_in_read {Type I LastRead 0 FirstWrite -1}
		mlp_in12_read {Type I LastRead 0 FirstWrite -1}
		mlp_in2_read {Type I LastRead 0 FirstWrite -1}
		mlp_in3_read {Type I LastRead 0 FirstWrite -1}
		mlp_in4_read {Type I LastRead 0 FirstWrite -1}
		mlp_in5_read {Type I LastRead 0 FirstWrite -1}
		mlp_in6_read {Type I LastRead 0 FirstWrite -1}
		mlp_in7_read {Type I LastRead 0 FirstWrite -1}
		mlp_in8_read {Type I LastRead 0 FirstWrite -1}
		mlp_in9_read {Type I LastRead 0 FirstWrite -1}
		mlp_in10_read {Type I LastRead 0 FirstWrite -1}
		mlp_in11_read {Type I LastRead 0 FirstWrite -1}
		mlp_in1214_read {Type I LastRead 0 FirstWrite -1}
		mlp_in13_read {Type I LastRead 0 FirstWrite -1}
		mlp_in14_read {Type I LastRead 0 FirstWrite -1}
		mlp_in15_read {Type I LastRead 0 FirstWrite -1}
		mlp_in16_read {Type I LastRead 0 FirstWrite -1}
		mlp_in17_read {Type I LastRead 0 FirstWrite -1}
		mlp_in18_read {Type I LastRead 0 FirstWrite -1}
		mlp_in19_read {Type I LastRead 0 FirstWrite -1}
		mlp_in20_read {Type I LastRead 0 FirstWrite -1}
		mlp_in21_read {Type I LastRead 0 FirstWrite -1}
		mlp_in22_read {Type I LastRead 0 FirstWrite -1}
		mlp_in23_read {Type I LastRead 0 FirstWrite -1}
		mlp_in2427_read {Type I LastRead 0 FirstWrite -1}
		mlp_in25_read {Type I LastRead 0 FirstWrite -1}
		mlp_in26_read {Type I LastRead 0 FirstWrite -1}
		mlp_in27_read {Type I LastRead 0 FirstWrite -1}
		mlp_in28_read {Type I LastRead 0 FirstWrite -1}
		mlp_in29_read {Type I LastRead 0 FirstWrite -1}
		mlp_in30_read {Type I LastRead 0 FirstWrite -1}
		mlp_in31_read {Type I LastRead 0 FirstWrite -1}
		mlp_in32_read {Type I LastRead 0 FirstWrite -1}
		mlp_in33_read {Type I LastRead 0 FirstWrite -1}
		mlp_in34_read {Type I LastRead 0 FirstWrite -1}
		mlp_in3539_read {Type I LastRead 0 FirstWrite -1}
		mlp_in36_read {Type I LastRead 0 FirstWrite -1}
		mlp_in37_read {Type I LastRead 0 FirstWrite -1}
		mlp_in38_read {Type I LastRead 0 FirstWrite -1}
		mlp_in39_read {Type I LastRead 0 FirstWrite -1}
		mlp_in40_read {Type I LastRead 0 FirstWrite -1}
		mlp_in41_read {Type I LastRead 0 FirstWrite -1}
		mlp_in42_read {Type I LastRead 0 FirstWrite -1}
		mlp_in43_read {Type I LastRead 0 FirstWrite -1}
		mlp_in44_read {Type I LastRead 0 FirstWrite -1}
		mlp_in45_read {Type I LastRead 0 FirstWrite -1}
		mlp_in4651_read {Type I LastRead 0 FirstWrite -1}
		mlp_in47_read {Type I LastRead 0 FirstWrite -1}
		mlp_in48_read {Type I LastRead 0 FirstWrite -1}
		mlp_in49_read {Type I LastRead 0 FirstWrite -1}
		mlp_in50_read {Type I LastRead 0 FirstWrite -1}
		mlp_in51_read {Type I LastRead 0 FirstWrite -1}
		mlp_in52_read {Type I LastRead 0 FirstWrite -1}
		mlp_in53_read {Type I LastRead 0 FirstWrite -1}
		mlp_in54_read {Type I LastRead 0 FirstWrite -1}
		mlp_in55_read {Type I LastRead 0 FirstWrite -1}
		mlp_in56_read {Type I LastRead 0 FirstWrite -1}
		mlp_in5763_read {Type I LastRead 0 FirstWrite -1}
		mlp_in58_read {Type I LastRead 0 FirstWrite -1}
		mlp_in59_read {Type I LastRead 0 FirstWrite -1}
		mlp_in60_read {Type I LastRead 0 FirstWrite -1}
		mlp_in61_read {Type I LastRead 0 FirstWrite -1}
		mlp_in62_read {Type I LastRead 0 FirstWrite -1}
		mlp_in63_read {Type I LastRead 0 FirstWrite -1}
		mlp_in64_read {Type I LastRead 0 FirstWrite -1}
		mlp_in65_read {Type I LastRead 0 FirstWrite -1}
		mlp_in66_read {Type I LastRead 0 FirstWrite -1}
		mlp_in67_read {Type I LastRead 0 FirstWrite -1}
		mlp_in6875_read {Type I LastRead 0 FirstWrite -1}
		mlp_in69_read {Type I LastRead 0 FirstWrite -1}
		mlp_in70_read {Type I LastRead 0 FirstWrite -1}
		mlp_in71_read {Type I LastRead 0 FirstWrite -1}
		mlp_in72_read {Type I LastRead 0 FirstWrite -1}
		mlp_in73_read {Type I LastRead 0 FirstWrite -1}
		mlp_in74_read {Type I LastRead 0 FirstWrite -1}
		mlp_in75_read {Type I LastRead 0 FirstWrite -1}
		mlp_in76_read {Type I LastRead 0 FirstWrite -1}
		mlp_in77_read {Type I LastRead 0 FirstWrite -1}
		mlp_in78_read {Type I LastRead 0 FirstWrite -1}
		mlp_in7987_read {Type I LastRead 0 FirstWrite -1}
		mlp_in80_read {Type I LastRead 0 FirstWrite -1}
		mlp_in81_read {Type I LastRead 0 FirstWrite -1}
		mlp_in82_read {Type I LastRead 0 FirstWrite -1}
		mlp_in83_read {Type I LastRead 0 FirstWrite -1}
		mlp_in84_read {Type I LastRead 0 FirstWrite -1}
		mlp_in85_read {Type I LastRead 0 FirstWrite -1}
		mlp_in86_read {Type I LastRead 0 FirstWrite -1}
		mlp_in87_read {Type I LastRead 0 FirstWrite -1}
		mlp_in88_read {Type I LastRead 0 FirstWrite -1}
		mlp_in89_read {Type I LastRead 0 FirstWrite -1}
		mlp_in90_read {Type I LastRead 0 FirstWrite -1}
		mlp_in91_read {Type I LastRead 0 FirstWrite -1}
		mlp_in92_read {Type I LastRead 0 FirstWrite -1}
		mlp_in93_read {Type I LastRead 0 FirstWrite -1}
		mlp_in94_read {Type I LastRead 0 FirstWrite -1}
		mlp_in95_read {Type I LastRead 0 FirstWrite -1}
		mlp_in96_read {Type I LastRead 0 FirstWrite -1}
		mlp_in97_read {Type I LastRead 0 FirstWrite -1}
		mlp_in98_read {Type I LastRead 0 FirstWrite -1}
		mlp_in99_read {Type I LastRead 0 FirstWrite -1}
		mlp_out_read {Type I LastRead 0 FirstWrite -1}
		mlp_out100_read {Type I LastRead 0 FirstWrite -1}
		mlp_out101_read {Type I LastRead 0 FirstWrite -1}
		mlp_out102_read {Type I LastRead 0 FirstWrite -1}
		mlp_out103_read {Type I LastRead 0 FirstWrite -1}
		mlp_out104_read {Type I LastRead 0 FirstWrite -1}
		mlp_out105_read {Type I LastRead 0 FirstWrite -1}
		mlp_out106_read {Type I LastRead 0 FirstWrite -1}
		mlp_out107_read {Type I LastRead 0 FirstWrite -1}
		mlp_out108_read {Type I LastRead 0 FirstWrite -1}
		mlp_out109_read {Type I LastRead 0 FirstWrite -1}
		mlp_out110_read {Type I LastRead 0 FirstWrite -1}
		mlp_out111_read {Type I LastRead 0 FirstWrite -1}
		mlp_out112_read {Type I LastRead 0 FirstWrite -1}
		mlp_out113_read {Type I LastRead 0 FirstWrite -1}
		mlp_out114_read {Type I LastRead 0 FirstWrite -1}
		mlp_out115_read {Type I LastRead 0 FirstWrite -1}
		mlp_out116_read {Type I LastRead 0 FirstWrite -1}
		mlp_out117_read {Type I LastRead 0 FirstWrite -1}
		mlp_out118_read {Type I LastRead 0 FirstWrite -1}
		mlp_out119_read {Type I LastRead 0 FirstWrite -1}
		mlp_out120_read {Type I LastRead 0 FirstWrite -1}
		mlp_out121_read {Type I LastRead 0 FirstWrite -1}
		mlp_out122_read {Type I LastRead 0 FirstWrite -1}
		mlp_out123_read {Type I LastRead 0 FirstWrite -1}
		mlp_out124_read {Type I LastRead 0 FirstWrite -1}
		mlp_out125_read {Type I LastRead 0 FirstWrite -1}
		mlp_out126_read {Type I LastRead 0 FirstWrite -1}
		mlp_out127_read {Type I LastRead 0 FirstWrite -1}
		mlp_out128_read {Type I LastRead 0 FirstWrite -1}
		mlp_out129_read {Type I LastRead 0 FirstWrite -1}
		mlp_out130_read {Type I LastRead 0 FirstWrite -1}
		mlp_out131_read {Type I LastRead 0 FirstWrite -1}
		mlp_out132_read {Type I LastRead 0 FirstWrite -1}
		mlp_out133_read {Type I LastRead 0 FirstWrite -1}
		mlp_out134_read {Type I LastRead 0 FirstWrite -1}
		mlp_out135_read {Type I LastRead 0 FirstWrite -1}
		mlp_out136_read {Type I LastRead 0 FirstWrite -1}
		mlp_out137_read {Type I LastRead 0 FirstWrite -1}
		mlp_out138_read {Type I LastRead 0 FirstWrite -1}
		mlp_out139_read {Type I LastRead 0 FirstWrite -1}
		mlp_out140_read {Type I LastRead 0 FirstWrite -1}
		mlp_out141_read {Type I LastRead 0 FirstWrite -1}
		mlp_out142_read {Type I LastRead 0 FirstWrite -1}
		mlp_out143_read {Type I LastRead 0 FirstWrite -1}
		mlp_out144_read {Type I LastRead 0 FirstWrite -1}
		mlp_out145_read {Type I LastRead 0 FirstWrite -1}
		mlp_out146_read {Type I LastRead 0 FirstWrite -1}
		mlp_out147_read {Type I LastRead 0 FirstWrite -1}
		mlp_out148_read {Type I LastRead 0 FirstWrite -1}
		mlp_out149_read {Type I LastRead 0 FirstWrite -1}
		mlp_out150_read {Type I LastRead 0 FirstWrite -1}
		mlp_out151_read {Type I LastRead 0 FirstWrite -1}
		mlp_out152_read {Type I LastRead 0 FirstWrite -1}
		mlp_out153_read {Type I LastRead 0 FirstWrite -1}
		mlp_out154_read {Type I LastRead 0 FirstWrite -1}
		mlp_out155_read {Type I LastRead 0 FirstWrite -1}
		mlp_out156_read {Type I LastRead 0 FirstWrite -1}
		mlp_out157_read {Type I LastRead 0 FirstWrite -1}
		mlp_out158_read {Type I LastRead 0 FirstWrite -1}
		mlp_out159_read {Type I LastRead 0 FirstWrite -1}
		mlp_out160_read {Type I LastRead 0 FirstWrite -1}
		mlp_out161_read {Type I LastRead 0 FirstWrite -1}
		mlp_out162_read {Type I LastRead 0 FirstWrite -1}
		mlp_out163_read {Type I LastRead 0 FirstWrite -1}
		mlp_out164_read {Type I LastRead 0 FirstWrite -1}
		mlp_out165_read {Type I LastRead 0 FirstWrite -1}
		mlp_out166_read {Type I LastRead 0 FirstWrite -1}
		mlp_out167_read {Type I LastRead 0 FirstWrite -1}
		mlp_out168_read {Type I LastRead 0 FirstWrite -1}
		mlp_out169_read {Type I LastRead 0 FirstWrite -1}
		mlp_out170_read {Type I LastRead 0 FirstWrite -1}
		mlp_out171_read {Type I LastRead 0 FirstWrite -1}
		mlp_out172_read {Type I LastRead 0 FirstWrite -1}
		mlp_out173_read {Type I LastRead 0 FirstWrite -1}
		mlp_out174_read {Type I LastRead 0 FirstWrite -1}
		mlp_out175_read {Type I LastRead 0 FirstWrite -1}
		mlp_out176_read {Type I LastRead 0 FirstWrite -1}
		mlp_out177_read {Type I LastRead 0 FirstWrite -1}
		mlp_out178_read {Type I LastRead 0 FirstWrite -1}
		mlp_out179_read {Type I LastRead 0 FirstWrite -1}
		mlp_out180_read {Type I LastRead 0 FirstWrite -1}
		mlp_out181_read {Type I LastRead 0 FirstWrite -1}
		mlp_out182_read {Type I LastRead 0 FirstWrite -1}
		mlp_out183_read {Type I LastRead 0 FirstWrite -1}
		mlp_out184_read {Type I LastRead 0 FirstWrite -1}
		mlp_out185_read {Type I LastRead 0 FirstWrite -1}
		mlp_out186_read {Type I LastRead 0 FirstWrite -1}
		mlp_out187_read {Type I LastRead 0 FirstWrite -1}
		mlp_out188_read {Type I LastRead 0 FirstWrite -1}
		mlp_out189_read {Type I LastRead 0 FirstWrite -1}
		mlp_out190_read {Type I LastRead 0 FirstWrite -1}
		mlp_out191_read {Type I LastRead 0 FirstWrite -1}
		mlp_out192_read {Type I LastRead 0 FirstWrite -1}
		mlp_out193_read {Type I LastRead 0 FirstWrite -1}
		mlp_out194_read {Type I LastRead 0 FirstWrite -1}
		mlp_out195_read {Type I LastRead 0 FirstWrite -1}
		mlp_out196_read {Type I LastRead 0 FirstWrite -1}
		mlp_out197_read {Type I LastRead 0 FirstWrite -1}
		mlp_out198_read {Type I LastRead 0 FirstWrite -1}
		nd {Type I LastRead 0 FirstWrite -1}
		emb_vec {Type O LastRead -1 FirstWrite 1}
		message_tb {Type I LastRead 1 FirstWrite -1}
		layer {Type I LastRead 2 FirstWrite -1}
		node_embedding_V {Type IO LastRead 1 FirstWrite -1}}
	prepare_mlp_in {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		p_read52 {Type I LastRead 0 FirstWrite -1}
		p_read53 {Type I LastRead 0 FirstWrite -1}
		p_read54 {Type I LastRead 0 FirstWrite -1}
		p_read55 {Type I LastRead 0 FirstWrite -1}
		p_read56 {Type I LastRead 0 FirstWrite -1}
		p_read57 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read59 {Type I LastRead 0 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}
		p_read62 {Type I LastRead 0 FirstWrite -1}
		p_read63 {Type I LastRead 0 FirstWrite -1}
		p_read64 {Type I LastRead 0 FirstWrite -1}
		p_read65 {Type I LastRead 0 FirstWrite -1}
		p_read66 {Type I LastRead 0 FirstWrite -1}
		p_read67 {Type I LastRead 0 FirstWrite -1}
		p_read68 {Type I LastRead 0 FirstWrite -1}
		p_read69 {Type I LastRead 0 FirstWrite -1}
		p_read70 {Type I LastRead 0 FirstWrite -1}
		p_read71 {Type I LastRead 0 FirstWrite -1}
		p_read72 {Type I LastRead 0 FirstWrite -1}
		p_read73 {Type I LastRead 0 FirstWrite -1}
		p_read74 {Type I LastRead 0 FirstWrite -1}
		p_read75 {Type I LastRead 0 FirstWrite -1}
		p_read76 {Type I LastRead 0 FirstWrite -1}
		p_read77 {Type I LastRead 0 FirstWrite -1}
		p_read78 {Type I LastRead 0 FirstWrite -1}
		p_read79 {Type I LastRead 0 FirstWrite -1}
		p_read80 {Type I LastRead 0 FirstWrite -1}
		p_read81 {Type I LastRead 0 FirstWrite -1}
		p_read82 {Type I LastRead 0 FirstWrite -1}
		p_read83 {Type I LastRead 0 FirstWrite -1}
		p_read84 {Type I LastRead 0 FirstWrite -1}
		p_read85 {Type I LastRead 0 FirstWrite -1}
		p_read86 {Type I LastRead 0 FirstWrite -1}
		p_read87 {Type I LastRead 0 FirstWrite -1}
		p_read88 {Type I LastRead 0 FirstWrite -1}
		p_read89 {Type I LastRead 0 FirstWrite -1}
		p_read90 {Type I LastRead 0 FirstWrite -1}
		p_read91 {Type I LastRead 0 FirstWrite -1}
		p_read92 {Type I LastRead 0 FirstWrite -1}
		p_read93 {Type I LastRead 0 FirstWrite -1}
		p_read94 {Type I LastRead 0 FirstWrite -1}
		p_read95 {Type I LastRead 0 FirstWrite -1}
		p_read96 {Type I LastRead 0 FirstWrite -1}
		p_read97 {Type I LastRead 0 FirstWrite -1}
		p_read98 {Type I LastRead 0 FirstWrite -1}
		p_read99 {Type I LastRead 0 FirstWrite -1}
		nd {Type I LastRead 0 FirstWrite -1}
		message_tb {Type I LastRead 1 FirstWrite -1}
		node_embedding_V {Type I LastRead 1 FirstWrite -1}}
	prepare_mlp_out {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		p_read52 {Type I LastRead 0 FirstWrite -1}
		p_read53 {Type I LastRead 0 FirstWrite -1}
		p_read54 {Type I LastRead 0 FirstWrite -1}
		p_read55 {Type I LastRead 0 FirstWrite -1}
		p_read56 {Type I LastRead 0 FirstWrite -1}
		p_read57 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read59 {Type I LastRead 0 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}
		p_read62 {Type I LastRead 0 FirstWrite -1}
		p_read63 {Type I LastRead 0 FirstWrite -1}
		p_read64 {Type I LastRead 0 FirstWrite -1}
		p_read65 {Type I LastRead 0 FirstWrite -1}
		p_read66 {Type I LastRead 0 FirstWrite -1}
		p_read67 {Type I LastRead 0 FirstWrite -1}
		p_read68 {Type I LastRead 0 FirstWrite -1}
		p_read69 {Type I LastRead 0 FirstWrite -1}
		p_read70 {Type I LastRead 0 FirstWrite -1}
		p_read71 {Type I LastRead 0 FirstWrite -1}
		p_read72 {Type I LastRead 0 FirstWrite -1}
		p_read73 {Type I LastRead 0 FirstWrite -1}
		p_read74 {Type I LastRead 0 FirstWrite -1}
		p_read75 {Type I LastRead 0 FirstWrite -1}
		p_read76 {Type I LastRead 0 FirstWrite -1}
		p_read77 {Type I LastRead 0 FirstWrite -1}
		p_read78 {Type I LastRead 0 FirstWrite -1}
		p_read79 {Type I LastRead 0 FirstWrite -1}
		p_read80 {Type I LastRead 0 FirstWrite -1}
		p_read81 {Type I LastRead 0 FirstWrite -1}
		p_read82 {Type I LastRead 0 FirstWrite -1}
		p_read83 {Type I LastRead 0 FirstWrite -1}
		p_read84 {Type I LastRead 0 FirstWrite -1}
		p_read85 {Type I LastRead 0 FirstWrite -1}
		p_read86 {Type I LastRead 0 FirstWrite -1}
		p_read87 {Type I LastRead 0 FirstWrite -1}
		p_read88 {Type I LastRead 0 FirstWrite -1}
		p_read89 {Type I LastRead 0 FirstWrite -1}
		p_read90 {Type I LastRead 0 FirstWrite -1}
		p_read91 {Type I LastRead 0 FirstWrite -1}
		p_read92 {Type I LastRead 0 FirstWrite -1}
		p_read93 {Type I LastRead 0 FirstWrite -1}
		p_read94 {Type I LastRead 0 FirstWrite -1}
		p_read95 {Type I LastRead 0 FirstWrite -1}
		p_read96 {Type I LastRead 0 FirstWrite -1}
		p_read97 {Type I LastRead 0 FirstWrite -1}
		p_read98 {Type I LastRead 0 FirstWrite -1}
		p_read99 {Type I LastRead 0 FirstWrite -1}}
	update_node_embedding_with_Relu {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		p_read52 {Type I LastRead 0 FirstWrite -1}
		p_read53 {Type I LastRead 0 FirstWrite -1}
		p_read54 {Type I LastRead 0 FirstWrite -1}
		p_read55 {Type I LastRead 0 FirstWrite -1}
		p_read56 {Type I LastRead 0 FirstWrite -1}
		p_read57 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read59 {Type I LastRead 0 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}
		p_read62 {Type I LastRead 0 FirstWrite -1}
		p_read63 {Type I LastRead 0 FirstWrite -1}
		p_read64 {Type I LastRead 0 FirstWrite -1}
		p_read65 {Type I LastRead 0 FirstWrite -1}
		p_read66 {Type I LastRead 0 FirstWrite -1}
		p_read67 {Type I LastRead 0 FirstWrite -1}
		p_read68 {Type I LastRead 0 FirstWrite -1}
		p_read69 {Type I LastRead 0 FirstWrite -1}
		p_read70 {Type I LastRead 0 FirstWrite -1}
		p_read71 {Type I LastRead 0 FirstWrite -1}
		p_read72 {Type I LastRead 0 FirstWrite -1}
		p_read73 {Type I LastRead 0 FirstWrite -1}
		p_read74 {Type I LastRead 0 FirstWrite -1}
		p_read75 {Type I LastRead 0 FirstWrite -1}
		p_read76 {Type I LastRead 0 FirstWrite -1}
		p_read77 {Type I LastRead 0 FirstWrite -1}
		p_read78 {Type I LastRead 0 FirstWrite -1}
		p_read79 {Type I LastRead 0 FirstWrite -1}
		p_read80 {Type I LastRead 0 FirstWrite -1}
		p_read81 {Type I LastRead 0 FirstWrite -1}
		p_read82 {Type I LastRead 0 FirstWrite -1}
		p_read83 {Type I LastRead 0 FirstWrite -1}
		p_read84 {Type I LastRead 0 FirstWrite -1}
		p_read85 {Type I LastRead 0 FirstWrite -1}
		p_read86 {Type I LastRead 0 FirstWrite -1}
		p_read87 {Type I LastRead 0 FirstWrite -1}
		p_read88 {Type I LastRead 0 FirstWrite -1}
		p_read89 {Type I LastRead 0 FirstWrite -1}
		p_read90 {Type I LastRead 0 FirstWrite -1}
		p_read91 {Type I LastRead 0 FirstWrite -1}
		p_read92 {Type I LastRead 0 FirstWrite -1}
		p_read93 {Type I LastRead 0 FirstWrite -1}
		p_read94 {Type I LastRead 0 FirstWrite -1}
		p_read95 {Type I LastRead 0 FirstWrite -1}
		p_read96 {Type I LastRead 0 FirstWrite -1}
		p_read97 {Type I LastRead 0 FirstWrite -1}
		p_read98 {Type I LastRead 0 FirstWrite -1}
		p_read99 {Type I LastRead 0 FirstWrite -1}
		emb_vec {Type O LastRead -1 FirstWrite 1}
		nd {Type I LastRead 0 FirstWrite -1}
		layer {Type I LastRead 0 FirstWrite -1}
		node_embedding_V {Type O LastRead -1 FirstWrite 1}}
	message_passing_one_node_vec {
		emb_vec {Type I LastRead 6 FirstWrite -1}
		nd_offset {Type I LastRead 0 FirstWrite -1}
		message_tb {Type IO LastRead 6 FirstWrite 7}
		degree_table {Type I LastRead 1 FirstWrite -1}
		neighbor_table {Type I LastRead 2 FirstWrite -1}}
	clear_message_table {
		message_tb {Type O LastRead -1 FirstWrite 1}}
	clear_message_table_one_node {
		message_tb {Type O LastRead -1 FirstWrite 1}
		message_tb_offset {Type I LastRead 0 FirstWrite -1}}
	global_mean_pooling {
		node_embedding_V {Type I LastRead 11 FirstWrite -1}
		graph_embedding_V {Type O LastRead -1 FirstWrite -1}}
	prepare_degree_neighbor_table {
		degree_table {Type IO LastRead 9 FirstWrite 1}
		edge_list {Type I LastRead 8 FirstWrite -1}
		neighbor_table {Type O LastRead -1 FirstWrite 9}}
	compute_node_embedding {
		node_embedding_V {Type O LastRead -1 FirstWrite 1}
		degree_table {Type I LastRead 1 FirstWrite -1}
		neighbor_table {Type I LastRead 2 FirstWrite -1}
		message1_V {Type IO LastRead 6 FirstWrite 7}}
	message_passing_one_node_vec {
		emb_vec {Type I LastRead 6 FirstWrite -1}
		nd_offset {Type I LastRead 0 FirstWrite -1}
		message_tb {Type IO LastRead 6 FirstWrite 7}
		degree_table {Type I LastRead 1 FirstWrite -1}
		neighbor_table {Type I LastRead 2 FirstWrite -1}}
	one_node_embedding {
		nd {Type I LastRead 0 FirstWrite -1}
		emb_vec {Type O LastRead -1 FirstWrite 1}
		node_embedding_V {Type O LastRead -1 FirstWrite 1}}
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
	clear_message_table {
		message_tb {Type O LastRead -1 FirstWrite 1}}
	clear_message_table_one_node {
		message_tb {Type O LastRead -1 FirstWrite 1}
		message_tb_offset {Type I LastRead 0 FirstWrite -1}}
	clear_message_table {
		message_tb {Type O LastRead -1 FirstWrite 1}}
	clear_message_table_one_node {
		message_tb {Type O LastRead -1 FirstWrite 1}
		message_tb_offset {Type I LastRead 0 FirstWrite -1}}
	global_graph_prediction {
		mem {Type O LastRead 2 FirstWrite 1}
		d_out {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16015", "Max" : "71245"}
	, {"Name" : "Interval", "Min" : "16016", "Max" : "71246"}
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
