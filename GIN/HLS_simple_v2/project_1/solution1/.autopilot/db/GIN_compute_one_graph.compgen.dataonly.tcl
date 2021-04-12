# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
node_feature_in { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
edge_list_in { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
edge_attr_in { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
graph_attr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
task_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
gnn_node_mlp_1_weights_fixed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
gnn_node_mlp_1_bias_fixed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
gnn_node_mlp_2_weights_fixed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
gnn_node_mlp_2_bias_fixed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
gnn_node_embedding_fixed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
}
gnn_edge_embedding_fixed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 136
	offset_end 147
}
graph_pred_linear_weight_fixed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 148
	offset_end 159
}
graph_pred_linear_bias_fixed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 160
	offset_end 171
}
eps_fixed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 172
	offset_end 183
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict control $port_control


