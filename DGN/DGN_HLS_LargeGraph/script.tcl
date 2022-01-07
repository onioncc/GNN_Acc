set srcDir [pwd]
cd ~/VitisHLS
open_project DGN_HLS_LargeGraph
set_top DGN_compute_one_graph
add_files $srcDir/DGN_compute.cc
add_files $srcDir/dcl.h
add_files -tb $srcDir/dgn_conv_bias_dim100.bin
add_files -tb $srcDir/dgn_conv_weights_dim100.bin
add_files -tb $srcDir/dgn_ep1_nd_embed_dim100.bin
add_files -tb $srcDir/dgn_ep1_noBN_dim100.weights.all.bin
add_files -tb $srcDir/load_weights_graph.cc
add_files -tb $srcDir/main.cc

open_solution "solution1" -flow_target vivado
set_part {xcu50-fsvh2104-2-e}
create_clock -period 4ns -name default
csynth_design
exit
