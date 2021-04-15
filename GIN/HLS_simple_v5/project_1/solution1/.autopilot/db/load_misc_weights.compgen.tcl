# This script segment is generated automatically by AutoPilot

set id 1514
set name GIN_compute_one_graph_mac_muladd_8ns_10ns_9ns_16_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 8
set in0_signed 0
set in1_width 10
set in1_signed 0
set in2_width 9
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 16
set exp i0*i1+i2
set arg_lists {i0 {8 0 +} i1 {10 0 +} m {16 0 +} i2 {9 0 +} p {16 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
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
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
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
    max_latency ${max_latency} \
    registered_input ${registered_input} \
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
    exp ${exp} \
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
    id 1522 \
    name mlp_eps_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename mlp_eps_V \
    op interface \
    ports { mlp_eps_V_address0 { O 3 vector } mlp_eps_V_ce0 { O 1 bit } mlp_eps_V_we0 { O 1 bit } mlp_eps_V_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'mlp_eps_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1524 \
    name graph_pred_weights_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename graph_pred_weights_V \
    op interface \
    ports { graph_pred_weights_V_address0 { O 9 vector } graph_pred_weights_V_ce0 { O 1 bit } graph_pred_weights_V_we0 { O 1 bit } graph_pred_weights_V_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'graph_pred_weights_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1525 \
    name node_embedding_table_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_table_V \
    op interface \
    ports { node_embedding_table_V_address1 { O 16 vector } node_embedding_table_V_ce1 { O 1 bit } node_embedding_table_V_we1 { O 1 bit } node_embedding_table_V_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_table_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1526 \
    name edge_embedding_table_V_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_0 \
    op interface \
    ports { edge_embedding_table_V_0_address1 { O 9 vector } edge_embedding_table_V_0_ce1 { O 1 bit } edge_embedding_table_V_0_we1 { O 1 bit } edge_embedding_table_V_0_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1527 \
    name edge_embedding_table_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_1 \
    op interface \
    ports { edge_embedding_table_V_1_address1 { O 9 vector } edge_embedding_table_V_1_ce1 { O 1 bit } edge_embedding_table_V_1_we1 { O 1 bit } edge_embedding_table_V_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1528 \
    name edge_embedding_table_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_2 \
    op interface \
    ports { edge_embedding_table_V_2_address1 { O 9 vector } edge_embedding_table_V_2_ce1 { O 1 bit } edge_embedding_table_V_2_we1 { O 1 bit } edge_embedding_table_V_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1529 \
    name edge_embedding_table_V_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_3 \
    op interface \
    ports { edge_embedding_table_V_3_address1 { O 9 vector } edge_embedding_table_V_3_ce1 { O 1 bit } edge_embedding_table_V_3_we1 { O 1 bit } edge_embedding_table_V_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1530 \
    name edge_embedding_table_V_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_4 \
    op interface \
    ports { edge_embedding_table_V_4_address1 { O 9 vector } edge_embedding_table_V_4_ce1 { O 1 bit } edge_embedding_table_V_4_we1 { O 1 bit } edge_embedding_table_V_4_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1531 \
    name edge_embedding_table_V_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_5 \
    op interface \
    ports { edge_embedding_table_V_5_address1 { O 9 vector } edge_embedding_table_V_5_ce1 { O 1 bit } edge_embedding_table_V_5_we1 { O 1 bit } edge_embedding_table_V_5_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1532 \
    name edge_embedding_table_V_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_6 \
    op interface \
    ports { edge_embedding_table_V_6_address1 { O 9 vector } edge_embedding_table_V_6_ce1 { O 1 bit } edge_embedding_table_V_6_we1 { O 1 bit } edge_embedding_table_V_6_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1533 \
    name edge_embedding_table_V_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_7 \
    op interface \
    ports { edge_embedding_table_V_7_address1 { O 9 vector } edge_embedding_table_V_7_ce1 { O 1 bit } edge_embedding_table_V_7_we1 { O 1 bit } edge_embedding_table_V_7_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1534 \
    name edge_embedding_table_V_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_8 \
    op interface \
    ports { edge_embedding_table_V_8_address1 { O 9 vector } edge_embedding_table_V_8_ce1 { O 1 bit } edge_embedding_table_V_8_we1 { O 1 bit } edge_embedding_table_V_8_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1535 \
    name edge_embedding_table_V_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_9 \
    op interface \
    ports { edge_embedding_table_V_9_address1 { O 9 vector } edge_embedding_table_V_9_ce1 { O 1 bit } edge_embedding_table_V_9_we1 { O 1 bit } edge_embedding_table_V_9_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1536 \
    name edge_embedding_table_V_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_10 \
    op interface \
    ports { edge_embedding_table_V_10_address1 { O 9 vector } edge_embedding_table_V_10_ce1 { O 1 bit } edge_embedding_table_V_10_we1 { O 1 bit } edge_embedding_table_V_10_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1537 \
    name edge_embedding_table_V_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_11 \
    op interface \
    ports { edge_embedding_table_V_11_address1 { O 9 vector } edge_embedding_table_V_11_ce1 { O 1 bit } edge_embedding_table_V_11_we1 { O 1 bit } edge_embedding_table_V_11_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1538 \
    name edge_embedding_table_V_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_12 \
    op interface \
    ports { edge_embedding_table_V_12_address1 { O 9 vector } edge_embedding_table_V_12_ce1 { O 1 bit } edge_embedding_table_V_12_we1 { O 1 bit } edge_embedding_table_V_12_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1539 \
    name edge_embedding_table_V_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_13 \
    op interface \
    ports { edge_embedding_table_V_13_address1 { O 9 vector } edge_embedding_table_V_13_ce1 { O 1 bit } edge_embedding_table_V_13_we1 { O 1 bit } edge_embedding_table_V_13_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1540 \
    name edge_embedding_table_V_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_14 \
    op interface \
    ports { edge_embedding_table_V_14_address1 { O 9 vector } edge_embedding_table_V_14_ce1 { O 1 bit } edge_embedding_table_V_14_we1 { O 1 bit } edge_embedding_table_V_14_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1541 \
    name edge_embedding_table_V_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_15 \
    op interface \
    ports { edge_embedding_table_V_15_address1 { O 9 vector } edge_embedding_table_V_15_ce1 { O 1 bit } edge_embedding_table_V_15_we1 { O 1 bit } edge_embedding_table_V_15_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1542 \
    name edge_embedding_table_V_16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_16 \
    op interface \
    ports { edge_embedding_table_V_16_address1 { O 9 vector } edge_embedding_table_V_16_ce1 { O 1 bit } edge_embedding_table_V_16_we1 { O 1 bit } edge_embedding_table_V_16_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1543 \
    name edge_embedding_table_V_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_17 \
    op interface \
    ports { edge_embedding_table_V_17_address1 { O 9 vector } edge_embedding_table_V_17_ce1 { O 1 bit } edge_embedding_table_V_17_we1 { O 1 bit } edge_embedding_table_V_17_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1544 \
    name edge_embedding_table_V_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_18 \
    op interface \
    ports { edge_embedding_table_V_18_address1 { O 9 vector } edge_embedding_table_V_18_ce1 { O 1 bit } edge_embedding_table_V_18_we1 { O 1 bit } edge_embedding_table_V_18_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1545 \
    name edge_embedding_table_V_19 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_19 \
    op interface \
    ports { edge_embedding_table_V_19_address1 { O 9 vector } edge_embedding_table_V_19_ce1 { O 1 bit } edge_embedding_table_V_19_we1 { O 1 bit } edge_embedding_table_V_19_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1546 \
    name edge_embedding_table_V_20 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_20 \
    op interface \
    ports { edge_embedding_table_V_20_address1 { O 9 vector } edge_embedding_table_V_20_ce1 { O 1 bit } edge_embedding_table_V_20_we1 { O 1 bit } edge_embedding_table_V_20_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1547 \
    name edge_embedding_table_V_21 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_21 \
    op interface \
    ports { edge_embedding_table_V_21_address1 { O 9 vector } edge_embedding_table_V_21_ce1 { O 1 bit } edge_embedding_table_V_21_we1 { O 1 bit } edge_embedding_table_V_21_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1548 \
    name edge_embedding_table_V_22 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_22 \
    op interface \
    ports { edge_embedding_table_V_22_address1 { O 9 vector } edge_embedding_table_V_22_ce1 { O 1 bit } edge_embedding_table_V_22_we1 { O 1 bit } edge_embedding_table_V_22_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1549 \
    name edge_embedding_table_V_23 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_23 \
    op interface \
    ports { edge_embedding_table_V_23_address1 { O 9 vector } edge_embedding_table_V_23_ce1 { O 1 bit } edge_embedding_table_V_23_we1 { O 1 bit } edge_embedding_table_V_23_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1550 \
    name edge_embedding_table_V_24 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_24 \
    op interface \
    ports { edge_embedding_table_V_24_address1 { O 9 vector } edge_embedding_table_V_24_ce1 { O 1 bit } edge_embedding_table_V_24_we1 { O 1 bit } edge_embedding_table_V_24_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1551 \
    name edge_embedding_table_V_25 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_25 \
    op interface \
    ports { edge_embedding_table_V_25_address1 { O 9 vector } edge_embedding_table_V_25_ce1 { O 1 bit } edge_embedding_table_V_25_we1 { O 1 bit } edge_embedding_table_V_25_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1552 \
    name edge_embedding_table_V_26 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_26 \
    op interface \
    ports { edge_embedding_table_V_26_address1 { O 9 vector } edge_embedding_table_V_26_ce1 { O 1 bit } edge_embedding_table_V_26_we1 { O 1 bit } edge_embedding_table_V_26_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1553 \
    name edge_embedding_table_V_27 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_27 \
    op interface \
    ports { edge_embedding_table_V_27_address1 { O 9 vector } edge_embedding_table_V_27_ce1 { O 1 bit } edge_embedding_table_V_27_we1 { O 1 bit } edge_embedding_table_V_27_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1554 \
    name edge_embedding_table_V_28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_28 \
    op interface \
    ports { edge_embedding_table_V_28_address1 { O 9 vector } edge_embedding_table_V_28_ce1 { O 1 bit } edge_embedding_table_V_28_we1 { O 1 bit } edge_embedding_table_V_28_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1555 \
    name edge_embedding_table_V_29 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_29 \
    op interface \
    ports { edge_embedding_table_V_29_address1 { O 9 vector } edge_embedding_table_V_29_ce1 { O 1 bit } edge_embedding_table_V_29_we1 { O 1 bit } edge_embedding_table_V_29_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1556 \
    name edge_embedding_table_V_30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_30 \
    op interface \
    ports { edge_embedding_table_V_30_address1 { O 9 vector } edge_embedding_table_V_30_ce1 { O 1 bit } edge_embedding_table_V_30_we1 { O 1 bit } edge_embedding_table_V_30_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1557 \
    name edge_embedding_table_V_31 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_31 \
    op interface \
    ports { edge_embedding_table_V_31_address1 { O 9 vector } edge_embedding_table_V_31_ce1 { O 1 bit } edge_embedding_table_V_31_we1 { O 1 bit } edge_embedding_table_V_31_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1558 \
    name edge_embedding_table_V_32 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_32 \
    op interface \
    ports { edge_embedding_table_V_32_address1 { O 9 vector } edge_embedding_table_V_32_ce1 { O 1 bit } edge_embedding_table_V_32_we1 { O 1 bit } edge_embedding_table_V_32_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1559 \
    name edge_embedding_table_V_33 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_33 \
    op interface \
    ports { edge_embedding_table_V_33_address1 { O 9 vector } edge_embedding_table_V_33_ce1 { O 1 bit } edge_embedding_table_V_33_we1 { O 1 bit } edge_embedding_table_V_33_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1560 \
    name edge_embedding_table_V_34 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_34 \
    op interface \
    ports { edge_embedding_table_V_34_address1 { O 9 vector } edge_embedding_table_V_34_ce1 { O 1 bit } edge_embedding_table_V_34_we1 { O 1 bit } edge_embedding_table_V_34_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1561 \
    name edge_embedding_table_V_35 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_35 \
    op interface \
    ports { edge_embedding_table_V_35_address1 { O 9 vector } edge_embedding_table_V_35_ce1 { O 1 bit } edge_embedding_table_V_35_we1 { O 1 bit } edge_embedding_table_V_35_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1562 \
    name edge_embedding_table_V_36 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_36 \
    op interface \
    ports { edge_embedding_table_V_36_address1 { O 9 vector } edge_embedding_table_V_36_ce1 { O 1 bit } edge_embedding_table_V_36_we1 { O 1 bit } edge_embedding_table_V_36_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1563 \
    name edge_embedding_table_V_37 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_37 \
    op interface \
    ports { edge_embedding_table_V_37_address1 { O 9 vector } edge_embedding_table_V_37_ce1 { O 1 bit } edge_embedding_table_V_37_we1 { O 1 bit } edge_embedding_table_V_37_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1564 \
    name edge_embedding_table_V_38 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_38 \
    op interface \
    ports { edge_embedding_table_V_38_address1 { O 9 vector } edge_embedding_table_V_38_ce1 { O 1 bit } edge_embedding_table_V_38_we1 { O 1 bit } edge_embedding_table_V_38_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1565 \
    name edge_embedding_table_V_39 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_39 \
    op interface \
    ports { edge_embedding_table_V_39_address1 { O 9 vector } edge_embedding_table_V_39_ce1 { O 1 bit } edge_embedding_table_V_39_we1 { O 1 bit } edge_embedding_table_V_39_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1566 \
    name edge_embedding_table_V_40 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_40 \
    op interface \
    ports { edge_embedding_table_V_40_address1 { O 9 vector } edge_embedding_table_V_40_ce1 { O 1 bit } edge_embedding_table_V_40_we1 { O 1 bit } edge_embedding_table_V_40_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1567 \
    name edge_embedding_table_V_41 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_41 \
    op interface \
    ports { edge_embedding_table_V_41_address1 { O 9 vector } edge_embedding_table_V_41_ce1 { O 1 bit } edge_embedding_table_V_41_we1 { O 1 bit } edge_embedding_table_V_41_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1568 \
    name edge_embedding_table_V_42 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_42 \
    op interface \
    ports { edge_embedding_table_V_42_address1 { O 9 vector } edge_embedding_table_V_42_ce1 { O 1 bit } edge_embedding_table_V_42_we1 { O 1 bit } edge_embedding_table_V_42_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1569 \
    name edge_embedding_table_V_43 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_43 \
    op interface \
    ports { edge_embedding_table_V_43_address1 { O 9 vector } edge_embedding_table_V_43_ce1 { O 1 bit } edge_embedding_table_V_43_we1 { O 1 bit } edge_embedding_table_V_43_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1570 \
    name edge_embedding_table_V_44 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_44 \
    op interface \
    ports { edge_embedding_table_V_44_address1 { O 9 vector } edge_embedding_table_V_44_ce1 { O 1 bit } edge_embedding_table_V_44_we1 { O 1 bit } edge_embedding_table_V_44_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1571 \
    name edge_embedding_table_V_45 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_45 \
    op interface \
    ports { edge_embedding_table_V_45_address1 { O 9 vector } edge_embedding_table_V_45_ce1 { O 1 bit } edge_embedding_table_V_45_we1 { O 1 bit } edge_embedding_table_V_45_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1572 \
    name edge_embedding_table_V_46 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_46 \
    op interface \
    ports { edge_embedding_table_V_46_address1 { O 9 vector } edge_embedding_table_V_46_ce1 { O 1 bit } edge_embedding_table_V_46_we1 { O 1 bit } edge_embedding_table_V_46_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1573 \
    name edge_embedding_table_V_47 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_47 \
    op interface \
    ports { edge_embedding_table_V_47_address1 { O 9 vector } edge_embedding_table_V_47_ce1 { O 1 bit } edge_embedding_table_V_47_we1 { O 1 bit } edge_embedding_table_V_47_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1574 \
    name edge_embedding_table_V_48 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_48 \
    op interface \
    ports { edge_embedding_table_V_48_address1 { O 9 vector } edge_embedding_table_V_48_ce1 { O 1 bit } edge_embedding_table_V_48_we1 { O 1 bit } edge_embedding_table_V_48_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1575 \
    name edge_embedding_table_V_49 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_49 \
    op interface \
    ports { edge_embedding_table_V_49_address1 { O 9 vector } edge_embedding_table_V_49_ce1 { O 1 bit } edge_embedding_table_V_49_we1 { O 1 bit } edge_embedding_table_V_49_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1576 \
    name edge_embedding_table_V_50 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_50 \
    op interface \
    ports { edge_embedding_table_V_50_address1 { O 9 vector } edge_embedding_table_V_50_ce1 { O 1 bit } edge_embedding_table_V_50_we1 { O 1 bit } edge_embedding_table_V_50_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1577 \
    name edge_embedding_table_V_51 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_51 \
    op interface \
    ports { edge_embedding_table_V_51_address1 { O 9 vector } edge_embedding_table_V_51_ce1 { O 1 bit } edge_embedding_table_V_51_we1 { O 1 bit } edge_embedding_table_V_51_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1578 \
    name edge_embedding_table_V_52 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_52 \
    op interface \
    ports { edge_embedding_table_V_52_address1 { O 9 vector } edge_embedding_table_V_52_ce1 { O 1 bit } edge_embedding_table_V_52_we1 { O 1 bit } edge_embedding_table_V_52_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1579 \
    name edge_embedding_table_V_53 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_53 \
    op interface \
    ports { edge_embedding_table_V_53_address1 { O 9 vector } edge_embedding_table_V_53_ce1 { O 1 bit } edge_embedding_table_V_53_we1 { O 1 bit } edge_embedding_table_V_53_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1580 \
    name edge_embedding_table_V_54 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_54 \
    op interface \
    ports { edge_embedding_table_V_54_address1 { O 9 vector } edge_embedding_table_V_54_ce1 { O 1 bit } edge_embedding_table_V_54_we1 { O 1 bit } edge_embedding_table_V_54_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1581 \
    name edge_embedding_table_V_55 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_55 \
    op interface \
    ports { edge_embedding_table_V_55_address1 { O 9 vector } edge_embedding_table_V_55_ce1 { O 1 bit } edge_embedding_table_V_55_we1 { O 1 bit } edge_embedding_table_V_55_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1582 \
    name edge_embedding_table_V_56 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_56 \
    op interface \
    ports { edge_embedding_table_V_56_address1 { O 9 vector } edge_embedding_table_V_56_ce1 { O 1 bit } edge_embedding_table_V_56_we1 { O 1 bit } edge_embedding_table_V_56_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1583 \
    name edge_embedding_table_V_57 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_57 \
    op interface \
    ports { edge_embedding_table_V_57_address1 { O 9 vector } edge_embedding_table_V_57_ce1 { O 1 bit } edge_embedding_table_V_57_we1 { O 1 bit } edge_embedding_table_V_57_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1584 \
    name edge_embedding_table_V_58 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_58 \
    op interface \
    ports { edge_embedding_table_V_58_address1 { O 9 vector } edge_embedding_table_V_58_ce1 { O 1 bit } edge_embedding_table_V_58_we1 { O 1 bit } edge_embedding_table_V_58_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1585 \
    name edge_embedding_table_V_59 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_59 \
    op interface \
    ports { edge_embedding_table_V_59_address1 { O 9 vector } edge_embedding_table_V_59_ce1 { O 1 bit } edge_embedding_table_V_59_we1 { O 1 bit } edge_embedding_table_V_59_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1586 \
    name edge_embedding_table_V_60 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_60 \
    op interface \
    ports { edge_embedding_table_V_60_address1 { O 9 vector } edge_embedding_table_V_60_ce1 { O 1 bit } edge_embedding_table_V_60_we1 { O 1 bit } edge_embedding_table_V_60_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1587 \
    name edge_embedding_table_V_61 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_61 \
    op interface \
    ports { edge_embedding_table_V_61_address1 { O 9 vector } edge_embedding_table_V_61_ce1 { O 1 bit } edge_embedding_table_V_61_we1 { O 1 bit } edge_embedding_table_V_61_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1588 \
    name edge_embedding_table_V_62 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_62 \
    op interface \
    ports { edge_embedding_table_V_62_address1 { O 9 vector } edge_embedding_table_V_62_ce1 { O 1 bit } edge_embedding_table_V_62_we1 { O 1 bit } edge_embedding_table_V_62_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1589 \
    name edge_embedding_table_V_63 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_63 \
    op interface \
    ports { edge_embedding_table_V_63_address1 { O 9 vector } edge_embedding_table_V_63_ce1 { O 1 bit } edge_embedding_table_V_63_we1 { O 1 bit } edge_embedding_table_V_63_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_63'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1590 \
    name edge_embedding_table_V_64 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename edge_embedding_table_V_64 \
    op interface \
    ports { edge_embedding_table_V_64_address1 { O 9 vector } edge_embedding_table_V_64_ce1 { O 1 bit } edge_embedding_table_V_64_we1 { O 1 bit } edge_embedding_table_V_64_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_embedding_table_V_64'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1516 \
    name mem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mem \
    op interface \
    ports { m_axi_mem_AWVALID { O 1 bit } m_axi_mem_AWREADY { I 1 bit } m_axi_mem_AWADDR { O 64 vector } m_axi_mem_AWID { O 1 vector } m_axi_mem_AWLEN { O 32 vector } m_axi_mem_AWSIZE { O 3 vector } m_axi_mem_AWBURST { O 2 vector } m_axi_mem_AWLOCK { O 2 vector } m_axi_mem_AWCACHE { O 4 vector } m_axi_mem_AWPROT { O 3 vector } m_axi_mem_AWQOS { O 4 vector } m_axi_mem_AWREGION { O 4 vector } m_axi_mem_AWUSER { O 1 vector } m_axi_mem_WVALID { O 1 bit } m_axi_mem_WREADY { I 1 bit } m_axi_mem_WDATA { O 32 vector } m_axi_mem_WSTRB { O 4 vector } m_axi_mem_WLAST { O 1 bit } m_axi_mem_WID { O 1 vector } m_axi_mem_WUSER { O 1 vector } m_axi_mem_ARVALID { O 1 bit } m_axi_mem_ARREADY { I 1 bit } m_axi_mem_ARADDR { O 64 vector } m_axi_mem_ARID { O 1 vector } m_axi_mem_ARLEN { O 32 vector } m_axi_mem_ARSIZE { O 3 vector } m_axi_mem_ARBURST { O 2 vector } m_axi_mem_ARLOCK { O 2 vector } m_axi_mem_ARCACHE { O 4 vector } m_axi_mem_ARPROT { O 3 vector } m_axi_mem_ARQOS { O 4 vector } m_axi_mem_ARREGION { O 4 vector } m_axi_mem_ARUSER { O 1 vector } m_axi_mem_RVALID { I 1 bit } m_axi_mem_RREADY { O 1 bit } m_axi_mem_RDATA { I 32 vector } m_axi_mem_RLAST { I 1 bit } m_axi_mem_RID { I 1 vector } m_axi_mem_RUSER { I 1 vector } m_axi_mem_RRESP { I 2 vector } m_axi_mem_BVALID { I 1 bit } m_axi_mem_BREADY { O 1 bit } m_axi_mem_BRESP { I 2 vector } m_axi_mem_BID { I 1 vector } m_axi_mem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1517 \
    name eps_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_eps_in \
    op interface \
    ports { eps_in { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1518 \
    name graph_pred_weight_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_graph_pred_weight_in \
    op interface \
    ports { graph_pred_weight_in { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1519 \
    name graph_pred_bias_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_graph_pred_bias_in \
    op interface \
    ports { graph_pred_bias_in { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1520 \
    name node_embedding_table_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_node_embedding_table_in \
    op interface \
    ports { node_embedding_table_in { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1521 \
    name edge_embedding_table_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_edge_embedding_table_in \
    op interface \
    ports { edge_embedding_table_in { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1523 \
    name graph_pred_bias_V_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_graph_pred_bias_V_0 \
    op interface \
    ports { graph_pred_bias_V_0 { O 32 vector } graph_pred_bias_V_0_ap_vld { O 1 bit } } \
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


