open_project project_1
set_top GCN_compute_one_graph

add_files GCN_compute.cpp
add_files main.cpp

open_solution "solution1"
#set_part {xczu3eg-sbva484-1-e}
set_part {xcu280-fsvh2892-2L-e}
#create_clock -period 4 -name default
csynth_design
exit

