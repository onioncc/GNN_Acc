# This script segment is generated automatically by AutoPilot

set id 926
set name GAT_compute_one_graph_mac_muladd_3ns_8ns_10ns_10_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 3
set in0_signed 0
set in1_width 8
set in1_signed 0
set in2_width 10
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 10
set arg_lists {i0 {3 0 +} i1 {8 0 +} m {10 1 +} i2 {10 0 +} p {10 0 +} c_reg {1} rnd {0} acc {0} }
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
    id 930 \
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
    id 931 \
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
    id 932 \
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
    id 933 \
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
    id 934 \
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
    id 935 \
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
    id 936 \
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
    id 937 \
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
    id 938 \
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
    id 939 \
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
    id 940 \
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
    id 941 \
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
    id 942 \
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
    id 943 \
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
    id 944 \
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
    id 945 \
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
    id 946 \
    name nodes_features_proj_V_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_0 \
    op interface \
    ports { nodes_features_proj_V_0_address0 { O 10 vector } nodes_features_proj_V_0_ce0 { O 1 bit } nodes_features_proj_V_0_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 947 \
    name nodes_features_proj_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_1 \
    op interface \
    ports { nodes_features_proj_V_1_address0 { O 10 vector } nodes_features_proj_V_1_ce0 { O 1 bit } nodes_features_proj_V_1_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 948 \
    name nodes_features_proj_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_2 \
    op interface \
    ports { nodes_features_proj_V_2_address0 { O 10 vector } nodes_features_proj_V_2_ce0 { O 1 bit } nodes_features_proj_V_2_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 949 \
    name nodes_features_proj_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_3 \
    op interface \
    ports { nodes_features_proj_V_3_address0 { O 10 vector } nodes_features_proj_V_3_ce0 { O 1 bit } nodes_features_proj_V_3_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 950 \
    name nodes_features_proj_V_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_4 \
    op interface \
    ports { nodes_features_proj_V_4_address0 { O 10 vector } nodes_features_proj_V_4_ce0 { O 1 bit } nodes_features_proj_V_4_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 951 \
    name nodes_features_proj_V_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_5 \
    op interface \
    ports { nodes_features_proj_V_5_address0 { O 10 vector } nodes_features_proj_V_5_ce0 { O 1 bit } nodes_features_proj_V_5_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 952 \
    name nodes_features_proj_V_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_6 \
    op interface \
    ports { nodes_features_proj_V_6_address0 { O 10 vector } nodes_features_proj_V_6_ce0 { O 1 bit } nodes_features_proj_V_6_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 953 \
    name nodes_features_proj_V_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_7 \
    op interface \
    ports { nodes_features_proj_V_7_address0 { O 10 vector } nodes_features_proj_V_7_ce0 { O 1 bit } nodes_features_proj_V_7_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 954 \
    name nodes_features_proj_V_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_8 \
    op interface \
    ports { nodes_features_proj_V_8_address0 { O 10 vector } nodes_features_proj_V_8_ce0 { O 1 bit } nodes_features_proj_V_8_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 955 \
    name nodes_features_proj_V_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_9 \
    op interface \
    ports { nodes_features_proj_V_9_address0 { O 10 vector } nodes_features_proj_V_9_ce0 { O 1 bit } nodes_features_proj_V_9_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 956 \
    name nodes_features_proj_V_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_10 \
    op interface \
    ports { nodes_features_proj_V_10_address0 { O 10 vector } nodes_features_proj_V_10_ce0 { O 1 bit } nodes_features_proj_V_10_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 957 \
    name nodes_features_proj_V_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_11 \
    op interface \
    ports { nodes_features_proj_V_11_address0 { O 10 vector } nodes_features_proj_V_11_ce0 { O 1 bit } nodes_features_proj_V_11_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 958 \
    name nodes_features_proj_V_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_12 \
    op interface \
    ports { nodes_features_proj_V_12_address0 { O 10 vector } nodes_features_proj_V_12_ce0 { O 1 bit } nodes_features_proj_V_12_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 959 \
    name nodes_features_proj_V_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_13 \
    op interface \
    ports { nodes_features_proj_V_13_address0 { O 10 vector } nodes_features_proj_V_13_ce0 { O 1 bit } nodes_features_proj_V_13_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 960 \
    name nodes_features_proj_V_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_14 \
    op interface \
    ports { nodes_features_proj_V_14_address0 { O 10 vector } nodes_features_proj_V_14_ce0 { O 1 bit } nodes_features_proj_V_14_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 961 \
    name nodes_features_proj_V_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nodes_features_proj_V_15 \
    op interface \
    ports { nodes_features_proj_V_15_address0 { O 10 vector } nodes_features_proj_V_15_ce0 { O 1 bit } nodes_features_proj_V_15_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nodes_features_proj_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 962 \
    name scores_source_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename scores_source_V \
    op interface \
    ports { scores_source_V_address1 { O 10 vector } scores_source_V_ce1 { O 1 bit } scores_source_V_we1 { O 1 bit } scores_source_V_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scores_source_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 928 \
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
    id 929 \
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


