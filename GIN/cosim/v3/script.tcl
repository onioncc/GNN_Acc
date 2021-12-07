open_project project_1
set_top GIN_compute_one_graph
add_files GIN_compute.cpp
add_files dcl.hpp
add_files -tb g1_edge_attr.bin
add_files -tb g1_edge_list.bin
add_files -tb g1_info.txt
add_files -tb g1_node_feature.bin
add_files -tb g2_edge_attr.bin
add_files -tb g2_edge_list.bin
add_files -tb g2_info.txt
add_files -tb g2_node_feature.bin
add_files -tb g3_edge_attr.bin
add_files -tb g3_edge_list.bin
add_files -tb g3_info.txt
add_files -tb g3_node_feature.bin
add_files -tb gin_ep1_ed_embed_dim100.bin
add_files -tb gin_ep1_eps_dim100.bin
add_files -tb gin_ep1_mlp_1_bias_dim100.bin
add_files -tb gin_ep1_mlp_1_weights_dim100.bin
add_files -tb gin_ep1_mlp_2_bias_dim100.bin
add_files -tb gin_ep1_mlp_2_weights_dim100.bin
add_files -tb gin_ep1_nd_embed_dim100.bin
add_files -tb gin_ep1_pred_bias_dim100.bin
add_files -tb gin_ep1_pred_weights_dim100.bin
add_files -tb load_weights_graph.cpp
add_files -tb main.cpp
open_solution "solution1" -flow_target vivado
set_part {xcu280-fsvh2892-2L-e}
create_clock -period 10ns -name default
source "./project_1/solution1/directives.tcl"
#csynth_design
cosim_design -trace_level all
exit