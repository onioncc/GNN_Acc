# This script segment is generated automatically by AutoPilot

set id 2008
set name GAT_compute_one_graph_mul_mul_28s_16ns_45_4_1
set corename simcore_mul
set op mul
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 28
set in0_signed 1
set in1_width 16
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 45
set arg_lists {i0 {28 1 +} i1 {16 0 +} p {45 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {dsp} LATENCY 3 ALLOW_PRAGMA 1
}


set op mul
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
    id 2028 \
    name scores_target_V_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_0 \
    op interface \
    ports { scores_target_V_0_address0 { O 2 vector } scores_target_V_0_ce0 { O 1 bit } scores_target_V_0_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2029 \
    name scores_target_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_1 \
    op interface \
    ports { scores_target_V_1_address0 { O 2 vector } scores_target_V_1_ce0 { O 1 bit } scores_target_V_1_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2030 \
    name scores_target_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_2 \
    op interface \
    ports { scores_target_V_2_address0 { O 2 vector } scores_target_V_2_ce0 { O 1 bit } scores_target_V_2_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2031 \
    name scores_target_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_3 \
    op interface \
    ports { scores_target_V_3_address0 { O 2 vector } scores_target_V_3_ce0 { O 1 bit } scores_target_V_3_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2032 \
    name scores_target_V_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_4 \
    op interface \
    ports { scores_target_V_4_address0 { O 2 vector } scores_target_V_4_ce0 { O 1 bit } scores_target_V_4_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2033 \
    name scores_target_V_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_5 \
    op interface \
    ports { scores_target_V_5_address0 { O 2 vector } scores_target_V_5_ce0 { O 1 bit } scores_target_V_5_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2034 \
    name scores_target_V_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_6 \
    op interface \
    ports { scores_target_V_6_address0 { O 2 vector } scores_target_V_6_ce0 { O 1 bit } scores_target_V_6_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2035 \
    name scores_target_V_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_7 \
    op interface \
    ports { scores_target_V_7_address0 { O 2 vector } scores_target_V_7_ce0 { O 1 bit } scores_target_V_7_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2036 \
    name scores_target_V_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_8 \
    op interface \
    ports { scores_target_V_8_address0 { O 2 vector } scores_target_V_8_ce0 { O 1 bit } scores_target_V_8_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2037 \
    name scores_target_V_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_9 \
    op interface \
    ports { scores_target_V_9_address0 { O 2 vector } scores_target_V_9_ce0 { O 1 bit } scores_target_V_9_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2038 \
    name scores_target_V_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_10 \
    op interface \
    ports { scores_target_V_10_address0 { O 2 vector } scores_target_V_10_ce0 { O 1 bit } scores_target_V_10_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2039 \
    name scores_target_V_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_11 \
    op interface \
    ports { scores_target_V_11_address0 { O 2 vector } scores_target_V_11_ce0 { O 1 bit } scores_target_V_11_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2040 \
    name scores_target_V_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_12 \
    op interface \
    ports { scores_target_V_12_address0 { O 2 vector } scores_target_V_12_ce0 { O 1 bit } scores_target_V_12_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2041 \
    name scores_target_V_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_13 \
    op interface \
    ports { scores_target_V_13_address0 { O 2 vector } scores_target_V_13_ce0 { O 1 bit } scores_target_V_13_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2042 \
    name scores_target_V_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_14 \
    op interface \
    ports { scores_target_V_14_address0 { O 2 vector } scores_target_V_14_ce0 { O 1 bit } scores_target_V_14_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2043 \
    name scores_target_V_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_15 \
    op interface \
    ports { scores_target_V_15_address0 { O 2 vector } scores_target_V_15_ce0 { O 1 bit } scores_target_V_15_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2044 \
    name scores_target_V_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_16 \
    op interface \
    ports { scores_target_V_16_address0 { O 2 vector } scores_target_V_16_ce0 { O 1 bit } scores_target_V_16_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2045 \
    name scores_target_V_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_17 \
    op interface \
    ports { scores_target_V_17_address0 { O 2 vector } scores_target_V_17_ce0 { O 1 bit } scores_target_V_17_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2046 \
    name scores_target_V_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_target_V_18 \
    op interface \
    ports { scores_target_V_18_address0 { O 2 vector } scores_target_V_18_ce0 { O 1 bit } scores_target_V_18_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_target_V_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2047 \
    name scores_source_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scores_source_V \
    op interface \
    ports { scores_source_V_address0 { O 9 vector } scores_source_V_ce0 { O 1 bit } scores_source_V_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_source_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2048 \
    name all_scores_V_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_0 \
    op interface \
    ports { all_scores_V_0_address1 { O 9 vector } all_scores_V_0_ce1 { O 1 bit } all_scores_V_0_we1 { O 1 bit } all_scores_V_0_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2049 \
    name all_scores_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_1 \
    op interface \
    ports { all_scores_V_1_address1 { O 9 vector } all_scores_V_1_ce1 { O 1 bit } all_scores_V_1_we1 { O 1 bit } all_scores_V_1_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2050 \
    name all_scores_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_2 \
    op interface \
    ports { all_scores_V_2_address1 { O 9 vector } all_scores_V_2_ce1 { O 1 bit } all_scores_V_2_we1 { O 1 bit } all_scores_V_2_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2051 \
    name all_scores_V_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_3 \
    op interface \
    ports { all_scores_V_3_address1 { O 9 vector } all_scores_V_3_ce1 { O 1 bit } all_scores_V_3_we1 { O 1 bit } all_scores_V_3_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2052 \
    name all_scores_V_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_4 \
    op interface \
    ports { all_scores_V_4_address1 { O 9 vector } all_scores_V_4_ce1 { O 1 bit } all_scores_V_4_we1 { O 1 bit } all_scores_V_4_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2053 \
    name all_scores_V_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_5 \
    op interface \
    ports { all_scores_V_5_address1 { O 9 vector } all_scores_V_5_ce1 { O 1 bit } all_scores_V_5_we1 { O 1 bit } all_scores_V_5_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2054 \
    name all_scores_V_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_6 \
    op interface \
    ports { all_scores_V_6_address1 { O 9 vector } all_scores_V_6_ce1 { O 1 bit } all_scores_V_6_we1 { O 1 bit } all_scores_V_6_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2055 \
    name all_scores_V_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_7 \
    op interface \
    ports { all_scores_V_7_address1 { O 9 vector } all_scores_V_7_ce1 { O 1 bit } all_scores_V_7_we1 { O 1 bit } all_scores_V_7_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2056 \
    name all_scores_V_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_8 \
    op interface \
    ports { all_scores_V_8_address1 { O 9 vector } all_scores_V_8_ce1 { O 1 bit } all_scores_V_8_we1 { O 1 bit } all_scores_V_8_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2057 \
    name all_scores_V_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_9 \
    op interface \
    ports { all_scores_V_9_address1 { O 9 vector } all_scores_V_9_ce1 { O 1 bit } all_scores_V_9_we1 { O 1 bit } all_scores_V_9_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2058 \
    name all_scores_V_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_10 \
    op interface \
    ports { all_scores_V_10_address1 { O 9 vector } all_scores_V_10_ce1 { O 1 bit } all_scores_V_10_we1 { O 1 bit } all_scores_V_10_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2059 \
    name all_scores_V_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_11 \
    op interface \
    ports { all_scores_V_11_address1 { O 9 vector } all_scores_V_11_ce1 { O 1 bit } all_scores_V_11_we1 { O 1 bit } all_scores_V_11_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2060 \
    name all_scores_V_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_12 \
    op interface \
    ports { all_scores_V_12_address1 { O 9 vector } all_scores_V_12_ce1 { O 1 bit } all_scores_V_12_we1 { O 1 bit } all_scores_V_12_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2061 \
    name all_scores_V_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_13 \
    op interface \
    ports { all_scores_V_13_address1 { O 9 vector } all_scores_V_13_ce1 { O 1 bit } all_scores_V_13_we1 { O 1 bit } all_scores_V_13_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2062 \
    name all_scores_V_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_14 \
    op interface \
    ports { all_scores_V_14_address1 { O 9 vector } all_scores_V_14_ce1 { O 1 bit } all_scores_V_14_we1 { O 1 bit } all_scores_V_14_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2063 \
    name all_scores_V_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_15 \
    op interface \
    ports { all_scores_V_15_address1 { O 9 vector } all_scores_V_15_ce1 { O 1 bit } all_scores_V_15_we1 { O 1 bit } all_scores_V_15_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2064 \
    name all_scores_V_16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_16 \
    op interface \
    ports { all_scores_V_16_address1 { O 9 vector } all_scores_V_16_ce1 { O 1 bit } all_scores_V_16_we1 { O 1 bit } all_scores_V_16_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2065 \
    name all_scores_V_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_17 \
    op interface \
    ports { all_scores_V_17_address1 { O 9 vector } all_scores_V_17_ce1 { O 1 bit } all_scores_V_17_we1 { O 1 bit } all_scores_V_17_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2066 \
    name all_scores_V_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename all_scores_V_18 \
    op interface \
    ports { all_scores_V_18_address1 { O 9 vector } all_scores_V_18_ce1 { O 1 bit } all_scores_V_18_we1 { O 1 bit } all_scores_V_18_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_18'"
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


