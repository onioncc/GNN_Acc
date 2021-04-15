# This script segment is generated automatically by AutoPilot

set id 6880
set name GIN_compute_one_graph_mul_32s_34ns_65_1_1
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 32
set in0_signed 1
set in1_width 34
set in1_signed 0
set out_width 65
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename Multiplier
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
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
    id 6882 \
    name graph_embedding_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename graph_embedding_V \
    op interface \
    ports { graph_embedding_V_address1 { O 9 vector } graph_embedding_V_ce1 { O 1 bit } graph_embedding_V_we1 { O 1 bit } graph_embedding_V_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'graph_embedding_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6883 \
    name node_embedding_V_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_0 \
    op interface \
    ports { node_embedding_V_0_address0 { O 8 vector } node_embedding_V_0_ce0 { O 1 bit } node_embedding_V_0_q0 { I 32 vector } node_embedding_V_0_address1 { O 8 vector } node_embedding_V_0_ce1 { O 1 bit } node_embedding_V_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6884 \
    name node_embedding_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_1 \
    op interface \
    ports { node_embedding_V_1_address0 { O 8 vector } node_embedding_V_1_ce0 { O 1 bit } node_embedding_V_1_q0 { I 32 vector } node_embedding_V_1_address1 { O 8 vector } node_embedding_V_1_ce1 { O 1 bit } node_embedding_V_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6885 \
    name node_embedding_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_2 \
    op interface \
    ports { node_embedding_V_2_address0 { O 8 vector } node_embedding_V_2_ce0 { O 1 bit } node_embedding_V_2_q0 { I 32 vector } node_embedding_V_2_address1 { O 8 vector } node_embedding_V_2_ce1 { O 1 bit } node_embedding_V_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6886 \
    name node_embedding_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_3 \
    op interface \
    ports { node_embedding_V_3_address0 { O 8 vector } node_embedding_V_3_ce0 { O 1 bit } node_embedding_V_3_q0 { I 32 vector } node_embedding_V_3_address1 { O 8 vector } node_embedding_V_3_ce1 { O 1 bit } node_embedding_V_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6887 \
    name node_embedding_V_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_4 \
    op interface \
    ports { node_embedding_V_4_address0 { O 8 vector } node_embedding_V_4_ce0 { O 1 bit } node_embedding_V_4_q0 { I 32 vector } node_embedding_V_4_address1 { O 8 vector } node_embedding_V_4_ce1 { O 1 bit } node_embedding_V_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6888 \
    name node_embedding_V_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_5 \
    op interface \
    ports { node_embedding_V_5_address0 { O 8 vector } node_embedding_V_5_ce0 { O 1 bit } node_embedding_V_5_q0 { I 32 vector } node_embedding_V_5_address1 { O 8 vector } node_embedding_V_5_ce1 { O 1 bit } node_embedding_V_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6889 \
    name node_embedding_V_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_6 \
    op interface \
    ports { node_embedding_V_6_address0 { O 8 vector } node_embedding_V_6_ce0 { O 1 bit } node_embedding_V_6_q0 { I 32 vector } node_embedding_V_6_address1 { O 8 vector } node_embedding_V_6_ce1 { O 1 bit } node_embedding_V_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6890 \
    name node_embedding_V_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_7 \
    op interface \
    ports { node_embedding_V_7_address0 { O 8 vector } node_embedding_V_7_ce0 { O 1 bit } node_embedding_V_7_q0 { I 32 vector } node_embedding_V_7_address1 { O 8 vector } node_embedding_V_7_ce1 { O 1 bit } node_embedding_V_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6891 \
    name node_embedding_V_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_8 \
    op interface \
    ports { node_embedding_V_8_address0 { O 8 vector } node_embedding_V_8_ce0 { O 1 bit } node_embedding_V_8_q0 { I 32 vector } node_embedding_V_8_address1 { O 8 vector } node_embedding_V_8_ce1 { O 1 bit } node_embedding_V_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6892 \
    name node_embedding_V_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_9 \
    op interface \
    ports { node_embedding_V_9_address0 { O 8 vector } node_embedding_V_9_ce0 { O 1 bit } node_embedding_V_9_q0 { I 32 vector } node_embedding_V_9_address1 { O 8 vector } node_embedding_V_9_ce1 { O 1 bit } node_embedding_V_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6893 \
    name node_embedding_V_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_10 \
    op interface \
    ports { node_embedding_V_10_address0 { O 8 vector } node_embedding_V_10_ce0 { O 1 bit } node_embedding_V_10_q0 { I 32 vector } node_embedding_V_10_address1 { O 8 vector } node_embedding_V_10_ce1 { O 1 bit } node_embedding_V_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6894 \
    name node_embedding_V_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_11 \
    op interface \
    ports { node_embedding_V_11_address0 { O 8 vector } node_embedding_V_11_ce0 { O 1 bit } node_embedding_V_11_q0 { I 32 vector } node_embedding_V_11_address1 { O 8 vector } node_embedding_V_11_ce1 { O 1 bit } node_embedding_V_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6895 \
    name node_embedding_V_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_12 \
    op interface \
    ports { node_embedding_V_12_address0 { O 8 vector } node_embedding_V_12_ce0 { O 1 bit } node_embedding_V_12_q0 { I 32 vector } node_embedding_V_12_address1 { O 8 vector } node_embedding_V_12_ce1 { O 1 bit } node_embedding_V_12_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6896 \
    name node_embedding_V_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_13 \
    op interface \
    ports { node_embedding_V_13_address0 { O 8 vector } node_embedding_V_13_ce0 { O 1 bit } node_embedding_V_13_q0 { I 32 vector } node_embedding_V_13_address1 { O 8 vector } node_embedding_V_13_ce1 { O 1 bit } node_embedding_V_13_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6897 \
    name node_embedding_V_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_14 \
    op interface \
    ports { node_embedding_V_14_address0 { O 8 vector } node_embedding_V_14_ce0 { O 1 bit } node_embedding_V_14_q0 { I 32 vector } node_embedding_V_14_address1 { O 8 vector } node_embedding_V_14_ce1 { O 1 bit } node_embedding_V_14_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6898 \
    name node_embedding_V_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_15 \
    op interface \
    ports { node_embedding_V_15_address0 { O 8 vector } node_embedding_V_15_ce0 { O 1 bit } node_embedding_V_15_q0 { I 32 vector } node_embedding_V_15_address1 { O 8 vector } node_embedding_V_15_ce1 { O 1 bit } node_embedding_V_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6899 \
    name node_embedding_V_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_16 \
    op interface \
    ports { node_embedding_V_16_address0 { O 8 vector } node_embedding_V_16_ce0 { O 1 bit } node_embedding_V_16_q0 { I 32 vector } node_embedding_V_16_address1 { O 8 vector } node_embedding_V_16_ce1 { O 1 bit } node_embedding_V_16_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6900 \
    name node_embedding_V_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_17 \
    op interface \
    ports { node_embedding_V_17_address0 { O 8 vector } node_embedding_V_17_ce0 { O 1 bit } node_embedding_V_17_q0 { I 32 vector } node_embedding_V_17_address1 { O 8 vector } node_embedding_V_17_ce1 { O 1 bit } node_embedding_V_17_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6901 \
    name node_embedding_V_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_18 \
    op interface \
    ports { node_embedding_V_18_address0 { O 8 vector } node_embedding_V_18_ce0 { O 1 bit } node_embedding_V_18_q0 { I 32 vector } node_embedding_V_18_address1 { O 8 vector } node_embedding_V_18_ce1 { O 1 bit } node_embedding_V_18_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6902 \
    name node_embedding_V_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_19 \
    op interface \
    ports { node_embedding_V_19_address0 { O 8 vector } node_embedding_V_19_ce0 { O 1 bit } node_embedding_V_19_q0 { I 32 vector } node_embedding_V_19_address1 { O 8 vector } node_embedding_V_19_ce1 { O 1 bit } node_embedding_V_19_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6903 \
    name node_embedding_V_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_20 \
    op interface \
    ports { node_embedding_V_20_address0 { O 8 vector } node_embedding_V_20_ce0 { O 1 bit } node_embedding_V_20_q0 { I 32 vector } node_embedding_V_20_address1 { O 8 vector } node_embedding_V_20_ce1 { O 1 bit } node_embedding_V_20_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6904 \
    name node_embedding_V_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_21 \
    op interface \
    ports { node_embedding_V_21_address0 { O 8 vector } node_embedding_V_21_ce0 { O 1 bit } node_embedding_V_21_q0 { I 32 vector } node_embedding_V_21_address1 { O 8 vector } node_embedding_V_21_ce1 { O 1 bit } node_embedding_V_21_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6905 \
    name node_embedding_V_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_22 \
    op interface \
    ports { node_embedding_V_22_address0 { O 8 vector } node_embedding_V_22_ce0 { O 1 bit } node_embedding_V_22_q0 { I 32 vector } node_embedding_V_22_address1 { O 8 vector } node_embedding_V_22_ce1 { O 1 bit } node_embedding_V_22_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6906 \
    name node_embedding_V_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_23 \
    op interface \
    ports { node_embedding_V_23_address0 { O 8 vector } node_embedding_V_23_ce0 { O 1 bit } node_embedding_V_23_q0 { I 32 vector } node_embedding_V_23_address1 { O 8 vector } node_embedding_V_23_ce1 { O 1 bit } node_embedding_V_23_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6907 \
    name node_embedding_V_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_24 \
    op interface \
    ports { node_embedding_V_24_address0 { O 8 vector } node_embedding_V_24_ce0 { O 1 bit } node_embedding_V_24_q0 { I 32 vector } node_embedding_V_24_address1 { O 8 vector } node_embedding_V_24_ce1 { O 1 bit } node_embedding_V_24_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6908 \
    name node_embedding_V_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_25 \
    op interface \
    ports { node_embedding_V_25_address0 { O 8 vector } node_embedding_V_25_ce0 { O 1 bit } node_embedding_V_25_q0 { I 32 vector } node_embedding_V_25_address1 { O 8 vector } node_embedding_V_25_ce1 { O 1 bit } node_embedding_V_25_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6909 \
    name node_embedding_V_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_26 \
    op interface \
    ports { node_embedding_V_26_address0 { O 8 vector } node_embedding_V_26_ce0 { O 1 bit } node_embedding_V_26_q0 { I 32 vector } node_embedding_V_26_address1 { O 8 vector } node_embedding_V_26_ce1 { O 1 bit } node_embedding_V_26_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6910 \
    name node_embedding_V_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_27 \
    op interface \
    ports { node_embedding_V_27_address0 { O 8 vector } node_embedding_V_27_ce0 { O 1 bit } node_embedding_V_27_q0 { I 32 vector } node_embedding_V_27_address1 { O 8 vector } node_embedding_V_27_ce1 { O 1 bit } node_embedding_V_27_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6911 \
    name node_embedding_V_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_28 \
    op interface \
    ports { node_embedding_V_28_address0 { O 8 vector } node_embedding_V_28_ce0 { O 1 bit } node_embedding_V_28_q0 { I 32 vector } node_embedding_V_28_address1 { O 8 vector } node_embedding_V_28_ce1 { O 1 bit } node_embedding_V_28_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6912 \
    name node_embedding_V_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_29 \
    op interface \
    ports { node_embedding_V_29_address0 { O 8 vector } node_embedding_V_29_ce0 { O 1 bit } node_embedding_V_29_q0 { I 32 vector } node_embedding_V_29_address1 { O 8 vector } node_embedding_V_29_ce1 { O 1 bit } node_embedding_V_29_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6913 \
    name node_embedding_V_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_30 \
    op interface \
    ports { node_embedding_V_30_address0 { O 8 vector } node_embedding_V_30_ce0 { O 1 bit } node_embedding_V_30_q0 { I 32 vector } node_embedding_V_30_address1 { O 8 vector } node_embedding_V_30_ce1 { O 1 bit } node_embedding_V_30_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6914 \
    name node_embedding_V_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_31 \
    op interface \
    ports { node_embedding_V_31_address0 { O 8 vector } node_embedding_V_31_ce0 { O 1 bit } node_embedding_V_31_q0 { I 32 vector } node_embedding_V_31_address1 { O 8 vector } node_embedding_V_31_ce1 { O 1 bit } node_embedding_V_31_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6915 \
    name node_embedding_V_32 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_32 \
    op interface \
    ports { node_embedding_V_32_address0 { O 8 vector } node_embedding_V_32_ce0 { O 1 bit } node_embedding_V_32_q0 { I 32 vector } node_embedding_V_32_address1 { O 8 vector } node_embedding_V_32_ce1 { O 1 bit } node_embedding_V_32_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6916 \
    name node_embedding_V_33 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_33 \
    op interface \
    ports { node_embedding_V_33_address0 { O 8 vector } node_embedding_V_33_ce0 { O 1 bit } node_embedding_V_33_q0 { I 32 vector } node_embedding_V_33_address1 { O 8 vector } node_embedding_V_33_ce1 { O 1 bit } node_embedding_V_33_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6917 \
    name node_embedding_V_34 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_34 \
    op interface \
    ports { node_embedding_V_34_address0 { O 8 vector } node_embedding_V_34_ce0 { O 1 bit } node_embedding_V_34_q0 { I 32 vector } node_embedding_V_34_address1 { O 8 vector } node_embedding_V_34_ce1 { O 1 bit } node_embedding_V_34_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6918 \
    name node_embedding_V_35 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_35 \
    op interface \
    ports { node_embedding_V_35_address0 { O 8 vector } node_embedding_V_35_ce0 { O 1 bit } node_embedding_V_35_q0 { I 32 vector } node_embedding_V_35_address1 { O 8 vector } node_embedding_V_35_ce1 { O 1 bit } node_embedding_V_35_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6919 \
    name node_embedding_V_36 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_36 \
    op interface \
    ports { node_embedding_V_36_address0 { O 8 vector } node_embedding_V_36_ce0 { O 1 bit } node_embedding_V_36_q0 { I 32 vector } node_embedding_V_36_address1 { O 8 vector } node_embedding_V_36_ce1 { O 1 bit } node_embedding_V_36_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6920 \
    name node_embedding_V_37 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_37 \
    op interface \
    ports { node_embedding_V_37_address0 { O 8 vector } node_embedding_V_37_ce0 { O 1 bit } node_embedding_V_37_q0 { I 32 vector } node_embedding_V_37_address1 { O 8 vector } node_embedding_V_37_ce1 { O 1 bit } node_embedding_V_37_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6921 \
    name node_embedding_V_38 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_38 \
    op interface \
    ports { node_embedding_V_38_address0 { O 8 vector } node_embedding_V_38_ce0 { O 1 bit } node_embedding_V_38_q0 { I 32 vector } node_embedding_V_38_address1 { O 8 vector } node_embedding_V_38_ce1 { O 1 bit } node_embedding_V_38_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6922 \
    name node_embedding_V_39 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_39 \
    op interface \
    ports { node_embedding_V_39_address0 { O 8 vector } node_embedding_V_39_ce0 { O 1 bit } node_embedding_V_39_q0 { I 32 vector } node_embedding_V_39_address1 { O 8 vector } node_embedding_V_39_ce1 { O 1 bit } node_embedding_V_39_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6923 \
    name node_embedding_V_40 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_40 \
    op interface \
    ports { node_embedding_V_40_address0 { O 8 vector } node_embedding_V_40_ce0 { O 1 bit } node_embedding_V_40_q0 { I 32 vector } node_embedding_V_40_address1 { O 8 vector } node_embedding_V_40_ce1 { O 1 bit } node_embedding_V_40_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6924 \
    name node_embedding_V_41 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_41 \
    op interface \
    ports { node_embedding_V_41_address0 { O 8 vector } node_embedding_V_41_ce0 { O 1 bit } node_embedding_V_41_q0 { I 32 vector } node_embedding_V_41_address1 { O 8 vector } node_embedding_V_41_ce1 { O 1 bit } node_embedding_V_41_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6925 \
    name node_embedding_V_42 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_42 \
    op interface \
    ports { node_embedding_V_42_address0 { O 8 vector } node_embedding_V_42_ce0 { O 1 bit } node_embedding_V_42_q0 { I 32 vector } node_embedding_V_42_address1 { O 8 vector } node_embedding_V_42_ce1 { O 1 bit } node_embedding_V_42_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6926 \
    name node_embedding_V_43 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_43 \
    op interface \
    ports { node_embedding_V_43_address0 { O 8 vector } node_embedding_V_43_ce0 { O 1 bit } node_embedding_V_43_q0 { I 32 vector } node_embedding_V_43_address1 { O 8 vector } node_embedding_V_43_ce1 { O 1 bit } node_embedding_V_43_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6927 \
    name node_embedding_V_44 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_44 \
    op interface \
    ports { node_embedding_V_44_address0 { O 8 vector } node_embedding_V_44_ce0 { O 1 bit } node_embedding_V_44_q0 { I 32 vector } node_embedding_V_44_address1 { O 8 vector } node_embedding_V_44_ce1 { O 1 bit } node_embedding_V_44_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6928 \
    name node_embedding_V_45 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_45 \
    op interface \
    ports { node_embedding_V_45_address0 { O 8 vector } node_embedding_V_45_ce0 { O 1 bit } node_embedding_V_45_q0 { I 32 vector } node_embedding_V_45_address1 { O 8 vector } node_embedding_V_45_ce1 { O 1 bit } node_embedding_V_45_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6929 \
    name node_embedding_V_46 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_46 \
    op interface \
    ports { node_embedding_V_46_address0 { O 8 vector } node_embedding_V_46_ce0 { O 1 bit } node_embedding_V_46_q0 { I 32 vector } node_embedding_V_46_address1 { O 8 vector } node_embedding_V_46_ce1 { O 1 bit } node_embedding_V_46_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6930 \
    name node_embedding_V_47 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_47 \
    op interface \
    ports { node_embedding_V_47_address0 { O 8 vector } node_embedding_V_47_ce0 { O 1 bit } node_embedding_V_47_q0 { I 32 vector } node_embedding_V_47_address1 { O 8 vector } node_embedding_V_47_ce1 { O 1 bit } node_embedding_V_47_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6931 \
    name node_embedding_V_48 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_48 \
    op interface \
    ports { node_embedding_V_48_address0 { O 8 vector } node_embedding_V_48_ce0 { O 1 bit } node_embedding_V_48_q0 { I 32 vector } node_embedding_V_48_address1 { O 8 vector } node_embedding_V_48_ce1 { O 1 bit } node_embedding_V_48_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6932 \
    name node_embedding_V_49 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_49 \
    op interface \
    ports { node_embedding_V_49_address0 { O 8 vector } node_embedding_V_49_ce0 { O 1 bit } node_embedding_V_49_q0 { I 32 vector } node_embedding_V_49_address1 { O 8 vector } node_embedding_V_49_ce1 { O 1 bit } node_embedding_V_49_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6933 \
    name node_embedding_V_50 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_50 \
    op interface \
    ports { node_embedding_V_50_address0 { O 8 vector } node_embedding_V_50_ce0 { O 1 bit } node_embedding_V_50_q0 { I 32 vector } node_embedding_V_50_address1 { O 8 vector } node_embedding_V_50_ce1 { O 1 bit } node_embedding_V_50_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6934 \
    name node_embedding_V_51 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_51 \
    op interface \
    ports { node_embedding_V_51_address0 { O 8 vector } node_embedding_V_51_ce0 { O 1 bit } node_embedding_V_51_q0 { I 32 vector } node_embedding_V_51_address1 { O 8 vector } node_embedding_V_51_ce1 { O 1 bit } node_embedding_V_51_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6935 \
    name node_embedding_V_52 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_52 \
    op interface \
    ports { node_embedding_V_52_address0 { O 8 vector } node_embedding_V_52_ce0 { O 1 bit } node_embedding_V_52_q0 { I 32 vector } node_embedding_V_52_address1 { O 8 vector } node_embedding_V_52_ce1 { O 1 bit } node_embedding_V_52_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6936 \
    name node_embedding_V_53 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_53 \
    op interface \
    ports { node_embedding_V_53_address0 { O 8 vector } node_embedding_V_53_ce0 { O 1 bit } node_embedding_V_53_q0 { I 32 vector } node_embedding_V_53_address1 { O 8 vector } node_embedding_V_53_ce1 { O 1 bit } node_embedding_V_53_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6937 \
    name node_embedding_V_54 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_54 \
    op interface \
    ports { node_embedding_V_54_address0 { O 8 vector } node_embedding_V_54_ce0 { O 1 bit } node_embedding_V_54_q0 { I 32 vector } node_embedding_V_54_address1 { O 8 vector } node_embedding_V_54_ce1 { O 1 bit } node_embedding_V_54_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6938 \
    name node_embedding_V_55 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_55 \
    op interface \
    ports { node_embedding_V_55_address0 { O 8 vector } node_embedding_V_55_ce0 { O 1 bit } node_embedding_V_55_q0 { I 32 vector } node_embedding_V_55_address1 { O 8 vector } node_embedding_V_55_ce1 { O 1 bit } node_embedding_V_55_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6939 \
    name node_embedding_V_56 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_56 \
    op interface \
    ports { node_embedding_V_56_address0 { O 8 vector } node_embedding_V_56_ce0 { O 1 bit } node_embedding_V_56_q0 { I 32 vector } node_embedding_V_56_address1 { O 8 vector } node_embedding_V_56_ce1 { O 1 bit } node_embedding_V_56_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6940 \
    name node_embedding_V_57 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_57 \
    op interface \
    ports { node_embedding_V_57_address0 { O 8 vector } node_embedding_V_57_ce0 { O 1 bit } node_embedding_V_57_q0 { I 32 vector } node_embedding_V_57_address1 { O 8 vector } node_embedding_V_57_ce1 { O 1 bit } node_embedding_V_57_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6941 \
    name node_embedding_V_58 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_58 \
    op interface \
    ports { node_embedding_V_58_address0 { O 8 vector } node_embedding_V_58_ce0 { O 1 bit } node_embedding_V_58_q0 { I 32 vector } node_embedding_V_58_address1 { O 8 vector } node_embedding_V_58_ce1 { O 1 bit } node_embedding_V_58_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6942 \
    name node_embedding_V_59 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_59 \
    op interface \
    ports { node_embedding_V_59_address0 { O 8 vector } node_embedding_V_59_ce0 { O 1 bit } node_embedding_V_59_q0 { I 32 vector } node_embedding_V_59_address1 { O 8 vector } node_embedding_V_59_ce1 { O 1 bit } node_embedding_V_59_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6943 \
    name node_embedding_V_60 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_60 \
    op interface \
    ports { node_embedding_V_60_address0 { O 8 vector } node_embedding_V_60_ce0 { O 1 bit } node_embedding_V_60_q0 { I 32 vector } node_embedding_V_60_address1 { O 8 vector } node_embedding_V_60_ce1 { O 1 bit } node_embedding_V_60_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6944 \
    name node_embedding_V_61 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_61 \
    op interface \
    ports { node_embedding_V_61_address0 { O 8 vector } node_embedding_V_61_ce0 { O 1 bit } node_embedding_V_61_q0 { I 32 vector } node_embedding_V_61_address1 { O 8 vector } node_embedding_V_61_ce1 { O 1 bit } node_embedding_V_61_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6945 \
    name node_embedding_V_62 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_62 \
    op interface \
    ports { node_embedding_V_62_address0 { O 8 vector } node_embedding_V_62_ce0 { O 1 bit } node_embedding_V_62_q0 { I 32 vector } node_embedding_V_62_address1 { O 8 vector } node_embedding_V_62_ce1 { O 1 bit } node_embedding_V_62_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6946 \
    name node_embedding_V_63 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_63 \
    op interface \
    ports { node_embedding_V_63_address0 { O 8 vector } node_embedding_V_63_ce0 { O 1 bit } node_embedding_V_63_q0 { I 32 vector } node_embedding_V_63_address1 { O 8 vector } node_embedding_V_63_ce1 { O 1 bit } node_embedding_V_63_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_63'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6947 \
    name node_embedding_V_64 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_64 \
    op interface \
    ports { node_embedding_V_64_address0 { O 8 vector } node_embedding_V_64_ce0 { O 1 bit } node_embedding_V_64_q0 { I 32 vector } node_embedding_V_64_address1 { O 8 vector } node_embedding_V_64_ce1 { O 1 bit } node_embedding_V_64_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_64'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6948 \
    name node_embedding_V_65 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_65 \
    op interface \
    ports { node_embedding_V_65_address0 { O 8 vector } node_embedding_V_65_ce0 { O 1 bit } node_embedding_V_65_q0 { I 32 vector } node_embedding_V_65_address1 { O 8 vector } node_embedding_V_65_ce1 { O 1 bit } node_embedding_V_65_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_65'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6949 \
    name node_embedding_V_66 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_66 \
    op interface \
    ports { node_embedding_V_66_address0 { O 8 vector } node_embedding_V_66_ce0 { O 1 bit } node_embedding_V_66_q0 { I 32 vector } node_embedding_V_66_address1 { O 8 vector } node_embedding_V_66_ce1 { O 1 bit } node_embedding_V_66_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_66'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6950 \
    name node_embedding_V_67 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_67 \
    op interface \
    ports { node_embedding_V_67_address0 { O 8 vector } node_embedding_V_67_ce0 { O 1 bit } node_embedding_V_67_q0 { I 32 vector } node_embedding_V_67_address1 { O 8 vector } node_embedding_V_67_ce1 { O 1 bit } node_embedding_V_67_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_67'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6951 \
    name node_embedding_V_68 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_68 \
    op interface \
    ports { node_embedding_V_68_address0 { O 8 vector } node_embedding_V_68_ce0 { O 1 bit } node_embedding_V_68_q0 { I 32 vector } node_embedding_V_68_address1 { O 8 vector } node_embedding_V_68_ce1 { O 1 bit } node_embedding_V_68_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_68'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6952 \
    name node_embedding_V_69 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_69 \
    op interface \
    ports { node_embedding_V_69_address0 { O 8 vector } node_embedding_V_69_ce0 { O 1 bit } node_embedding_V_69_q0 { I 32 vector } node_embedding_V_69_address1 { O 8 vector } node_embedding_V_69_ce1 { O 1 bit } node_embedding_V_69_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_69'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6953 \
    name node_embedding_V_70 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_70 \
    op interface \
    ports { node_embedding_V_70_address0 { O 8 vector } node_embedding_V_70_ce0 { O 1 bit } node_embedding_V_70_q0 { I 32 vector } node_embedding_V_70_address1 { O 8 vector } node_embedding_V_70_ce1 { O 1 bit } node_embedding_V_70_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_70'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6954 \
    name node_embedding_V_71 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_71 \
    op interface \
    ports { node_embedding_V_71_address0 { O 8 vector } node_embedding_V_71_ce0 { O 1 bit } node_embedding_V_71_q0 { I 32 vector } node_embedding_V_71_address1 { O 8 vector } node_embedding_V_71_ce1 { O 1 bit } node_embedding_V_71_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_71'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6955 \
    name node_embedding_V_72 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_72 \
    op interface \
    ports { node_embedding_V_72_address0 { O 8 vector } node_embedding_V_72_ce0 { O 1 bit } node_embedding_V_72_q0 { I 32 vector } node_embedding_V_72_address1 { O 8 vector } node_embedding_V_72_ce1 { O 1 bit } node_embedding_V_72_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_72'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6956 \
    name node_embedding_V_73 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_73 \
    op interface \
    ports { node_embedding_V_73_address0 { O 8 vector } node_embedding_V_73_ce0 { O 1 bit } node_embedding_V_73_q0 { I 32 vector } node_embedding_V_73_address1 { O 8 vector } node_embedding_V_73_ce1 { O 1 bit } node_embedding_V_73_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_73'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6957 \
    name node_embedding_V_74 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_74 \
    op interface \
    ports { node_embedding_V_74_address0 { O 8 vector } node_embedding_V_74_ce0 { O 1 bit } node_embedding_V_74_q0 { I 32 vector } node_embedding_V_74_address1 { O 8 vector } node_embedding_V_74_ce1 { O 1 bit } node_embedding_V_74_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_74'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6958 \
    name node_embedding_V_75 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_75 \
    op interface \
    ports { node_embedding_V_75_address0 { O 8 vector } node_embedding_V_75_ce0 { O 1 bit } node_embedding_V_75_q0 { I 32 vector } node_embedding_V_75_address1 { O 8 vector } node_embedding_V_75_ce1 { O 1 bit } node_embedding_V_75_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_75'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6959 \
    name node_embedding_V_76 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_76 \
    op interface \
    ports { node_embedding_V_76_address0 { O 8 vector } node_embedding_V_76_ce0 { O 1 bit } node_embedding_V_76_q0 { I 32 vector } node_embedding_V_76_address1 { O 8 vector } node_embedding_V_76_ce1 { O 1 bit } node_embedding_V_76_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_76'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6960 \
    name node_embedding_V_77 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_77 \
    op interface \
    ports { node_embedding_V_77_address0 { O 8 vector } node_embedding_V_77_ce0 { O 1 bit } node_embedding_V_77_q0 { I 32 vector } node_embedding_V_77_address1 { O 8 vector } node_embedding_V_77_ce1 { O 1 bit } node_embedding_V_77_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_77'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6961 \
    name node_embedding_V_78 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_78 \
    op interface \
    ports { node_embedding_V_78_address0 { O 8 vector } node_embedding_V_78_ce0 { O 1 bit } node_embedding_V_78_q0 { I 32 vector } node_embedding_V_78_address1 { O 8 vector } node_embedding_V_78_ce1 { O 1 bit } node_embedding_V_78_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_78'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6962 \
    name node_embedding_V_79 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_79 \
    op interface \
    ports { node_embedding_V_79_address0 { O 8 vector } node_embedding_V_79_ce0 { O 1 bit } node_embedding_V_79_q0 { I 32 vector } node_embedding_V_79_address1 { O 8 vector } node_embedding_V_79_ce1 { O 1 bit } node_embedding_V_79_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_79'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6963 \
    name node_embedding_V_80 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_80 \
    op interface \
    ports { node_embedding_V_80_address0 { O 8 vector } node_embedding_V_80_ce0 { O 1 bit } node_embedding_V_80_q0 { I 32 vector } node_embedding_V_80_address1 { O 8 vector } node_embedding_V_80_ce1 { O 1 bit } node_embedding_V_80_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_80'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6964 \
    name node_embedding_V_81 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_81 \
    op interface \
    ports { node_embedding_V_81_address0 { O 8 vector } node_embedding_V_81_ce0 { O 1 bit } node_embedding_V_81_q0 { I 32 vector } node_embedding_V_81_address1 { O 8 vector } node_embedding_V_81_ce1 { O 1 bit } node_embedding_V_81_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_81'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6965 \
    name node_embedding_V_82 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_82 \
    op interface \
    ports { node_embedding_V_82_address0 { O 8 vector } node_embedding_V_82_ce0 { O 1 bit } node_embedding_V_82_q0 { I 32 vector } node_embedding_V_82_address1 { O 8 vector } node_embedding_V_82_ce1 { O 1 bit } node_embedding_V_82_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_82'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6966 \
    name node_embedding_V_83 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_83 \
    op interface \
    ports { node_embedding_V_83_address0 { O 8 vector } node_embedding_V_83_ce0 { O 1 bit } node_embedding_V_83_q0 { I 32 vector } node_embedding_V_83_address1 { O 8 vector } node_embedding_V_83_ce1 { O 1 bit } node_embedding_V_83_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_83'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6967 \
    name node_embedding_V_84 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_84 \
    op interface \
    ports { node_embedding_V_84_address0 { O 8 vector } node_embedding_V_84_ce0 { O 1 bit } node_embedding_V_84_q0 { I 32 vector } node_embedding_V_84_address1 { O 8 vector } node_embedding_V_84_ce1 { O 1 bit } node_embedding_V_84_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_84'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6968 \
    name node_embedding_V_85 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_85 \
    op interface \
    ports { node_embedding_V_85_address0 { O 8 vector } node_embedding_V_85_ce0 { O 1 bit } node_embedding_V_85_q0 { I 32 vector } node_embedding_V_85_address1 { O 8 vector } node_embedding_V_85_ce1 { O 1 bit } node_embedding_V_85_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_85'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6969 \
    name node_embedding_V_86 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_86 \
    op interface \
    ports { node_embedding_V_86_address0 { O 8 vector } node_embedding_V_86_ce0 { O 1 bit } node_embedding_V_86_q0 { I 32 vector } node_embedding_V_86_address1 { O 8 vector } node_embedding_V_86_ce1 { O 1 bit } node_embedding_V_86_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_86'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6970 \
    name node_embedding_V_87 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_87 \
    op interface \
    ports { node_embedding_V_87_address0 { O 8 vector } node_embedding_V_87_ce0 { O 1 bit } node_embedding_V_87_q0 { I 32 vector } node_embedding_V_87_address1 { O 8 vector } node_embedding_V_87_ce1 { O 1 bit } node_embedding_V_87_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_87'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6971 \
    name node_embedding_V_88 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_88 \
    op interface \
    ports { node_embedding_V_88_address0 { O 8 vector } node_embedding_V_88_ce0 { O 1 bit } node_embedding_V_88_q0 { I 32 vector } node_embedding_V_88_address1 { O 8 vector } node_embedding_V_88_ce1 { O 1 bit } node_embedding_V_88_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_88'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6972 \
    name node_embedding_V_89 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_89 \
    op interface \
    ports { node_embedding_V_89_address0 { O 8 vector } node_embedding_V_89_ce0 { O 1 bit } node_embedding_V_89_q0 { I 32 vector } node_embedding_V_89_address1 { O 8 vector } node_embedding_V_89_ce1 { O 1 bit } node_embedding_V_89_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_89'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6973 \
    name node_embedding_V_90 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_90 \
    op interface \
    ports { node_embedding_V_90_address0 { O 8 vector } node_embedding_V_90_ce0 { O 1 bit } node_embedding_V_90_q0 { I 32 vector } node_embedding_V_90_address1 { O 8 vector } node_embedding_V_90_ce1 { O 1 bit } node_embedding_V_90_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_90'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6974 \
    name node_embedding_V_91 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_91 \
    op interface \
    ports { node_embedding_V_91_address0 { O 8 vector } node_embedding_V_91_ce0 { O 1 bit } node_embedding_V_91_q0 { I 32 vector } node_embedding_V_91_address1 { O 8 vector } node_embedding_V_91_ce1 { O 1 bit } node_embedding_V_91_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_91'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6975 \
    name node_embedding_V_92 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_92 \
    op interface \
    ports { node_embedding_V_92_address0 { O 8 vector } node_embedding_V_92_ce0 { O 1 bit } node_embedding_V_92_q0 { I 32 vector } node_embedding_V_92_address1 { O 8 vector } node_embedding_V_92_ce1 { O 1 bit } node_embedding_V_92_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_92'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6976 \
    name node_embedding_V_93 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_93 \
    op interface \
    ports { node_embedding_V_93_address0 { O 8 vector } node_embedding_V_93_ce0 { O 1 bit } node_embedding_V_93_q0 { I 32 vector } node_embedding_V_93_address1 { O 8 vector } node_embedding_V_93_ce1 { O 1 bit } node_embedding_V_93_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_93'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6977 \
    name node_embedding_V_94 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_94 \
    op interface \
    ports { node_embedding_V_94_address0 { O 8 vector } node_embedding_V_94_ce0 { O 1 bit } node_embedding_V_94_q0 { I 32 vector } node_embedding_V_94_address1 { O 8 vector } node_embedding_V_94_ce1 { O 1 bit } node_embedding_V_94_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_94'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6978 \
    name node_embedding_V_95 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_95 \
    op interface \
    ports { node_embedding_V_95_address0 { O 8 vector } node_embedding_V_95_ce0 { O 1 bit } node_embedding_V_95_q0 { I 32 vector } node_embedding_V_95_address1 { O 8 vector } node_embedding_V_95_ce1 { O 1 bit } node_embedding_V_95_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_95'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6979 \
    name node_embedding_V_96 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_96 \
    op interface \
    ports { node_embedding_V_96_address0 { O 8 vector } node_embedding_V_96_ce0 { O 1 bit } node_embedding_V_96_q0 { I 32 vector } node_embedding_V_96_address1 { O 8 vector } node_embedding_V_96_ce1 { O 1 bit } node_embedding_V_96_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_96'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6980 \
    name node_embedding_V_97 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_97 \
    op interface \
    ports { node_embedding_V_97_address0 { O 8 vector } node_embedding_V_97_ce0 { O 1 bit } node_embedding_V_97_q0 { I 32 vector } node_embedding_V_97_address1 { O 8 vector } node_embedding_V_97_ce1 { O 1 bit } node_embedding_V_97_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_97'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6981 \
    name node_embedding_V_98 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_98 \
    op interface \
    ports { node_embedding_V_98_address0 { O 8 vector } node_embedding_V_98_ce0 { O 1 bit } node_embedding_V_98_q0 { I 32 vector } node_embedding_V_98_address1 { O 8 vector } node_embedding_V_98_ce1 { O 1 bit } node_embedding_V_98_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_98'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6982 \
    name node_embedding_V_99 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_99 \
    op interface \
    ports { node_embedding_V_99_address0 { O 8 vector } node_embedding_V_99_ce0 { O 1 bit } node_embedding_V_99_q0 { I 32 vector } node_embedding_V_99_address1 { O 8 vector } node_embedding_V_99_ce1 { O 1 bit } node_embedding_V_99_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_99'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6983 \
    name node_embedding_V_100 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_100 \
    op interface \
    ports { node_embedding_V_100_address0 { O 8 vector } node_embedding_V_100_ce0 { O 1 bit } node_embedding_V_100_q0 { I 32 vector } node_embedding_V_100_address1 { O 8 vector } node_embedding_V_100_ce1 { O 1 bit } node_embedding_V_100_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_100'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6984 \
    name node_embedding_V_101 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_101 \
    op interface \
    ports { node_embedding_V_101_address0 { O 8 vector } node_embedding_V_101_ce0 { O 1 bit } node_embedding_V_101_q0 { I 32 vector } node_embedding_V_101_address1 { O 8 vector } node_embedding_V_101_ce1 { O 1 bit } node_embedding_V_101_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_101'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6985 \
    name node_embedding_V_102 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_102 \
    op interface \
    ports { node_embedding_V_102_address0 { O 8 vector } node_embedding_V_102_ce0 { O 1 bit } node_embedding_V_102_q0 { I 32 vector } node_embedding_V_102_address1 { O 8 vector } node_embedding_V_102_ce1 { O 1 bit } node_embedding_V_102_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_102'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6986 \
    name node_embedding_V_103 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_103 \
    op interface \
    ports { node_embedding_V_103_address0 { O 8 vector } node_embedding_V_103_ce0 { O 1 bit } node_embedding_V_103_q0 { I 32 vector } node_embedding_V_103_address1 { O 8 vector } node_embedding_V_103_ce1 { O 1 bit } node_embedding_V_103_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_103'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6987 \
    name node_embedding_V_104 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_104 \
    op interface \
    ports { node_embedding_V_104_address0 { O 8 vector } node_embedding_V_104_ce0 { O 1 bit } node_embedding_V_104_q0 { I 32 vector } node_embedding_V_104_address1 { O 8 vector } node_embedding_V_104_ce1 { O 1 bit } node_embedding_V_104_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_104'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6988 \
    name node_embedding_V_105 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_105 \
    op interface \
    ports { node_embedding_V_105_address0 { O 8 vector } node_embedding_V_105_ce0 { O 1 bit } node_embedding_V_105_q0 { I 32 vector } node_embedding_V_105_address1 { O 8 vector } node_embedding_V_105_ce1 { O 1 bit } node_embedding_V_105_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_105'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6989 \
    name node_embedding_V_106 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_106 \
    op interface \
    ports { node_embedding_V_106_address0 { O 8 vector } node_embedding_V_106_ce0 { O 1 bit } node_embedding_V_106_q0 { I 32 vector } node_embedding_V_106_address1 { O 8 vector } node_embedding_V_106_ce1 { O 1 bit } node_embedding_V_106_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_106'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6990 \
    name node_embedding_V_107 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_107 \
    op interface \
    ports { node_embedding_V_107_address0 { O 8 vector } node_embedding_V_107_ce0 { O 1 bit } node_embedding_V_107_q0 { I 32 vector } node_embedding_V_107_address1 { O 8 vector } node_embedding_V_107_ce1 { O 1 bit } node_embedding_V_107_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_107'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6991 \
    name node_embedding_V_108 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_108 \
    op interface \
    ports { node_embedding_V_108_address0 { O 8 vector } node_embedding_V_108_ce0 { O 1 bit } node_embedding_V_108_q0 { I 32 vector } node_embedding_V_108_address1 { O 8 vector } node_embedding_V_108_ce1 { O 1 bit } node_embedding_V_108_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_108'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6992 \
    name node_embedding_V_109 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_109 \
    op interface \
    ports { node_embedding_V_109_address0 { O 8 vector } node_embedding_V_109_ce0 { O 1 bit } node_embedding_V_109_q0 { I 32 vector } node_embedding_V_109_address1 { O 8 vector } node_embedding_V_109_ce1 { O 1 bit } node_embedding_V_109_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_109'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6993 \
    name node_embedding_V_110 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_110 \
    op interface \
    ports { node_embedding_V_110_address0 { O 8 vector } node_embedding_V_110_ce0 { O 1 bit } node_embedding_V_110_q0 { I 32 vector } node_embedding_V_110_address1 { O 8 vector } node_embedding_V_110_ce1 { O 1 bit } node_embedding_V_110_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_110'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6994 \
    name node_embedding_V_111 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_111 \
    op interface \
    ports { node_embedding_V_111_address0 { O 8 vector } node_embedding_V_111_ce0 { O 1 bit } node_embedding_V_111_q0 { I 32 vector } node_embedding_V_111_address1 { O 8 vector } node_embedding_V_111_ce1 { O 1 bit } node_embedding_V_111_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_111'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6995 \
    name node_embedding_V_112 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_112 \
    op interface \
    ports { node_embedding_V_112_address0 { O 8 vector } node_embedding_V_112_ce0 { O 1 bit } node_embedding_V_112_q0 { I 32 vector } node_embedding_V_112_address1 { O 8 vector } node_embedding_V_112_ce1 { O 1 bit } node_embedding_V_112_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_112'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6996 \
    name node_embedding_V_113 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_113 \
    op interface \
    ports { node_embedding_V_113_address0 { O 8 vector } node_embedding_V_113_ce0 { O 1 bit } node_embedding_V_113_q0 { I 32 vector } node_embedding_V_113_address1 { O 8 vector } node_embedding_V_113_ce1 { O 1 bit } node_embedding_V_113_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_113'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6997 \
    name node_embedding_V_114 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_114 \
    op interface \
    ports { node_embedding_V_114_address0 { O 8 vector } node_embedding_V_114_ce0 { O 1 bit } node_embedding_V_114_q0 { I 32 vector } node_embedding_V_114_address1 { O 8 vector } node_embedding_V_114_ce1 { O 1 bit } node_embedding_V_114_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_114'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6998 \
    name node_embedding_V_115 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_115 \
    op interface \
    ports { node_embedding_V_115_address0 { O 8 vector } node_embedding_V_115_ce0 { O 1 bit } node_embedding_V_115_q0 { I 32 vector } node_embedding_V_115_address1 { O 8 vector } node_embedding_V_115_ce1 { O 1 bit } node_embedding_V_115_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_115'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 6999 \
    name node_embedding_V_116 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_116 \
    op interface \
    ports { node_embedding_V_116_address0 { O 8 vector } node_embedding_V_116_ce0 { O 1 bit } node_embedding_V_116_q0 { I 32 vector } node_embedding_V_116_address1 { O 8 vector } node_embedding_V_116_ce1 { O 1 bit } node_embedding_V_116_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_116'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7000 \
    name node_embedding_V_117 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_117 \
    op interface \
    ports { node_embedding_V_117_address0 { O 8 vector } node_embedding_V_117_ce0 { O 1 bit } node_embedding_V_117_q0 { I 32 vector } node_embedding_V_117_address1 { O 8 vector } node_embedding_V_117_ce1 { O 1 bit } node_embedding_V_117_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_117'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7001 \
    name node_embedding_V_118 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_118 \
    op interface \
    ports { node_embedding_V_118_address0 { O 8 vector } node_embedding_V_118_ce0 { O 1 bit } node_embedding_V_118_q0 { I 32 vector } node_embedding_V_118_address1 { O 8 vector } node_embedding_V_118_ce1 { O 1 bit } node_embedding_V_118_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_118'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7002 \
    name node_embedding_V_119 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_119 \
    op interface \
    ports { node_embedding_V_119_address0 { O 8 vector } node_embedding_V_119_ce0 { O 1 bit } node_embedding_V_119_q0 { I 32 vector } node_embedding_V_119_address1 { O 8 vector } node_embedding_V_119_ce1 { O 1 bit } node_embedding_V_119_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_119'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7003 \
    name node_embedding_V_120 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_120 \
    op interface \
    ports { node_embedding_V_120_address0 { O 8 vector } node_embedding_V_120_ce0 { O 1 bit } node_embedding_V_120_q0 { I 32 vector } node_embedding_V_120_address1 { O 8 vector } node_embedding_V_120_ce1 { O 1 bit } node_embedding_V_120_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_120'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7004 \
    name node_embedding_V_121 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_121 \
    op interface \
    ports { node_embedding_V_121_address0 { O 8 vector } node_embedding_V_121_ce0 { O 1 bit } node_embedding_V_121_q0 { I 32 vector } node_embedding_V_121_address1 { O 8 vector } node_embedding_V_121_ce1 { O 1 bit } node_embedding_V_121_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_121'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7005 \
    name node_embedding_V_122 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_122 \
    op interface \
    ports { node_embedding_V_122_address0 { O 8 vector } node_embedding_V_122_ce0 { O 1 bit } node_embedding_V_122_q0 { I 32 vector } node_embedding_V_122_address1 { O 8 vector } node_embedding_V_122_ce1 { O 1 bit } node_embedding_V_122_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_122'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7006 \
    name node_embedding_V_123 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_123 \
    op interface \
    ports { node_embedding_V_123_address0 { O 8 vector } node_embedding_V_123_ce0 { O 1 bit } node_embedding_V_123_q0 { I 32 vector } node_embedding_V_123_address1 { O 8 vector } node_embedding_V_123_ce1 { O 1 bit } node_embedding_V_123_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_123'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7007 \
    name node_embedding_V_124 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_124 \
    op interface \
    ports { node_embedding_V_124_address0 { O 8 vector } node_embedding_V_124_ce0 { O 1 bit } node_embedding_V_124_q0 { I 32 vector } node_embedding_V_124_address1 { O 8 vector } node_embedding_V_124_ce1 { O 1 bit } node_embedding_V_124_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_124'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7008 \
    name node_embedding_V_125 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_125 \
    op interface \
    ports { node_embedding_V_125_address0 { O 8 vector } node_embedding_V_125_ce0 { O 1 bit } node_embedding_V_125_q0 { I 32 vector } node_embedding_V_125_address1 { O 8 vector } node_embedding_V_125_ce1 { O 1 bit } node_embedding_V_125_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_125'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7009 \
    name node_embedding_V_126 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_126 \
    op interface \
    ports { node_embedding_V_126_address0 { O 8 vector } node_embedding_V_126_ce0 { O 1 bit } node_embedding_V_126_q0 { I 32 vector } node_embedding_V_126_address1 { O 8 vector } node_embedding_V_126_ce1 { O 1 bit } node_embedding_V_126_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_126'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7010 \
    name node_embedding_V_127 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_127 \
    op interface \
    ports { node_embedding_V_127_address0 { O 8 vector } node_embedding_V_127_ce0 { O 1 bit } node_embedding_V_127_q0 { I 32 vector } node_embedding_V_127_address1 { O 8 vector } node_embedding_V_127_ce1 { O 1 bit } node_embedding_V_127_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_127'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7011 \
    name node_embedding_V_128 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_128 \
    op interface \
    ports { node_embedding_V_128_address0 { O 8 vector } node_embedding_V_128_ce0 { O 1 bit } node_embedding_V_128_q0 { I 32 vector } node_embedding_V_128_address1 { O 8 vector } node_embedding_V_128_ce1 { O 1 bit } node_embedding_V_128_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_128'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7012 \
    name node_embedding_V_129 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_129 \
    op interface \
    ports { node_embedding_V_129_address0 { O 8 vector } node_embedding_V_129_ce0 { O 1 bit } node_embedding_V_129_q0 { I 32 vector } node_embedding_V_129_address1 { O 8 vector } node_embedding_V_129_ce1 { O 1 bit } node_embedding_V_129_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_129'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7013 \
    name node_embedding_V_130 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_130 \
    op interface \
    ports { node_embedding_V_130_address0 { O 8 vector } node_embedding_V_130_ce0 { O 1 bit } node_embedding_V_130_q0 { I 32 vector } node_embedding_V_130_address1 { O 8 vector } node_embedding_V_130_ce1 { O 1 bit } node_embedding_V_130_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_130'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7014 \
    name node_embedding_V_131 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_131 \
    op interface \
    ports { node_embedding_V_131_address0 { O 8 vector } node_embedding_V_131_ce0 { O 1 bit } node_embedding_V_131_q0 { I 32 vector } node_embedding_V_131_address1 { O 8 vector } node_embedding_V_131_ce1 { O 1 bit } node_embedding_V_131_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_131'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7015 \
    name node_embedding_V_132 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_132 \
    op interface \
    ports { node_embedding_V_132_address0 { O 8 vector } node_embedding_V_132_ce0 { O 1 bit } node_embedding_V_132_q0 { I 32 vector } node_embedding_V_132_address1 { O 8 vector } node_embedding_V_132_ce1 { O 1 bit } node_embedding_V_132_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_132'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7016 \
    name node_embedding_V_133 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_133 \
    op interface \
    ports { node_embedding_V_133_address0 { O 8 vector } node_embedding_V_133_ce0 { O 1 bit } node_embedding_V_133_q0 { I 32 vector } node_embedding_V_133_address1 { O 8 vector } node_embedding_V_133_ce1 { O 1 bit } node_embedding_V_133_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_133'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7017 \
    name node_embedding_V_134 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_134 \
    op interface \
    ports { node_embedding_V_134_address0 { O 8 vector } node_embedding_V_134_ce0 { O 1 bit } node_embedding_V_134_q0 { I 32 vector } node_embedding_V_134_address1 { O 8 vector } node_embedding_V_134_ce1 { O 1 bit } node_embedding_V_134_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_134'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7018 \
    name node_embedding_V_135 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_135 \
    op interface \
    ports { node_embedding_V_135_address0 { O 8 vector } node_embedding_V_135_ce0 { O 1 bit } node_embedding_V_135_q0 { I 32 vector } node_embedding_V_135_address1 { O 8 vector } node_embedding_V_135_ce1 { O 1 bit } node_embedding_V_135_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_135'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7019 \
    name node_embedding_V_136 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_136 \
    op interface \
    ports { node_embedding_V_136_address0 { O 8 vector } node_embedding_V_136_ce0 { O 1 bit } node_embedding_V_136_q0 { I 32 vector } node_embedding_V_136_address1 { O 8 vector } node_embedding_V_136_ce1 { O 1 bit } node_embedding_V_136_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_136'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7020 \
    name node_embedding_V_137 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_137 \
    op interface \
    ports { node_embedding_V_137_address0 { O 8 vector } node_embedding_V_137_ce0 { O 1 bit } node_embedding_V_137_q0 { I 32 vector } node_embedding_V_137_address1 { O 8 vector } node_embedding_V_137_ce1 { O 1 bit } node_embedding_V_137_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_137'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7021 \
    name node_embedding_V_138 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_138 \
    op interface \
    ports { node_embedding_V_138_address0 { O 8 vector } node_embedding_V_138_ce0 { O 1 bit } node_embedding_V_138_q0 { I 32 vector } node_embedding_V_138_address1 { O 8 vector } node_embedding_V_138_ce1 { O 1 bit } node_embedding_V_138_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_138'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7022 \
    name node_embedding_V_139 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_139 \
    op interface \
    ports { node_embedding_V_139_address0 { O 8 vector } node_embedding_V_139_ce0 { O 1 bit } node_embedding_V_139_q0 { I 32 vector } node_embedding_V_139_address1 { O 8 vector } node_embedding_V_139_ce1 { O 1 bit } node_embedding_V_139_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_139'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7023 \
    name node_embedding_V_140 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_140 \
    op interface \
    ports { node_embedding_V_140_address0 { O 8 vector } node_embedding_V_140_ce0 { O 1 bit } node_embedding_V_140_q0 { I 32 vector } node_embedding_V_140_address1 { O 8 vector } node_embedding_V_140_ce1 { O 1 bit } node_embedding_V_140_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_140'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7024 \
    name node_embedding_V_141 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_141 \
    op interface \
    ports { node_embedding_V_141_address0 { O 8 vector } node_embedding_V_141_ce0 { O 1 bit } node_embedding_V_141_q0 { I 32 vector } node_embedding_V_141_address1 { O 8 vector } node_embedding_V_141_ce1 { O 1 bit } node_embedding_V_141_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_141'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7025 \
    name node_embedding_V_142 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_142 \
    op interface \
    ports { node_embedding_V_142_address0 { O 8 vector } node_embedding_V_142_ce0 { O 1 bit } node_embedding_V_142_q0 { I 32 vector } node_embedding_V_142_address1 { O 8 vector } node_embedding_V_142_ce1 { O 1 bit } node_embedding_V_142_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_142'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7026 \
    name node_embedding_V_143 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_143 \
    op interface \
    ports { node_embedding_V_143_address0 { O 8 vector } node_embedding_V_143_ce0 { O 1 bit } node_embedding_V_143_q0 { I 32 vector } node_embedding_V_143_address1 { O 8 vector } node_embedding_V_143_ce1 { O 1 bit } node_embedding_V_143_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_143'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7027 \
    name node_embedding_V_144 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_144 \
    op interface \
    ports { node_embedding_V_144_address0 { O 8 vector } node_embedding_V_144_ce0 { O 1 bit } node_embedding_V_144_q0 { I 32 vector } node_embedding_V_144_address1 { O 8 vector } node_embedding_V_144_ce1 { O 1 bit } node_embedding_V_144_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_144'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7028 \
    name node_embedding_V_145 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_145 \
    op interface \
    ports { node_embedding_V_145_address0 { O 8 vector } node_embedding_V_145_ce0 { O 1 bit } node_embedding_V_145_q0 { I 32 vector } node_embedding_V_145_address1 { O 8 vector } node_embedding_V_145_ce1 { O 1 bit } node_embedding_V_145_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_145'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7029 \
    name node_embedding_V_146 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_146 \
    op interface \
    ports { node_embedding_V_146_address0 { O 8 vector } node_embedding_V_146_ce0 { O 1 bit } node_embedding_V_146_q0 { I 32 vector } node_embedding_V_146_address1 { O 8 vector } node_embedding_V_146_ce1 { O 1 bit } node_embedding_V_146_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_146'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7030 \
    name node_embedding_V_147 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_147 \
    op interface \
    ports { node_embedding_V_147_address0 { O 8 vector } node_embedding_V_147_ce0 { O 1 bit } node_embedding_V_147_q0 { I 32 vector } node_embedding_V_147_address1 { O 8 vector } node_embedding_V_147_ce1 { O 1 bit } node_embedding_V_147_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_147'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7031 \
    name node_embedding_V_148 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_148 \
    op interface \
    ports { node_embedding_V_148_address0 { O 8 vector } node_embedding_V_148_ce0 { O 1 bit } node_embedding_V_148_q0 { I 32 vector } node_embedding_V_148_address1 { O 8 vector } node_embedding_V_148_ce1 { O 1 bit } node_embedding_V_148_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_148'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7032 \
    name node_embedding_V_149 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_149 \
    op interface \
    ports { node_embedding_V_149_address0 { O 8 vector } node_embedding_V_149_ce0 { O 1 bit } node_embedding_V_149_q0 { I 32 vector } node_embedding_V_149_address1 { O 8 vector } node_embedding_V_149_ce1 { O 1 bit } node_embedding_V_149_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_149'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7033 \
    name node_embedding_V_150 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_150 \
    op interface \
    ports { node_embedding_V_150_address0 { O 8 vector } node_embedding_V_150_ce0 { O 1 bit } node_embedding_V_150_q0 { I 32 vector } node_embedding_V_150_address1 { O 8 vector } node_embedding_V_150_ce1 { O 1 bit } node_embedding_V_150_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_150'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7034 \
    name node_embedding_V_151 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_151 \
    op interface \
    ports { node_embedding_V_151_address0 { O 8 vector } node_embedding_V_151_ce0 { O 1 bit } node_embedding_V_151_q0 { I 32 vector } node_embedding_V_151_address1 { O 8 vector } node_embedding_V_151_ce1 { O 1 bit } node_embedding_V_151_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_151'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7035 \
    name node_embedding_V_152 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_152 \
    op interface \
    ports { node_embedding_V_152_address0 { O 8 vector } node_embedding_V_152_ce0 { O 1 bit } node_embedding_V_152_q0 { I 32 vector } node_embedding_V_152_address1 { O 8 vector } node_embedding_V_152_ce1 { O 1 bit } node_embedding_V_152_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_152'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7036 \
    name node_embedding_V_153 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_153 \
    op interface \
    ports { node_embedding_V_153_address0 { O 8 vector } node_embedding_V_153_ce0 { O 1 bit } node_embedding_V_153_q0 { I 32 vector } node_embedding_V_153_address1 { O 8 vector } node_embedding_V_153_ce1 { O 1 bit } node_embedding_V_153_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_153'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7037 \
    name node_embedding_V_154 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_154 \
    op interface \
    ports { node_embedding_V_154_address0 { O 8 vector } node_embedding_V_154_ce0 { O 1 bit } node_embedding_V_154_q0 { I 32 vector } node_embedding_V_154_address1 { O 8 vector } node_embedding_V_154_ce1 { O 1 bit } node_embedding_V_154_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_154'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7038 \
    name node_embedding_V_155 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_155 \
    op interface \
    ports { node_embedding_V_155_address0 { O 8 vector } node_embedding_V_155_ce0 { O 1 bit } node_embedding_V_155_q0 { I 32 vector } node_embedding_V_155_address1 { O 8 vector } node_embedding_V_155_ce1 { O 1 bit } node_embedding_V_155_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_155'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7039 \
    name node_embedding_V_156 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_156 \
    op interface \
    ports { node_embedding_V_156_address0 { O 8 vector } node_embedding_V_156_ce0 { O 1 bit } node_embedding_V_156_q0 { I 32 vector } node_embedding_V_156_address1 { O 8 vector } node_embedding_V_156_ce1 { O 1 bit } node_embedding_V_156_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_156'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7040 \
    name node_embedding_V_157 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_157 \
    op interface \
    ports { node_embedding_V_157_address0 { O 8 vector } node_embedding_V_157_ce0 { O 1 bit } node_embedding_V_157_q0 { I 32 vector } node_embedding_V_157_address1 { O 8 vector } node_embedding_V_157_ce1 { O 1 bit } node_embedding_V_157_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_157'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7041 \
    name node_embedding_V_158 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_158 \
    op interface \
    ports { node_embedding_V_158_address0 { O 8 vector } node_embedding_V_158_ce0 { O 1 bit } node_embedding_V_158_q0 { I 32 vector } node_embedding_V_158_address1 { O 8 vector } node_embedding_V_158_ce1 { O 1 bit } node_embedding_V_158_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_158'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7042 \
    name node_embedding_V_159 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_159 \
    op interface \
    ports { node_embedding_V_159_address0 { O 8 vector } node_embedding_V_159_ce0 { O 1 bit } node_embedding_V_159_q0 { I 32 vector } node_embedding_V_159_address1 { O 8 vector } node_embedding_V_159_ce1 { O 1 bit } node_embedding_V_159_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_159'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7043 \
    name node_embedding_V_160 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_160 \
    op interface \
    ports { node_embedding_V_160_address0 { O 8 vector } node_embedding_V_160_ce0 { O 1 bit } node_embedding_V_160_q0 { I 32 vector } node_embedding_V_160_address1 { O 8 vector } node_embedding_V_160_ce1 { O 1 bit } node_embedding_V_160_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_160'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7044 \
    name node_embedding_V_161 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_161 \
    op interface \
    ports { node_embedding_V_161_address0 { O 8 vector } node_embedding_V_161_ce0 { O 1 bit } node_embedding_V_161_q0 { I 32 vector } node_embedding_V_161_address1 { O 8 vector } node_embedding_V_161_ce1 { O 1 bit } node_embedding_V_161_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_161'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7045 \
    name node_embedding_V_162 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_162 \
    op interface \
    ports { node_embedding_V_162_address0 { O 8 vector } node_embedding_V_162_ce0 { O 1 bit } node_embedding_V_162_q0 { I 32 vector } node_embedding_V_162_address1 { O 8 vector } node_embedding_V_162_ce1 { O 1 bit } node_embedding_V_162_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_162'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7046 \
    name node_embedding_V_163 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_163 \
    op interface \
    ports { node_embedding_V_163_address0 { O 8 vector } node_embedding_V_163_ce0 { O 1 bit } node_embedding_V_163_q0 { I 32 vector } node_embedding_V_163_address1 { O 8 vector } node_embedding_V_163_ce1 { O 1 bit } node_embedding_V_163_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_163'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7047 \
    name node_embedding_V_164 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_164 \
    op interface \
    ports { node_embedding_V_164_address0 { O 8 vector } node_embedding_V_164_ce0 { O 1 bit } node_embedding_V_164_q0 { I 32 vector } node_embedding_V_164_address1 { O 8 vector } node_embedding_V_164_ce1 { O 1 bit } node_embedding_V_164_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_164'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7048 \
    name node_embedding_V_165 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_165 \
    op interface \
    ports { node_embedding_V_165_address0 { O 8 vector } node_embedding_V_165_ce0 { O 1 bit } node_embedding_V_165_q0 { I 32 vector } node_embedding_V_165_address1 { O 8 vector } node_embedding_V_165_ce1 { O 1 bit } node_embedding_V_165_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_165'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7049 \
    name node_embedding_V_166 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_166 \
    op interface \
    ports { node_embedding_V_166_address0 { O 8 vector } node_embedding_V_166_ce0 { O 1 bit } node_embedding_V_166_q0 { I 32 vector } node_embedding_V_166_address1 { O 8 vector } node_embedding_V_166_ce1 { O 1 bit } node_embedding_V_166_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_166'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7050 \
    name node_embedding_V_167 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_167 \
    op interface \
    ports { node_embedding_V_167_address0 { O 8 vector } node_embedding_V_167_ce0 { O 1 bit } node_embedding_V_167_q0 { I 32 vector } node_embedding_V_167_address1 { O 8 vector } node_embedding_V_167_ce1 { O 1 bit } node_embedding_V_167_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_167'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7051 \
    name node_embedding_V_168 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_168 \
    op interface \
    ports { node_embedding_V_168_address0 { O 8 vector } node_embedding_V_168_ce0 { O 1 bit } node_embedding_V_168_q0 { I 32 vector } node_embedding_V_168_address1 { O 8 vector } node_embedding_V_168_ce1 { O 1 bit } node_embedding_V_168_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_168'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7052 \
    name node_embedding_V_169 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_169 \
    op interface \
    ports { node_embedding_V_169_address0 { O 8 vector } node_embedding_V_169_ce0 { O 1 bit } node_embedding_V_169_q0 { I 32 vector } node_embedding_V_169_address1 { O 8 vector } node_embedding_V_169_ce1 { O 1 bit } node_embedding_V_169_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_169'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7053 \
    name node_embedding_V_170 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_170 \
    op interface \
    ports { node_embedding_V_170_address0 { O 8 vector } node_embedding_V_170_ce0 { O 1 bit } node_embedding_V_170_q0 { I 32 vector } node_embedding_V_170_address1 { O 8 vector } node_embedding_V_170_ce1 { O 1 bit } node_embedding_V_170_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_170'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7054 \
    name node_embedding_V_171 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_171 \
    op interface \
    ports { node_embedding_V_171_address0 { O 8 vector } node_embedding_V_171_ce0 { O 1 bit } node_embedding_V_171_q0 { I 32 vector } node_embedding_V_171_address1 { O 8 vector } node_embedding_V_171_ce1 { O 1 bit } node_embedding_V_171_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_171'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7055 \
    name node_embedding_V_172 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_172 \
    op interface \
    ports { node_embedding_V_172_address0 { O 8 vector } node_embedding_V_172_ce0 { O 1 bit } node_embedding_V_172_q0 { I 32 vector } node_embedding_V_172_address1 { O 8 vector } node_embedding_V_172_ce1 { O 1 bit } node_embedding_V_172_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_172'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7056 \
    name node_embedding_V_173 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_173 \
    op interface \
    ports { node_embedding_V_173_address0 { O 8 vector } node_embedding_V_173_ce0 { O 1 bit } node_embedding_V_173_q0 { I 32 vector } node_embedding_V_173_address1 { O 8 vector } node_embedding_V_173_ce1 { O 1 bit } node_embedding_V_173_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_173'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7057 \
    name node_embedding_V_174 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_174 \
    op interface \
    ports { node_embedding_V_174_address0 { O 8 vector } node_embedding_V_174_ce0 { O 1 bit } node_embedding_V_174_q0 { I 32 vector } node_embedding_V_174_address1 { O 8 vector } node_embedding_V_174_ce1 { O 1 bit } node_embedding_V_174_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_174'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7058 \
    name node_embedding_V_175 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_175 \
    op interface \
    ports { node_embedding_V_175_address0 { O 8 vector } node_embedding_V_175_ce0 { O 1 bit } node_embedding_V_175_q0 { I 32 vector } node_embedding_V_175_address1 { O 8 vector } node_embedding_V_175_ce1 { O 1 bit } node_embedding_V_175_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_175'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7059 \
    name node_embedding_V_176 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_176 \
    op interface \
    ports { node_embedding_V_176_address0 { O 8 vector } node_embedding_V_176_ce0 { O 1 bit } node_embedding_V_176_q0 { I 32 vector } node_embedding_V_176_address1 { O 8 vector } node_embedding_V_176_ce1 { O 1 bit } node_embedding_V_176_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_176'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7060 \
    name node_embedding_V_177 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_177 \
    op interface \
    ports { node_embedding_V_177_address0 { O 8 vector } node_embedding_V_177_ce0 { O 1 bit } node_embedding_V_177_q0 { I 32 vector } node_embedding_V_177_address1 { O 8 vector } node_embedding_V_177_ce1 { O 1 bit } node_embedding_V_177_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_177'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7061 \
    name node_embedding_V_178 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_178 \
    op interface \
    ports { node_embedding_V_178_address0 { O 8 vector } node_embedding_V_178_ce0 { O 1 bit } node_embedding_V_178_q0 { I 32 vector } node_embedding_V_178_address1 { O 8 vector } node_embedding_V_178_ce1 { O 1 bit } node_embedding_V_178_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_178'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7062 \
    name node_embedding_V_179 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_179 \
    op interface \
    ports { node_embedding_V_179_address0 { O 8 vector } node_embedding_V_179_ce0 { O 1 bit } node_embedding_V_179_q0 { I 32 vector } node_embedding_V_179_address1 { O 8 vector } node_embedding_V_179_ce1 { O 1 bit } node_embedding_V_179_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_179'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7063 \
    name node_embedding_V_180 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_180 \
    op interface \
    ports { node_embedding_V_180_address0 { O 8 vector } node_embedding_V_180_ce0 { O 1 bit } node_embedding_V_180_q0 { I 32 vector } node_embedding_V_180_address1 { O 8 vector } node_embedding_V_180_ce1 { O 1 bit } node_embedding_V_180_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_180'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7064 \
    name node_embedding_V_181 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_181 \
    op interface \
    ports { node_embedding_V_181_address0 { O 8 vector } node_embedding_V_181_ce0 { O 1 bit } node_embedding_V_181_q0 { I 32 vector } node_embedding_V_181_address1 { O 8 vector } node_embedding_V_181_ce1 { O 1 bit } node_embedding_V_181_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_181'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7065 \
    name node_embedding_V_182 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_182 \
    op interface \
    ports { node_embedding_V_182_address0 { O 8 vector } node_embedding_V_182_ce0 { O 1 bit } node_embedding_V_182_q0 { I 32 vector } node_embedding_V_182_address1 { O 8 vector } node_embedding_V_182_ce1 { O 1 bit } node_embedding_V_182_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_182'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7066 \
    name node_embedding_V_183 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_183 \
    op interface \
    ports { node_embedding_V_183_address0 { O 8 vector } node_embedding_V_183_ce0 { O 1 bit } node_embedding_V_183_q0 { I 32 vector } node_embedding_V_183_address1 { O 8 vector } node_embedding_V_183_ce1 { O 1 bit } node_embedding_V_183_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_183'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7067 \
    name node_embedding_V_184 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_184 \
    op interface \
    ports { node_embedding_V_184_address0 { O 8 vector } node_embedding_V_184_ce0 { O 1 bit } node_embedding_V_184_q0 { I 32 vector } node_embedding_V_184_address1 { O 8 vector } node_embedding_V_184_ce1 { O 1 bit } node_embedding_V_184_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_184'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7068 \
    name node_embedding_V_185 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_185 \
    op interface \
    ports { node_embedding_V_185_address0 { O 8 vector } node_embedding_V_185_ce0 { O 1 bit } node_embedding_V_185_q0 { I 32 vector } node_embedding_V_185_address1 { O 8 vector } node_embedding_V_185_ce1 { O 1 bit } node_embedding_V_185_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_185'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7069 \
    name node_embedding_V_186 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_186 \
    op interface \
    ports { node_embedding_V_186_address0 { O 8 vector } node_embedding_V_186_ce0 { O 1 bit } node_embedding_V_186_q0 { I 32 vector } node_embedding_V_186_address1 { O 8 vector } node_embedding_V_186_ce1 { O 1 bit } node_embedding_V_186_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_186'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7070 \
    name node_embedding_V_187 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_187 \
    op interface \
    ports { node_embedding_V_187_address0 { O 8 vector } node_embedding_V_187_ce0 { O 1 bit } node_embedding_V_187_q0 { I 32 vector } node_embedding_V_187_address1 { O 8 vector } node_embedding_V_187_ce1 { O 1 bit } node_embedding_V_187_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_187'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7071 \
    name node_embedding_V_188 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_188 \
    op interface \
    ports { node_embedding_V_188_address0 { O 8 vector } node_embedding_V_188_ce0 { O 1 bit } node_embedding_V_188_q0 { I 32 vector } node_embedding_V_188_address1 { O 8 vector } node_embedding_V_188_ce1 { O 1 bit } node_embedding_V_188_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_188'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7072 \
    name node_embedding_V_189 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_189 \
    op interface \
    ports { node_embedding_V_189_address0 { O 8 vector } node_embedding_V_189_ce0 { O 1 bit } node_embedding_V_189_q0 { I 32 vector } node_embedding_V_189_address1 { O 8 vector } node_embedding_V_189_ce1 { O 1 bit } node_embedding_V_189_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_189'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7073 \
    name node_embedding_V_190 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_190 \
    op interface \
    ports { node_embedding_V_190_address0 { O 8 vector } node_embedding_V_190_ce0 { O 1 bit } node_embedding_V_190_q0 { I 32 vector } node_embedding_V_190_address1 { O 8 vector } node_embedding_V_190_ce1 { O 1 bit } node_embedding_V_190_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_190'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7074 \
    name node_embedding_V_191 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_191 \
    op interface \
    ports { node_embedding_V_191_address0 { O 8 vector } node_embedding_V_191_ce0 { O 1 bit } node_embedding_V_191_q0 { I 32 vector } node_embedding_V_191_address1 { O 8 vector } node_embedding_V_191_ce1 { O 1 bit } node_embedding_V_191_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_191'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7075 \
    name node_embedding_V_192 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_192 \
    op interface \
    ports { node_embedding_V_192_address0 { O 8 vector } node_embedding_V_192_ce0 { O 1 bit } node_embedding_V_192_q0 { I 32 vector } node_embedding_V_192_address1 { O 8 vector } node_embedding_V_192_ce1 { O 1 bit } node_embedding_V_192_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_192'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7076 \
    name node_embedding_V_193 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_193 \
    op interface \
    ports { node_embedding_V_193_address0 { O 8 vector } node_embedding_V_193_ce0 { O 1 bit } node_embedding_V_193_q0 { I 32 vector } node_embedding_V_193_address1 { O 8 vector } node_embedding_V_193_ce1 { O 1 bit } node_embedding_V_193_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_193'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7077 \
    name node_embedding_V_194 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_194 \
    op interface \
    ports { node_embedding_V_194_address0 { O 8 vector } node_embedding_V_194_ce0 { O 1 bit } node_embedding_V_194_q0 { I 32 vector } node_embedding_V_194_address1 { O 8 vector } node_embedding_V_194_ce1 { O 1 bit } node_embedding_V_194_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_194'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7078 \
    name node_embedding_V_195 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_195 \
    op interface \
    ports { node_embedding_V_195_address0 { O 8 vector } node_embedding_V_195_ce0 { O 1 bit } node_embedding_V_195_q0 { I 32 vector } node_embedding_V_195_address1 { O 8 vector } node_embedding_V_195_ce1 { O 1 bit } node_embedding_V_195_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_195'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7079 \
    name node_embedding_V_196 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_196 \
    op interface \
    ports { node_embedding_V_196_address0 { O 8 vector } node_embedding_V_196_ce0 { O 1 bit } node_embedding_V_196_q0 { I 32 vector } node_embedding_V_196_address1 { O 8 vector } node_embedding_V_196_ce1 { O 1 bit } node_embedding_V_196_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_196'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7080 \
    name node_embedding_V_197 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_197 \
    op interface \
    ports { node_embedding_V_197_address0 { O 8 vector } node_embedding_V_197_ce0 { O 1 bit } node_embedding_V_197_q0 { I 32 vector } node_embedding_V_197_address1 { O 8 vector } node_embedding_V_197_ce1 { O 1 bit } node_embedding_V_197_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_197'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7081 \
    name node_embedding_V_198 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_198 \
    op interface \
    ports { node_embedding_V_198_address0 { O 8 vector } node_embedding_V_198_ce0 { O 1 bit } node_embedding_V_198_q0 { I 32 vector } node_embedding_V_198_address1 { O 8 vector } node_embedding_V_198_ce1 { O 1 bit } node_embedding_V_198_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_198'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7082 \
    name node_embedding_V_199 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_199 \
    op interface \
    ports { node_embedding_V_199_address0 { O 8 vector } node_embedding_V_199_ce0 { O 1 bit } node_embedding_V_199_q0 { I 32 vector } node_embedding_V_199_address1 { O 8 vector } node_embedding_V_199_ce1 { O 1 bit } node_embedding_V_199_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_199'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7083 \
    name node_embedding_V_200 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_200 \
    op interface \
    ports { node_embedding_V_200_address0 { O 8 vector } node_embedding_V_200_ce0 { O 1 bit } node_embedding_V_200_q0 { I 32 vector } node_embedding_V_200_address1 { O 8 vector } node_embedding_V_200_ce1 { O 1 bit } node_embedding_V_200_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_200'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7084 \
    name node_embedding_V_201 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_201 \
    op interface \
    ports { node_embedding_V_201_address0 { O 8 vector } node_embedding_V_201_ce0 { O 1 bit } node_embedding_V_201_q0 { I 32 vector } node_embedding_V_201_address1 { O 8 vector } node_embedding_V_201_ce1 { O 1 bit } node_embedding_V_201_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_201'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7085 \
    name node_embedding_V_202 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_202 \
    op interface \
    ports { node_embedding_V_202_address0 { O 8 vector } node_embedding_V_202_ce0 { O 1 bit } node_embedding_V_202_q0 { I 32 vector } node_embedding_V_202_address1 { O 8 vector } node_embedding_V_202_ce1 { O 1 bit } node_embedding_V_202_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_202'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7086 \
    name node_embedding_V_203 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_203 \
    op interface \
    ports { node_embedding_V_203_address0 { O 8 vector } node_embedding_V_203_ce0 { O 1 bit } node_embedding_V_203_q0 { I 32 vector } node_embedding_V_203_address1 { O 8 vector } node_embedding_V_203_ce1 { O 1 bit } node_embedding_V_203_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_203'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7087 \
    name node_embedding_V_204 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_204 \
    op interface \
    ports { node_embedding_V_204_address0 { O 8 vector } node_embedding_V_204_ce0 { O 1 bit } node_embedding_V_204_q0 { I 32 vector } node_embedding_V_204_address1 { O 8 vector } node_embedding_V_204_ce1 { O 1 bit } node_embedding_V_204_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_204'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7088 \
    name node_embedding_V_205 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_205 \
    op interface \
    ports { node_embedding_V_205_address0 { O 8 vector } node_embedding_V_205_ce0 { O 1 bit } node_embedding_V_205_q0 { I 32 vector } node_embedding_V_205_address1 { O 8 vector } node_embedding_V_205_ce1 { O 1 bit } node_embedding_V_205_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_205'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7089 \
    name node_embedding_V_206 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_206 \
    op interface \
    ports { node_embedding_V_206_address0 { O 8 vector } node_embedding_V_206_ce0 { O 1 bit } node_embedding_V_206_q0 { I 32 vector } node_embedding_V_206_address1 { O 8 vector } node_embedding_V_206_ce1 { O 1 bit } node_embedding_V_206_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_206'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7090 \
    name node_embedding_V_207 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_207 \
    op interface \
    ports { node_embedding_V_207_address0 { O 8 vector } node_embedding_V_207_ce0 { O 1 bit } node_embedding_V_207_q0 { I 32 vector } node_embedding_V_207_address1 { O 8 vector } node_embedding_V_207_ce1 { O 1 bit } node_embedding_V_207_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_207'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7091 \
    name node_embedding_V_208 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_208 \
    op interface \
    ports { node_embedding_V_208_address0 { O 8 vector } node_embedding_V_208_ce0 { O 1 bit } node_embedding_V_208_q0 { I 32 vector } node_embedding_V_208_address1 { O 8 vector } node_embedding_V_208_ce1 { O 1 bit } node_embedding_V_208_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_208'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7092 \
    name node_embedding_V_209 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_209 \
    op interface \
    ports { node_embedding_V_209_address0 { O 8 vector } node_embedding_V_209_ce0 { O 1 bit } node_embedding_V_209_q0 { I 32 vector } node_embedding_V_209_address1 { O 8 vector } node_embedding_V_209_ce1 { O 1 bit } node_embedding_V_209_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_209'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7093 \
    name node_embedding_V_210 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_210 \
    op interface \
    ports { node_embedding_V_210_address0 { O 8 vector } node_embedding_V_210_ce0 { O 1 bit } node_embedding_V_210_q0 { I 32 vector } node_embedding_V_210_address1 { O 8 vector } node_embedding_V_210_ce1 { O 1 bit } node_embedding_V_210_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_210'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7094 \
    name node_embedding_V_211 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_211 \
    op interface \
    ports { node_embedding_V_211_address0 { O 8 vector } node_embedding_V_211_ce0 { O 1 bit } node_embedding_V_211_q0 { I 32 vector } node_embedding_V_211_address1 { O 8 vector } node_embedding_V_211_ce1 { O 1 bit } node_embedding_V_211_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_211'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7095 \
    name node_embedding_V_212 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_212 \
    op interface \
    ports { node_embedding_V_212_address0 { O 8 vector } node_embedding_V_212_ce0 { O 1 bit } node_embedding_V_212_q0 { I 32 vector } node_embedding_V_212_address1 { O 8 vector } node_embedding_V_212_ce1 { O 1 bit } node_embedding_V_212_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_212'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7096 \
    name node_embedding_V_213 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_213 \
    op interface \
    ports { node_embedding_V_213_address0 { O 8 vector } node_embedding_V_213_ce0 { O 1 bit } node_embedding_V_213_q0 { I 32 vector } node_embedding_V_213_address1 { O 8 vector } node_embedding_V_213_ce1 { O 1 bit } node_embedding_V_213_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_213'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7097 \
    name node_embedding_V_214 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_214 \
    op interface \
    ports { node_embedding_V_214_address0 { O 8 vector } node_embedding_V_214_ce0 { O 1 bit } node_embedding_V_214_q0 { I 32 vector } node_embedding_V_214_address1 { O 8 vector } node_embedding_V_214_ce1 { O 1 bit } node_embedding_V_214_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_214'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7098 \
    name node_embedding_V_215 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_215 \
    op interface \
    ports { node_embedding_V_215_address0 { O 8 vector } node_embedding_V_215_ce0 { O 1 bit } node_embedding_V_215_q0 { I 32 vector } node_embedding_V_215_address1 { O 8 vector } node_embedding_V_215_ce1 { O 1 bit } node_embedding_V_215_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_215'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7099 \
    name node_embedding_V_216 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_216 \
    op interface \
    ports { node_embedding_V_216_address0 { O 8 vector } node_embedding_V_216_ce0 { O 1 bit } node_embedding_V_216_q0 { I 32 vector } node_embedding_V_216_address1 { O 8 vector } node_embedding_V_216_ce1 { O 1 bit } node_embedding_V_216_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_216'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7100 \
    name node_embedding_V_217 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_217 \
    op interface \
    ports { node_embedding_V_217_address0 { O 8 vector } node_embedding_V_217_ce0 { O 1 bit } node_embedding_V_217_q0 { I 32 vector } node_embedding_V_217_address1 { O 8 vector } node_embedding_V_217_ce1 { O 1 bit } node_embedding_V_217_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_217'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7101 \
    name node_embedding_V_218 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_218 \
    op interface \
    ports { node_embedding_V_218_address0 { O 8 vector } node_embedding_V_218_ce0 { O 1 bit } node_embedding_V_218_q0 { I 32 vector } node_embedding_V_218_address1 { O 8 vector } node_embedding_V_218_ce1 { O 1 bit } node_embedding_V_218_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_218'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7102 \
    name node_embedding_V_219 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_219 \
    op interface \
    ports { node_embedding_V_219_address0 { O 8 vector } node_embedding_V_219_ce0 { O 1 bit } node_embedding_V_219_q0 { I 32 vector } node_embedding_V_219_address1 { O 8 vector } node_embedding_V_219_ce1 { O 1 bit } node_embedding_V_219_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_219'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7103 \
    name node_embedding_V_220 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_220 \
    op interface \
    ports { node_embedding_V_220_address0 { O 8 vector } node_embedding_V_220_ce0 { O 1 bit } node_embedding_V_220_q0 { I 32 vector } node_embedding_V_220_address1 { O 8 vector } node_embedding_V_220_ce1 { O 1 bit } node_embedding_V_220_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_220'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7104 \
    name node_embedding_V_221 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_221 \
    op interface \
    ports { node_embedding_V_221_address0 { O 8 vector } node_embedding_V_221_ce0 { O 1 bit } node_embedding_V_221_q0 { I 32 vector } node_embedding_V_221_address1 { O 8 vector } node_embedding_V_221_ce1 { O 1 bit } node_embedding_V_221_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_221'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7105 \
    name node_embedding_V_222 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_222 \
    op interface \
    ports { node_embedding_V_222_address0 { O 8 vector } node_embedding_V_222_ce0 { O 1 bit } node_embedding_V_222_q0 { I 32 vector } node_embedding_V_222_address1 { O 8 vector } node_embedding_V_222_ce1 { O 1 bit } node_embedding_V_222_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_222'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7106 \
    name node_embedding_V_223 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_223 \
    op interface \
    ports { node_embedding_V_223_address0 { O 8 vector } node_embedding_V_223_ce0 { O 1 bit } node_embedding_V_223_q0 { I 32 vector } node_embedding_V_223_address1 { O 8 vector } node_embedding_V_223_ce1 { O 1 bit } node_embedding_V_223_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_223'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7107 \
    name node_embedding_V_224 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_224 \
    op interface \
    ports { node_embedding_V_224_address0 { O 8 vector } node_embedding_V_224_ce0 { O 1 bit } node_embedding_V_224_q0 { I 32 vector } node_embedding_V_224_address1 { O 8 vector } node_embedding_V_224_ce1 { O 1 bit } node_embedding_V_224_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_224'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7108 \
    name node_embedding_V_225 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_225 \
    op interface \
    ports { node_embedding_V_225_address0 { O 8 vector } node_embedding_V_225_ce0 { O 1 bit } node_embedding_V_225_q0 { I 32 vector } node_embedding_V_225_address1 { O 8 vector } node_embedding_V_225_ce1 { O 1 bit } node_embedding_V_225_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_225'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7109 \
    name node_embedding_V_226 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_226 \
    op interface \
    ports { node_embedding_V_226_address0 { O 8 vector } node_embedding_V_226_ce0 { O 1 bit } node_embedding_V_226_q0 { I 32 vector } node_embedding_V_226_address1 { O 8 vector } node_embedding_V_226_ce1 { O 1 bit } node_embedding_V_226_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_226'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7110 \
    name node_embedding_V_227 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_227 \
    op interface \
    ports { node_embedding_V_227_address0 { O 8 vector } node_embedding_V_227_ce0 { O 1 bit } node_embedding_V_227_q0 { I 32 vector } node_embedding_V_227_address1 { O 8 vector } node_embedding_V_227_ce1 { O 1 bit } node_embedding_V_227_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_227'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7111 \
    name node_embedding_V_228 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_228 \
    op interface \
    ports { node_embedding_V_228_address0 { O 8 vector } node_embedding_V_228_ce0 { O 1 bit } node_embedding_V_228_q0 { I 32 vector } node_embedding_V_228_address1 { O 8 vector } node_embedding_V_228_ce1 { O 1 bit } node_embedding_V_228_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_228'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7112 \
    name node_embedding_V_229 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_229 \
    op interface \
    ports { node_embedding_V_229_address0 { O 8 vector } node_embedding_V_229_ce0 { O 1 bit } node_embedding_V_229_q0 { I 32 vector } node_embedding_V_229_address1 { O 8 vector } node_embedding_V_229_ce1 { O 1 bit } node_embedding_V_229_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_229'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7113 \
    name node_embedding_V_230 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_230 \
    op interface \
    ports { node_embedding_V_230_address0 { O 8 vector } node_embedding_V_230_ce0 { O 1 bit } node_embedding_V_230_q0 { I 32 vector } node_embedding_V_230_address1 { O 8 vector } node_embedding_V_230_ce1 { O 1 bit } node_embedding_V_230_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_230'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7114 \
    name node_embedding_V_231 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_231 \
    op interface \
    ports { node_embedding_V_231_address0 { O 8 vector } node_embedding_V_231_ce0 { O 1 bit } node_embedding_V_231_q0 { I 32 vector } node_embedding_V_231_address1 { O 8 vector } node_embedding_V_231_ce1 { O 1 bit } node_embedding_V_231_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_231'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7115 \
    name node_embedding_V_232 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_232 \
    op interface \
    ports { node_embedding_V_232_address0 { O 8 vector } node_embedding_V_232_ce0 { O 1 bit } node_embedding_V_232_q0 { I 32 vector } node_embedding_V_232_address1 { O 8 vector } node_embedding_V_232_ce1 { O 1 bit } node_embedding_V_232_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_232'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7116 \
    name node_embedding_V_233 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_233 \
    op interface \
    ports { node_embedding_V_233_address0 { O 8 vector } node_embedding_V_233_ce0 { O 1 bit } node_embedding_V_233_q0 { I 32 vector } node_embedding_V_233_address1 { O 8 vector } node_embedding_V_233_ce1 { O 1 bit } node_embedding_V_233_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_233'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7117 \
    name node_embedding_V_234 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_234 \
    op interface \
    ports { node_embedding_V_234_address0 { O 8 vector } node_embedding_V_234_ce0 { O 1 bit } node_embedding_V_234_q0 { I 32 vector } node_embedding_V_234_address1 { O 8 vector } node_embedding_V_234_ce1 { O 1 bit } node_embedding_V_234_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_234'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7118 \
    name node_embedding_V_235 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_235 \
    op interface \
    ports { node_embedding_V_235_address0 { O 8 vector } node_embedding_V_235_ce0 { O 1 bit } node_embedding_V_235_q0 { I 32 vector } node_embedding_V_235_address1 { O 8 vector } node_embedding_V_235_ce1 { O 1 bit } node_embedding_V_235_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_235'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7119 \
    name node_embedding_V_236 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_236 \
    op interface \
    ports { node_embedding_V_236_address0 { O 8 vector } node_embedding_V_236_ce0 { O 1 bit } node_embedding_V_236_q0 { I 32 vector } node_embedding_V_236_address1 { O 8 vector } node_embedding_V_236_ce1 { O 1 bit } node_embedding_V_236_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_236'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7120 \
    name node_embedding_V_237 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_237 \
    op interface \
    ports { node_embedding_V_237_address0 { O 8 vector } node_embedding_V_237_ce0 { O 1 bit } node_embedding_V_237_q0 { I 32 vector } node_embedding_V_237_address1 { O 8 vector } node_embedding_V_237_ce1 { O 1 bit } node_embedding_V_237_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_237'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7121 \
    name node_embedding_V_238 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_238 \
    op interface \
    ports { node_embedding_V_238_address0 { O 8 vector } node_embedding_V_238_ce0 { O 1 bit } node_embedding_V_238_q0 { I 32 vector } node_embedding_V_238_address1 { O 8 vector } node_embedding_V_238_ce1 { O 1 bit } node_embedding_V_238_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_238'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7122 \
    name node_embedding_V_239 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_239 \
    op interface \
    ports { node_embedding_V_239_address0 { O 8 vector } node_embedding_V_239_ce0 { O 1 bit } node_embedding_V_239_q0 { I 32 vector } node_embedding_V_239_address1 { O 8 vector } node_embedding_V_239_ce1 { O 1 bit } node_embedding_V_239_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_239'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7123 \
    name node_embedding_V_240 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_240 \
    op interface \
    ports { node_embedding_V_240_address0 { O 8 vector } node_embedding_V_240_ce0 { O 1 bit } node_embedding_V_240_q0 { I 32 vector } node_embedding_V_240_address1 { O 8 vector } node_embedding_V_240_ce1 { O 1 bit } node_embedding_V_240_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_240'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7124 \
    name node_embedding_V_241 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_241 \
    op interface \
    ports { node_embedding_V_241_address0 { O 8 vector } node_embedding_V_241_ce0 { O 1 bit } node_embedding_V_241_q0 { I 32 vector } node_embedding_V_241_address1 { O 8 vector } node_embedding_V_241_ce1 { O 1 bit } node_embedding_V_241_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_241'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7125 \
    name node_embedding_V_242 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_242 \
    op interface \
    ports { node_embedding_V_242_address0 { O 8 vector } node_embedding_V_242_ce0 { O 1 bit } node_embedding_V_242_q0 { I 32 vector } node_embedding_V_242_address1 { O 8 vector } node_embedding_V_242_ce1 { O 1 bit } node_embedding_V_242_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_242'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7126 \
    name node_embedding_V_243 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_243 \
    op interface \
    ports { node_embedding_V_243_address0 { O 8 vector } node_embedding_V_243_ce0 { O 1 bit } node_embedding_V_243_q0 { I 32 vector } node_embedding_V_243_address1 { O 8 vector } node_embedding_V_243_ce1 { O 1 bit } node_embedding_V_243_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_243'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7127 \
    name node_embedding_V_244 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_244 \
    op interface \
    ports { node_embedding_V_244_address0 { O 8 vector } node_embedding_V_244_ce0 { O 1 bit } node_embedding_V_244_q0 { I 32 vector } node_embedding_V_244_address1 { O 8 vector } node_embedding_V_244_ce1 { O 1 bit } node_embedding_V_244_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_244'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7128 \
    name node_embedding_V_245 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_245 \
    op interface \
    ports { node_embedding_V_245_address0 { O 8 vector } node_embedding_V_245_ce0 { O 1 bit } node_embedding_V_245_q0 { I 32 vector } node_embedding_V_245_address1 { O 8 vector } node_embedding_V_245_ce1 { O 1 bit } node_embedding_V_245_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_245'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7129 \
    name node_embedding_V_246 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_246 \
    op interface \
    ports { node_embedding_V_246_address0 { O 8 vector } node_embedding_V_246_ce0 { O 1 bit } node_embedding_V_246_q0 { I 32 vector } node_embedding_V_246_address1 { O 8 vector } node_embedding_V_246_ce1 { O 1 bit } node_embedding_V_246_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_246'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7130 \
    name node_embedding_V_247 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_247 \
    op interface \
    ports { node_embedding_V_247_address0 { O 8 vector } node_embedding_V_247_ce0 { O 1 bit } node_embedding_V_247_q0 { I 32 vector } node_embedding_V_247_address1 { O 8 vector } node_embedding_V_247_ce1 { O 1 bit } node_embedding_V_247_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_247'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7131 \
    name node_embedding_V_248 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_248 \
    op interface \
    ports { node_embedding_V_248_address0 { O 8 vector } node_embedding_V_248_ce0 { O 1 bit } node_embedding_V_248_q0 { I 32 vector } node_embedding_V_248_address1 { O 8 vector } node_embedding_V_248_ce1 { O 1 bit } node_embedding_V_248_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_248'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7132 \
    name node_embedding_V_249 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_249 \
    op interface \
    ports { node_embedding_V_249_address0 { O 8 vector } node_embedding_V_249_ce0 { O 1 bit } node_embedding_V_249_q0 { I 32 vector } node_embedding_V_249_address1 { O 8 vector } node_embedding_V_249_ce1 { O 1 bit } node_embedding_V_249_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_249'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7133 \
    name node_embedding_V_250 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_250 \
    op interface \
    ports { node_embedding_V_250_address0 { O 8 vector } node_embedding_V_250_ce0 { O 1 bit } node_embedding_V_250_q0 { I 32 vector } node_embedding_V_250_address1 { O 8 vector } node_embedding_V_250_ce1 { O 1 bit } node_embedding_V_250_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_250'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7134 \
    name node_embedding_V_251 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_251 \
    op interface \
    ports { node_embedding_V_251_address0 { O 8 vector } node_embedding_V_251_ce0 { O 1 bit } node_embedding_V_251_q0 { I 32 vector } node_embedding_V_251_address1 { O 8 vector } node_embedding_V_251_ce1 { O 1 bit } node_embedding_V_251_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_251'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7135 \
    name node_embedding_V_252 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_252 \
    op interface \
    ports { node_embedding_V_252_address0 { O 8 vector } node_embedding_V_252_ce0 { O 1 bit } node_embedding_V_252_q0 { I 32 vector } node_embedding_V_252_address1 { O 8 vector } node_embedding_V_252_ce1 { O 1 bit } node_embedding_V_252_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_252'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7136 \
    name node_embedding_V_253 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_253 \
    op interface \
    ports { node_embedding_V_253_address0 { O 8 vector } node_embedding_V_253_ce0 { O 1 bit } node_embedding_V_253_q0 { I 32 vector } node_embedding_V_253_address1 { O 8 vector } node_embedding_V_253_ce1 { O 1 bit } node_embedding_V_253_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_253'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7137 \
    name node_embedding_V_254 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_254 \
    op interface \
    ports { node_embedding_V_254_address0 { O 8 vector } node_embedding_V_254_ce0 { O 1 bit } node_embedding_V_254_q0 { I 32 vector } node_embedding_V_254_address1 { O 8 vector } node_embedding_V_254_ce1 { O 1 bit } node_embedding_V_254_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_254'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7138 \
    name node_embedding_V_255 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_255 \
    op interface \
    ports { node_embedding_V_255_address0 { O 8 vector } node_embedding_V_255_ce0 { O 1 bit } node_embedding_V_255_q0 { I 32 vector } node_embedding_V_255_address1 { O 8 vector } node_embedding_V_255_ce1 { O 1 bit } node_embedding_V_255_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_255'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7139 \
    name node_embedding_V_256 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_256 \
    op interface \
    ports { node_embedding_V_256_address0 { O 8 vector } node_embedding_V_256_ce0 { O 1 bit } node_embedding_V_256_q0 { I 32 vector } node_embedding_V_256_address1 { O 8 vector } node_embedding_V_256_ce1 { O 1 bit } node_embedding_V_256_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_256'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7140 \
    name node_embedding_V_257 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_257 \
    op interface \
    ports { node_embedding_V_257_address0 { O 8 vector } node_embedding_V_257_ce0 { O 1 bit } node_embedding_V_257_q0 { I 32 vector } node_embedding_V_257_address1 { O 8 vector } node_embedding_V_257_ce1 { O 1 bit } node_embedding_V_257_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_257'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7141 \
    name node_embedding_V_258 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_258 \
    op interface \
    ports { node_embedding_V_258_address0 { O 8 vector } node_embedding_V_258_ce0 { O 1 bit } node_embedding_V_258_q0 { I 32 vector } node_embedding_V_258_address1 { O 8 vector } node_embedding_V_258_ce1 { O 1 bit } node_embedding_V_258_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_258'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7142 \
    name node_embedding_V_259 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_259 \
    op interface \
    ports { node_embedding_V_259_address0 { O 8 vector } node_embedding_V_259_ce0 { O 1 bit } node_embedding_V_259_q0 { I 32 vector } node_embedding_V_259_address1 { O 8 vector } node_embedding_V_259_ce1 { O 1 bit } node_embedding_V_259_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_259'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7143 \
    name node_embedding_V_260 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_260 \
    op interface \
    ports { node_embedding_V_260_address0 { O 8 vector } node_embedding_V_260_ce0 { O 1 bit } node_embedding_V_260_q0 { I 32 vector } node_embedding_V_260_address1 { O 8 vector } node_embedding_V_260_ce1 { O 1 bit } node_embedding_V_260_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_260'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7144 \
    name node_embedding_V_261 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_261 \
    op interface \
    ports { node_embedding_V_261_address0 { O 8 vector } node_embedding_V_261_ce0 { O 1 bit } node_embedding_V_261_q0 { I 32 vector } node_embedding_V_261_address1 { O 8 vector } node_embedding_V_261_ce1 { O 1 bit } node_embedding_V_261_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_261'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7145 \
    name node_embedding_V_262 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_262 \
    op interface \
    ports { node_embedding_V_262_address0 { O 8 vector } node_embedding_V_262_ce0 { O 1 bit } node_embedding_V_262_q0 { I 32 vector } node_embedding_V_262_address1 { O 8 vector } node_embedding_V_262_ce1 { O 1 bit } node_embedding_V_262_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_262'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7146 \
    name node_embedding_V_263 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_263 \
    op interface \
    ports { node_embedding_V_263_address0 { O 8 vector } node_embedding_V_263_ce0 { O 1 bit } node_embedding_V_263_q0 { I 32 vector } node_embedding_V_263_address1 { O 8 vector } node_embedding_V_263_ce1 { O 1 bit } node_embedding_V_263_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_263'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7147 \
    name node_embedding_V_264 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_264 \
    op interface \
    ports { node_embedding_V_264_address0 { O 8 vector } node_embedding_V_264_ce0 { O 1 bit } node_embedding_V_264_q0 { I 32 vector } node_embedding_V_264_address1 { O 8 vector } node_embedding_V_264_ce1 { O 1 bit } node_embedding_V_264_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_264'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7148 \
    name node_embedding_V_265 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_265 \
    op interface \
    ports { node_embedding_V_265_address0 { O 8 vector } node_embedding_V_265_ce0 { O 1 bit } node_embedding_V_265_q0 { I 32 vector } node_embedding_V_265_address1 { O 8 vector } node_embedding_V_265_ce1 { O 1 bit } node_embedding_V_265_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_265'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7149 \
    name node_embedding_V_266 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_266 \
    op interface \
    ports { node_embedding_V_266_address0 { O 8 vector } node_embedding_V_266_ce0 { O 1 bit } node_embedding_V_266_q0 { I 32 vector } node_embedding_V_266_address1 { O 8 vector } node_embedding_V_266_ce1 { O 1 bit } node_embedding_V_266_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_266'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7150 \
    name node_embedding_V_267 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_267 \
    op interface \
    ports { node_embedding_V_267_address0 { O 8 vector } node_embedding_V_267_ce0 { O 1 bit } node_embedding_V_267_q0 { I 32 vector } node_embedding_V_267_address1 { O 8 vector } node_embedding_V_267_ce1 { O 1 bit } node_embedding_V_267_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_267'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7151 \
    name node_embedding_V_268 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_268 \
    op interface \
    ports { node_embedding_V_268_address0 { O 8 vector } node_embedding_V_268_ce0 { O 1 bit } node_embedding_V_268_q0 { I 32 vector } node_embedding_V_268_address1 { O 8 vector } node_embedding_V_268_ce1 { O 1 bit } node_embedding_V_268_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_268'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7152 \
    name node_embedding_V_269 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_269 \
    op interface \
    ports { node_embedding_V_269_address0 { O 8 vector } node_embedding_V_269_ce0 { O 1 bit } node_embedding_V_269_q0 { I 32 vector } node_embedding_V_269_address1 { O 8 vector } node_embedding_V_269_ce1 { O 1 bit } node_embedding_V_269_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_269'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7153 \
    name node_embedding_V_270 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_270 \
    op interface \
    ports { node_embedding_V_270_address0 { O 8 vector } node_embedding_V_270_ce0 { O 1 bit } node_embedding_V_270_q0 { I 32 vector } node_embedding_V_270_address1 { O 8 vector } node_embedding_V_270_ce1 { O 1 bit } node_embedding_V_270_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_270'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7154 \
    name node_embedding_V_271 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_271 \
    op interface \
    ports { node_embedding_V_271_address0 { O 8 vector } node_embedding_V_271_ce0 { O 1 bit } node_embedding_V_271_q0 { I 32 vector } node_embedding_V_271_address1 { O 8 vector } node_embedding_V_271_ce1 { O 1 bit } node_embedding_V_271_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_271'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7155 \
    name node_embedding_V_272 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_272 \
    op interface \
    ports { node_embedding_V_272_address0 { O 8 vector } node_embedding_V_272_ce0 { O 1 bit } node_embedding_V_272_q0 { I 32 vector } node_embedding_V_272_address1 { O 8 vector } node_embedding_V_272_ce1 { O 1 bit } node_embedding_V_272_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_272'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7156 \
    name node_embedding_V_273 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_273 \
    op interface \
    ports { node_embedding_V_273_address0 { O 8 vector } node_embedding_V_273_ce0 { O 1 bit } node_embedding_V_273_q0 { I 32 vector } node_embedding_V_273_address1 { O 8 vector } node_embedding_V_273_ce1 { O 1 bit } node_embedding_V_273_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_273'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7157 \
    name node_embedding_V_274 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_274 \
    op interface \
    ports { node_embedding_V_274_address0 { O 8 vector } node_embedding_V_274_ce0 { O 1 bit } node_embedding_V_274_q0 { I 32 vector } node_embedding_V_274_address1 { O 8 vector } node_embedding_V_274_ce1 { O 1 bit } node_embedding_V_274_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_274'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7158 \
    name node_embedding_V_275 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_275 \
    op interface \
    ports { node_embedding_V_275_address0 { O 8 vector } node_embedding_V_275_ce0 { O 1 bit } node_embedding_V_275_q0 { I 32 vector } node_embedding_V_275_address1 { O 8 vector } node_embedding_V_275_ce1 { O 1 bit } node_embedding_V_275_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_275'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7159 \
    name node_embedding_V_276 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_276 \
    op interface \
    ports { node_embedding_V_276_address0 { O 8 vector } node_embedding_V_276_ce0 { O 1 bit } node_embedding_V_276_q0 { I 32 vector } node_embedding_V_276_address1 { O 8 vector } node_embedding_V_276_ce1 { O 1 bit } node_embedding_V_276_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_276'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7160 \
    name node_embedding_V_277 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_277 \
    op interface \
    ports { node_embedding_V_277_address0 { O 8 vector } node_embedding_V_277_ce0 { O 1 bit } node_embedding_V_277_q0 { I 32 vector } node_embedding_V_277_address1 { O 8 vector } node_embedding_V_277_ce1 { O 1 bit } node_embedding_V_277_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_277'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7161 \
    name node_embedding_V_278 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_278 \
    op interface \
    ports { node_embedding_V_278_address0 { O 8 vector } node_embedding_V_278_ce0 { O 1 bit } node_embedding_V_278_q0 { I 32 vector } node_embedding_V_278_address1 { O 8 vector } node_embedding_V_278_ce1 { O 1 bit } node_embedding_V_278_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_278'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7162 \
    name node_embedding_V_279 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_279 \
    op interface \
    ports { node_embedding_V_279_address0 { O 8 vector } node_embedding_V_279_ce0 { O 1 bit } node_embedding_V_279_q0 { I 32 vector } node_embedding_V_279_address1 { O 8 vector } node_embedding_V_279_ce1 { O 1 bit } node_embedding_V_279_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_279'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7163 \
    name node_embedding_V_280 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_280 \
    op interface \
    ports { node_embedding_V_280_address0 { O 8 vector } node_embedding_V_280_ce0 { O 1 bit } node_embedding_V_280_q0 { I 32 vector } node_embedding_V_280_address1 { O 8 vector } node_embedding_V_280_ce1 { O 1 bit } node_embedding_V_280_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_280'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7164 \
    name node_embedding_V_281 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_281 \
    op interface \
    ports { node_embedding_V_281_address0 { O 8 vector } node_embedding_V_281_ce0 { O 1 bit } node_embedding_V_281_q0 { I 32 vector } node_embedding_V_281_address1 { O 8 vector } node_embedding_V_281_ce1 { O 1 bit } node_embedding_V_281_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_281'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7165 \
    name node_embedding_V_282 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_282 \
    op interface \
    ports { node_embedding_V_282_address0 { O 8 vector } node_embedding_V_282_ce0 { O 1 bit } node_embedding_V_282_q0 { I 32 vector } node_embedding_V_282_address1 { O 8 vector } node_embedding_V_282_ce1 { O 1 bit } node_embedding_V_282_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_282'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7166 \
    name node_embedding_V_283 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_283 \
    op interface \
    ports { node_embedding_V_283_address0 { O 8 vector } node_embedding_V_283_ce0 { O 1 bit } node_embedding_V_283_q0 { I 32 vector } node_embedding_V_283_address1 { O 8 vector } node_embedding_V_283_ce1 { O 1 bit } node_embedding_V_283_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_283'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7167 \
    name node_embedding_V_284 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_284 \
    op interface \
    ports { node_embedding_V_284_address0 { O 8 vector } node_embedding_V_284_ce0 { O 1 bit } node_embedding_V_284_q0 { I 32 vector } node_embedding_V_284_address1 { O 8 vector } node_embedding_V_284_ce1 { O 1 bit } node_embedding_V_284_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_284'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7168 \
    name node_embedding_V_285 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_285 \
    op interface \
    ports { node_embedding_V_285_address0 { O 8 vector } node_embedding_V_285_ce0 { O 1 bit } node_embedding_V_285_q0 { I 32 vector } node_embedding_V_285_address1 { O 8 vector } node_embedding_V_285_ce1 { O 1 bit } node_embedding_V_285_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_285'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7169 \
    name node_embedding_V_286 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_286 \
    op interface \
    ports { node_embedding_V_286_address0 { O 8 vector } node_embedding_V_286_ce0 { O 1 bit } node_embedding_V_286_q0 { I 32 vector } node_embedding_V_286_address1 { O 8 vector } node_embedding_V_286_ce1 { O 1 bit } node_embedding_V_286_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_286'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7170 \
    name node_embedding_V_287 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_287 \
    op interface \
    ports { node_embedding_V_287_address0 { O 8 vector } node_embedding_V_287_ce0 { O 1 bit } node_embedding_V_287_q0 { I 32 vector } node_embedding_V_287_address1 { O 8 vector } node_embedding_V_287_ce1 { O 1 bit } node_embedding_V_287_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_287'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7171 \
    name node_embedding_V_288 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_288 \
    op interface \
    ports { node_embedding_V_288_address0 { O 8 vector } node_embedding_V_288_ce0 { O 1 bit } node_embedding_V_288_q0 { I 32 vector } node_embedding_V_288_address1 { O 8 vector } node_embedding_V_288_ce1 { O 1 bit } node_embedding_V_288_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_288'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7172 \
    name node_embedding_V_289 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_289 \
    op interface \
    ports { node_embedding_V_289_address0 { O 8 vector } node_embedding_V_289_ce0 { O 1 bit } node_embedding_V_289_q0 { I 32 vector } node_embedding_V_289_address1 { O 8 vector } node_embedding_V_289_ce1 { O 1 bit } node_embedding_V_289_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_289'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7173 \
    name node_embedding_V_290 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_290 \
    op interface \
    ports { node_embedding_V_290_address0 { O 8 vector } node_embedding_V_290_ce0 { O 1 bit } node_embedding_V_290_q0 { I 32 vector } node_embedding_V_290_address1 { O 8 vector } node_embedding_V_290_ce1 { O 1 bit } node_embedding_V_290_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_290'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7174 \
    name node_embedding_V_291 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_291 \
    op interface \
    ports { node_embedding_V_291_address0 { O 8 vector } node_embedding_V_291_ce0 { O 1 bit } node_embedding_V_291_q0 { I 32 vector } node_embedding_V_291_address1 { O 8 vector } node_embedding_V_291_ce1 { O 1 bit } node_embedding_V_291_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_291'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7175 \
    name node_embedding_V_292 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_292 \
    op interface \
    ports { node_embedding_V_292_address0 { O 8 vector } node_embedding_V_292_ce0 { O 1 bit } node_embedding_V_292_q0 { I 32 vector } node_embedding_V_292_address1 { O 8 vector } node_embedding_V_292_ce1 { O 1 bit } node_embedding_V_292_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_292'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7176 \
    name node_embedding_V_293 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_293 \
    op interface \
    ports { node_embedding_V_293_address0 { O 8 vector } node_embedding_V_293_ce0 { O 1 bit } node_embedding_V_293_q0 { I 32 vector } node_embedding_V_293_address1 { O 8 vector } node_embedding_V_293_ce1 { O 1 bit } node_embedding_V_293_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_293'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7177 \
    name node_embedding_V_294 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_294 \
    op interface \
    ports { node_embedding_V_294_address0 { O 8 vector } node_embedding_V_294_ce0 { O 1 bit } node_embedding_V_294_q0 { I 32 vector } node_embedding_V_294_address1 { O 8 vector } node_embedding_V_294_ce1 { O 1 bit } node_embedding_V_294_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_294'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7178 \
    name node_embedding_V_295 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_295 \
    op interface \
    ports { node_embedding_V_295_address0 { O 8 vector } node_embedding_V_295_ce0 { O 1 bit } node_embedding_V_295_q0 { I 32 vector } node_embedding_V_295_address1 { O 8 vector } node_embedding_V_295_ce1 { O 1 bit } node_embedding_V_295_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_295'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7179 \
    name node_embedding_V_296 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_296 \
    op interface \
    ports { node_embedding_V_296_address0 { O 8 vector } node_embedding_V_296_ce0 { O 1 bit } node_embedding_V_296_q0 { I 32 vector } node_embedding_V_296_address1 { O 8 vector } node_embedding_V_296_ce1 { O 1 bit } node_embedding_V_296_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_296'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7180 \
    name node_embedding_V_297 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_297 \
    op interface \
    ports { node_embedding_V_297_address0 { O 8 vector } node_embedding_V_297_ce0 { O 1 bit } node_embedding_V_297_q0 { I 32 vector } node_embedding_V_297_address1 { O 8 vector } node_embedding_V_297_ce1 { O 1 bit } node_embedding_V_297_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_297'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7181 \
    name node_embedding_V_298 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_298 \
    op interface \
    ports { node_embedding_V_298_address0 { O 8 vector } node_embedding_V_298_ce0 { O 1 bit } node_embedding_V_298_q0 { I 32 vector } node_embedding_V_298_address1 { O 8 vector } node_embedding_V_298_ce1 { O 1 bit } node_embedding_V_298_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_298'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 7182 \
    name node_embedding_V_299 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_299 \
    op interface \
    ports { node_embedding_V_299_address0 { O 8 vector } node_embedding_V_299_ce0 { O 1 bit } node_embedding_V_299_q0 { I 32 vector } node_embedding_V_299_address1 { O 8 vector } node_embedding_V_299_ce1 { O 1 bit } node_embedding_V_299_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_299'"
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


