set srcDir [pwd]
cd /usr/scratch/rsarkar30/vitis_hls_workspace
open_project DGN_HLS_Cosim
set_top DGN_compute_one_graph
add_files $srcDir/DGN_compute.cc
add_files $srcDir/dcl.h
add_files -tb $srcDir/dgn_ep1_noBN_dim100.weights.all.bin
add_files -tb $srcDir/load_weights_graph.cc
add_files -tb $srcDir/main.cc
add_files -tb $srcDir/gtest_edge_list.bin
add_files -tb $srcDir/gtest_node_feature.bin
add_files -tb $srcDir/gtest_info.txt
add_files -tb $srcDir/eig_gtest.txt

open_solution "solution1" -flow_target vitis
set_part {xcu50-fsvh2104-2-e}
create_clock -period 300MHz -name default
csynth_design
cosim_design -trace_level all
exit
