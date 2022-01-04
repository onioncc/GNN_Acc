# This script segment is generated automatically by AutoPilot

set name GAT_compute_one_graph_sdiv_46ns_28s_28_50_seq_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {sdiv} IMPL {auto_seq} LATENCY 49 ALLOW_PRAGMA 1
}


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
    id 1992 \
    name out_nodes_features_skip_concat_bias_V_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_skip_concat_bias_V_0 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_0_address0 { O 8 vector } out_nodes_features_skip_concat_bias_V_0_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_0_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1993 \
    name out_nodes_features_skip_concat_bias_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_skip_concat_bias_V_1 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_1_address0 { O 8 vector } out_nodes_features_skip_concat_bias_V_1_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_1_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1994 \
    name out_nodes_features_skip_concat_bias_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_skip_concat_bias_V_2 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_2_address0 { O 8 vector } out_nodes_features_skip_concat_bias_V_2_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_2_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1995 \
    name out_nodes_features_skip_concat_bias_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_skip_concat_bias_V_3 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_3_address0 { O 8 vector } out_nodes_features_skip_concat_bias_V_3_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_3_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1996 \
    name out_nodes_features_skip_concat_bias_V_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_skip_concat_bias_V_4 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_4_address0 { O 8 vector } out_nodes_features_skip_concat_bias_V_4_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_4_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1997 \
    name out_nodes_features_skip_concat_bias_V_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_skip_concat_bias_V_5 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_5_address0 { O 8 vector } out_nodes_features_skip_concat_bias_V_5_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_5_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1998 \
    name out_nodes_features_skip_concat_bias_V_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_skip_concat_bias_V_6 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_6_address0 { O 8 vector } out_nodes_features_skip_concat_bias_V_6_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_6_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1999 \
    name out_nodes_features_skip_concat_bias_V_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_skip_concat_bias_V_7 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_7_address0 { O 8 vector } out_nodes_features_skip_concat_bias_V_7_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_7_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2000 \
    name out_nodes_features_skip_concat_bias_V_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_skip_concat_bias_V_8 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_8_address0 { O 8 vector } out_nodes_features_skip_concat_bias_V_8_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_8_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2001 \
    name out_nodes_features_skip_concat_bias_V_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_skip_concat_bias_V_9 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_9_address0 { O 8 vector } out_nodes_features_skip_concat_bias_V_9_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_9_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2002 \
    name out_nodes_features_skip_concat_bias_V_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_skip_concat_bias_V_10 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_10_address0 { O 8 vector } out_nodes_features_skip_concat_bias_V_10_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_10_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2003 \
    name out_nodes_features_skip_concat_bias_V_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_skip_concat_bias_V_11 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_11_address0 { O 8 vector } out_nodes_features_skip_concat_bias_V_11_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_11_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2004 \
    name out_nodes_features_skip_concat_bias_V_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_skip_concat_bias_V_12 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_12_address0 { O 8 vector } out_nodes_features_skip_concat_bias_V_12_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_12_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2005 \
    name out_nodes_features_skip_concat_bias_V_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_skip_concat_bias_V_13 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_13_address0 { O 8 vector } out_nodes_features_skip_concat_bias_V_13_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_13_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2006 \
    name out_nodes_features_skip_concat_bias_V_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_skip_concat_bias_V_14 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_14_address0 { O 8 vector } out_nodes_features_skip_concat_bias_V_14_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_14_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2007 \
    name out_nodes_features_skip_concat_bias_V_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_skip_concat_bias_V_15 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_15_address0 { O 8 vector } out_nodes_features_skip_concat_bias_V_15_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_15_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2008 \
    name h_graph_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename h_graph_V \
    op interface \
    ports { h_graph_V_address1 { O 8 vector } h_graph_V_ce1 { O 1 bit } h_graph_V_we1 { O 1 bit } h_graph_V_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'h_graph_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1991 \
    name num_of_nodes \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_num_of_nodes \
    op interface \
    ports { num_of_nodes { I 32 vector } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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


