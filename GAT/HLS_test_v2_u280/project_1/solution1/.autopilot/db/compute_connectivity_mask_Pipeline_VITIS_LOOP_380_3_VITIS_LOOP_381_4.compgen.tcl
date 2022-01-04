# This script segment is generated automatically by AutoPilot

set id 678
set name GAT_compute_one_graph_mac_muladd_5ns_7ns_5ns_12_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 5
set in0_signed 0
set in1_width 7
set in1_signed 0
set in2_width 5
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 12
set arg_lists {i0 {5 0 +} i1 {7 0 +} m {12 1 +} i2 {5 0 +} p {12 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {add} IMPL {dsp} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
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
    id 680 \
    name connectivity_mask_final_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_0 \
    op interface \
    ports { connectivity_mask_final_0_address1 { O 7 vector } connectivity_mask_final_0_ce1 { O 1 bit } connectivity_mask_final_0_we1 { O 1 bit } connectivity_mask_final_0_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 681 \
    name connectivity_mask \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask \
    op interface \
    ports { connectivity_mask_address0 { O 14 vector } connectivity_mask_ce0 { O 1 bit } connectivity_mask_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 682 \
    name connectivity_mask_final_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_1 \
    op interface \
    ports { connectivity_mask_final_1_address1 { O 7 vector } connectivity_mask_final_1_ce1 { O 1 bit } connectivity_mask_final_1_we1 { O 1 bit } connectivity_mask_final_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 683 \
    name connectivity_mask_final_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_2 \
    op interface \
    ports { connectivity_mask_final_2_address1 { O 7 vector } connectivity_mask_final_2_ce1 { O 1 bit } connectivity_mask_final_2_we1 { O 1 bit } connectivity_mask_final_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 684 \
    name connectivity_mask_final_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_3 \
    op interface \
    ports { connectivity_mask_final_3_address1 { O 7 vector } connectivity_mask_final_3_ce1 { O 1 bit } connectivity_mask_final_3_we1 { O 1 bit } connectivity_mask_final_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 685 \
    name connectivity_mask_final_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_4 \
    op interface \
    ports { connectivity_mask_final_4_address1 { O 7 vector } connectivity_mask_final_4_ce1 { O 1 bit } connectivity_mask_final_4_we1 { O 1 bit } connectivity_mask_final_4_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 686 \
    name connectivity_mask_final_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_5 \
    op interface \
    ports { connectivity_mask_final_5_address1 { O 7 vector } connectivity_mask_final_5_ce1 { O 1 bit } connectivity_mask_final_5_we1 { O 1 bit } connectivity_mask_final_5_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 687 \
    name connectivity_mask_final_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_6 \
    op interface \
    ports { connectivity_mask_final_6_address1 { O 7 vector } connectivity_mask_final_6_ce1 { O 1 bit } connectivity_mask_final_6_we1 { O 1 bit } connectivity_mask_final_6_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 688 \
    name connectivity_mask_final_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_7 \
    op interface \
    ports { connectivity_mask_final_7_address1 { O 7 vector } connectivity_mask_final_7_ce1 { O 1 bit } connectivity_mask_final_7_we1 { O 1 bit } connectivity_mask_final_7_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 689 \
    name connectivity_mask_final_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_8 \
    op interface \
    ports { connectivity_mask_final_8_address1 { O 7 vector } connectivity_mask_final_8_ce1 { O 1 bit } connectivity_mask_final_8_we1 { O 1 bit } connectivity_mask_final_8_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 690 \
    name connectivity_mask_final_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_9 \
    op interface \
    ports { connectivity_mask_final_9_address1 { O 7 vector } connectivity_mask_final_9_ce1 { O 1 bit } connectivity_mask_final_9_we1 { O 1 bit } connectivity_mask_final_9_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 691 \
    name connectivity_mask_final_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_10 \
    op interface \
    ports { connectivity_mask_final_10_address1 { O 7 vector } connectivity_mask_final_10_ce1 { O 1 bit } connectivity_mask_final_10_we1 { O 1 bit } connectivity_mask_final_10_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 692 \
    name connectivity_mask_final_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_11 \
    op interface \
    ports { connectivity_mask_final_11_address1 { O 7 vector } connectivity_mask_final_11_ce1 { O 1 bit } connectivity_mask_final_11_we1 { O 1 bit } connectivity_mask_final_11_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 693 \
    name connectivity_mask_final_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_12 \
    op interface \
    ports { connectivity_mask_final_12_address1 { O 7 vector } connectivity_mask_final_12_ce1 { O 1 bit } connectivity_mask_final_12_we1 { O 1 bit } connectivity_mask_final_12_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 694 \
    name connectivity_mask_final_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_13 \
    op interface \
    ports { connectivity_mask_final_13_address1 { O 7 vector } connectivity_mask_final_13_ce1 { O 1 bit } connectivity_mask_final_13_we1 { O 1 bit } connectivity_mask_final_13_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 695 \
    name connectivity_mask_final_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_14 \
    op interface \
    ports { connectivity_mask_final_14_address1 { O 7 vector } connectivity_mask_final_14_ce1 { O 1 bit } connectivity_mask_final_14_we1 { O 1 bit } connectivity_mask_final_14_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 696 \
    name connectivity_mask_final_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_15 \
    op interface \
    ports { connectivity_mask_final_15_address1 { O 7 vector } connectivity_mask_final_15_ce1 { O 1 bit } connectivity_mask_final_15_we1 { O 1 bit } connectivity_mask_final_15_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 697 \
    name connectivity_mask_final_16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_16 \
    op interface \
    ports { connectivity_mask_final_16_address1 { O 7 vector } connectivity_mask_final_16_ce1 { O 1 bit } connectivity_mask_final_16_we1 { O 1 bit } connectivity_mask_final_16_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 698 \
    name connectivity_mask_final_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_17 \
    op interface \
    ports { connectivity_mask_final_17_address1 { O 7 vector } connectivity_mask_final_17_ce1 { O 1 bit } connectivity_mask_final_17_we1 { O 1 bit } connectivity_mask_final_17_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 699 \
    name connectivity_mask_final_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename connectivity_mask_final_18 \
    op interface \
    ports { connectivity_mask_final_18_address1 { O 7 vector } connectivity_mask_final_18_ce1 { O 1 bit } connectivity_mask_final_18_we1 { O 1 bit } connectivity_mask_final_18_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_18'"
}
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


# flow_control definition:
set InstName GAT_compute_one_graph_flow_control_loop_pipe_sequential_init_U
set CompName GAT_compute_one_graph_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix GAT_compute_one_graph_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


