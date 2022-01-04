# This script segment is generated automatically by AutoPilot

set id 1940
set name GAT_compute_one_graph_mux_164_28_1_1
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
set din16_width 4
set din16_signed 0
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
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
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
    id 2298 \
    name out_nodes_features_sum_V_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_sum_V_0 \
    op interface \
    ports { out_nodes_features_sum_V_0_address0 { O 4 vector } out_nodes_features_sum_V_0_ce0 { O 1 bit } out_nodes_features_sum_V_0_q0 { I 28 vector } out_nodes_features_sum_V_0_address1 { O 4 vector } out_nodes_features_sum_V_0_ce1 { O 1 bit } out_nodes_features_sum_V_0_we1 { O 1 bit } out_nodes_features_sum_V_0_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2299 \
    name out_nodes_features_sum_V_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_sum_V_1 \
    op interface \
    ports { out_nodes_features_sum_V_1_address0 { O 4 vector } out_nodes_features_sum_V_1_ce0 { O 1 bit } out_nodes_features_sum_V_1_q0 { I 28 vector } out_nodes_features_sum_V_1_address1 { O 4 vector } out_nodes_features_sum_V_1_ce1 { O 1 bit } out_nodes_features_sum_V_1_we1 { O 1 bit } out_nodes_features_sum_V_1_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2300 \
    name out_nodes_features_sum_V_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_sum_V_2 \
    op interface \
    ports { out_nodes_features_sum_V_2_address0 { O 4 vector } out_nodes_features_sum_V_2_ce0 { O 1 bit } out_nodes_features_sum_V_2_q0 { I 28 vector } out_nodes_features_sum_V_2_address1 { O 4 vector } out_nodes_features_sum_V_2_ce1 { O 1 bit } out_nodes_features_sum_V_2_we1 { O 1 bit } out_nodes_features_sum_V_2_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2301 \
    name out_nodes_features_sum_V_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_sum_V_3 \
    op interface \
    ports { out_nodes_features_sum_V_3_address0 { O 4 vector } out_nodes_features_sum_V_3_ce0 { O 1 bit } out_nodes_features_sum_V_3_q0 { I 28 vector } out_nodes_features_sum_V_3_address1 { O 4 vector } out_nodes_features_sum_V_3_ce1 { O 1 bit } out_nodes_features_sum_V_3_we1 { O 1 bit } out_nodes_features_sum_V_3_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2302 \
    name out_nodes_features_sum_V_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_sum_V_4 \
    op interface \
    ports { out_nodes_features_sum_V_4_address0 { O 4 vector } out_nodes_features_sum_V_4_ce0 { O 1 bit } out_nodes_features_sum_V_4_q0 { I 28 vector } out_nodes_features_sum_V_4_address1 { O 4 vector } out_nodes_features_sum_V_4_ce1 { O 1 bit } out_nodes_features_sum_V_4_we1 { O 1 bit } out_nodes_features_sum_V_4_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2303 \
    name out_nodes_features_sum_V_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_sum_V_5 \
    op interface \
    ports { out_nodes_features_sum_V_5_address0 { O 4 vector } out_nodes_features_sum_V_5_ce0 { O 1 bit } out_nodes_features_sum_V_5_q0 { I 28 vector } out_nodes_features_sum_V_5_address1 { O 4 vector } out_nodes_features_sum_V_5_ce1 { O 1 bit } out_nodes_features_sum_V_5_we1 { O 1 bit } out_nodes_features_sum_V_5_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2304 \
    name out_nodes_features_sum_V_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_sum_V_6 \
    op interface \
    ports { out_nodes_features_sum_V_6_address0 { O 4 vector } out_nodes_features_sum_V_6_ce0 { O 1 bit } out_nodes_features_sum_V_6_q0 { I 28 vector } out_nodes_features_sum_V_6_address1 { O 4 vector } out_nodes_features_sum_V_6_ce1 { O 1 bit } out_nodes_features_sum_V_6_we1 { O 1 bit } out_nodes_features_sum_V_6_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2305 \
    name out_nodes_features_sum_V_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_sum_V_7 \
    op interface \
    ports { out_nodes_features_sum_V_7_address0 { O 4 vector } out_nodes_features_sum_V_7_ce0 { O 1 bit } out_nodes_features_sum_V_7_q0 { I 28 vector } out_nodes_features_sum_V_7_address1 { O 4 vector } out_nodes_features_sum_V_7_ce1 { O 1 bit } out_nodes_features_sum_V_7_we1 { O 1 bit } out_nodes_features_sum_V_7_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2306 \
    name out_nodes_features_sum_V_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_sum_V_8 \
    op interface \
    ports { out_nodes_features_sum_V_8_address0 { O 4 vector } out_nodes_features_sum_V_8_ce0 { O 1 bit } out_nodes_features_sum_V_8_q0 { I 28 vector } out_nodes_features_sum_V_8_address1 { O 4 vector } out_nodes_features_sum_V_8_ce1 { O 1 bit } out_nodes_features_sum_V_8_we1 { O 1 bit } out_nodes_features_sum_V_8_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2307 \
    name out_nodes_features_sum_V_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_sum_V_9 \
    op interface \
    ports { out_nodes_features_sum_V_9_address0 { O 4 vector } out_nodes_features_sum_V_9_ce0 { O 1 bit } out_nodes_features_sum_V_9_q0 { I 28 vector } out_nodes_features_sum_V_9_address1 { O 4 vector } out_nodes_features_sum_V_9_ce1 { O 1 bit } out_nodes_features_sum_V_9_we1 { O 1 bit } out_nodes_features_sum_V_9_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2308 \
    name out_nodes_features_sum_V_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_sum_V_10 \
    op interface \
    ports { out_nodes_features_sum_V_10_address0 { O 4 vector } out_nodes_features_sum_V_10_ce0 { O 1 bit } out_nodes_features_sum_V_10_q0 { I 28 vector } out_nodes_features_sum_V_10_address1 { O 4 vector } out_nodes_features_sum_V_10_ce1 { O 1 bit } out_nodes_features_sum_V_10_we1 { O 1 bit } out_nodes_features_sum_V_10_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2309 \
    name out_nodes_features_sum_V_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_sum_V_11 \
    op interface \
    ports { out_nodes_features_sum_V_11_address0 { O 4 vector } out_nodes_features_sum_V_11_ce0 { O 1 bit } out_nodes_features_sum_V_11_q0 { I 28 vector } out_nodes_features_sum_V_11_address1 { O 4 vector } out_nodes_features_sum_V_11_ce1 { O 1 bit } out_nodes_features_sum_V_11_we1 { O 1 bit } out_nodes_features_sum_V_11_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2310 \
    name out_nodes_features_sum_V_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_sum_V_12 \
    op interface \
    ports { out_nodes_features_sum_V_12_address0 { O 4 vector } out_nodes_features_sum_V_12_ce0 { O 1 bit } out_nodes_features_sum_V_12_q0 { I 28 vector } out_nodes_features_sum_V_12_address1 { O 4 vector } out_nodes_features_sum_V_12_ce1 { O 1 bit } out_nodes_features_sum_V_12_we1 { O 1 bit } out_nodes_features_sum_V_12_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2311 \
    name out_nodes_features_sum_V_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_sum_V_13 \
    op interface \
    ports { out_nodes_features_sum_V_13_address0 { O 4 vector } out_nodes_features_sum_V_13_ce0 { O 1 bit } out_nodes_features_sum_V_13_q0 { I 28 vector } out_nodes_features_sum_V_13_address1 { O 4 vector } out_nodes_features_sum_V_13_ce1 { O 1 bit } out_nodes_features_sum_V_13_we1 { O 1 bit } out_nodes_features_sum_V_13_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2312 \
    name out_nodes_features_sum_V_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_sum_V_14 \
    op interface \
    ports { out_nodes_features_sum_V_14_address0 { O 4 vector } out_nodes_features_sum_V_14_ce0 { O 1 bit } out_nodes_features_sum_V_14_q0 { I 28 vector } out_nodes_features_sum_V_14_address1 { O 4 vector } out_nodes_features_sum_V_14_ce1 { O 1 bit } out_nodes_features_sum_V_14_we1 { O 1 bit } out_nodes_features_sum_V_14_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2313 \
    name out_nodes_features_sum_V_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_sum_V_15 \
    op interface \
    ports { out_nodes_features_sum_V_15_address0 { O 4 vector } out_nodes_features_sum_V_15_ce0 { O 1 bit } out_nodes_features_sum_V_15_q0 { I 28 vector } out_nodes_features_sum_V_15_address1 { O 4 vector } out_nodes_features_sum_V_15_ce1 { O 1 bit } out_nodes_features_sum_V_15_we1 { O 1 bit } out_nodes_features_sum_V_15_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V_15'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1976 \
    name a_buffer_V_load_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buffer_V_load_cast \
    op interface \
    ports { a_buffer_V_load_cast { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1977 \
    name a_buffer_V_load_1_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buffer_V_load_1_cast \
    op interface \
    ports { a_buffer_V_load_1_cast { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1978 \
    name a_buffer_V_load_2_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buffer_V_load_2_cast \
    op interface \
    ports { a_buffer_V_load_2_cast { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1979 \
    name cmp21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp21 \
    op interface \
    ports { cmp21 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1980 \
    name a_buffer_V_load_3_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buffer_V_load_3_cast \
    op interface \
    ports { a_buffer_V_load_3_cast { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1981 \
    name a_buffer_V_load_4_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buffer_V_load_4_cast \
    op interface \
    ports { a_buffer_V_load_4_cast { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1982 \
    name a_buffer_V_load_5_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buffer_V_load_5_cast \
    op interface \
    ports { a_buffer_V_load_5_cast { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1983 \
    name a_buffer_V_load_6_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buffer_V_load_6_cast \
    op interface \
    ports { a_buffer_V_load_6_cast { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1984 \
    name a_buffer_V_load_7_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buffer_V_load_7_cast \
    op interface \
    ports { a_buffer_V_load_7_cast { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1985 \
    name a_buffer_V_load_8_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buffer_V_load_8_cast \
    op interface \
    ports { a_buffer_V_load_8_cast { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1986 \
    name a_buffer_V_load_9_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buffer_V_load_9_cast \
    op interface \
    ports { a_buffer_V_load_9_cast { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1987 \
    name a_buffer_V_load_10_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buffer_V_load_10_cast \
    op interface \
    ports { a_buffer_V_load_10_cast { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1988 \
    name a_buffer_V_load_11_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buffer_V_load_11_cast \
    op interface \
    ports { a_buffer_V_load_11_cast { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1989 \
    name a_buffer_V_load_12_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buffer_V_load_12_cast \
    op interface \
    ports { a_buffer_V_load_12_cast { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1990 \
    name a_buffer_V_load_13_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buffer_V_load_13_cast \
    op interface \
    ports { a_buffer_V_load_13_cast { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1991 \
    name a_buffer_V_load_14_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_buffer_V_load_14_cast \
    op interface \
    ports { a_buffer_V_load_14_cast { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1992 \
    name sext_ln191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln191 \
    op interface \
    ports { sext_ln191 { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1993 \
    name nodes_features_proj_V_0_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_0_0_load \
    op interface \
    ports { nodes_features_proj_V_0_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1994 \
    name nodes_features_proj_V_0_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_0_1_load \
    op interface \
    ports { nodes_features_proj_V_0_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1995 \
    name nodes_features_proj_V_0_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_0_2_load \
    op interface \
    ports { nodes_features_proj_V_0_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1996 \
    name nodes_features_proj_V_0_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_0_3_load \
    op interface \
    ports { nodes_features_proj_V_0_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1997 \
    name nodes_features_proj_V_0_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_0_4_load \
    op interface \
    ports { nodes_features_proj_V_0_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1998 \
    name nodes_features_proj_V_0_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_0_5_load \
    op interface \
    ports { nodes_features_proj_V_0_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1999 \
    name nodes_features_proj_V_0_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_0_6_load \
    op interface \
    ports { nodes_features_proj_V_0_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2000 \
    name nodes_features_proj_V_0_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_0_7_load \
    op interface \
    ports { nodes_features_proj_V_0_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2001 \
    name nodes_features_proj_V_0_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_0_8_load \
    op interface \
    ports { nodes_features_proj_V_0_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2002 \
    name nodes_features_proj_V_0_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_0_9_load \
    op interface \
    ports { nodes_features_proj_V_0_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2003 \
    name nodes_features_proj_V_0_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_0_10_load \
    op interface \
    ports { nodes_features_proj_V_0_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2004 \
    name nodes_features_proj_V_0_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_0_11_load \
    op interface \
    ports { nodes_features_proj_V_0_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2005 \
    name nodes_features_proj_V_0_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_0_12_load \
    op interface \
    ports { nodes_features_proj_V_0_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2006 \
    name nodes_features_proj_V_0_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_0_13_load \
    op interface \
    ports { nodes_features_proj_V_0_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2007 \
    name nodes_features_proj_V_0_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_0_14_load \
    op interface \
    ports { nodes_features_proj_V_0_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2008 \
    name nodes_features_proj_V_0_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_0_15_load \
    op interface \
    ports { nodes_features_proj_V_0_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2009 \
    name n2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_n2 \
    op interface \
    ports { n2 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2010 \
    name nodes_features_proj_V_1_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_1_0_load \
    op interface \
    ports { nodes_features_proj_V_1_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2011 \
    name nodes_features_proj_V_1_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_1_1_load \
    op interface \
    ports { nodes_features_proj_V_1_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2012 \
    name nodes_features_proj_V_1_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_1_2_load \
    op interface \
    ports { nodes_features_proj_V_1_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2013 \
    name nodes_features_proj_V_1_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_1_3_load \
    op interface \
    ports { nodes_features_proj_V_1_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2014 \
    name nodes_features_proj_V_1_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_1_4_load \
    op interface \
    ports { nodes_features_proj_V_1_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2015 \
    name nodes_features_proj_V_1_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_1_5_load \
    op interface \
    ports { nodes_features_proj_V_1_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2016 \
    name nodes_features_proj_V_1_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_1_6_load \
    op interface \
    ports { nodes_features_proj_V_1_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2017 \
    name nodes_features_proj_V_1_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_1_7_load \
    op interface \
    ports { nodes_features_proj_V_1_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2018 \
    name nodes_features_proj_V_1_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_1_8_load \
    op interface \
    ports { nodes_features_proj_V_1_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2019 \
    name nodes_features_proj_V_1_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_1_9_load \
    op interface \
    ports { nodes_features_proj_V_1_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2020 \
    name nodes_features_proj_V_1_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_1_10_load \
    op interface \
    ports { nodes_features_proj_V_1_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2021 \
    name nodes_features_proj_V_1_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_1_11_load \
    op interface \
    ports { nodes_features_proj_V_1_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2022 \
    name nodes_features_proj_V_1_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_1_12_load \
    op interface \
    ports { nodes_features_proj_V_1_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2023 \
    name nodes_features_proj_V_1_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_1_13_load \
    op interface \
    ports { nodes_features_proj_V_1_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2024 \
    name nodes_features_proj_V_1_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_1_14_load \
    op interface \
    ports { nodes_features_proj_V_1_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2025 \
    name nodes_features_proj_V_1_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_1_15_load \
    op interface \
    ports { nodes_features_proj_V_1_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2026 \
    name nodes_features_proj_V_2_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_2_0_load \
    op interface \
    ports { nodes_features_proj_V_2_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2027 \
    name nodes_features_proj_V_2_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_2_1_load \
    op interface \
    ports { nodes_features_proj_V_2_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2028 \
    name nodes_features_proj_V_2_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_2_2_load \
    op interface \
    ports { nodes_features_proj_V_2_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2029 \
    name nodes_features_proj_V_2_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_2_3_load \
    op interface \
    ports { nodes_features_proj_V_2_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2030 \
    name nodes_features_proj_V_2_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_2_4_load \
    op interface \
    ports { nodes_features_proj_V_2_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2031 \
    name nodes_features_proj_V_2_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_2_5_load \
    op interface \
    ports { nodes_features_proj_V_2_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2032 \
    name nodes_features_proj_V_2_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_2_6_load \
    op interface \
    ports { nodes_features_proj_V_2_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2033 \
    name nodes_features_proj_V_2_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_2_7_load \
    op interface \
    ports { nodes_features_proj_V_2_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2034 \
    name nodes_features_proj_V_2_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_2_8_load \
    op interface \
    ports { nodes_features_proj_V_2_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2035 \
    name nodes_features_proj_V_2_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_2_9_load \
    op interface \
    ports { nodes_features_proj_V_2_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2036 \
    name nodes_features_proj_V_2_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_2_10_load \
    op interface \
    ports { nodes_features_proj_V_2_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2037 \
    name nodes_features_proj_V_2_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_2_11_load \
    op interface \
    ports { nodes_features_proj_V_2_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2038 \
    name nodes_features_proj_V_2_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_2_12_load \
    op interface \
    ports { nodes_features_proj_V_2_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2039 \
    name nodes_features_proj_V_2_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_2_13_load \
    op interface \
    ports { nodes_features_proj_V_2_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2040 \
    name nodes_features_proj_V_2_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_2_14_load \
    op interface \
    ports { nodes_features_proj_V_2_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2041 \
    name nodes_features_proj_V_2_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_2_15_load \
    op interface \
    ports { nodes_features_proj_V_2_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2042 \
    name nodes_features_proj_V_3_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_3_0_load \
    op interface \
    ports { nodes_features_proj_V_3_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2043 \
    name nodes_features_proj_V_3_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_3_1_load \
    op interface \
    ports { nodes_features_proj_V_3_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2044 \
    name nodes_features_proj_V_3_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_3_2_load \
    op interface \
    ports { nodes_features_proj_V_3_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2045 \
    name nodes_features_proj_V_3_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_3_3_load \
    op interface \
    ports { nodes_features_proj_V_3_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2046 \
    name nodes_features_proj_V_3_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_3_4_load \
    op interface \
    ports { nodes_features_proj_V_3_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2047 \
    name nodes_features_proj_V_3_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_3_5_load \
    op interface \
    ports { nodes_features_proj_V_3_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2048 \
    name nodes_features_proj_V_3_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_3_6_load \
    op interface \
    ports { nodes_features_proj_V_3_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2049 \
    name nodes_features_proj_V_3_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_3_7_load \
    op interface \
    ports { nodes_features_proj_V_3_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2050 \
    name nodes_features_proj_V_3_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_3_8_load \
    op interface \
    ports { nodes_features_proj_V_3_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2051 \
    name nodes_features_proj_V_3_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_3_9_load \
    op interface \
    ports { nodes_features_proj_V_3_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2052 \
    name nodes_features_proj_V_3_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_3_10_load \
    op interface \
    ports { nodes_features_proj_V_3_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2053 \
    name nodes_features_proj_V_3_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_3_11_load \
    op interface \
    ports { nodes_features_proj_V_3_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2054 \
    name nodes_features_proj_V_3_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_3_12_load \
    op interface \
    ports { nodes_features_proj_V_3_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2055 \
    name nodes_features_proj_V_3_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_3_13_load \
    op interface \
    ports { nodes_features_proj_V_3_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2056 \
    name nodes_features_proj_V_3_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_3_14_load \
    op interface \
    ports { nodes_features_proj_V_3_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2057 \
    name nodes_features_proj_V_3_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_3_15_load \
    op interface \
    ports { nodes_features_proj_V_3_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2058 \
    name nodes_features_proj_V_4_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_4_0_load \
    op interface \
    ports { nodes_features_proj_V_4_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2059 \
    name nodes_features_proj_V_4_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_4_1_load \
    op interface \
    ports { nodes_features_proj_V_4_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2060 \
    name nodes_features_proj_V_4_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_4_2_load \
    op interface \
    ports { nodes_features_proj_V_4_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2061 \
    name nodes_features_proj_V_4_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_4_3_load \
    op interface \
    ports { nodes_features_proj_V_4_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2062 \
    name nodes_features_proj_V_4_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_4_4_load \
    op interface \
    ports { nodes_features_proj_V_4_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2063 \
    name nodes_features_proj_V_4_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_4_5_load \
    op interface \
    ports { nodes_features_proj_V_4_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2064 \
    name nodes_features_proj_V_4_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_4_6_load \
    op interface \
    ports { nodes_features_proj_V_4_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2065 \
    name nodes_features_proj_V_4_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_4_7_load \
    op interface \
    ports { nodes_features_proj_V_4_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2066 \
    name nodes_features_proj_V_4_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_4_8_load \
    op interface \
    ports { nodes_features_proj_V_4_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2067 \
    name nodes_features_proj_V_4_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_4_9_load \
    op interface \
    ports { nodes_features_proj_V_4_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2068 \
    name nodes_features_proj_V_4_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_4_10_load \
    op interface \
    ports { nodes_features_proj_V_4_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2069 \
    name nodes_features_proj_V_4_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_4_11_load \
    op interface \
    ports { nodes_features_proj_V_4_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2070 \
    name nodes_features_proj_V_4_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_4_12_load \
    op interface \
    ports { nodes_features_proj_V_4_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2071 \
    name nodes_features_proj_V_4_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_4_13_load \
    op interface \
    ports { nodes_features_proj_V_4_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2072 \
    name nodes_features_proj_V_4_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_4_14_load \
    op interface \
    ports { nodes_features_proj_V_4_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2073 \
    name nodes_features_proj_V_4_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_4_15_load \
    op interface \
    ports { nodes_features_proj_V_4_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2074 \
    name nodes_features_proj_V_5_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_5_0_load \
    op interface \
    ports { nodes_features_proj_V_5_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2075 \
    name nodes_features_proj_V_5_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_5_1_load \
    op interface \
    ports { nodes_features_proj_V_5_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2076 \
    name nodes_features_proj_V_5_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_5_2_load \
    op interface \
    ports { nodes_features_proj_V_5_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2077 \
    name nodes_features_proj_V_5_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_5_3_load \
    op interface \
    ports { nodes_features_proj_V_5_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2078 \
    name nodes_features_proj_V_5_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_5_4_load \
    op interface \
    ports { nodes_features_proj_V_5_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2079 \
    name nodes_features_proj_V_5_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_5_5_load \
    op interface \
    ports { nodes_features_proj_V_5_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2080 \
    name nodes_features_proj_V_5_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_5_6_load \
    op interface \
    ports { nodes_features_proj_V_5_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2081 \
    name nodes_features_proj_V_5_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_5_7_load \
    op interface \
    ports { nodes_features_proj_V_5_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2082 \
    name nodes_features_proj_V_5_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_5_8_load \
    op interface \
    ports { nodes_features_proj_V_5_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2083 \
    name nodes_features_proj_V_5_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_5_9_load \
    op interface \
    ports { nodes_features_proj_V_5_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2084 \
    name nodes_features_proj_V_5_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_5_10_load \
    op interface \
    ports { nodes_features_proj_V_5_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2085 \
    name nodes_features_proj_V_5_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_5_11_load \
    op interface \
    ports { nodes_features_proj_V_5_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2086 \
    name nodes_features_proj_V_5_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_5_12_load \
    op interface \
    ports { nodes_features_proj_V_5_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2087 \
    name nodes_features_proj_V_5_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_5_13_load \
    op interface \
    ports { nodes_features_proj_V_5_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2088 \
    name nodes_features_proj_V_5_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_5_14_load \
    op interface \
    ports { nodes_features_proj_V_5_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2089 \
    name nodes_features_proj_V_5_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_5_15_load \
    op interface \
    ports { nodes_features_proj_V_5_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2090 \
    name nodes_features_proj_V_6_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_6_0_load \
    op interface \
    ports { nodes_features_proj_V_6_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2091 \
    name nodes_features_proj_V_6_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_6_1_load \
    op interface \
    ports { nodes_features_proj_V_6_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2092 \
    name nodes_features_proj_V_6_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_6_2_load \
    op interface \
    ports { nodes_features_proj_V_6_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2093 \
    name nodes_features_proj_V_6_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_6_3_load \
    op interface \
    ports { nodes_features_proj_V_6_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2094 \
    name nodes_features_proj_V_6_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_6_4_load \
    op interface \
    ports { nodes_features_proj_V_6_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2095 \
    name nodes_features_proj_V_6_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_6_5_load \
    op interface \
    ports { nodes_features_proj_V_6_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2096 \
    name nodes_features_proj_V_6_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_6_6_load \
    op interface \
    ports { nodes_features_proj_V_6_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2097 \
    name nodes_features_proj_V_6_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_6_7_load \
    op interface \
    ports { nodes_features_proj_V_6_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2098 \
    name nodes_features_proj_V_6_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_6_8_load \
    op interface \
    ports { nodes_features_proj_V_6_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2099 \
    name nodes_features_proj_V_6_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_6_9_load \
    op interface \
    ports { nodes_features_proj_V_6_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2100 \
    name nodes_features_proj_V_6_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_6_10_load \
    op interface \
    ports { nodes_features_proj_V_6_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2101 \
    name nodes_features_proj_V_6_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_6_11_load \
    op interface \
    ports { nodes_features_proj_V_6_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2102 \
    name nodes_features_proj_V_6_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_6_12_load \
    op interface \
    ports { nodes_features_proj_V_6_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2103 \
    name nodes_features_proj_V_6_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_6_13_load \
    op interface \
    ports { nodes_features_proj_V_6_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2104 \
    name nodes_features_proj_V_6_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_6_14_load \
    op interface \
    ports { nodes_features_proj_V_6_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2105 \
    name nodes_features_proj_V_6_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_6_15_load \
    op interface \
    ports { nodes_features_proj_V_6_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2106 \
    name nodes_features_proj_V_7_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_7_0_load \
    op interface \
    ports { nodes_features_proj_V_7_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2107 \
    name nodes_features_proj_V_7_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_7_1_load \
    op interface \
    ports { nodes_features_proj_V_7_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2108 \
    name nodes_features_proj_V_7_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_7_2_load \
    op interface \
    ports { nodes_features_proj_V_7_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2109 \
    name nodes_features_proj_V_7_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_7_3_load \
    op interface \
    ports { nodes_features_proj_V_7_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2110 \
    name nodes_features_proj_V_7_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_7_4_load \
    op interface \
    ports { nodes_features_proj_V_7_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2111 \
    name nodes_features_proj_V_7_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_7_5_load \
    op interface \
    ports { nodes_features_proj_V_7_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2112 \
    name nodes_features_proj_V_7_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_7_6_load \
    op interface \
    ports { nodes_features_proj_V_7_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2113 \
    name nodes_features_proj_V_7_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_7_7_load \
    op interface \
    ports { nodes_features_proj_V_7_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2114 \
    name nodes_features_proj_V_7_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_7_8_load \
    op interface \
    ports { nodes_features_proj_V_7_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2115 \
    name nodes_features_proj_V_7_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_7_9_load \
    op interface \
    ports { nodes_features_proj_V_7_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2116 \
    name nodes_features_proj_V_7_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_7_10_load \
    op interface \
    ports { nodes_features_proj_V_7_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2117 \
    name nodes_features_proj_V_7_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_7_11_load \
    op interface \
    ports { nodes_features_proj_V_7_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2118 \
    name nodes_features_proj_V_7_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_7_12_load \
    op interface \
    ports { nodes_features_proj_V_7_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2119 \
    name nodes_features_proj_V_7_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_7_13_load \
    op interface \
    ports { nodes_features_proj_V_7_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2120 \
    name nodes_features_proj_V_7_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_7_14_load \
    op interface \
    ports { nodes_features_proj_V_7_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2121 \
    name nodes_features_proj_V_7_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_7_15_load \
    op interface \
    ports { nodes_features_proj_V_7_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2122 \
    name nodes_features_proj_V_8_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_8_0_load \
    op interface \
    ports { nodes_features_proj_V_8_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2123 \
    name nodes_features_proj_V_8_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_8_1_load \
    op interface \
    ports { nodes_features_proj_V_8_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2124 \
    name nodes_features_proj_V_8_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_8_2_load \
    op interface \
    ports { nodes_features_proj_V_8_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2125 \
    name nodes_features_proj_V_8_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_8_3_load \
    op interface \
    ports { nodes_features_proj_V_8_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2126 \
    name nodes_features_proj_V_8_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_8_4_load \
    op interface \
    ports { nodes_features_proj_V_8_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2127 \
    name nodes_features_proj_V_8_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_8_5_load \
    op interface \
    ports { nodes_features_proj_V_8_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2128 \
    name nodes_features_proj_V_8_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_8_6_load \
    op interface \
    ports { nodes_features_proj_V_8_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2129 \
    name nodes_features_proj_V_8_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_8_7_load \
    op interface \
    ports { nodes_features_proj_V_8_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2130 \
    name nodes_features_proj_V_8_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_8_8_load \
    op interface \
    ports { nodes_features_proj_V_8_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2131 \
    name nodes_features_proj_V_8_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_8_9_load \
    op interface \
    ports { nodes_features_proj_V_8_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2132 \
    name nodes_features_proj_V_8_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_8_10_load \
    op interface \
    ports { nodes_features_proj_V_8_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2133 \
    name nodes_features_proj_V_8_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_8_11_load \
    op interface \
    ports { nodes_features_proj_V_8_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2134 \
    name nodes_features_proj_V_8_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_8_12_load \
    op interface \
    ports { nodes_features_proj_V_8_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2135 \
    name nodes_features_proj_V_8_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_8_13_load \
    op interface \
    ports { nodes_features_proj_V_8_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2136 \
    name nodes_features_proj_V_8_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_8_14_load \
    op interface \
    ports { nodes_features_proj_V_8_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2137 \
    name nodes_features_proj_V_8_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_8_15_load \
    op interface \
    ports { nodes_features_proj_V_8_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2138 \
    name nodes_features_proj_V_9_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_9_0_load \
    op interface \
    ports { nodes_features_proj_V_9_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2139 \
    name nodes_features_proj_V_9_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_9_1_load \
    op interface \
    ports { nodes_features_proj_V_9_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2140 \
    name nodes_features_proj_V_9_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_9_2_load \
    op interface \
    ports { nodes_features_proj_V_9_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2141 \
    name nodes_features_proj_V_9_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_9_3_load \
    op interface \
    ports { nodes_features_proj_V_9_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2142 \
    name nodes_features_proj_V_9_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_9_4_load \
    op interface \
    ports { nodes_features_proj_V_9_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2143 \
    name nodes_features_proj_V_9_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_9_5_load \
    op interface \
    ports { nodes_features_proj_V_9_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2144 \
    name nodes_features_proj_V_9_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_9_6_load \
    op interface \
    ports { nodes_features_proj_V_9_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2145 \
    name nodes_features_proj_V_9_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_9_7_load \
    op interface \
    ports { nodes_features_proj_V_9_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2146 \
    name nodes_features_proj_V_9_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_9_8_load \
    op interface \
    ports { nodes_features_proj_V_9_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2147 \
    name nodes_features_proj_V_9_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_9_9_load \
    op interface \
    ports { nodes_features_proj_V_9_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2148 \
    name nodes_features_proj_V_9_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_9_10_load \
    op interface \
    ports { nodes_features_proj_V_9_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2149 \
    name nodes_features_proj_V_9_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_9_11_load \
    op interface \
    ports { nodes_features_proj_V_9_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2150 \
    name nodes_features_proj_V_9_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_9_12_load \
    op interface \
    ports { nodes_features_proj_V_9_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2151 \
    name nodes_features_proj_V_9_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_9_13_load \
    op interface \
    ports { nodes_features_proj_V_9_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2152 \
    name nodes_features_proj_V_9_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_9_14_load \
    op interface \
    ports { nodes_features_proj_V_9_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2153 \
    name nodes_features_proj_V_9_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_9_15_load \
    op interface \
    ports { nodes_features_proj_V_9_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2154 \
    name nodes_features_proj_V_10_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_10_0_load \
    op interface \
    ports { nodes_features_proj_V_10_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2155 \
    name nodes_features_proj_V_10_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_10_1_load \
    op interface \
    ports { nodes_features_proj_V_10_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2156 \
    name nodes_features_proj_V_10_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_10_2_load \
    op interface \
    ports { nodes_features_proj_V_10_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2157 \
    name nodes_features_proj_V_10_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_10_3_load \
    op interface \
    ports { nodes_features_proj_V_10_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2158 \
    name nodes_features_proj_V_10_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_10_4_load \
    op interface \
    ports { nodes_features_proj_V_10_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2159 \
    name nodes_features_proj_V_10_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_10_5_load \
    op interface \
    ports { nodes_features_proj_V_10_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2160 \
    name nodes_features_proj_V_10_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_10_6_load \
    op interface \
    ports { nodes_features_proj_V_10_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2161 \
    name nodes_features_proj_V_10_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_10_7_load \
    op interface \
    ports { nodes_features_proj_V_10_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2162 \
    name nodes_features_proj_V_10_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_10_8_load \
    op interface \
    ports { nodes_features_proj_V_10_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2163 \
    name nodes_features_proj_V_10_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_10_9_load \
    op interface \
    ports { nodes_features_proj_V_10_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2164 \
    name nodes_features_proj_V_10_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_10_10_load \
    op interface \
    ports { nodes_features_proj_V_10_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2165 \
    name nodes_features_proj_V_10_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_10_11_load \
    op interface \
    ports { nodes_features_proj_V_10_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2166 \
    name nodes_features_proj_V_10_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_10_12_load \
    op interface \
    ports { nodes_features_proj_V_10_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2167 \
    name nodes_features_proj_V_10_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_10_13_load \
    op interface \
    ports { nodes_features_proj_V_10_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2168 \
    name nodes_features_proj_V_10_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_10_14_load \
    op interface \
    ports { nodes_features_proj_V_10_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2169 \
    name nodes_features_proj_V_10_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_10_15_load \
    op interface \
    ports { nodes_features_proj_V_10_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2170 \
    name nodes_features_proj_V_11_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_11_0_load \
    op interface \
    ports { nodes_features_proj_V_11_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2171 \
    name nodes_features_proj_V_11_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_11_1_load \
    op interface \
    ports { nodes_features_proj_V_11_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2172 \
    name nodes_features_proj_V_11_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_11_2_load \
    op interface \
    ports { nodes_features_proj_V_11_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2173 \
    name nodes_features_proj_V_11_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_11_3_load \
    op interface \
    ports { nodes_features_proj_V_11_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2174 \
    name nodes_features_proj_V_11_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_11_4_load \
    op interface \
    ports { nodes_features_proj_V_11_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2175 \
    name nodes_features_proj_V_11_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_11_5_load \
    op interface \
    ports { nodes_features_proj_V_11_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2176 \
    name nodes_features_proj_V_11_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_11_6_load \
    op interface \
    ports { nodes_features_proj_V_11_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2177 \
    name nodes_features_proj_V_11_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_11_7_load \
    op interface \
    ports { nodes_features_proj_V_11_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2178 \
    name nodes_features_proj_V_11_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_11_8_load \
    op interface \
    ports { nodes_features_proj_V_11_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2179 \
    name nodes_features_proj_V_11_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_11_9_load \
    op interface \
    ports { nodes_features_proj_V_11_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2180 \
    name nodes_features_proj_V_11_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_11_10_load \
    op interface \
    ports { nodes_features_proj_V_11_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2181 \
    name nodes_features_proj_V_11_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_11_11_load \
    op interface \
    ports { nodes_features_proj_V_11_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2182 \
    name nodes_features_proj_V_11_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_11_12_load \
    op interface \
    ports { nodes_features_proj_V_11_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2183 \
    name nodes_features_proj_V_11_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_11_13_load \
    op interface \
    ports { nodes_features_proj_V_11_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2184 \
    name nodes_features_proj_V_11_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_11_14_load \
    op interface \
    ports { nodes_features_proj_V_11_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2185 \
    name nodes_features_proj_V_11_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_11_15_load \
    op interface \
    ports { nodes_features_proj_V_11_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2186 \
    name nodes_features_proj_V_12_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_12_0_load \
    op interface \
    ports { nodes_features_proj_V_12_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2187 \
    name nodes_features_proj_V_12_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_12_1_load \
    op interface \
    ports { nodes_features_proj_V_12_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2188 \
    name nodes_features_proj_V_12_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_12_2_load \
    op interface \
    ports { nodes_features_proj_V_12_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2189 \
    name nodes_features_proj_V_12_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_12_3_load \
    op interface \
    ports { nodes_features_proj_V_12_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2190 \
    name nodes_features_proj_V_12_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_12_4_load \
    op interface \
    ports { nodes_features_proj_V_12_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2191 \
    name nodes_features_proj_V_12_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_12_5_load \
    op interface \
    ports { nodes_features_proj_V_12_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2192 \
    name nodes_features_proj_V_12_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_12_6_load \
    op interface \
    ports { nodes_features_proj_V_12_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2193 \
    name nodes_features_proj_V_12_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_12_7_load \
    op interface \
    ports { nodes_features_proj_V_12_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2194 \
    name nodes_features_proj_V_12_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_12_8_load \
    op interface \
    ports { nodes_features_proj_V_12_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2195 \
    name nodes_features_proj_V_12_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_12_9_load \
    op interface \
    ports { nodes_features_proj_V_12_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2196 \
    name nodes_features_proj_V_12_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_12_10_load \
    op interface \
    ports { nodes_features_proj_V_12_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2197 \
    name nodes_features_proj_V_12_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_12_11_load \
    op interface \
    ports { nodes_features_proj_V_12_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2198 \
    name nodes_features_proj_V_12_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_12_12_load \
    op interface \
    ports { nodes_features_proj_V_12_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2199 \
    name nodes_features_proj_V_12_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_12_13_load \
    op interface \
    ports { nodes_features_proj_V_12_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2200 \
    name nodes_features_proj_V_12_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_12_14_load \
    op interface \
    ports { nodes_features_proj_V_12_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2201 \
    name nodes_features_proj_V_12_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_12_15_load \
    op interface \
    ports { nodes_features_proj_V_12_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2202 \
    name nodes_features_proj_V_13_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_13_0_load \
    op interface \
    ports { nodes_features_proj_V_13_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2203 \
    name nodes_features_proj_V_13_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_13_1_load \
    op interface \
    ports { nodes_features_proj_V_13_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2204 \
    name nodes_features_proj_V_13_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_13_2_load \
    op interface \
    ports { nodes_features_proj_V_13_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2205 \
    name nodes_features_proj_V_13_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_13_3_load \
    op interface \
    ports { nodes_features_proj_V_13_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2206 \
    name nodes_features_proj_V_13_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_13_4_load \
    op interface \
    ports { nodes_features_proj_V_13_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2207 \
    name nodes_features_proj_V_13_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_13_5_load \
    op interface \
    ports { nodes_features_proj_V_13_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2208 \
    name nodes_features_proj_V_13_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_13_6_load \
    op interface \
    ports { nodes_features_proj_V_13_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2209 \
    name nodes_features_proj_V_13_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_13_7_load \
    op interface \
    ports { nodes_features_proj_V_13_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2210 \
    name nodes_features_proj_V_13_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_13_8_load \
    op interface \
    ports { nodes_features_proj_V_13_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2211 \
    name nodes_features_proj_V_13_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_13_9_load \
    op interface \
    ports { nodes_features_proj_V_13_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2212 \
    name nodes_features_proj_V_13_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_13_10_load \
    op interface \
    ports { nodes_features_proj_V_13_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2213 \
    name nodes_features_proj_V_13_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_13_11_load \
    op interface \
    ports { nodes_features_proj_V_13_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2214 \
    name nodes_features_proj_V_13_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_13_12_load \
    op interface \
    ports { nodes_features_proj_V_13_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2215 \
    name nodes_features_proj_V_13_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_13_13_load \
    op interface \
    ports { nodes_features_proj_V_13_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2216 \
    name nodes_features_proj_V_13_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_13_14_load \
    op interface \
    ports { nodes_features_proj_V_13_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2217 \
    name nodes_features_proj_V_13_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_13_15_load \
    op interface \
    ports { nodes_features_proj_V_13_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2218 \
    name nodes_features_proj_V_14_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_14_0_load \
    op interface \
    ports { nodes_features_proj_V_14_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2219 \
    name nodes_features_proj_V_14_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_14_1_load \
    op interface \
    ports { nodes_features_proj_V_14_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2220 \
    name nodes_features_proj_V_14_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_14_2_load \
    op interface \
    ports { nodes_features_proj_V_14_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2221 \
    name nodes_features_proj_V_14_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_14_3_load \
    op interface \
    ports { nodes_features_proj_V_14_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2222 \
    name nodes_features_proj_V_14_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_14_4_load \
    op interface \
    ports { nodes_features_proj_V_14_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2223 \
    name nodes_features_proj_V_14_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_14_5_load \
    op interface \
    ports { nodes_features_proj_V_14_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2224 \
    name nodes_features_proj_V_14_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_14_6_load \
    op interface \
    ports { nodes_features_proj_V_14_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2225 \
    name nodes_features_proj_V_14_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_14_7_load \
    op interface \
    ports { nodes_features_proj_V_14_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2226 \
    name nodes_features_proj_V_14_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_14_8_load \
    op interface \
    ports { nodes_features_proj_V_14_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2227 \
    name nodes_features_proj_V_14_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_14_9_load \
    op interface \
    ports { nodes_features_proj_V_14_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2228 \
    name nodes_features_proj_V_14_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_14_10_load \
    op interface \
    ports { nodes_features_proj_V_14_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2229 \
    name nodes_features_proj_V_14_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_14_11_load \
    op interface \
    ports { nodes_features_proj_V_14_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2230 \
    name nodes_features_proj_V_14_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_14_12_load \
    op interface \
    ports { nodes_features_proj_V_14_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2231 \
    name nodes_features_proj_V_14_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_14_13_load \
    op interface \
    ports { nodes_features_proj_V_14_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2232 \
    name nodes_features_proj_V_14_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_14_14_load \
    op interface \
    ports { nodes_features_proj_V_14_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2233 \
    name nodes_features_proj_V_14_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_14_15_load \
    op interface \
    ports { nodes_features_proj_V_14_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2234 \
    name nodes_features_proj_V_15_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_15_0_load \
    op interface \
    ports { nodes_features_proj_V_15_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2235 \
    name nodes_features_proj_V_15_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_15_1_load \
    op interface \
    ports { nodes_features_proj_V_15_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2236 \
    name nodes_features_proj_V_15_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_15_2_load \
    op interface \
    ports { nodes_features_proj_V_15_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2237 \
    name nodes_features_proj_V_15_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_15_3_load \
    op interface \
    ports { nodes_features_proj_V_15_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2238 \
    name nodes_features_proj_V_15_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_15_4_load \
    op interface \
    ports { nodes_features_proj_V_15_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2239 \
    name nodes_features_proj_V_15_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_15_5_load \
    op interface \
    ports { nodes_features_proj_V_15_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2240 \
    name nodes_features_proj_V_15_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_15_6_load \
    op interface \
    ports { nodes_features_proj_V_15_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2241 \
    name nodes_features_proj_V_15_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_15_7_load \
    op interface \
    ports { nodes_features_proj_V_15_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2242 \
    name nodes_features_proj_V_15_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_15_8_load \
    op interface \
    ports { nodes_features_proj_V_15_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2243 \
    name nodes_features_proj_V_15_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_15_9_load \
    op interface \
    ports { nodes_features_proj_V_15_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2244 \
    name nodes_features_proj_V_15_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_15_10_load \
    op interface \
    ports { nodes_features_proj_V_15_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2245 \
    name nodes_features_proj_V_15_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_15_11_load \
    op interface \
    ports { nodes_features_proj_V_15_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2246 \
    name nodes_features_proj_V_15_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_15_12_load \
    op interface \
    ports { nodes_features_proj_V_15_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2247 \
    name nodes_features_proj_V_15_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_15_13_load \
    op interface \
    ports { nodes_features_proj_V_15_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2248 \
    name nodes_features_proj_V_15_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_15_14_load \
    op interface \
    ports { nodes_features_proj_V_15_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2249 \
    name nodes_features_proj_V_15_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_15_15_load \
    op interface \
    ports { nodes_features_proj_V_15_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2250 \
    name nodes_features_proj_V_16_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_16_0_load \
    op interface \
    ports { nodes_features_proj_V_16_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2251 \
    name nodes_features_proj_V_16_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_16_1_load \
    op interface \
    ports { nodes_features_proj_V_16_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2252 \
    name nodes_features_proj_V_16_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_16_2_load \
    op interface \
    ports { nodes_features_proj_V_16_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2253 \
    name nodes_features_proj_V_16_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_16_3_load \
    op interface \
    ports { nodes_features_proj_V_16_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2254 \
    name nodes_features_proj_V_16_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_16_4_load \
    op interface \
    ports { nodes_features_proj_V_16_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2255 \
    name nodes_features_proj_V_16_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_16_5_load \
    op interface \
    ports { nodes_features_proj_V_16_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2256 \
    name nodes_features_proj_V_16_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_16_6_load \
    op interface \
    ports { nodes_features_proj_V_16_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2257 \
    name nodes_features_proj_V_16_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_16_7_load \
    op interface \
    ports { nodes_features_proj_V_16_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2258 \
    name nodes_features_proj_V_16_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_16_8_load \
    op interface \
    ports { nodes_features_proj_V_16_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2259 \
    name nodes_features_proj_V_16_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_16_9_load \
    op interface \
    ports { nodes_features_proj_V_16_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2260 \
    name nodes_features_proj_V_16_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_16_10_load \
    op interface \
    ports { nodes_features_proj_V_16_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2261 \
    name nodes_features_proj_V_16_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_16_11_load \
    op interface \
    ports { nodes_features_proj_V_16_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2262 \
    name nodes_features_proj_V_16_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_16_12_load \
    op interface \
    ports { nodes_features_proj_V_16_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2263 \
    name nodes_features_proj_V_16_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_16_13_load \
    op interface \
    ports { nodes_features_proj_V_16_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2264 \
    name nodes_features_proj_V_16_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_16_14_load \
    op interface \
    ports { nodes_features_proj_V_16_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2265 \
    name nodes_features_proj_V_16_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_16_15_load \
    op interface \
    ports { nodes_features_proj_V_16_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2266 \
    name nodes_features_proj_V_17_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_17_0_load \
    op interface \
    ports { nodes_features_proj_V_17_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2267 \
    name nodes_features_proj_V_17_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_17_1_load \
    op interface \
    ports { nodes_features_proj_V_17_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2268 \
    name nodes_features_proj_V_17_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_17_2_load \
    op interface \
    ports { nodes_features_proj_V_17_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2269 \
    name nodes_features_proj_V_17_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_17_3_load \
    op interface \
    ports { nodes_features_proj_V_17_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2270 \
    name nodes_features_proj_V_17_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_17_4_load \
    op interface \
    ports { nodes_features_proj_V_17_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2271 \
    name nodes_features_proj_V_17_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_17_5_load \
    op interface \
    ports { nodes_features_proj_V_17_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2272 \
    name nodes_features_proj_V_17_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_17_6_load \
    op interface \
    ports { nodes_features_proj_V_17_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2273 \
    name nodes_features_proj_V_17_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_17_7_load \
    op interface \
    ports { nodes_features_proj_V_17_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2274 \
    name nodes_features_proj_V_17_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_17_8_load \
    op interface \
    ports { nodes_features_proj_V_17_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2275 \
    name nodes_features_proj_V_17_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_17_9_load \
    op interface \
    ports { nodes_features_proj_V_17_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2276 \
    name nodes_features_proj_V_17_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_17_10_load \
    op interface \
    ports { nodes_features_proj_V_17_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2277 \
    name nodes_features_proj_V_17_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_17_11_load \
    op interface \
    ports { nodes_features_proj_V_17_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2278 \
    name nodes_features_proj_V_17_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_17_12_load \
    op interface \
    ports { nodes_features_proj_V_17_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2279 \
    name nodes_features_proj_V_17_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_17_13_load \
    op interface \
    ports { nodes_features_proj_V_17_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2280 \
    name nodes_features_proj_V_17_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_17_14_load \
    op interface \
    ports { nodes_features_proj_V_17_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2281 \
    name nodes_features_proj_V_17_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_17_15_load \
    op interface \
    ports { nodes_features_proj_V_17_15_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2282 \
    name nodes_features_proj_V_18_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_18_0_load \
    op interface \
    ports { nodes_features_proj_V_18_0_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2283 \
    name nodes_features_proj_V_18_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_18_1_load \
    op interface \
    ports { nodes_features_proj_V_18_1_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2284 \
    name nodes_features_proj_V_18_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_18_2_load \
    op interface \
    ports { nodes_features_proj_V_18_2_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2285 \
    name nodes_features_proj_V_18_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_18_3_load \
    op interface \
    ports { nodes_features_proj_V_18_3_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2286 \
    name nodes_features_proj_V_18_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_18_4_load \
    op interface \
    ports { nodes_features_proj_V_18_4_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2287 \
    name nodes_features_proj_V_18_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_18_5_load \
    op interface \
    ports { nodes_features_proj_V_18_5_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2288 \
    name nodes_features_proj_V_18_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_18_6_load \
    op interface \
    ports { nodes_features_proj_V_18_6_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2289 \
    name nodes_features_proj_V_18_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_18_7_load \
    op interface \
    ports { nodes_features_proj_V_18_7_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2290 \
    name nodes_features_proj_V_18_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_18_8_load \
    op interface \
    ports { nodes_features_proj_V_18_8_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2291 \
    name nodes_features_proj_V_18_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_18_9_load \
    op interface \
    ports { nodes_features_proj_V_18_9_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2292 \
    name nodes_features_proj_V_18_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_18_10_load \
    op interface \
    ports { nodes_features_proj_V_18_10_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2293 \
    name nodes_features_proj_V_18_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_18_11_load \
    op interface \
    ports { nodes_features_proj_V_18_11_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2294 \
    name nodes_features_proj_V_18_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_18_12_load \
    op interface \
    ports { nodes_features_proj_V_18_12_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2295 \
    name nodes_features_proj_V_18_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_18_13_load \
    op interface \
    ports { nodes_features_proj_V_18_13_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2296 \
    name nodes_features_proj_V_18_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_18_14_load \
    op interface \
    ports { nodes_features_proj_V_18_14_load { I 28 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2297 \
    name nodes_features_proj_V_18_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nodes_features_proj_V_18_15_load \
    op interface \
    ports { nodes_features_proj_V_18_15_load { I 28 vector } } \
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


