open_project project_1
set_top GIN_compute_one_graph
#set_top MLP

add_files GIN_compute.cpp
add_files main.cpp

open_solution "solution1" -flow_target vitis
#set_part {xczu3eg-sbva484-1-e}
set_part {xcu280-fsvh2892-2L-e}
#create_clock -period 4 -name default
csynth_design
#export_design -evaluate verilog -format ip_catalog
#export_design -format ip_catalog
exit
