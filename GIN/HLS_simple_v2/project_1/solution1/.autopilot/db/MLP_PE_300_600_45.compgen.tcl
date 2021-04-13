# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 103 \
    name mlp_in_local3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mlp_in_local3 \
    op interface \
    ports { mlp_in_local3_address0 { O 9 vector } mlp_in_local3_ce0 { O 1 bit } mlp_in_local3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mlp_in_local3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 104 \
    name mlp_out_local18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename mlp_out_local18 \
    op interface \
    ports { mlp_out_local18_address0 { O 10 vector } mlp_out_local18_ce0 { O 1 bit } mlp_out_local18_we0 { O 1 bit } mlp_out_local18_d0 { O 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mlp_out_local18'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name mlp_weight_fifo_3_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_weight_fifo_3_V_V \
    op interface \
    ports { mlp_weight_fifo_3_V_V_dout { I 32 vector } mlp_weight_fifo_3_V_V_empty_n { I 1 bit } mlp_weight_fifo_3_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name mlp_weight_fifo_4_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_weight_fifo_4_V_V \
    op interface \
    ports { mlp_weight_fifo_4_V_V_din { O 32 vector } mlp_weight_fifo_4_V_V_full_n { I 1 bit } mlp_weight_fifo_4_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name mlp_1_bias_V_load_loc \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_1_bias_V_load_loc \
    op interface \
    ports { mlp_1_bias_V_load_loc_dout { I 32 vector } mlp_1_bias_V_load_loc_empty_n { I 1 bit } mlp_1_bias_V_load_loc_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name d_out \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_out \
    op interface \
    ports { d_out_dout { I 10 vector } d_out_empty_n { I 1 bit } d_out_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name mlp_1_bias_V_load_loc_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_1_bias_V_load_loc_out \
    op interface \
    ports { mlp_1_bias_V_load_loc_out_din { O 32 vector } mlp_1_bias_V_load_loc_out_full_n { I 1 bit } mlp_1_bias_V_load_loc_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name d_out_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_out_out \
    op interface \
    ports { d_out_out_din { O 10 vector } d_out_out_full_n { I 1 bit } d_out_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


