set VIVADO_HLS_INC  "/tools/software/xilinx/Vitis_HLS/2021.2/include"

open_project -reset PNA_HLS_proj
# open_project PNA_HLS_proj

add_files main.cc
add_files dcl.h
add_files load_weights_graph.cc
add_files PNA_compute.cc
# add_files pna_conv_bias_dim80.bin
# add_files pna_conv_weights_dim80.bin
# add_files pna_ep1_nd_embed_dim80.bin
# add_files pna_ep1_noBN_dim80.weights.all.bin


add_files -tb main.cc
add_files -tb dcl.h
add_files -tb load_weights_graph.cc
add_files -tb PNA_compute.cc
add_files -tb pna_conv_bias_dim80.bin
add_files -tb pna_conv_weights_dim80.bin
add_files -tb pna_ep1_nd_embed_dim80.bin
add_files -tb pna_ep1_noBN_dim80.weights.all.bin
add_files -tb g1_edge_attr.bin
add_files -tb g1_edge_list.bin
add_files -tb g1_node_feature.bin
add_files -tb g1_info.txt


set_top PNA_compute_one_graph

open_solution "solution1" -flow_target vitis
set_part {xcu50-fsvh2104-2-e}
create_clock -period 300MHz -name default

csynth_design
cosim_design -O -trace_level all -tool xsim
