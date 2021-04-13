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
    id 460 \
    name mlp_in_local13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename mlp_in_local13 \
    op interface \
    ports { mlp_in_local13_address0 { O 10 vector } mlp_in_local13_ce0 { O 1 bit } mlp_in_local13_q0 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mlp_in_local13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 461 \
    name mlp_out_local28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename mlp_out_local28 \
    op interface \
    ports { mlp_out_local28_address0 { O 9 vector } mlp_out_local28_ce0 { O 1 bit } mlp_out_local28_we0 { O 1 bit } mlp_out_local28_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mlp_out_local28'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name mlp_weight_fifo_13_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_weight_fifo_13_V_V \
    op interface \
    ports { mlp_weight_fifo_13_V_V_dout { I 32 vector } mlp_weight_fifo_13_V_V_empty_n { I 1 bit } mlp_weight_fifo_13_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name mlp_weight_fifo_14_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_weight_fifo_14_V_V \
    op interface \
    ports { mlp_weight_fifo_14_V_V_din { O 32 vector } mlp_weight_fifo_14_V_V_full_n { I 1 bit } mlp_weight_fifo_14_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name mlp_2_bias_V_load_loc \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_2_bias_V_load_loc \
    op interface \
    ports { mlp_2_bias_V_load_loc_dout { I 32 vector } mlp_2_bias_V_load_loc_empty_n { I 1 bit } mlp_2_bias_V_load_loc_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name d_out \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_d_out \
    op interface \
    ports { d_out_dout { I 9 vector } d_out_empty_n { I 1 bit } d_out_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name do_relu \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_do_relu \
    op interface \
    ports { do_relu_dout { I 1 vector } do_relu_empty_n { I 1 bit } do_relu_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name mlp_2_bias_V_load_loc_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_2_bias_V_load_loc_out \
    op interface \
    ports { mlp_2_bias_V_load_loc_out_din { O 32 vector } mlp_2_bias_V_load_loc_out_full_n { I 1 bit } mlp_2_bias_V_load_loc_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name d_out_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_d_out_out \
    op interface \
    ports { d_out_out_din { O 9 vector } d_out_out_full_n { I 1 bit } d_out_out_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name do_relu_out \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_do_relu_out \
    op interface \
    ports { do_relu_out_din { O 1 vector } do_relu_out_full_n { I 1 bit } do_relu_out_write { O 1 bit } } \
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


