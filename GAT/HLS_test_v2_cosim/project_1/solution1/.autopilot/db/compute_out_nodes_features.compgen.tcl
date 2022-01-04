# This script segment is generated automatically by AutoPilot

set id 1160
set name GAT_compute_one_graph_mac_muladd_3ns_8ns_18ns_18_4_1
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
set in2_width 18
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 18
set arg_lists {i0 {3 0 +} i1 {8 0 +} m {11 0 +} i2 {18 0 +} p {18 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {dsp} LATENCY 3 ALLOW_PRAGMA 1
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


set id 1161
set name GAT_compute_one_graph_mul_mul_18s_8ns_18_4_1
set corename simcore_mul
set op mul
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 18
set in0_signed 1
set in1_width 8
set in1_signed 0
set ce_width 1
set ce_signed 0
set out_width 18
set arg_lists {i0 {18 1 +} i1 {8 0 +} p {18 1 +} acc {0} }
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


# Memory (RAM/ROM)  definition:
set ID 1164
set hasByteEnable 0
set MemName GAT_compute_one_graph_compute_out_nodes_features_out_nodes_features_sum_V
set CoreName ap_simcore_mem
set PortList { 1 0 }
set DataWd 28
set AddrRange 16
set AddrWd 4
set impl_style block
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 1.196
set ClkPeriod 4
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $MemName BINDTYPE {storage} TYPE {ram_2p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


set CoreName RAM_2P_BRAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem  \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
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
    id 1166 \
    name all_attention_coefficients_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename all_attention_coefficients_V \
    op interface \
    ports { all_attention_coefficients_V_address0 { O 18 vector } all_attention_coefficients_V_ce0 { O 1 bit } all_attention_coefficients_V_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_attention_coefficients_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1167 \
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
    id 1168 \
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
    id 1169 \
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
    id 1170 \
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
    id 1171 \
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
    id 1172 \
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
    id 1173 \
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
    id 1174 \
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
    id 1175 \
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
    id 1176 \
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
    id 1177 \
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
    id 1178 \
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
    id 1179 \
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
    id 1180 \
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
    id 1181 \
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
    id 1182 \
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
    id 1183 \
    name out_nodes_features_prep_V_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_0 \
    op interface \
    ports { out_nodes_features_prep_V_0_address1 { O 8 vector } out_nodes_features_prep_V_0_ce1 { O 1 bit } out_nodes_features_prep_V_0_we1 { O 1 bit } out_nodes_features_prep_V_0_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1184 \
    name out_nodes_features_prep_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_1 \
    op interface \
    ports { out_nodes_features_prep_V_1_address1 { O 8 vector } out_nodes_features_prep_V_1_ce1 { O 1 bit } out_nodes_features_prep_V_1_we1 { O 1 bit } out_nodes_features_prep_V_1_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1185 \
    name out_nodes_features_prep_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_2 \
    op interface \
    ports { out_nodes_features_prep_V_2_address1 { O 8 vector } out_nodes_features_prep_V_2_ce1 { O 1 bit } out_nodes_features_prep_V_2_we1 { O 1 bit } out_nodes_features_prep_V_2_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1186 \
    name out_nodes_features_prep_V_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_3 \
    op interface \
    ports { out_nodes_features_prep_V_3_address1 { O 8 vector } out_nodes_features_prep_V_3_ce1 { O 1 bit } out_nodes_features_prep_V_3_we1 { O 1 bit } out_nodes_features_prep_V_3_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1187 \
    name out_nodes_features_prep_V_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_4 \
    op interface \
    ports { out_nodes_features_prep_V_4_address1 { O 8 vector } out_nodes_features_prep_V_4_ce1 { O 1 bit } out_nodes_features_prep_V_4_we1 { O 1 bit } out_nodes_features_prep_V_4_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1188 \
    name out_nodes_features_prep_V_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_5 \
    op interface \
    ports { out_nodes_features_prep_V_5_address1 { O 8 vector } out_nodes_features_prep_V_5_ce1 { O 1 bit } out_nodes_features_prep_V_5_we1 { O 1 bit } out_nodes_features_prep_V_5_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1189 \
    name out_nodes_features_prep_V_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_6 \
    op interface \
    ports { out_nodes_features_prep_V_6_address1 { O 8 vector } out_nodes_features_prep_V_6_ce1 { O 1 bit } out_nodes_features_prep_V_6_we1 { O 1 bit } out_nodes_features_prep_V_6_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1190 \
    name out_nodes_features_prep_V_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_7 \
    op interface \
    ports { out_nodes_features_prep_V_7_address1 { O 8 vector } out_nodes_features_prep_V_7_ce1 { O 1 bit } out_nodes_features_prep_V_7_we1 { O 1 bit } out_nodes_features_prep_V_7_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1191 \
    name out_nodes_features_prep_V_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_8 \
    op interface \
    ports { out_nodes_features_prep_V_8_address1 { O 8 vector } out_nodes_features_prep_V_8_ce1 { O 1 bit } out_nodes_features_prep_V_8_we1 { O 1 bit } out_nodes_features_prep_V_8_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1192 \
    name out_nodes_features_prep_V_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_9 \
    op interface \
    ports { out_nodes_features_prep_V_9_address1 { O 8 vector } out_nodes_features_prep_V_9_ce1 { O 1 bit } out_nodes_features_prep_V_9_we1 { O 1 bit } out_nodes_features_prep_V_9_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1193 \
    name out_nodes_features_prep_V_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_10 \
    op interface \
    ports { out_nodes_features_prep_V_10_address1 { O 8 vector } out_nodes_features_prep_V_10_ce1 { O 1 bit } out_nodes_features_prep_V_10_we1 { O 1 bit } out_nodes_features_prep_V_10_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1194 \
    name out_nodes_features_prep_V_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_11 \
    op interface \
    ports { out_nodes_features_prep_V_11_address1 { O 8 vector } out_nodes_features_prep_V_11_ce1 { O 1 bit } out_nodes_features_prep_V_11_we1 { O 1 bit } out_nodes_features_prep_V_11_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1195 \
    name out_nodes_features_prep_V_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_12 \
    op interface \
    ports { out_nodes_features_prep_V_12_address1 { O 8 vector } out_nodes_features_prep_V_12_ce1 { O 1 bit } out_nodes_features_prep_V_12_we1 { O 1 bit } out_nodes_features_prep_V_12_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1196 \
    name out_nodes_features_prep_V_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_13 \
    op interface \
    ports { out_nodes_features_prep_V_13_address1 { O 8 vector } out_nodes_features_prep_V_13_ce1 { O 1 bit } out_nodes_features_prep_V_13_we1 { O 1 bit } out_nodes_features_prep_V_13_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1197 \
    name out_nodes_features_prep_V_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_14 \
    op interface \
    ports { out_nodes_features_prep_V_14_address1 { O 8 vector } out_nodes_features_prep_V_14_ce1 { O 1 bit } out_nodes_features_prep_V_14_we1 { O 1 bit } out_nodes_features_prep_V_14_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1198 \
    name out_nodes_features_prep_V_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_15 \
    op interface \
    ports { out_nodes_features_prep_V_15_address1 { O 8 vector } out_nodes_features_prep_V_15_ce1 { O 1 bit } out_nodes_features_prep_V_15_we1 { O 1 bit } out_nodes_features_prep_V_15_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1199 \
    name out_nodes_features_prep_V_16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_16 \
    op interface \
    ports { out_nodes_features_prep_V_16_address1 { O 8 vector } out_nodes_features_prep_V_16_ce1 { O 1 bit } out_nodes_features_prep_V_16_we1 { O 1 bit } out_nodes_features_prep_V_16_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1200 \
    name out_nodes_features_prep_V_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_17 \
    op interface \
    ports { out_nodes_features_prep_V_17_address1 { O 8 vector } out_nodes_features_prep_V_17_ce1 { O 1 bit } out_nodes_features_prep_V_17_we1 { O 1 bit } out_nodes_features_prep_V_17_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1201 \
    name out_nodes_features_prep_V_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_18 \
    op interface \
    ports { out_nodes_features_prep_V_18_address1 { O 8 vector } out_nodes_features_prep_V_18_ce1 { O 1 bit } out_nodes_features_prep_V_18_we1 { O 1 bit } out_nodes_features_prep_V_18_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1202 \
    name out_nodes_features_prep_V_19 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_19 \
    op interface \
    ports { out_nodes_features_prep_V_19_address1 { O 8 vector } out_nodes_features_prep_V_19_ce1 { O 1 bit } out_nodes_features_prep_V_19_we1 { O 1 bit } out_nodes_features_prep_V_19_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1203 \
    name out_nodes_features_prep_V_20 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_20 \
    op interface \
    ports { out_nodes_features_prep_V_20_address1 { O 8 vector } out_nodes_features_prep_V_20_ce1 { O 1 bit } out_nodes_features_prep_V_20_we1 { O 1 bit } out_nodes_features_prep_V_20_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1204 \
    name out_nodes_features_prep_V_21 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_21 \
    op interface \
    ports { out_nodes_features_prep_V_21_address1 { O 8 vector } out_nodes_features_prep_V_21_ce1 { O 1 bit } out_nodes_features_prep_V_21_we1 { O 1 bit } out_nodes_features_prep_V_21_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1205 \
    name out_nodes_features_prep_V_22 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_22 \
    op interface \
    ports { out_nodes_features_prep_V_22_address1 { O 8 vector } out_nodes_features_prep_V_22_ce1 { O 1 bit } out_nodes_features_prep_V_22_we1 { O 1 bit } out_nodes_features_prep_V_22_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1206 \
    name out_nodes_features_prep_V_23 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_23 \
    op interface \
    ports { out_nodes_features_prep_V_23_address1 { O 8 vector } out_nodes_features_prep_V_23_ce1 { O 1 bit } out_nodes_features_prep_V_23_we1 { O 1 bit } out_nodes_features_prep_V_23_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1207 \
    name out_nodes_features_prep_V_24 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_24 \
    op interface \
    ports { out_nodes_features_prep_V_24_address1 { O 8 vector } out_nodes_features_prep_V_24_ce1 { O 1 bit } out_nodes_features_prep_V_24_we1 { O 1 bit } out_nodes_features_prep_V_24_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1208 \
    name out_nodes_features_prep_V_25 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_25 \
    op interface \
    ports { out_nodes_features_prep_V_25_address1 { O 8 vector } out_nodes_features_prep_V_25_ce1 { O 1 bit } out_nodes_features_prep_V_25_we1 { O 1 bit } out_nodes_features_prep_V_25_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1209 \
    name out_nodes_features_prep_V_26 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_26 \
    op interface \
    ports { out_nodes_features_prep_V_26_address1 { O 8 vector } out_nodes_features_prep_V_26_ce1 { O 1 bit } out_nodes_features_prep_V_26_we1 { O 1 bit } out_nodes_features_prep_V_26_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1210 \
    name out_nodes_features_prep_V_27 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_27 \
    op interface \
    ports { out_nodes_features_prep_V_27_address1 { O 8 vector } out_nodes_features_prep_V_27_ce1 { O 1 bit } out_nodes_features_prep_V_27_we1 { O 1 bit } out_nodes_features_prep_V_27_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1211 \
    name out_nodes_features_prep_V_28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_28 \
    op interface \
    ports { out_nodes_features_prep_V_28_address1 { O 8 vector } out_nodes_features_prep_V_28_ce1 { O 1 bit } out_nodes_features_prep_V_28_we1 { O 1 bit } out_nodes_features_prep_V_28_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1212 \
    name out_nodes_features_prep_V_29 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_29 \
    op interface \
    ports { out_nodes_features_prep_V_29_address1 { O 8 vector } out_nodes_features_prep_V_29_ce1 { O 1 bit } out_nodes_features_prep_V_29_we1 { O 1 bit } out_nodes_features_prep_V_29_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1213 \
    name out_nodes_features_prep_V_30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_30 \
    op interface \
    ports { out_nodes_features_prep_V_30_address1 { O 8 vector } out_nodes_features_prep_V_30_ce1 { O 1 bit } out_nodes_features_prep_V_30_we1 { O 1 bit } out_nodes_features_prep_V_30_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1214 \
    name out_nodes_features_prep_V_31 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_31 \
    op interface \
    ports { out_nodes_features_prep_V_31_address1 { O 8 vector } out_nodes_features_prep_V_31_ce1 { O 1 bit } out_nodes_features_prep_V_31_we1 { O 1 bit } out_nodes_features_prep_V_31_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1215 \
    name out_nodes_features_prep_V_32 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_32 \
    op interface \
    ports { out_nodes_features_prep_V_32_address1 { O 8 vector } out_nodes_features_prep_V_32_ce1 { O 1 bit } out_nodes_features_prep_V_32_we1 { O 1 bit } out_nodes_features_prep_V_32_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1216 \
    name out_nodes_features_prep_V_33 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_33 \
    op interface \
    ports { out_nodes_features_prep_V_33_address1 { O 8 vector } out_nodes_features_prep_V_33_ce1 { O 1 bit } out_nodes_features_prep_V_33_we1 { O 1 bit } out_nodes_features_prep_V_33_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1217 \
    name out_nodes_features_prep_V_34 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_34 \
    op interface \
    ports { out_nodes_features_prep_V_34_address1 { O 8 vector } out_nodes_features_prep_V_34_ce1 { O 1 bit } out_nodes_features_prep_V_34_we1 { O 1 bit } out_nodes_features_prep_V_34_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1218 \
    name out_nodes_features_prep_V_35 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_35 \
    op interface \
    ports { out_nodes_features_prep_V_35_address1 { O 8 vector } out_nodes_features_prep_V_35_ce1 { O 1 bit } out_nodes_features_prep_V_35_we1 { O 1 bit } out_nodes_features_prep_V_35_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1219 \
    name out_nodes_features_prep_V_36 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_36 \
    op interface \
    ports { out_nodes_features_prep_V_36_address1 { O 8 vector } out_nodes_features_prep_V_36_ce1 { O 1 bit } out_nodes_features_prep_V_36_we1 { O 1 bit } out_nodes_features_prep_V_36_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1220 \
    name out_nodes_features_prep_V_37 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_37 \
    op interface \
    ports { out_nodes_features_prep_V_37_address1 { O 8 vector } out_nodes_features_prep_V_37_ce1 { O 1 bit } out_nodes_features_prep_V_37_we1 { O 1 bit } out_nodes_features_prep_V_37_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1221 \
    name out_nodes_features_prep_V_38 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_38 \
    op interface \
    ports { out_nodes_features_prep_V_38_address1 { O 8 vector } out_nodes_features_prep_V_38_ce1 { O 1 bit } out_nodes_features_prep_V_38_we1 { O 1 bit } out_nodes_features_prep_V_38_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1222 \
    name out_nodes_features_prep_V_39 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_39 \
    op interface \
    ports { out_nodes_features_prep_V_39_address1 { O 8 vector } out_nodes_features_prep_V_39_ce1 { O 1 bit } out_nodes_features_prep_V_39_we1 { O 1 bit } out_nodes_features_prep_V_39_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1223 \
    name out_nodes_features_prep_V_40 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_40 \
    op interface \
    ports { out_nodes_features_prep_V_40_address1 { O 8 vector } out_nodes_features_prep_V_40_ce1 { O 1 bit } out_nodes_features_prep_V_40_we1 { O 1 bit } out_nodes_features_prep_V_40_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1224 \
    name out_nodes_features_prep_V_41 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_41 \
    op interface \
    ports { out_nodes_features_prep_V_41_address1 { O 8 vector } out_nodes_features_prep_V_41_ce1 { O 1 bit } out_nodes_features_prep_V_41_we1 { O 1 bit } out_nodes_features_prep_V_41_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1225 \
    name out_nodes_features_prep_V_42 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_42 \
    op interface \
    ports { out_nodes_features_prep_V_42_address1 { O 8 vector } out_nodes_features_prep_V_42_ce1 { O 1 bit } out_nodes_features_prep_V_42_we1 { O 1 bit } out_nodes_features_prep_V_42_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1226 \
    name out_nodes_features_prep_V_43 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_43 \
    op interface \
    ports { out_nodes_features_prep_V_43_address1 { O 8 vector } out_nodes_features_prep_V_43_ce1 { O 1 bit } out_nodes_features_prep_V_43_we1 { O 1 bit } out_nodes_features_prep_V_43_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1227 \
    name out_nodes_features_prep_V_44 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_44 \
    op interface \
    ports { out_nodes_features_prep_V_44_address1 { O 8 vector } out_nodes_features_prep_V_44_ce1 { O 1 bit } out_nodes_features_prep_V_44_we1 { O 1 bit } out_nodes_features_prep_V_44_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1228 \
    name out_nodes_features_prep_V_45 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_45 \
    op interface \
    ports { out_nodes_features_prep_V_45_address1 { O 8 vector } out_nodes_features_prep_V_45_ce1 { O 1 bit } out_nodes_features_prep_V_45_we1 { O 1 bit } out_nodes_features_prep_V_45_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1229 \
    name out_nodes_features_prep_V_46 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_46 \
    op interface \
    ports { out_nodes_features_prep_V_46_address1 { O 8 vector } out_nodes_features_prep_V_46_ce1 { O 1 bit } out_nodes_features_prep_V_46_we1 { O 1 bit } out_nodes_features_prep_V_46_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1230 \
    name out_nodes_features_prep_V_47 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_47 \
    op interface \
    ports { out_nodes_features_prep_V_47_address1 { O 8 vector } out_nodes_features_prep_V_47_ce1 { O 1 bit } out_nodes_features_prep_V_47_we1 { O 1 bit } out_nodes_features_prep_V_47_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1231 \
    name out_nodes_features_prep_V_48 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_48 \
    op interface \
    ports { out_nodes_features_prep_V_48_address1 { O 8 vector } out_nodes_features_prep_V_48_ce1 { O 1 bit } out_nodes_features_prep_V_48_we1 { O 1 bit } out_nodes_features_prep_V_48_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1232 \
    name out_nodes_features_prep_V_49 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_49 \
    op interface \
    ports { out_nodes_features_prep_V_49_address1 { O 8 vector } out_nodes_features_prep_V_49_ce1 { O 1 bit } out_nodes_features_prep_V_49_we1 { O 1 bit } out_nodes_features_prep_V_49_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1233 \
    name out_nodes_features_prep_V_50 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_50 \
    op interface \
    ports { out_nodes_features_prep_V_50_address1 { O 8 vector } out_nodes_features_prep_V_50_ce1 { O 1 bit } out_nodes_features_prep_V_50_we1 { O 1 bit } out_nodes_features_prep_V_50_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1234 \
    name out_nodes_features_prep_V_51 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_51 \
    op interface \
    ports { out_nodes_features_prep_V_51_address1 { O 8 vector } out_nodes_features_prep_V_51_ce1 { O 1 bit } out_nodes_features_prep_V_51_we1 { O 1 bit } out_nodes_features_prep_V_51_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1235 \
    name out_nodes_features_prep_V_52 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_52 \
    op interface \
    ports { out_nodes_features_prep_V_52_address1 { O 8 vector } out_nodes_features_prep_V_52_ce1 { O 1 bit } out_nodes_features_prep_V_52_we1 { O 1 bit } out_nodes_features_prep_V_52_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1236 \
    name out_nodes_features_prep_V_53 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_53 \
    op interface \
    ports { out_nodes_features_prep_V_53_address1 { O 8 vector } out_nodes_features_prep_V_53_ce1 { O 1 bit } out_nodes_features_prep_V_53_we1 { O 1 bit } out_nodes_features_prep_V_53_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1237 \
    name out_nodes_features_prep_V_54 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_54 \
    op interface \
    ports { out_nodes_features_prep_V_54_address1 { O 8 vector } out_nodes_features_prep_V_54_ce1 { O 1 bit } out_nodes_features_prep_V_54_we1 { O 1 bit } out_nodes_features_prep_V_54_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1238 \
    name out_nodes_features_prep_V_55 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_55 \
    op interface \
    ports { out_nodes_features_prep_V_55_address1 { O 8 vector } out_nodes_features_prep_V_55_ce1 { O 1 bit } out_nodes_features_prep_V_55_we1 { O 1 bit } out_nodes_features_prep_V_55_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1239 \
    name out_nodes_features_prep_V_56 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_56 \
    op interface \
    ports { out_nodes_features_prep_V_56_address1 { O 8 vector } out_nodes_features_prep_V_56_ce1 { O 1 bit } out_nodes_features_prep_V_56_we1 { O 1 bit } out_nodes_features_prep_V_56_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1240 \
    name out_nodes_features_prep_V_57 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_57 \
    op interface \
    ports { out_nodes_features_prep_V_57_address1 { O 8 vector } out_nodes_features_prep_V_57_ce1 { O 1 bit } out_nodes_features_prep_V_57_we1 { O 1 bit } out_nodes_features_prep_V_57_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1241 \
    name out_nodes_features_prep_V_58 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_58 \
    op interface \
    ports { out_nodes_features_prep_V_58_address1 { O 8 vector } out_nodes_features_prep_V_58_ce1 { O 1 bit } out_nodes_features_prep_V_58_we1 { O 1 bit } out_nodes_features_prep_V_58_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1242 \
    name out_nodes_features_prep_V_59 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_59 \
    op interface \
    ports { out_nodes_features_prep_V_59_address1 { O 8 vector } out_nodes_features_prep_V_59_ce1 { O 1 bit } out_nodes_features_prep_V_59_we1 { O 1 bit } out_nodes_features_prep_V_59_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1243 \
    name out_nodes_features_prep_V_60 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_60 \
    op interface \
    ports { out_nodes_features_prep_V_60_address1 { O 8 vector } out_nodes_features_prep_V_60_ce1 { O 1 bit } out_nodes_features_prep_V_60_we1 { O 1 bit } out_nodes_features_prep_V_60_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1244 \
    name out_nodes_features_prep_V_61 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_61 \
    op interface \
    ports { out_nodes_features_prep_V_61_address1 { O 8 vector } out_nodes_features_prep_V_61_ce1 { O 1 bit } out_nodes_features_prep_V_61_we1 { O 1 bit } out_nodes_features_prep_V_61_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1245 \
    name out_nodes_features_prep_V_62 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_62 \
    op interface \
    ports { out_nodes_features_prep_V_62_address1 { O 8 vector } out_nodes_features_prep_V_62_ce1 { O 1 bit } out_nodes_features_prep_V_62_we1 { O 1 bit } out_nodes_features_prep_V_62_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1246 \
    name out_nodes_features_prep_V_63 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_63 \
    op interface \
    ports { out_nodes_features_prep_V_63_address1 { O 8 vector } out_nodes_features_prep_V_63_ce1 { O 1 bit } out_nodes_features_prep_V_63_we1 { O 1 bit } out_nodes_features_prep_V_63_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_63'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1165 \
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


