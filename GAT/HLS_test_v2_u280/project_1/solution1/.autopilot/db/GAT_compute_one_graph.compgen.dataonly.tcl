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
graph_attr { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
task_tb { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
graph_pred_linear_weight_fixed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
graph_pred_linear_bias_fixed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
gat_net_scoring_fn_target_fixed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
gat_net_scoring_fn_source_fixed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
gat_net_linear_proj_weight_fixed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
gat_net_skip_proj_weight_fixed { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
}
ap_start {
	mailbox_input_ctrl 0
	mailbox_output_ctrl 0
	auto_restart_enabled 1
	auto_restart_counter_num 0
	auto_restart_counter_offset 16
	auto_restart_counter_size 32
}
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict control $port_control


