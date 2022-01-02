open_project project_2
set_top DGN_compute_one_graph
add_files DGN_compute.cc
add_files dcl.h
add_files -tb dgn_conv_bias_dim100.bin
add_files -tb dgn_conv_weights_dim100.bin
add_files -tb dgn_ep1_nd_embed_dim100.bin
add_files -tb dgn_ep1_noBN_dim100.weights.all.bin
add_files -tb load_weights_graph.cc
add_files -tb main.cc
add_files -tb gtest_edge_attr.bin
add_files -tb gtest_edge_list.bin
add_files -tb gtest_node_feature.bin
add_files -tb gtest_info.txt
add_files -tb eig_gtest.txt

open_solution "solution1" -flow_target vivado
set_part {xcu50-fsvh2104-2-e}
create_clock -period 4ns -name default
csynth_design
cosim_design -trace_level all
exit
