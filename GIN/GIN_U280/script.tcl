open_project project_1
set_top GIN_compute_one_graph

add_files GIN_compute.cc
add_files main.cc

open_solution "solution1"
#set_part {xczu3eg-sbva484-1-e}
set_part {xcu280-fsvh2892-2L-e}
#create_clock -period 4 -name default
csynth_design
export_design -evaluate verilog -format ip_catalog
#export_design -format ip_catalog
exit
