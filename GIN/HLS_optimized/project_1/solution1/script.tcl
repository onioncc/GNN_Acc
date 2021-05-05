############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project project_1
set_top GIN_compute_one_graph
add_files main.cpp
add_files GIN_compute.cpp
open_solution "solution1" -flow_target vivado
set_part {xcu280-fsvh2892-2L-e}
create_clock -period 10ns -name default
source "./project_1/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
