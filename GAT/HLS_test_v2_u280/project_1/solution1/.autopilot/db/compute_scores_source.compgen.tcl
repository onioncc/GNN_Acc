# This script segment is generated automatically by AutoPilot

set id 995
set name GAT_compute_one_graph_mac_muladd_3ns_7ns_5ns_9_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 3
set in0_signed 0
set in1_width 7
set in1_signed 0
set in2_width 5
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 9
set arg_lists {i0 {3 0 +} i1 {7 0 +} m {9 1 +} i2 {5 0 +} p {9 0 +} c_reg {1} rnd {0} acc {0} }
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
    id 998 \
    name scores_source_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename scores_source_V \
    op interface \
    ports { scores_source_V_address1 { O 9 vector } scores_source_V_ce1 { O 1 bit } scores_source_V_we1 { O 1 bit } scores_source_V_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_source_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 999 \
    name scoring_fn_source_V_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_source_V_0 \
    op interface \
    ports { scoring_fn_source_V_0_address0 { O 5 vector } scoring_fn_source_V_0_ce0 { O 1 bit } scoring_fn_source_V_0_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_source_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1000 \
    name scoring_fn_source_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_source_V_1 \
    op interface \
    ports { scoring_fn_source_V_1_address0 { O 5 vector } scoring_fn_source_V_1_ce0 { O 1 bit } scoring_fn_source_V_1_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_source_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1001 \
    name scoring_fn_source_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_source_V_2 \
    op interface \
    ports { scoring_fn_source_V_2_address0 { O 5 vector } scoring_fn_source_V_2_ce0 { O 1 bit } scoring_fn_source_V_2_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_source_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1002 \
    name scoring_fn_source_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_source_V_3 \
    op interface \
    ports { scoring_fn_source_V_3_address0 { O 5 vector } scoring_fn_source_V_3_ce0 { O 1 bit } scoring_fn_source_V_3_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_source_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1003 \
    name scoring_fn_source_V_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_source_V_4 \
    op interface \
    ports { scoring_fn_source_V_4_address0 { O 5 vector } scoring_fn_source_V_4_ce0 { O 1 bit } scoring_fn_source_V_4_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_source_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1004 \
    name scoring_fn_source_V_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_source_V_5 \
    op interface \
    ports { scoring_fn_source_V_5_address0 { O 5 vector } scoring_fn_source_V_5_ce0 { O 1 bit } scoring_fn_source_V_5_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_source_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1005 \
    name scoring_fn_source_V_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_source_V_6 \
    op interface \
    ports { scoring_fn_source_V_6_address0 { O 5 vector } scoring_fn_source_V_6_ce0 { O 1 bit } scoring_fn_source_V_6_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_source_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1006 \
    name scoring_fn_source_V_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_source_V_7 \
    op interface \
    ports { scoring_fn_source_V_7_address0 { O 5 vector } scoring_fn_source_V_7_ce0 { O 1 bit } scoring_fn_source_V_7_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_source_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1007 \
    name scoring_fn_source_V_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_source_V_8 \
    op interface \
    ports { scoring_fn_source_V_8_address0 { O 5 vector } scoring_fn_source_V_8_ce0 { O 1 bit } scoring_fn_source_V_8_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_source_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1008 \
    name scoring_fn_source_V_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_source_V_9 \
    op interface \
    ports { scoring_fn_source_V_9_address0 { O 5 vector } scoring_fn_source_V_9_ce0 { O 1 bit } scoring_fn_source_V_9_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_source_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1009 \
    name scoring_fn_source_V_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_source_V_10 \
    op interface \
    ports { scoring_fn_source_V_10_address0 { O 5 vector } scoring_fn_source_V_10_ce0 { O 1 bit } scoring_fn_source_V_10_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_source_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1010 \
    name scoring_fn_source_V_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_source_V_11 \
    op interface \
    ports { scoring_fn_source_V_11_address0 { O 5 vector } scoring_fn_source_V_11_ce0 { O 1 bit } scoring_fn_source_V_11_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_source_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1011 \
    name scoring_fn_source_V_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_source_V_12 \
    op interface \
    ports { scoring_fn_source_V_12_address0 { O 5 vector } scoring_fn_source_V_12_ce0 { O 1 bit } scoring_fn_source_V_12_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_source_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1012 \
    name scoring_fn_source_V_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_source_V_13 \
    op interface \
    ports { scoring_fn_source_V_13_address0 { O 5 vector } scoring_fn_source_V_13_ce0 { O 1 bit } scoring_fn_source_V_13_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_source_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1013 \
    name scoring_fn_source_V_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_source_V_14 \
    op interface \
    ports { scoring_fn_source_V_14_address0 { O 5 vector } scoring_fn_source_V_14_ce0 { O 1 bit } scoring_fn_source_V_14_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_source_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1014 \
    name scoring_fn_source_V_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_source_V_15 \
    op interface \
    ports { scoring_fn_source_V_15_address0 { O 5 vector } scoring_fn_source_V_15_ce0 { O 1 bit } scoring_fn_source_V_15_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_source_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1015 \
    name nodes_features_proj_V_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_15 \
    op interface \
    ports { nodes_features_proj_V_15_address0 { O 7 vector } nodes_features_proj_V_15_ce0 { O 1 bit } nodes_features_proj_V_15_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1016 \
    name nodes_features_proj_V_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_31 \
    op interface \
    ports { nodes_features_proj_V_31_address0 { O 7 vector } nodes_features_proj_V_31_ce0 { O 1 bit } nodes_features_proj_V_31_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1017 \
    name nodes_features_proj_V_47 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_47 \
    op interface \
    ports { nodes_features_proj_V_47_address0 { O 7 vector } nodes_features_proj_V_47_ce0 { O 1 bit } nodes_features_proj_V_47_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1018 \
    name nodes_features_proj_V_63 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_63 \
    op interface \
    ports { nodes_features_proj_V_63_address0 { O 7 vector } nodes_features_proj_V_63_ce0 { O 1 bit } nodes_features_proj_V_63_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_63'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1019 \
    name nodes_features_proj_V_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_14 \
    op interface \
    ports { nodes_features_proj_V_14_address0 { O 7 vector } nodes_features_proj_V_14_ce0 { O 1 bit } nodes_features_proj_V_14_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1020 \
    name nodes_features_proj_V_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_30 \
    op interface \
    ports { nodes_features_proj_V_30_address0 { O 7 vector } nodes_features_proj_V_30_ce0 { O 1 bit } nodes_features_proj_V_30_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1021 \
    name nodes_features_proj_V_46 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_46 \
    op interface \
    ports { nodes_features_proj_V_46_address0 { O 7 vector } nodes_features_proj_V_46_ce0 { O 1 bit } nodes_features_proj_V_46_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1022 \
    name nodes_features_proj_V_62 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_62 \
    op interface \
    ports { nodes_features_proj_V_62_address0 { O 7 vector } nodes_features_proj_V_62_ce0 { O 1 bit } nodes_features_proj_V_62_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1023 \
    name nodes_features_proj_V_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_13 \
    op interface \
    ports { nodes_features_proj_V_13_address0 { O 7 vector } nodes_features_proj_V_13_ce0 { O 1 bit } nodes_features_proj_V_13_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1024 \
    name nodes_features_proj_V_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_29 \
    op interface \
    ports { nodes_features_proj_V_29_address0 { O 7 vector } nodes_features_proj_V_29_ce0 { O 1 bit } nodes_features_proj_V_29_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1025 \
    name nodes_features_proj_V_45 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_45 \
    op interface \
    ports { nodes_features_proj_V_45_address0 { O 7 vector } nodes_features_proj_V_45_ce0 { O 1 bit } nodes_features_proj_V_45_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1026 \
    name nodes_features_proj_V_61 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_61 \
    op interface \
    ports { nodes_features_proj_V_61_address0 { O 7 vector } nodes_features_proj_V_61_ce0 { O 1 bit } nodes_features_proj_V_61_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1027 \
    name nodes_features_proj_V_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_12 \
    op interface \
    ports { nodes_features_proj_V_12_address0 { O 7 vector } nodes_features_proj_V_12_ce0 { O 1 bit } nodes_features_proj_V_12_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1028 \
    name nodes_features_proj_V_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_28 \
    op interface \
    ports { nodes_features_proj_V_28_address0 { O 7 vector } nodes_features_proj_V_28_ce0 { O 1 bit } nodes_features_proj_V_28_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1029 \
    name nodes_features_proj_V_44 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_44 \
    op interface \
    ports { nodes_features_proj_V_44_address0 { O 7 vector } nodes_features_proj_V_44_ce0 { O 1 bit } nodes_features_proj_V_44_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1030 \
    name nodes_features_proj_V_60 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_60 \
    op interface \
    ports { nodes_features_proj_V_60_address0 { O 7 vector } nodes_features_proj_V_60_ce0 { O 1 bit } nodes_features_proj_V_60_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1031 \
    name nodes_features_proj_V_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_11 \
    op interface \
    ports { nodes_features_proj_V_11_address0 { O 7 vector } nodes_features_proj_V_11_ce0 { O 1 bit } nodes_features_proj_V_11_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1032 \
    name nodes_features_proj_V_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_27 \
    op interface \
    ports { nodes_features_proj_V_27_address0 { O 7 vector } nodes_features_proj_V_27_ce0 { O 1 bit } nodes_features_proj_V_27_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1033 \
    name nodes_features_proj_V_43 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_43 \
    op interface \
    ports { nodes_features_proj_V_43_address0 { O 7 vector } nodes_features_proj_V_43_ce0 { O 1 bit } nodes_features_proj_V_43_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1034 \
    name nodes_features_proj_V_59 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_59 \
    op interface \
    ports { nodes_features_proj_V_59_address0 { O 7 vector } nodes_features_proj_V_59_ce0 { O 1 bit } nodes_features_proj_V_59_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1035 \
    name nodes_features_proj_V_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_10 \
    op interface \
    ports { nodes_features_proj_V_10_address0 { O 7 vector } nodes_features_proj_V_10_ce0 { O 1 bit } nodes_features_proj_V_10_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1036 \
    name nodes_features_proj_V_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_26 \
    op interface \
    ports { nodes_features_proj_V_26_address0 { O 7 vector } nodes_features_proj_V_26_ce0 { O 1 bit } nodes_features_proj_V_26_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1037 \
    name nodes_features_proj_V_42 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_42 \
    op interface \
    ports { nodes_features_proj_V_42_address0 { O 7 vector } nodes_features_proj_V_42_ce0 { O 1 bit } nodes_features_proj_V_42_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1038 \
    name nodes_features_proj_V_58 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_58 \
    op interface \
    ports { nodes_features_proj_V_58_address0 { O 7 vector } nodes_features_proj_V_58_ce0 { O 1 bit } nodes_features_proj_V_58_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1039 \
    name nodes_features_proj_V_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_9 \
    op interface \
    ports { nodes_features_proj_V_9_address0 { O 7 vector } nodes_features_proj_V_9_ce0 { O 1 bit } nodes_features_proj_V_9_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1040 \
    name nodes_features_proj_V_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_25 \
    op interface \
    ports { nodes_features_proj_V_25_address0 { O 7 vector } nodes_features_proj_V_25_ce0 { O 1 bit } nodes_features_proj_V_25_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1041 \
    name nodes_features_proj_V_41 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_41 \
    op interface \
    ports { nodes_features_proj_V_41_address0 { O 7 vector } nodes_features_proj_V_41_ce0 { O 1 bit } nodes_features_proj_V_41_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1042 \
    name nodes_features_proj_V_57 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_57 \
    op interface \
    ports { nodes_features_proj_V_57_address0 { O 7 vector } nodes_features_proj_V_57_ce0 { O 1 bit } nodes_features_proj_V_57_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1043 \
    name nodes_features_proj_V_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_8 \
    op interface \
    ports { nodes_features_proj_V_8_address0 { O 7 vector } nodes_features_proj_V_8_ce0 { O 1 bit } nodes_features_proj_V_8_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1044 \
    name nodes_features_proj_V_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_24 \
    op interface \
    ports { nodes_features_proj_V_24_address0 { O 7 vector } nodes_features_proj_V_24_ce0 { O 1 bit } nodes_features_proj_V_24_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1045 \
    name nodes_features_proj_V_40 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_40 \
    op interface \
    ports { nodes_features_proj_V_40_address0 { O 7 vector } nodes_features_proj_V_40_ce0 { O 1 bit } nodes_features_proj_V_40_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1046 \
    name nodes_features_proj_V_56 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_56 \
    op interface \
    ports { nodes_features_proj_V_56_address0 { O 7 vector } nodes_features_proj_V_56_ce0 { O 1 bit } nodes_features_proj_V_56_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1047 \
    name nodes_features_proj_V_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_7 \
    op interface \
    ports { nodes_features_proj_V_7_address0 { O 7 vector } nodes_features_proj_V_7_ce0 { O 1 bit } nodes_features_proj_V_7_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1048 \
    name nodes_features_proj_V_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_23 \
    op interface \
    ports { nodes_features_proj_V_23_address0 { O 7 vector } nodes_features_proj_V_23_ce0 { O 1 bit } nodes_features_proj_V_23_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1049 \
    name nodes_features_proj_V_39 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_39 \
    op interface \
    ports { nodes_features_proj_V_39_address0 { O 7 vector } nodes_features_proj_V_39_ce0 { O 1 bit } nodes_features_proj_V_39_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1050 \
    name nodes_features_proj_V_55 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_55 \
    op interface \
    ports { nodes_features_proj_V_55_address0 { O 7 vector } nodes_features_proj_V_55_ce0 { O 1 bit } nodes_features_proj_V_55_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1051 \
    name nodes_features_proj_V_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_6 \
    op interface \
    ports { nodes_features_proj_V_6_address0 { O 7 vector } nodes_features_proj_V_6_ce0 { O 1 bit } nodes_features_proj_V_6_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1052 \
    name nodes_features_proj_V_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_22 \
    op interface \
    ports { nodes_features_proj_V_22_address0 { O 7 vector } nodes_features_proj_V_22_ce0 { O 1 bit } nodes_features_proj_V_22_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1053 \
    name nodes_features_proj_V_38 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_38 \
    op interface \
    ports { nodes_features_proj_V_38_address0 { O 7 vector } nodes_features_proj_V_38_ce0 { O 1 bit } nodes_features_proj_V_38_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1054 \
    name nodes_features_proj_V_54 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_54 \
    op interface \
    ports { nodes_features_proj_V_54_address0 { O 7 vector } nodes_features_proj_V_54_ce0 { O 1 bit } nodes_features_proj_V_54_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1055 \
    name nodes_features_proj_V_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_5 \
    op interface \
    ports { nodes_features_proj_V_5_address0 { O 7 vector } nodes_features_proj_V_5_ce0 { O 1 bit } nodes_features_proj_V_5_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1056 \
    name nodes_features_proj_V_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_21 \
    op interface \
    ports { nodes_features_proj_V_21_address0 { O 7 vector } nodes_features_proj_V_21_ce0 { O 1 bit } nodes_features_proj_V_21_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1057 \
    name nodes_features_proj_V_37 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_37 \
    op interface \
    ports { nodes_features_proj_V_37_address0 { O 7 vector } nodes_features_proj_V_37_ce0 { O 1 bit } nodes_features_proj_V_37_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1058 \
    name nodes_features_proj_V_53 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_53 \
    op interface \
    ports { nodes_features_proj_V_53_address0 { O 7 vector } nodes_features_proj_V_53_ce0 { O 1 bit } nodes_features_proj_V_53_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1059 \
    name nodes_features_proj_V_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_4 \
    op interface \
    ports { nodes_features_proj_V_4_address0 { O 7 vector } nodes_features_proj_V_4_ce0 { O 1 bit } nodes_features_proj_V_4_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1060 \
    name nodes_features_proj_V_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_20 \
    op interface \
    ports { nodes_features_proj_V_20_address0 { O 7 vector } nodes_features_proj_V_20_ce0 { O 1 bit } nodes_features_proj_V_20_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1061 \
    name nodes_features_proj_V_36 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_36 \
    op interface \
    ports { nodes_features_proj_V_36_address0 { O 7 vector } nodes_features_proj_V_36_ce0 { O 1 bit } nodes_features_proj_V_36_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1062 \
    name nodes_features_proj_V_52 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_52 \
    op interface \
    ports { nodes_features_proj_V_52_address0 { O 7 vector } nodes_features_proj_V_52_ce0 { O 1 bit } nodes_features_proj_V_52_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1063 \
    name nodes_features_proj_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_3 \
    op interface \
    ports { nodes_features_proj_V_3_address0 { O 7 vector } nodes_features_proj_V_3_ce0 { O 1 bit } nodes_features_proj_V_3_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1064 \
    name nodes_features_proj_V_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_19 \
    op interface \
    ports { nodes_features_proj_V_19_address0 { O 7 vector } nodes_features_proj_V_19_ce0 { O 1 bit } nodes_features_proj_V_19_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1065 \
    name nodes_features_proj_V_35 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_35 \
    op interface \
    ports { nodes_features_proj_V_35_address0 { O 7 vector } nodes_features_proj_V_35_ce0 { O 1 bit } nodes_features_proj_V_35_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1066 \
    name nodes_features_proj_V_51 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_51 \
    op interface \
    ports { nodes_features_proj_V_51_address0 { O 7 vector } nodes_features_proj_V_51_ce0 { O 1 bit } nodes_features_proj_V_51_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1067 \
    name nodes_features_proj_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_2 \
    op interface \
    ports { nodes_features_proj_V_2_address0 { O 7 vector } nodes_features_proj_V_2_ce0 { O 1 bit } nodes_features_proj_V_2_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1068 \
    name nodes_features_proj_V_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_18 \
    op interface \
    ports { nodes_features_proj_V_18_address0 { O 7 vector } nodes_features_proj_V_18_ce0 { O 1 bit } nodes_features_proj_V_18_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1069 \
    name nodes_features_proj_V_34 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_34 \
    op interface \
    ports { nodes_features_proj_V_34_address0 { O 7 vector } nodes_features_proj_V_34_ce0 { O 1 bit } nodes_features_proj_V_34_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1070 \
    name nodes_features_proj_V_50 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_50 \
    op interface \
    ports { nodes_features_proj_V_50_address0 { O 7 vector } nodes_features_proj_V_50_ce0 { O 1 bit } nodes_features_proj_V_50_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1071 \
    name nodes_features_proj_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_1 \
    op interface \
    ports { nodes_features_proj_V_1_address0 { O 7 vector } nodes_features_proj_V_1_ce0 { O 1 bit } nodes_features_proj_V_1_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1072 \
    name nodes_features_proj_V_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_17 \
    op interface \
    ports { nodes_features_proj_V_17_address0 { O 7 vector } nodes_features_proj_V_17_ce0 { O 1 bit } nodes_features_proj_V_17_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1073 \
    name nodes_features_proj_V_33 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_33 \
    op interface \
    ports { nodes_features_proj_V_33_address0 { O 7 vector } nodes_features_proj_V_33_ce0 { O 1 bit } nodes_features_proj_V_33_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1074 \
    name nodes_features_proj_V_49 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_49 \
    op interface \
    ports { nodes_features_proj_V_49_address0 { O 7 vector } nodes_features_proj_V_49_ce0 { O 1 bit } nodes_features_proj_V_49_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1075 \
    name nodes_features_proj_V_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_0 \
    op interface \
    ports { nodes_features_proj_V_0_address0 { O 7 vector } nodes_features_proj_V_0_ce0 { O 1 bit } nodes_features_proj_V_0_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1076 \
    name nodes_features_proj_V_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_16 \
    op interface \
    ports { nodes_features_proj_V_16_address0 { O 7 vector } nodes_features_proj_V_16_ce0 { O 1 bit } nodes_features_proj_V_16_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1077 \
    name nodes_features_proj_V_32 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_32 \
    op interface \
    ports { nodes_features_proj_V_32_address0 { O 7 vector } nodes_features_proj_V_32_ce0 { O 1 bit } nodes_features_proj_V_32_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1078 \
    name nodes_features_proj_V_48 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_48 \
    op interface \
    ports { nodes_features_proj_V_48_address0 { O 7 vector } nodes_features_proj_V_48_ce0 { O 1 bit } nodes_features_proj_V_48_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_48'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 997 \
    name layer \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_layer \
    op interface \
    ports { layer { I 3 vector } } \
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


