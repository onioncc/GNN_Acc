# Cosim Guide

Understand the example file structure under GIN/cosim/v4
1. Copy .bin and .txt files from graph dataset to current folder.
2. Copy script.tcl
	add files -tb: add files to testbench
	create_clock: create a 10ns clock (change this value if you want)
	csynth_design: c synthesis
	cosim_design: cosim
3. main.cpp: DO NOT use malloc (dynamic allocated array). Use a static array instead.
4. load_weights_graph.cpp: since main.cpp uses static arrays, fetch_one_graph will also need to be changed.
5. GIN_compute.cpp: comment out HLS INTERFACE for weights and biases (this will drastically decrease cosim time)	
6. After cosim completes, refer [here page 167](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2020_1/ug871-vivado-high-level-synthesis-tutorial.pdf) for next steps. 

