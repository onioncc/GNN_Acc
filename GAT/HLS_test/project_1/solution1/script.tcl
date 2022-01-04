############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project project_1
set_top GAT_compute_one_graph
add_files GAT_compute.cc
add_files dcl.h
add_files -tb main.cc -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 4 -name default
source "./project_1/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
