# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
weights { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
data_in { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
data_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
}
dict set axilite_register_dict control $port_control


