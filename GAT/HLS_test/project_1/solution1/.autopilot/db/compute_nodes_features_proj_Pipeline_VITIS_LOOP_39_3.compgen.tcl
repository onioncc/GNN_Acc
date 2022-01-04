# This script segment is generated automatically by AutoPilot

set id 711
set name GAT_compute_one_graph_mux_646_28_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 28
set din0_signed 0
set din1_width 28
set din1_signed 0
set din2_width 28
set din2_signed 0
set din3_width 28
set din3_signed 0
set din4_width 28
set din4_signed 0
set din5_width 28
set din5_signed 0
set din6_width 28
set din6_signed 0
set din7_width 28
set din7_signed 0
set din8_width 28
set din8_signed 0
set din9_width 28
set din9_signed 0
set din10_width 28
set din10_signed 0
set din11_width 28
set din11_signed 0
set din12_width 28
set din12_signed 0
set din13_width 28
set din13_signed 0
set din14_width 28
set din14_signed 0
set din15_width 28
set din15_signed 0
set din16_width 28
set din16_signed 0
set din17_width 28
set din17_signed 0
set din18_width 28
set din18_signed 0
set din19_width 28
set din19_signed 0
set din20_width 28
set din20_signed 0
set din21_width 28
set din21_signed 0
set din22_width 28
set din22_signed 0
set din23_width 28
set din23_signed 0
set din24_width 28
set din24_signed 0
set din25_width 28
set din25_signed 0
set din26_width 28
set din26_signed 0
set din27_width 28
set din27_signed 0
set din28_width 28
set din28_signed 0
set din29_width 28
set din29_signed 0
set din30_width 28
set din30_signed 0
set din31_width 28
set din31_signed 0
set din32_width 28
set din32_signed 0
set din33_width 28
set din33_signed 0
set din34_width 28
set din34_signed 0
set din35_width 28
set din35_signed 0
set din36_width 28
set din36_signed 0
set din37_width 28
set din37_signed 0
set din38_width 28
set din38_signed 0
set din39_width 28
set din39_signed 0
set din40_width 28
set din40_signed 0
set din41_width 28
set din41_signed 0
set din42_width 28
set din42_signed 0
set din43_width 28
set din43_signed 0
set din44_width 28
set din44_signed 0
set din45_width 28
set din45_signed 0
set din46_width 28
set din46_signed 0
set din47_width 28
set din47_signed 0
set din48_width 28
set din48_signed 0
set din49_width 28
set din49_signed 0
set din50_width 28
set din50_signed 0
set din51_width 28
set din51_signed 0
set din52_width 28
set din52_signed 0
set din53_width 28
set din53_signed 0
set din54_width 28
set din54_signed 0
set din55_width 28
set din55_signed 0
set din56_width 28
set din56_signed 0
set din57_width 28
set din57_signed 0
set din58_width 28
set din58_signed 0
set din59_width 28
set din59_signed 0
set din60_width 28
set din60_signed 0
set din61_width 28
set din61_signed 0
set din62_width 28
set din62_signed 0
set din63_width 28
set din63_signed 0
set din64_width 6
set din64_signed 0
set dout_width 28
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    din33_width ${din33_width} \
    din33_signed ${din33_signed} \
    din34_width ${din34_width} \
    din34_signed ${din34_signed} \
    din35_width ${din35_width} \
    din35_signed ${din35_signed} \
    din36_width ${din36_width} \
    din36_signed ${din36_signed} \
    din37_width ${din37_width} \
    din37_signed ${din37_signed} \
    din38_width ${din38_width} \
    din38_signed ${din38_signed} \
    din39_width ${din39_width} \
    din39_signed ${din39_signed} \
    din40_width ${din40_width} \
    din40_signed ${din40_signed} \
    din41_width ${din41_width} \
    din41_signed ${din41_signed} \
    din42_width ${din42_width} \
    din42_signed ${din42_signed} \
    din43_width ${din43_width} \
    din43_signed ${din43_signed} \
    din44_width ${din44_width} \
    din44_signed ${din44_signed} \
    din45_width ${din45_width} \
    din45_signed ${din45_signed} \
    din46_width ${din46_width} \
    din46_signed ${din46_signed} \
    din47_width ${din47_width} \
    din47_signed ${din47_signed} \
    din48_width ${din48_width} \
    din48_signed ${din48_signed} \
    din49_width ${din49_width} \
    din49_signed ${din49_signed} \
    din50_width ${din50_width} \
    din50_signed ${din50_signed} \
    din51_width ${din51_width} \
    din51_signed ${din51_signed} \
    din52_width ${din52_width} \
    din52_signed ${din52_signed} \
    din53_width ${din53_width} \
    din53_signed ${din53_signed} \
    din54_width ${din54_width} \
    din54_signed ${din54_signed} \
    din55_width ${din55_width} \
    din55_signed ${din55_signed} \
    din56_width ${din56_width} \
    din56_signed ${din56_signed} \
    din57_width ${din57_width} \
    din57_signed ${din57_signed} \
    din58_width ${din58_width} \
    din58_signed ${din58_signed} \
    din59_width ${din59_width} \
    din59_signed ${din59_signed} \
    din60_width ${din60_width} \
    din60_signed ${din60_signed} \
    din61_width ${din61_width} \
    din61_signed ${din61_signed} \
    din62_width ${din62_width} \
    din62_signed ${din62_signed} \
    din63_width ${din63_width} \
    din63_signed ${din63_signed} \
    din64_width ${din64_width} \
    din64_signed ${din64_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set name GAT_compute_one_graph_mul_28s_28s_46_3_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 716 \
    name num_in_features \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_num_in_features \
    op interface \
    ports { num_in_features { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 717 \
    name out_nodes_features_skip_concat_bias_V_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_0_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 718 \
    name out_nodes_features_skip_concat_bias_V_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_1_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 719 \
    name out_nodes_features_skip_concat_bias_V_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_2_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 720 \
    name out_nodes_features_skip_concat_bias_V_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_3_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 721 \
    name out_nodes_features_skip_concat_bias_V_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_4_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 722 \
    name out_nodes_features_skip_concat_bias_V_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_5_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 723 \
    name out_nodes_features_skip_concat_bias_V_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_6_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 724 \
    name out_nodes_features_skip_concat_bias_V_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_7_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 725 \
    name out_nodes_features_skip_concat_bias_V_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_8_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 726 \
    name out_nodes_features_skip_concat_bias_V_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_9_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 727 \
    name out_nodes_features_skip_concat_bias_V_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_10_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 728 \
    name out_nodes_features_skip_concat_bias_V_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_11_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 729 \
    name out_nodes_features_skip_concat_bias_V_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_12_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 730 \
    name out_nodes_features_skip_concat_bias_V_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_13_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 731 \
    name out_nodes_features_skip_concat_bias_V_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_14_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 732 \
    name out_nodes_features_skip_concat_bias_V_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_15_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 733 \
    name out_nodes_features_skip_concat_bias_V_16_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_16_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_16_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 734 \
    name out_nodes_features_skip_concat_bias_V_17_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_17_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_17_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 735 \
    name out_nodes_features_skip_concat_bias_V_18_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_18_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_18_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 736 \
    name out_nodes_features_skip_concat_bias_V_19_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_19_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_19_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 737 \
    name out_nodes_features_skip_concat_bias_V_20_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_20_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_20_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 738 \
    name out_nodes_features_skip_concat_bias_V_21_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_21_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_21_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 739 \
    name out_nodes_features_skip_concat_bias_V_22_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_22_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_22_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 740 \
    name out_nodes_features_skip_concat_bias_V_23_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_23_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_23_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 741 \
    name out_nodes_features_skip_concat_bias_V_24_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_24_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_24_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 742 \
    name out_nodes_features_skip_concat_bias_V_25_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_25_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_25_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 743 \
    name out_nodes_features_skip_concat_bias_V_26_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_26_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_26_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 744 \
    name out_nodes_features_skip_concat_bias_V_27_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_27_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_27_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 745 \
    name out_nodes_features_skip_concat_bias_V_28_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_28_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_28_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 746 \
    name out_nodes_features_skip_concat_bias_V_29_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_29_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_29_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 747 \
    name out_nodes_features_skip_concat_bias_V_30_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_30_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_30_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 748 \
    name out_nodes_features_skip_concat_bias_V_31_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_31_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_31_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 749 \
    name out_nodes_features_skip_concat_bias_V_32_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_32_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_32_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 750 \
    name out_nodes_features_skip_concat_bias_V_33_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_33_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_33_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 751 \
    name out_nodes_features_skip_concat_bias_V_34_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_34_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_34_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 752 \
    name out_nodes_features_skip_concat_bias_V_35_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_35_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_35_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 753 \
    name out_nodes_features_skip_concat_bias_V_36_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_36_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_36_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 754 \
    name out_nodes_features_skip_concat_bias_V_37_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_37_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_37_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 755 \
    name out_nodes_features_skip_concat_bias_V_38_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_38_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_38_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 756 \
    name out_nodes_features_skip_concat_bias_V_39_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_39_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_39_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 757 \
    name out_nodes_features_skip_concat_bias_V_40_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_40_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_40_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 758 \
    name out_nodes_features_skip_concat_bias_V_41_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_41_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_41_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 759 \
    name out_nodes_features_skip_concat_bias_V_42_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_42_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_42_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 760 \
    name out_nodes_features_skip_concat_bias_V_43_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_43_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_43_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 761 \
    name out_nodes_features_skip_concat_bias_V_44_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_44_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_44_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 762 \
    name out_nodes_features_skip_concat_bias_V_45_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_45_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_45_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 763 \
    name out_nodes_features_skip_concat_bias_V_46_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_46_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_46_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 764 \
    name out_nodes_features_skip_concat_bias_V_47_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_47_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_47_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 765 \
    name out_nodes_features_skip_concat_bias_V_48_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_48_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_48_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 766 \
    name out_nodes_features_skip_concat_bias_V_49_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_49_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_49_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 767 \
    name out_nodes_features_skip_concat_bias_V_50_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_50_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_50_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 768 \
    name out_nodes_features_skip_concat_bias_V_51_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_51_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_51_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 769 \
    name out_nodes_features_skip_concat_bias_V_52_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_52_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_52_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 770 \
    name out_nodes_features_skip_concat_bias_V_53_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_53_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_53_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 771 \
    name out_nodes_features_skip_concat_bias_V_54_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_54_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_54_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 772 \
    name out_nodes_features_skip_concat_bias_V_55_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_55_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_55_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 773 \
    name out_nodes_features_skip_concat_bias_V_56_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_56_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_56_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 774 \
    name out_nodes_features_skip_concat_bias_V_57_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_57_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_57_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 775 \
    name out_nodes_features_skip_concat_bias_V_58_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_58_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_58_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 776 \
    name out_nodes_features_skip_concat_bias_V_59_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_59_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_59_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 777 \
    name out_nodes_features_skip_concat_bias_V_60_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_60_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_60_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 778 \
    name out_nodes_features_skip_concat_bias_V_61_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_61_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_61_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 779 \
    name out_nodes_features_skip_concat_bias_V_62_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_62_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_62_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 780 \
    name out_nodes_features_skip_concat_bias_V_63_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_out_nodes_features_skip_concat_bias_V_63_load \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_63_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 781 \
    name linear_proj_weight_V_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_0_load \
    op interface \
    ports { linear_proj_weight_V_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 782 \
    name linear_proj_weight_V_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_1_load \
    op interface \
    ports { linear_proj_weight_V_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 783 \
    name linear_proj_weight_V_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_2_load \
    op interface \
    ports { linear_proj_weight_V_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 784 \
    name linear_proj_weight_V_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_3_load \
    op interface \
    ports { linear_proj_weight_V_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 785 \
    name linear_proj_weight_V_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_4_load \
    op interface \
    ports { linear_proj_weight_V_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 786 \
    name linear_proj_weight_V_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_5_load \
    op interface \
    ports { linear_proj_weight_V_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 787 \
    name linear_proj_weight_V_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_6_load \
    op interface \
    ports { linear_proj_weight_V_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 788 \
    name linear_proj_weight_V_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_7_load \
    op interface \
    ports { linear_proj_weight_V_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 789 \
    name linear_proj_weight_V_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_8_load \
    op interface \
    ports { linear_proj_weight_V_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 790 \
    name linear_proj_weight_V_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_9_load \
    op interface \
    ports { linear_proj_weight_V_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 791 \
    name linear_proj_weight_V_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_10_load \
    op interface \
    ports { linear_proj_weight_V_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 792 \
    name linear_proj_weight_V_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_11_load \
    op interface \
    ports { linear_proj_weight_V_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 793 \
    name linear_proj_weight_V_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_12_load \
    op interface \
    ports { linear_proj_weight_V_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 794 \
    name linear_proj_weight_V_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_13_load \
    op interface \
    ports { linear_proj_weight_V_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 795 \
    name linear_proj_weight_V_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_14_load \
    op interface \
    ports { linear_proj_weight_V_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 796 \
    name linear_proj_weight_V_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_15_load \
    op interface \
    ports { linear_proj_weight_V_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 797 \
    name linear_proj_weight_V_16_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_16_load \
    op interface \
    ports { linear_proj_weight_V_16_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 798 \
    name linear_proj_weight_V_17_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_17_load \
    op interface \
    ports { linear_proj_weight_V_17_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 799 \
    name linear_proj_weight_V_18_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_18_load \
    op interface \
    ports { linear_proj_weight_V_18_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 800 \
    name linear_proj_weight_V_19_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_19_load \
    op interface \
    ports { linear_proj_weight_V_19_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 801 \
    name linear_proj_weight_V_20_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_20_load \
    op interface \
    ports { linear_proj_weight_V_20_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 802 \
    name linear_proj_weight_V_21_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_21_load \
    op interface \
    ports { linear_proj_weight_V_21_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 803 \
    name linear_proj_weight_V_22_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_22_load \
    op interface \
    ports { linear_proj_weight_V_22_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 804 \
    name linear_proj_weight_V_23_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_23_load \
    op interface \
    ports { linear_proj_weight_V_23_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 805 \
    name linear_proj_weight_V_24_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_24_load \
    op interface \
    ports { linear_proj_weight_V_24_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 806 \
    name linear_proj_weight_V_25_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_25_load \
    op interface \
    ports { linear_proj_weight_V_25_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 807 \
    name linear_proj_weight_V_26_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_26_load \
    op interface \
    ports { linear_proj_weight_V_26_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 808 \
    name linear_proj_weight_V_27_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_27_load \
    op interface \
    ports { linear_proj_weight_V_27_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 809 \
    name linear_proj_weight_V_28_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_28_load \
    op interface \
    ports { linear_proj_weight_V_28_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 810 \
    name linear_proj_weight_V_29_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_29_load \
    op interface \
    ports { linear_proj_weight_V_29_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 811 \
    name linear_proj_weight_V_30_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_30_load \
    op interface \
    ports { linear_proj_weight_V_30_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 812 \
    name linear_proj_weight_V_31_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_31_load \
    op interface \
    ports { linear_proj_weight_V_31_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 813 \
    name linear_proj_weight_V_32_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_32_load \
    op interface \
    ports { linear_proj_weight_V_32_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 814 \
    name linear_proj_weight_V_33_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_33_load \
    op interface \
    ports { linear_proj_weight_V_33_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 815 \
    name linear_proj_weight_V_34_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_34_load \
    op interface \
    ports { linear_proj_weight_V_34_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 816 \
    name linear_proj_weight_V_35_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_35_load \
    op interface \
    ports { linear_proj_weight_V_35_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 817 \
    name linear_proj_weight_V_36_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_36_load \
    op interface \
    ports { linear_proj_weight_V_36_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 818 \
    name linear_proj_weight_V_37_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_37_load \
    op interface \
    ports { linear_proj_weight_V_37_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 819 \
    name linear_proj_weight_V_38_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_38_load \
    op interface \
    ports { linear_proj_weight_V_38_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 820 \
    name linear_proj_weight_V_39_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_39_load \
    op interface \
    ports { linear_proj_weight_V_39_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 821 \
    name linear_proj_weight_V_40_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_40_load \
    op interface \
    ports { linear_proj_weight_V_40_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 822 \
    name linear_proj_weight_V_41_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_41_load \
    op interface \
    ports { linear_proj_weight_V_41_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 823 \
    name linear_proj_weight_V_42_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_42_load \
    op interface \
    ports { linear_proj_weight_V_42_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 824 \
    name linear_proj_weight_V_43_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_43_load \
    op interface \
    ports { linear_proj_weight_V_43_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 825 \
    name linear_proj_weight_V_44_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_44_load \
    op interface \
    ports { linear_proj_weight_V_44_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 826 \
    name linear_proj_weight_V_45_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_45_load \
    op interface \
    ports { linear_proj_weight_V_45_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 827 \
    name linear_proj_weight_V_46_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_46_load \
    op interface \
    ports { linear_proj_weight_V_46_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 828 \
    name linear_proj_weight_V_47_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_47_load \
    op interface \
    ports { linear_proj_weight_V_47_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 829 \
    name linear_proj_weight_V_48_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_48_load \
    op interface \
    ports { linear_proj_weight_V_48_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 830 \
    name linear_proj_weight_V_49_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_49_load \
    op interface \
    ports { linear_proj_weight_V_49_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 831 \
    name linear_proj_weight_V_50_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_50_load \
    op interface \
    ports { linear_proj_weight_V_50_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 832 \
    name linear_proj_weight_V_51_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_51_load \
    op interface \
    ports { linear_proj_weight_V_51_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 833 \
    name linear_proj_weight_V_52_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_52_load \
    op interface \
    ports { linear_proj_weight_V_52_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 834 \
    name linear_proj_weight_V_53_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_53_load \
    op interface \
    ports { linear_proj_weight_V_53_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 835 \
    name linear_proj_weight_V_54_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_54_load \
    op interface \
    ports { linear_proj_weight_V_54_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 836 \
    name linear_proj_weight_V_55_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_55_load \
    op interface \
    ports { linear_proj_weight_V_55_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 837 \
    name linear_proj_weight_V_56_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_56_load \
    op interface \
    ports { linear_proj_weight_V_56_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 838 \
    name linear_proj_weight_V_57_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_57_load \
    op interface \
    ports { linear_proj_weight_V_57_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 839 \
    name linear_proj_weight_V_58_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_58_load \
    op interface \
    ports { linear_proj_weight_V_58_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 840 \
    name linear_proj_weight_V_59_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_59_load \
    op interface \
    ports { linear_proj_weight_V_59_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 841 \
    name linear_proj_weight_V_60_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_60_load \
    op interface \
    ports { linear_proj_weight_V_60_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 842 \
    name linear_proj_weight_V_61_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_61_load \
    op interface \
    ports { linear_proj_weight_V_61_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 843 \
    name linear_proj_weight_V_62_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_62_load \
    op interface \
    ports { linear_proj_weight_V_62_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 844 \
    name linear_proj_weight_V_63_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_linear_proj_weight_V_63_load \
    op interface \
    ports { linear_proj_weight_V_63_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 845 \
    name sum_V_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_sum_V_3_out \
    op interface \
    ports { sum_V_3_out { O 28 vector } sum_V_3_out_ap_vld { O 1 bit } } \
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


