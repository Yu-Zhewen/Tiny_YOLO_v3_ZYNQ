# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL_BUS {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
input_h_V { 
	dir I
	width 6
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
input_w_V { 
	dir I
	width 6
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
}
dict set axilite_register_dict CTRL_BUS $port_CTRL_BUS


