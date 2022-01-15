open_project project_1
set_top GAT_compute_one_graph

add_files GAT_compute.cpp
add_files dcl.hpp
add_files -tb g1_edge_attr.bin
add_files -tb g1_edge_list.bin
add_files -tb g1_info.txt
add_files -tb g1_node_feature.bin
add_files -tb g2_edge_attr.bin
add_files -tb g2_edge_list.bin
add_files -tb g2_info.txt
add_files -tb g2_node_feature.bin
#add_files -tb g3_edge_attr.bin
#add_files -tb g3_edge_list.bin
#add_files -tb g3_info.txt
#add_files -tb g3_node_feature.bin
add_files -tb gat_ep1_linear_proj_weight_0_layer5.bin
add_files -tb gat_ep1_linear_proj_weight_1_layer5.bin
add_files -tb gat_ep1_pred_bias_layer5.bin
add_files -tb gat_ep1_pred_weights_layer5.bin
add_files -tb gat_ep1_scoring_fn_source_layer5.bin
add_files -tb gat_ep1_scoring_fn_target_layer5.bin
add_files -tb gat_ep1_skip_proj_weight_0_layer5.bin
add_files -tb gat_ep1_skip_proj_weight_1_layer5.bin
add_files -tb load_weights_graph.cpp
add_files -tb main.cpp

open_solution "solution1" -flow_target vivado
set_part {xcu280-fsvh2892-2L-e}
create_clock -period 4ns -name default
csynth_design
#cosim_design -trace_level all
exit

