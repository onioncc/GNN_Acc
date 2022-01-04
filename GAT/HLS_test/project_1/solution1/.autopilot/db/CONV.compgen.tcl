# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 3685
set hasByteEnable 0
set MemName GAT_compute_one_graph_CONV_out_nodes_features_skip_concat_bias_V_16
set CoreName ap_simcore_mem
set PortList { 1 0 }
set DataWd 28
set AddrRange 100
set AddrWd 7
set impl_style block
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 1.352
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


# Memory (RAM/ROM)  definition:
set ID 3686
set hasByteEnable 0
set MemName GAT_compute_one_graph_CONV_nodes_features_proj_V_0_0
set CoreName ap_simcore_mem
set PortList { 1 0 }
set DataWd 28
set AddrRange 4
set AddrWd 2
set impl_style block
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 1.352
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


# Memory (RAM/ROM)  definition:
set ID 3687
set hasByteEnable 0
set MemName GAT_compute_one_graph_CONV_scores_source_V
set CoreName ap_simcore_mem
set PortList { 1 0 }
set DataWd 28
set AddrRange 400
set AddrWd 9
set impl_style block
set TrueReset 0
set IsROM 0
set ROMData { }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set DelayBudget 1.352
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
    id 3690 \
    name out_nodes_features_skip_concat_bias_V_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_skip_concat_bias_V_0 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_0_address0 { O 7 vector } out_nodes_features_skip_concat_bias_V_0_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_0_q0 { I 28 vector } out_nodes_features_skip_concat_bias_V_0_address1 { O 7 vector } out_nodes_features_skip_concat_bias_V_0_ce1 { O 1 bit } out_nodes_features_skip_concat_bias_V_0_we1 { O 1 bit } out_nodes_features_skip_concat_bias_V_0_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3691 \
    name out_nodes_features_skip_concat_bias_V_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_skip_concat_bias_V_1 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_1_address0 { O 7 vector } out_nodes_features_skip_concat_bias_V_1_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_1_q0 { I 28 vector } out_nodes_features_skip_concat_bias_V_1_address1 { O 7 vector } out_nodes_features_skip_concat_bias_V_1_ce1 { O 1 bit } out_nodes_features_skip_concat_bias_V_1_we1 { O 1 bit } out_nodes_features_skip_concat_bias_V_1_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3692 \
    name out_nodes_features_skip_concat_bias_V_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_skip_concat_bias_V_2 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_2_address0 { O 7 vector } out_nodes_features_skip_concat_bias_V_2_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_2_q0 { I 28 vector } out_nodes_features_skip_concat_bias_V_2_address1 { O 7 vector } out_nodes_features_skip_concat_bias_V_2_ce1 { O 1 bit } out_nodes_features_skip_concat_bias_V_2_we1 { O 1 bit } out_nodes_features_skip_concat_bias_V_2_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3693 \
    name out_nodes_features_skip_concat_bias_V_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_skip_concat_bias_V_3 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_3_address0 { O 7 vector } out_nodes_features_skip_concat_bias_V_3_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_3_q0 { I 28 vector } out_nodes_features_skip_concat_bias_V_3_address1 { O 7 vector } out_nodes_features_skip_concat_bias_V_3_ce1 { O 1 bit } out_nodes_features_skip_concat_bias_V_3_we1 { O 1 bit } out_nodes_features_skip_concat_bias_V_3_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3694 \
    name out_nodes_features_skip_concat_bias_V_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_skip_concat_bias_V_4 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_4_address0 { O 7 vector } out_nodes_features_skip_concat_bias_V_4_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_4_q0 { I 28 vector } out_nodes_features_skip_concat_bias_V_4_address1 { O 7 vector } out_nodes_features_skip_concat_bias_V_4_ce1 { O 1 bit } out_nodes_features_skip_concat_bias_V_4_we1 { O 1 bit } out_nodes_features_skip_concat_bias_V_4_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3695 \
    name out_nodes_features_skip_concat_bias_V_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_skip_concat_bias_V_5 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_5_address0 { O 7 vector } out_nodes_features_skip_concat_bias_V_5_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_5_q0 { I 28 vector } out_nodes_features_skip_concat_bias_V_5_address1 { O 7 vector } out_nodes_features_skip_concat_bias_V_5_ce1 { O 1 bit } out_nodes_features_skip_concat_bias_V_5_we1 { O 1 bit } out_nodes_features_skip_concat_bias_V_5_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3696 \
    name out_nodes_features_skip_concat_bias_V_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_skip_concat_bias_V_6 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_6_address0 { O 7 vector } out_nodes_features_skip_concat_bias_V_6_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_6_q0 { I 28 vector } out_nodes_features_skip_concat_bias_V_6_address1 { O 7 vector } out_nodes_features_skip_concat_bias_V_6_ce1 { O 1 bit } out_nodes_features_skip_concat_bias_V_6_we1 { O 1 bit } out_nodes_features_skip_concat_bias_V_6_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3697 \
    name out_nodes_features_skip_concat_bias_V_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_skip_concat_bias_V_7 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_7_address0 { O 7 vector } out_nodes_features_skip_concat_bias_V_7_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_7_q0 { I 28 vector } out_nodes_features_skip_concat_bias_V_7_address1 { O 7 vector } out_nodes_features_skip_concat_bias_V_7_ce1 { O 1 bit } out_nodes_features_skip_concat_bias_V_7_we1 { O 1 bit } out_nodes_features_skip_concat_bias_V_7_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3698 \
    name out_nodes_features_skip_concat_bias_V_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_skip_concat_bias_V_8 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_8_address0 { O 7 vector } out_nodes_features_skip_concat_bias_V_8_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_8_q0 { I 28 vector } out_nodes_features_skip_concat_bias_V_8_address1 { O 7 vector } out_nodes_features_skip_concat_bias_V_8_ce1 { O 1 bit } out_nodes_features_skip_concat_bias_V_8_we1 { O 1 bit } out_nodes_features_skip_concat_bias_V_8_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3699 \
    name out_nodes_features_skip_concat_bias_V_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_skip_concat_bias_V_9 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_9_address0 { O 7 vector } out_nodes_features_skip_concat_bias_V_9_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_9_q0 { I 28 vector } out_nodes_features_skip_concat_bias_V_9_address1 { O 7 vector } out_nodes_features_skip_concat_bias_V_9_ce1 { O 1 bit } out_nodes_features_skip_concat_bias_V_9_we1 { O 1 bit } out_nodes_features_skip_concat_bias_V_9_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3700 \
    name out_nodes_features_skip_concat_bias_V_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_skip_concat_bias_V_10 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_10_address0 { O 7 vector } out_nodes_features_skip_concat_bias_V_10_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_10_q0 { I 28 vector } out_nodes_features_skip_concat_bias_V_10_address1 { O 7 vector } out_nodes_features_skip_concat_bias_V_10_ce1 { O 1 bit } out_nodes_features_skip_concat_bias_V_10_we1 { O 1 bit } out_nodes_features_skip_concat_bias_V_10_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3701 \
    name out_nodes_features_skip_concat_bias_V_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_skip_concat_bias_V_11 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_11_address0 { O 7 vector } out_nodes_features_skip_concat_bias_V_11_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_11_q0 { I 28 vector } out_nodes_features_skip_concat_bias_V_11_address1 { O 7 vector } out_nodes_features_skip_concat_bias_V_11_ce1 { O 1 bit } out_nodes_features_skip_concat_bias_V_11_we1 { O 1 bit } out_nodes_features_skip_concat_bias_V_11_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3702 \
    name out_nodes_features_skip_concat_bias_V_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_skip_concat_bias_V_12 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_12_address0 { O 7 vector } out_nodes_features_skip_concat_bias_V_12_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_12_q0 { I 28 vector } out_nodes_features_skip_concat_bias_V_12_address1 { O 7 vector } out_nodes_features_skip_concat_bias_V_12_ce1 { O 1 bit } out_nodes_features_skip_concat_bias_V_12_we1 { O 1 bit } out_nodes_features_skip_concat_bias_V_12_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3703 \
    name out_nodes_features_skip_concat_bias_V_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_skip_concat_bias_V_13 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_13_address0 { O 7 vector } out_nodes_features_skip_concat_bias_V_13_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_13_q0 { I 28 vector } out_nodes_features_skip_concat_bias_V_13_address1 { O 7 vector } out_nodes_features_skip_concat_bias_V_13_ce1 { O 1 bit } out_nodes_features_skip_concat_bias_V_13_we1 { O 1 bit } out_nodes_features_skip_concat_bias_V_13_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3704 \
    name out_nodes_features_skip_concat_bias_V_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_skip_concat_bias_V_14 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_14_address0 { O 7 vector } out_nodes_features_skip_concat_bias_V_14_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_14_q0 { I 28 vector } out_nodes_features_skip_concat_bias_V_14_address1 { O 7 vector } out_nodes_features_skip_concat_bias_V_14_ce1 { O 1 bit } out_nodes_features_skip_concat_bias_V_14_we1 { O 1 bit } out_nodes_features_skip_concat_bias_V_14_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3705 \
    name out_nodes_features_skip_concat_bias_V_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename out_nodes_features_skip_concat_bias_V_15 \
    op interface \
    ports { out_nodes_features_skip_concat_bias_V_15_address0 { O 7 vector } out_nodes_features_skip_concat_bias_V_15_ce0 { O 1 bit } out_nodes_features_skip_concat_bias_V_15_q0 { I 28 vector } out_nodes_features_skip_concat_bias_V_15_address1 { O 7 vector } out_nodes_features_skip_concat_bias_V_15_ce1 { O 1 bit } out_nodes_features_skip_concat_bias_V_15_we1 { O 1 bit } out_nodes_features_skip_concat_bias_V_15_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_skip_concat_bias_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3706 \
    name linear_proj_weight_V_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_0 \
    op interface \
    ports { linear_proj_weight_V_0_address0 { O 9 vector } linear_proj_weight_V_0_ce0 { O 1 bit } linear_proj_weight_V_0_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3707 \
    name linear_proj_weight_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_1 \
    op interface \
    ports { linear_proj_weight_V_1_address0 { O 9 vector } linear_proj_weight_V_1_ce0 { O 1 bit } linear_proj_weight_V_1_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3708 \
    name linear_proj_weight_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_2 \
    op interface \
    ports { linear_proj_weight_V_2_address0 { O 9 vector } linear_proj_weight_V_2_ce0 { O 1 bit } linear_proj_weight_V_2_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3709 \
    name linear_proj_weight_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_3 \
    op interface \
    ports { linear_proj_weight_V_3_address0 { O 9 vector } linear_proj_weight_V_3_ce0 { O 1 bit } linear_proj_weight_V_3_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3710 \
    name linear_proj_weight_V_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_4 \
    op interface \
    ports { linear_proj_weight_V_4_address0 { O 9 vector } linear_proj_weight_V_4_ce0 { O 1 bit } linear_proj_weight_V_4_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3711 \
    name linear_proj_weight_V_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_5 \
    op interface \
    ports { linear_proj_weight_V_5_address0 { O 9 vector } linear_proj_weight_V_5_ce0 { O 1 bit } linear_proj_weight_V_5_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3712 \
    name linear_proj_weight_V_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_6 \
    op interface \
    ports { linear_proj_weight_V_6_address0 { O 9 vector } linear_proj_weight_V_6_ce0 { O 1 bit } linear_proj_weight_V_6_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3713 \
    name linear_proj_weight_V_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_7 \
    op interface \
    ports { linear_proj_weight_V_7_address0 { O 9 vector } linear_proj_weight_V_7_ce0 { O 1 bit } linear_proj_weight_V_7_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3714 \
    name linear_proj_weight_V_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_8 \
    op interface \
    ports { linear_proj_weight_V_8_address0 { O 9 vector } linear_proj_weight_V_8_ce0 { O 1 bit } linear_proj_weight_V_8_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3715 \
    name linear_proj_weight_V_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_9 \
    op interface \
    ports { linear_proj_weight_V_9_address0 { O 9 vector } linear_proj_weight_V_9_ce0 { O 1 bit } linear_proj_weight_V_9_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3716 \
    name linear_proj_weight_V_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_10 \
    op interface \
    ports { linear_proj_weight_V_10_address0 { O 9 vector } linear_proj_weight_V_10_ce0 { O 1 bit } linear_proj_weight_V_10_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3717 \
    name linear_proj_weight_V_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_11 \
    op interface \
    ports { linear_proj_weight_V_11_address0 { O 9 vector } linear_proj_weight_V_11_ce0 { O 1 bit } linear_proj_weight_V_11_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3718 \
    name linear_proj_weight_V_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_12 \
    op interface \
    ports { linear_proj_weight_V_12_address0 { O 9 vector } linear_proj_weight_V_12_ce0 { O 1 bit } linear_proj_weight_V_12_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3719 \
    name linear_proj_weight_V_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_13 \
    op interface \
    ports { linear_proj_weight_V_13_address0 { O 9 vector } linear_proj_weight_V_13_ce0 { O 1 bit } linear_proj_weight_V_13_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3720 \
    name linear_proj_weight_V_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_14 \
    op interface \
    ports { linear_proj_weight_V_14_address0 { O 9 vector } linear_proj_weight_V_14_ce0 { O 1 bit } linear_proj_weight_V_14_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3721 \
    name linear_proj_weight_V_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_15 \
    op interface \
    ports { linear_proj_weight_V_15_address0 { O 9 vector } linear_proj_weight_V_15_ce0 { O 1 bit } linear_proj_weight_V_15_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3722 \
    name linear_proj_weight_V_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_16 \
    op interface \
    ports { linear_proj_weight_V_16_address0 { O 9 vector } linear_proj_weight_V_16_ce0 { O 1 bit } linear_proj_weight_V_16_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3723 \
    name linear_proj_weight_V_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_17 \
    op interface \
    ports { linear_proj_weight_V_17_address0 { O 9 vector } linear_proj_weight_V_17_ce0 { O 1 bit } linear_proj_weight_V_17_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3724 \
    name linear_proj_weight_V_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_18 \
    op interface \
    ports { linear_proj_weight_V_18_address0 { O 9 vector } linear_proj_weight_V_18_ce0 { O 1 bit } linear_proj_weight_V_18_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3725 \
    name linear_proj_weight_V_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_19 \
    op interface \
    ports { linear_proj_weight_V_19_address0 { O 9 vector } linear_proj_weight_V_19_ce0 { O 1 bit } linear_proj_weight_V_19_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3726 \
    name linear_proj_weight_V_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_20 \
    op interface \
    ports { linear_proj_weight_V_20_address0 { O 9 vector } linear_proj_weight_V_20_ce0 { O 1 bit } linear_proj_weight_V_20_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3727 \
    name linear_proj_weight_V_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_21 \
    op interface \
    ports { linear_proj_weight_V_21_address0 { O 9 vector } linear_proj_weight_V_21_ce0 { O 1 bit } linear_proj_weight_V_21_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3728 \
    name linear_proj_weight_V_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_22 \
    op interface \
    ports { linear_proj_weight_V_22_address0 { O 9 vector } linear_proj_weight_V_22_ce0 { O 1 bit } linear_proj_weight_V_22_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3729 \
    name linear_proj_weight_V_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_23 \
    op interface \
    ports { linear_proj_weight_V_23_address0 { O 9 vector } linear_proj_weight_V_23_ce0 { O 1 bit } linear_proj_weight_V_23_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3730 \
    name linear_proj_weight_V_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_24 \
    op interface \
    ports { linear_proj_weight_V_24_address0 { O 9 vector } linear_proj_weight_V_24_ce0 { O 1 bit } linear_proj_weight_V_24_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3731 \
    name linear_proj_weight_V_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_25 \
    op interface \
    ports { linear_proj_weight_V_25_address0 { O 9 vector } linear_proj_weight_V_25_ce0 { O 1 bit } linear_proj_weight_V_25_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3732 \
    name linear_proj_weight_V_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_26 \
    op interface \
    ports { linear_proj_weight_V_26_address0 { O 9 vector } linear_proj_weight_V_26_ce0 { O 1 bit } linear_proj_weight_V_26_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3733 \
    name linear_proj_weight_V_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_27 \
    op interface \
    ports { linear_proj_weight_V_27_address0 { O 9 vector } linear_proj_weight_V_27_ce0 { O 1 bit } linear_proj_weight_V_27_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3734 \
    name linear_proj_weight_V_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_28 \
    op interface \
    ports { linear_proj_weight_V_28_address0 { O 9 vector } linear_proj_weight_V_28_ce0 { O 1 bit } linear_proj_weight_V_28_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3735 \
    name linear_proj_weight_V_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_29 \
    op interface \
    ports { linear_proj_weight_V_29_address0 { O 9 vector } linear_proj_weight_V_29_ce0 { O 1 bit } linear_proj_weight_V_29_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3736 \
    name linear_proj_weight_V_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_30 \
    op interface \
    ports { linear_proj_weight_V_30_address0 { O 9 vector } linear_proj_weight_V_30_ce0 { O 1 bit } linear_proj_weight_V_30_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3737 \
    name linear_proj_weight_V_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_31 \
    op interface \
    ports { linear_proj_weight_V_31_address0 { O 9 vector } linear_proj_weight_V_31_ce0 { O 1 bit } linear_proj_weight_V_31_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3738 \
    name linear_proj_weight_V_32 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_32 \
    op interface \
    ports { linear_proj_weight_V_32_address0 { O 9 vector } linear_proj_weight_V_32_ce0 { O 1 bit } linear_proj_weight_V_32_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3739 \
    name linear_proj_weight_V_33 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_33 \
    op interface \
    ports { linear_proj_weight_V_33_address0 { O 9 vector } linear_proj_weight_V_33_ce0 { O 1 bit } linear_proj_weight_V_33_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3740 \
    name linear_proj_weight_V_34 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_34 \
    op interface \
    ports { linear_proj_weight_V_34_address0 { O 9 vector } linear_proj_weight_V_34_ce0 { O 1 bit } linear_proj_weight_V_34_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3741 \
    name linear_proj_weight_V_35 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_35 \
    op interface \
    ports { linear_proj_weight_V_35_address0 { O 9 vector } linear_proj_weight_V_35_ce0 { O 1 bit } linear_proj_weight_V_35_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3742 \
    name linear_proj_weight_V_36 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_36 \
    op interface \
    ports { linear_proj_weight_V_36_address0 { O 9 vector } linear_proj_weight_V_36_ce0 { O 1 bit } linear_proj_weight_V_36_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3743 \
    name linear_proj_weight_V_37 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_37 \
    op interface \
    ports { linear_proj_weight_V_37_address0 { O 9 vector } linear_proj_weight_V_37_ce0 { O 1 bit } linear_proj_weight_V_37_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3744 \
    name linear_proj_weight_V_38 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_38 \
    op interface \
    ports { linear_proj_weight_V_38_address0 { O 9 vector } linear_proj_weight_V_38_ce0 { O 1 bit } linear_proj_weight_V_38_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3745 \
    name linear_proj_weight_V_39 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_39 \
    op interface \
    ports { linear_proj_weight_V_39_address0 { O 9 vector } linear_proj_weight_V_39_ce0 { O 1 bit } linear_proj_weight_V_39_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3746 \
    name linear_proj_weight_V_40 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_40 \
    op interface \
    ports { linear_proj_weight_V_40_address0 { O 9 vector } linear_proj_weight_V_40_ce0 { O 1 bit } linear_proj_weight_V_40_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3747 \
    name linear_proj_weight_V_41 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_41 \
    op interface \
    ports { linear_proj_weight_V_41_address0 { O 9 vector } linear_proj_weight_V_41_ce0 { O 1 bit } linear_proj_weight_V_41_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3748 \
    name linear_proj_weight_V_42 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_42 \
    op interface \
    ports { linear_proj_weight_V_42_address0 { O 9 vector } linear_proj_weight_V_42_ce0 { O 1 bit } linear_proj_weight_V_42_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3749 \
    name linear_proj_weight_V_43 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_43 \
    op interface \
    ports { linear_proj_weight_V_43_address0 { O 9 vector } linear_proj_weight_V_43_ce0 { O 1 bit } linear_proj_weight_V_43_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3750 \
    name linear_proj_weight_V_44 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_44 \
    op interface \
    ports { linear_proj_weight_V_44_address0 { O 9 vector } linear_proj_weight_V_44_ce0 { O 1 bit } linear_proj_weight_V_44_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3751 \
    name linear_proj_weight_V_45 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_45 \
    op interface \
    ports { linear_proj_weight_V_45_address0 { O 9 vector } linear_proj_weight_V_45_ce0 { O 1 bit } linear_proj_weight_V_45_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3752 \
    name linear_proj_weight_V_46 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_46 \
    op interface \
    ports { linear_proj_weight_V_46_address0 { O 9 vector } linear_proj_weight_V_46_ce0 { O 1 bit } linear_proj_weight_V_46_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3753 \
    name linear_proj_weight_V_47 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_47 \
    op interface \
    ports { linear_proj_weight_V_47_address0 { O 9 vector } linear_proj_weight_V_47_ce0 { O 1 bit } linear_proj_weight_V_47_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3754 \
    name linear_proj_weight_V_48 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_48 \
    op interface \
    ports { linear_proj_weight_V_48_address0 { O 9 vector } linear_proj_weight_V_48_ce0 { O 1 bit } linear_proj_weight_V_48_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3755 \
    name linear_proj_weight_V_49 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_49 \
    op interface \
    ports { linear_proj_weight_V_49_address0 { O 9 vector } linear_proj_weight_V_49_ce0 { O 1 bit } linear_proj_weight_V_49_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3756 \
    name linear_proj_weight_V_50 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_50 \
    op interface \
    ports { linear_proj_weight_V_50_address0 { O 9 vector } linear_proj_weight_V_50_ce0 { O 1 bit } linear_proj_weight_V_50_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3757 \
    name linear_proj_weight_V_51 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_51 \
    op interface \
    ports { linear_proj_weight_V_51_address0 { O 9 vector } linear_proj_weight_V_51_ce0 { O 1 bit } linear_proj_weight_V_51_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3758 \
    name linear_proj_weight_V_52 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_52 \
    op interface \
    ports { linear_proj_weight_V_52_address0 { O 9 vector } linear_proj_weight_V_52_ce0 { O 1 bit } linear_proj_weight_V_52_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3759 \
    name linear_proj_weight_V_53 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_53 \
    op interface \
    ports { linear_proj_weight_V_53_address0 { O 9 vector } linear_proj_weight_V_53_ce0 { O 1 bit } linear_proj_weight_V_53_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3760 \
    name linear_proj_weight_V_54 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_54 \
    op interface \
    ports { linear_proj_weight_V_54_address0 { O 9 vector } linear_proj_weight_V_54_ce0 { O 1 bit } linear_proj_weight_V_54_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3761 \
    name linear_proj_weight_V_55 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_55 \
    op interface \
    ports { linear_proj_weight_V_55_address0 { O 9 vector } linear_proj_weight_V_55_ce0 { O 1 bit } linear_proj_weight_V_55_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3762 \
    name linear_proj_weight_V_56 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_56 \
    op interface \
    ports { linear_proj_weight_V_56_address0 { O 9 vector } linear_proj_weight_V_56_ce0 { O 1 bit } linear_proj_weight_V_56_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3763 \
    name linear_proj_weight_V_57 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_57 \
    op interface \
    ports { linear_proj_weight_V_57_address0 { O 9 vector } linear_proj_weight_V_57_ce0 { O 1 bit } linear_proj_weight_V_57_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3764 \
    name linear_proj_weight_V_58 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_58 \
    op interface \
    ports { linear_proj_weight_V_58_address0 { O 9 vector } linear_proj_weight_V_58_ce0 { O 1 bit } linear_proj_weight_V_58_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3765 \
    name linear_proj_weight_V_59 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_59 \
    op interface \
    ports { linear_proj_weight_V_59_address0 { O 9 vector } linear_proj_weight_V_59_ce0 { O 1 bit } linear_proj_weight_V_59_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3766 \
    name linear_proj_weight_V_60 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_60 \
    op interface \
    ports { linear_proj_weight_V_60_address0 { O 9 vector } linear_proj_weight_V_60_ce0 { O 1 bit } linear_proj_weight_V_60_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3767 \
    name linear_proj_weight_V_61 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_61 \
    op interface \
    ports { linear_proj_weight_V_61_address0 { O 9 vector } linear_proj_weight_V_61_ce0 { O 1 bit } linear_proj_weight_V_61_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3768 \
    name linear_proj_weight_V_62 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_62 \
    op interface \
    ports { linear_proj_weight_V_62_address0 { O 9 vector } linear_proj_weight_V_62_ce0 { O 1 bit } linear_proj_weight_V_62_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3769 \
    name linear_proj_weight_V_63 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename linear_proj_weight_V_63 \
    op interface \
    ports { linear_proj_weight_V_63_address0 { O 9 vector } linear_proj_weight_V_63_ce0 { O 1 bit } linear_proj_weight_V_63_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_63'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3770 \
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
    id 3771 \
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
    id 3772 \
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
    id 3773 \
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
    id 3774 \
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
    id 3775 \
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
    id 3776 \
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
    id 3777 \
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
    id 3778 \
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
    id 3779 \
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
    id 3780 \
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
    id 3781 \
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
    id 3782 \
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
    id 3783 \
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
    id 3784 \
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
    id 3785 \
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
    id 3786 \
    name scoring_fn_target_V_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_target_V_0 \
    op interface \
    ports { scoring_fn_target_V_0_address0 { O 5 vector } scoring_fn_target_V_0_ce0 { O 1 bit } scoring_fn_target_V_0_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_target_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3787 \
    name scoring_fn_target_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_target_V_1 \
    op interface \
    ports { scoring_fn_target_V_1_address0 { O 5 vector } scoring_fn_target_V_1_ce0 { O 1 bit } scoring_fn_target_V_1_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_target_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3788 \
    name scoring_fn_target_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_target_V_2 \
    op interface \
    ports { scoring_fn_target_V_2_address0 { O 5 vector } scoring_fn_target_V_2_ce0 { O 1 bit } scoring_fn_target_V_2_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_target_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3789 \
    name scoring_fn_target_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_target_V_3 \
    op interface \
    ports { scoring_fn_target_V_3_address0 { O 5 vector } scoring_fn_target_V_3_ce0 { O 1 bit } scoring_fn_target_V_3_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_target_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3790 \
    name scoring_fn_target_V_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_target_V_4 \
    op interface \
    ports { scoring_fn_target_V_4_address0 { O 5 vector } scoring_fn_target_V_4_ce0 { O 1 bit } scoring_fn_target_V_4_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_target_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3791 \
    name scoring_fn_target_V_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_target_V_5 \
    op interface \
    ports { scoring_fn_target_V_5_address0 { O 5 vector } scoring_fn_target_V_5_ce0 { O 1 bit } scoring_fn_target_V_5_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_target_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3792 \
    name scoring_fn_target_V_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_target_V_6 \
    op interface \
    ports { scoring_fn_target_V_6_address0 { O 5 vector } scoring_fn_target_V_6_ce0 { O 1 bit } scoring_fn_target_V_6_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_target_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3793 \
    name scoring_fn_target_V_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_target_V_7 \
    op interface \
    ports { scoring_fn_target_V_7_address0 { O 5 vector } scoring_fn_target_V_7_ce0 { O 1 bit } scoring_fn_target_V_7_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_target_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3794 \
    name scoring_fn_target_V_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_target_V_8 \
    op interface \
    ports { scoring_fn_target_V_8_address0 { O 5 vector } scoring_fn_target_V_8_ce0 { O 1 bit } scoring_fn_target_V_8_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_target_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3795 \
    name scoring_fn_target_V_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_target_V_9 \
    op interface \
    ports { scoring_fn_target_V_9_address0 { O 5 vector } scoring_fn_target_V_9_ce0 { O 1 bit } scoring_fn_target_V_9_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_target_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3796 \
    name scoring_fn_target_V_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_target_V_10 \
    op interface \
    ports { scoring_fn_target_V_10_address0 { O 5 vector } scoring_fn_target_V_10_ce0 { O 1 bit } scoring_fn_target_V_10_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_target_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3797 \
    name scoring_fn_target_V_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_target_V_11 \
    op interface \
    ports { scoring_fn_target_V_11_address0 { O 5 vector } scoring_fn_target_V_11_ce0 { O 1 bit } scoring_fn_target_V_11_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_target_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3798 \
    name scoring_fn_target_V_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_target_V_12 \
    op interface \
    ports { scoring_fn_target_V_12_address0 { O 5 vector } scoring_fn_target_V_12_ce0 { O 1 bit } scoring_fn_target_V_12_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_target_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3799 \
    name scoring_fn_target_V_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_target_V_13 \
    op interface \
    ports { scoring_fn_target_V_13_address0 { O 5 vector } scoring_fn_target_V_13_ce0 { O 1 bit } scoring_fn_target_V_13_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_target_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3800 \
    name scoring_fn_target_V_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_target_V_14 \
    op interface \
    ports { scoring_fn_target_V_14_address0 { O 5 vector } scoring_fn_target_V_14_ce0 { O 1 bit } scoring_fn_target_V_14_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_target_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3801 \
    name scoring_fn_target_V_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scoring_fn_target_V_15 \
    op interface \
    ports { scoring_fn_target_V_15_address0 { O 5 vector } scoring_fn_target_V_15_ce0 { O 1 bit } scoring_fn_target_V_15_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scoring_fn_target_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3802 \
    name connectivity_mask_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_18 \
    op interface \
    ports { connectivity_mask_18_address0 { O 7 vector } connectivity_mask_18_ce0 { O 1 bit } connectivity_mask_18_q0 { I 32 vector } connectivity_mask_18_address1 { O 7 vector } connectivity_mask_18_ce1 { O 1 bit } connectivity_mask_18_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3803 \
    name connectivity_mask_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_0 \
    op interface \
    ports { connectivity_mask_0_address0 { O 7 vector } connectivity_mask_0_ce0 { O 1 bit } connectivity_mask_0_q0 { I 32 vector } connectivity_mask_0_address1 { O 7 vector } connectivity_mask_0_ce1 { O 1 bit } connectivity_mask_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3804 \
    name connectivity_mask_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_1 \
    op interface \
    ports { connectivity_mask_1_address0 { O 7 vector } connectivity_mask_1_ce0 { O 1 bit } connectivity_mask_1_q0 { I 32 vector } connectivity_mask_1_address1 { O 7 vector } connectivity_mask_1_ce1 { O 1 bit } connectivity_mask_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3805 \
    name connectivity_mask_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_2 \
    op interface \
    ports { connectivity_mask_2_address0 { O 7 vector } connectivity_mask_2_ce0 { O 1 bit } connectivity_mask_2_q0 { I 32 vector } connectivity_mask_2_address1 { O 7 vector } connectivity_mask_2_ce1 { O 1 bit } connectivity_mask_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3806 \
    name connectivity_mask_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_3 \
    op interface \
    ports { connectivity_mask_3_address0 { O 7 vector } connectivity_mask_3_ce0 { O 1 bit } connectivity_mask_3_q0 { I 32 vector } connectivity_mask_3_address1 { O 7 vector } connectivity_mask_3_ce1 { O 1 bit } connectivity_mask_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3807 \
    name connectivity_mask_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_4 \
    op interface \
    ports { connectivity_mask_4_address0 { O 7 vector } connectivity_mask_4_ce0 { O 1 bit } connectivity_mask_4_q0 { I 32 vector } connectivity_mask_4_address1 { O 7 vector } connectivity_mask_4_ce1 { O 1 bit } connectivity_mask_4_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3808 \
    name connectivity_mask_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_5 \
    op interface \
    ports { connectivity_mask_5_address0 { O 7 vector } connectivity_mask_5_ce0 { O 1 bit } connectivity_mask_5_q0 { I 32 vector } connectivity_mask_5_address1 { O 7 vector } connectivity_mask_5_ce1 { O 1 bit } connectivity_mask_5_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3809 \
    name connectivity_mask_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_6 \
    op interface \
    ports { connectivity_mask_6_address0 { O 7 vector } connectivity_mask_6_ce0 { O 1 bit } connectivity_mask_6_q0 { I 32 vector } connectivity_mask_6_address1 { O 7 vector } connectivity_mask_6_ce1 { O 1 bit } connectivity_mask_6_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3810 \
    name connectivity_mask_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_7 \
    op interface \
    ports { connectivity_mask_7_address0 { O 7 vector } connectivity_mask_7_ce0 { O 1 bit } connectivity_mask_7_q0 { I 32 vector } connectivity_mask_7_address1 { O 7 vector } connectivity_mask_7_ce1 { O 1 bit } connectivity_mask_7_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3811 \
    name connectivity_mask_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_8 \
    op interface \
    ports { connectivity_mask_8_address0 { O 7 vector } connectivity_mask_8_ce0 { O 1 bit } connectivity_mask_8_q0 { I 32 vector } connectivity_mask_8_address1 { O 7 vector } connectivity_mask_8_ce1 { O 1 bit } connectivity_mask_8_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3812 \
    name connectivity_mask_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_9 \
    op interface \
    ports { connectivity_mask_9_address0 { O 7 vector } connectivity_mask_9_ce0 { O 1 bit } connectivity_mask_9_q0 { I 32 vector } connectivity_mask_9_address1 { O 7 vector } connectivity_mask_9_ce1 { O 1 bit } connectivity_mask_9_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3813 \
    name connectivity_mask_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_10 \
    op interface \
    ports { connectivity_mask_10_address0 { O 7 vector } connectivity_mask_10_ce0 { O 1 bit } connectivity_mask_10_q0 { I 32 vector } connectivity_mask_10_address1 { O 7 vector } connectivity_mask_10_ce1 { O 1 bit } connectivity_mask_10_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3814 \
    name connectivity_mask_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_11 \
    op interface \
    ports { connectivity_mask_11_address0 { O 7 vector } connectivity_mask_11_ce0 { O 1 bit } connectivity_mask_11_q0 { I 32 vector } connectivity_mask_11_address1 { O 7 vector } connectivity_mask_11_ce1 { O 1 bit } connectivity_mask_11_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3815 \
    name connectivity_mask_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_12 \
    op interface \
    ports { connectivity_mask_12_address0 { O 7 vector } connectivity_mask_12_ce0 { O 1 bit } connectivity_mask_12_q0 { I 32 vector } connectivity_mask_12_address1 { O 7 vector } connectivity_mask_12_ce1 { O 1 bit } connectivity_mask_12_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3816 \
    name connectivity_mask_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_13 \
    op interface \
    ports { connectivity_mask_13_address0 { O 7 vector } connectivity_mask_13_ce0 { O 1 bit } connectivity_mask_13_q0 { I 32 vector } connectivity_mask_13_address1 { O 7 vector } connectivity_mask_13_ce1 { O 1 bit } connectivity_mask_13_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3817 \
    name connectivity_mask_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_14 \
    op interface \
    ports { connectivity_mask_14_address0 { O 7 vector } connectivity_mask_14_ce0 { O 1 bit } connectivity_mask_14_q0 { I 32 vector } connectivity_mask_14_address1 { O 7 vector } connectivity_mask_14_ce1 { O 1 bit } connectivity_mask_14_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3818 \
    name connectivity_mask_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_15 \
    op interface \
    ports { connectivity_mask_15_address0 { O 7 vector } connectivity_mask_15_ce0 { O 1 bit } connectivity_mask_15_q0 { I 32 vector } connectivity_mask_15_address1 { O 7 vector } connectivity_mask_15_ce1 { O 1 bit } connectivity_mask_15_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3819 \
    name connectivity_mask_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_16 \
    op interface \
    ports { connectivity_mask_16_address0 { O 7 vector } connectivity_mask_16_ce0 { O 1 bit } connectivity_mask_16_q0 { I 32 vector } connectivity_mask_16_address1 { O 7 vector } connectivity_mask_16_ce1 { O 1 bit } connectivity_mask_16_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3820 \
    name connectivity_mask_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_17 \
    op interface \
    ports { connectivity_mask_17_address0 { O 7 vector } connectivity_mask_17_ce0 { O 1 bit } connectivity_mask_17_q0 { I 32 vector } connectivity_mask_17_address1 { O 7 vector } connectivity_mask_17_ce1 { O 1 bit } connectivity_mask_17_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3821 \
    name skip_proj_weight_V_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_0 \
    op interface \
    ports { skip_proj_weight_V_0_address0 { O 9 vector } skip_proj_weight_V_0_ce0 { O 1 bit } skip_proj_weight_V_0_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3822 \
    name skip_proj_weight_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_1 \
    op interface \
    ports { skip_proj_weight_V_1_address0 { O 9 vector } skip_proj_weight_V_1_ce0 { O 1 bit } skip_proj_weight_V_1_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3823 \
    name skip_proj_weight_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_2 \
    op interface \
    ports { skip_proj_weight_V_2_address0 { O 9 vector } skip_proj_weight_V_2_ce0 { O 1 bit } skip_proj_weight_V_2_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3824 \
    name skip_proj_weight_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_3 \
    op interface \
    ports { skip_proj_weight_V_3_address0 { O 9 vector } skip_proj_weight_V_3_ce0 { O 1 bit } skip_proj_weight_V_3_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3825 \
    name skip_proj_weight_V_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_4 \
    op interface \
    ports { skip_proj_weight_V_4_address0 { O 9 vector } skip_proj_weight_V_4_ce0 { O 1 bit } skip_proj_weight_V_4_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3826 \
    name skip_proj_weight_V_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_5 \
    op interface \
    ports { skip_proj_weight_V_5_address0 { O 9 vector } skip_proj_weight_V_5_ce0 { O 1 bit } skip_proj_weight_V_5_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3827 \
    name skip_proj_weight_V_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_6 \
    op interface \
    ports { skip_proj_weight_V_6_address0 { O 9 vector } skip_proj_weight_V_6_ce0 { O 1 bit } skip_proj_weight_V_6_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3828 \
    name skip_proj_weight_V_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_7 \
    op interface \
    ports { skip_proj_weight_V_7_address0 { O 9 vector } skip_proj_weight_V_7_ce0 { O 1 bit } skip_proj_weight_V_7_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3829 \
    name skip_proj_weight_V_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_8 \
    op interface \
    ports { skip_proj_weight_V_8_address0 { O 9 vector } skip_proj_weight_V_8_ce0 { O 1 bit } skip_proj_weight_V_8_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3830 \
    name skip_proj_weight_V_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_9 \
    op interface \
    ports { skip_proj_weight_V_9_address0 { O 9 vector } skip_proj_weight_V_9_ce0 { O 1 bit } skip_proj_weight_V_9_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3831 \
    name skip_proj_weight_V_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_10 \
    op interface \
    ports { skip_proj_weight_V_10_address0 { O 9 vector } skip_proj_weight_V_10_ce0 { O 1 bit } skip_proj_weight_V_10_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3832 \
    name skip_proj_weight_V_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_11 \
    op interface \
    ports { skip_proj_weight_V_11_address0 { O 9 vector } skip_proj_weight_V_11_ce0 { O 1 bit } skip_proj_weight_V_11_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3833 \
    name skip_proj_weight_V_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_12 \
    op interface \
    ports { skip_proj_weight_V_12_address0 { O 9 vector } skip_proj_weight_V_12_ce0 { O 1 bit } skip_proj_weight_V_12_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3834 \
    name skip_proj_weight_V_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_13 \
    op interface \
    ports { skip_proj_weight_V_13_address0 { O 9 vector } skip_proj_weight_V_13_ce0 { O 1 bit } skip_proj_weight_V_13_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3835 \
    name skip_proj_weight_V_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_14 \
    op interface \
    ports { skip_proj_weight_V_14_address0 { O 9 vector } skip_proj_weight_V_14_ce0 { O 1 bit } skip_proj_weight_V_14_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3836 \
    name skip_proj_weight_V_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_15 \
    op interface \
    ports { skip_proj_weight_V_15_address0 { O 9 vector } skip_proj_weight_V_15_ce0 { O 1 bit } skip_proj_weight_V_15_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3837 \
    name skip_proj_weight_V_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_16 \
    op interface \
    ports { skip_proj_weight_V_16_address0 { O 9 vector } skip_proj_weight_V_16_ce0 { O 1 bit } skip_proj_weight_V_16_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3838 \
    name skip_proj_weight_V_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_17 \
    op interface \
    ports { skip_proj_weight_V_17_address0 { O 9 vector } skip_proj_weight_V_17_ce0 { O 1 bit } skip_proj_weight_V_17_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3839 \
    name skip_proj_weight_V_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_18 \
    op interface \
    ports { skip_proj_weight_V_18_address0 { O 9 vector } skip_proj_weight_V_18_ce0 { O 1 bit } skip_proj_weight_V_18_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3840 \
    name skip_proj_weight_V_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_19 \
    op interface \
    ports { skip_proj_weight_V_19_address0 { O 9 vector } skip_proj_weight_V_19_ce0 { O 1 bit } skip_proj_weight_V_19_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3841 \
    name skip_proj_weight_V_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_20 \
    op interface \
    ports { skip_proj_weight_V_20_address0 { O 9 vector } skip_proj_weight_V_20_ce0 { O 1 bit } skip_proj_weight_V_20_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3842 \
    name skip_proj_weight_V_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_21 \
    op interface \
    ports { skip_proj_weight_V_21_address0 { O 9 vector } skip_proj_weight_V_21_ce0 { O 1 bit } skip_proj_weight_V_21_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3843 \
    name skip_proj_weight_V_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_22 \
    op interface \
    ports { skip_proj_weight_V_22_address0 { O 9 vector } skip_proj_weight_V_22_ce0 { O 1 bit } skip_proj_weight_V_22_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3844 \
    name skip_proj_weight_V_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_23 \
    op interface \
    ports { skip_proj_weight_V_23_address0 { O 9 vector } skip_proj_weight_V_23_ce0 { O 1 bit } skip_proj_weight_V_23_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3845 \
    name skip_proj_weight_V_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_24 \
    op interface \
    ports { skip_proj_weight_V_24_address0 { O 9 vector } skip_proj_weight_V_24_ce0 { O 1 bit } skip_proj_weight_V_24_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3846 \
    name skip_proj_weight_V_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_25 \
    op interface \
    ports { skip_proj_weight_V_25_address0 { O 9 vector } skip_proj_weight_V_25_ce0 { O 1 bit } skip_proj_weight_V_25_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3847 \
    name skip_proj_weight_V_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_26 \
    op interface \
    ports { skip_proj_weight_V_26_address0 { O 9 vector } skip_proj_weight_V_26_ce0 { O 1 bit } skip_proj_weight_V_26_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3848 \
    name skip_proj_weight_V_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_27 \
    op interface \
    ports { skip_proj_weight_V_27_address0 { O 9 vector } skip_proj_weight_V_27_ce0 { O 1 bit } skip_proj_weight_V_27_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3849 \
    name skip_proj_weight_V_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_28 \
    op interface \
    ports { skip_proj_weight_V_28_address0 { O 9 vector } skip_proj_weight_V_28_ce0 { O 1 bit } skip_proj_weight_V_28_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3850 \
    name skip_proj_weight_V_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_29 \
    op interface \
    ports { skip_proj_weight_V_29_address0 { O 9 vector } skip_proj_weight_V_29_ce0 { O 1 bit } skip_proj_weight_V_29_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3851 \
    name skip_proj_weight_V_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_30 \
    op interface \
    ports { skip_proj_weight_V_30_address0 { O 9 vector } skip_proj_weight_V_30_ce0 { O 1 bit } skip_proj_weight_V_30_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3852 \
    name skip_proj_weight_V_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_31 \
    op interface \
    ports { skip_proj_weight_V_31_address0 { O 9 vector } skip_proj_weight_V_31_ce0 { O 1 bit } skip_proj_weight_V_31_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3853 \
    name skip_proj_weight_V_32 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_32 \
    op interface \
    ports { skip_proj_weight_V_32_address0 { O 9 vector } skip_proj_weight_V_32_ce0 { O 1 bit } skip_proj_weight_V_32_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3854 \
    name skip_proj_weight_V_33 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_33 \
    op interface \
    ports { skip_proj_weight_V_33_address0 { O 9 vector } skip_proj_weight_V_33_ce0 { O 1 bit } skip_proj_weight_V_33_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3855 \
    name skip_proj_weight_V_34 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_34 \
    op interface \
    ports { skip_proj_weight_V_34_address0 { O 9 vector } skip_proj_weight_V_34_ce0 { O 1 bit } skip_proj_weight_V_34_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3856 \
    name skip_proj_weight_V_35 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_35 \
    op interface \
    ports { skip_proj_weight_V_35_address0 { O 9 vector } skip_proj_weight_V_35_ce0 { O 1 bit } skip_proj_weight_V_35_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3857 \
    name skip_proj_weight_V_36 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_36 \
    op interface \
    ports { skip_proj_weight_V_36_address0 { O 9 vector } skip_proj_weight_V_36_ce0 { O 1 bit } skip_proj_weight_V_36_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3858 \
    name skip_proj_weight_V_37 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_37 \
    op interface \
    ports { skip_proj_weight_V_37_address0 { O 9 vector } skip_proj_weight_V_37_ce0 { O 1 bit } skip_proj_weight_V_37_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3859 \
    name skip_proj_weight_V_38 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_38 \
    op interface \
    ports { skip_proj_weight_V_38_address0 { O 9 vector } skip_proj_weight_V_38_ce0 { O 1 bit } skip_proj_weight_V_38_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3860 \
    name skip_proj_weight_V_39 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_39 \
    op interface \
    ports { skip_proj_weight_V_39_address0 { O 9 vector } skip_proj_weight_V_39_ce0 { O 1 bit } skip_proj_weight_V_39_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3861 \
    name skip_proj_weight_V_40 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_40 \
    op interface \
    ports { skip_proj_weight_V_40_address0 { O 9 vector } skip_proj_weight_V_40_ce0 { O 1 bit } skip_proj_weight_V_40_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3862 \
    name skip_proj_weight_V_41 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_41 \
    op interface \
    ports { skip_proj_weight_V_41_address0 { O 9 vector } skip_proj_weight_V_41_ce0 { O 1 bit } skip_proj_weight_V_41_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3863 \
    name skip_proj_weight_V_42 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_42 \
    op interface \
    ports { skip_proj_weight_V_42_address0 { O 9 vector } skip_proj_weight_V_42_ce0 { O 1 bit } skip_proj_weight_V_42_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3864 \
    name skip_proj_weight_V_43 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_43 \
    op interface \
    ports { skip_proj_weight_V_43_address0 { O 9 vector } skip_proj_weight_V_43_ce0 { O 1 bit } skip_proj_weight_V_43_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3865 \
    name skip_proj_weight_V_44 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_44 \
    op interface \
    ports { skip_proj_weight_V_44_address0 { O 9 vector } skip_proj_weight_V_44_ce0 { O 1 bit } skip_proj_weight_V_44_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3866 \
    name skip_proj_weight_V_45 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_45 \
    op interface \
    ports { skip_proj_weight_V_45_address0 { O 9 vector } skip_proj_weight_V_45_ce0 { O 1 bit } skip_proj_weight_V_45_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3867 \
    name skip_proj_weight_V_46 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_46 \
    op interface \
    ports { skip_proj_weight_V_46_address0 { O 9 vector } skip_proj_weight_V_46_ce0 { O 1 bit } skip_proj_weight_V_46_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3868 \
    name skip_proj_weight_V_47 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_47 \
    op interface \
    ports { skip_proj_weight_V_47_address0 { O 9 vector } skip_proj_weight_V_47_ce0 { O 1 bit } skip_proj_weight_V_47_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3869 \
    name skip_proj_weight_V_48 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_48 \
    op interface \
    ports { skip_proj_weight_V_48_address0 { O 9 vector } skip_proj_weight_V_48_ce0 { O 1 bit } skip_proj_weight_V_48_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3870 \
    name skip_proj_weight_V_49 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_49 \
    op interface \
    ports { skip_proj_weight_V_49_address0 { O 9 vector } skip_proj_weight_V_49_ce0 { O 1 bit } skip_proj_weight_V_49_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3871 \
    name skip_proj_weight_V_50 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_50 \
    op interface \
    ports { skip_proj_weight_V_50_address0 { O 9 vector } skip_proj_weight_V_50_ce0 { O 1 bit } skip_proj_weight_V_50_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3872 \
    name skip_proj_weight_V_51 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_51 \
    op interface \
    ports { skip_proj_weight_V_51_address0 { O 9 vector } skip_proj_weight_V_51_ce0 { O 1 bit } skip_proj_weight_V_51_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3873 \
    name skip_proj_weight_V_52 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_52 \
    op interface \
    ports { skip_proj_weight_V_52_address0 { O 9 vector } skip_proj_weight_V_52_ce0 { O 1 bit } skip_proj_weight_V_52_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3874 \
    name skip_proj_weight_V_53 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_53 \
    op interface \
    ports { skip_proj_weight_V_53_address0 { O 9 vector } skip_proj_weight_V_53_ce0 { O 1 bit } skip_proj_weight_V_53_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3875 \
    name skip_proj_weight_V_54 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_54 \
    op interface \
    ports { skip_proj_weight_V_54_address0 { O 9 vector } skip_proj_weight_V_54_ce0 { O 1 bit } skip_proj_weight_V_54_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3876 \
    name skip_proj_weight_V_55 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_55 \
    op interface \
    ports { skip_proj_weight_V_55_address0 { O 9 vector } skip_proj_weight_V_55_ce0 { O 1 bit } skip_proj_weight_V_55_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3877 \
    name skip_proj_weight_V_56 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_56 \
    op interface \
    ports { skip_proj_weight_V_56_address0 { O 9 vector } skip_proj_weight_V_56_ce0 { O 1 bit } skip_proj_weight_V_56_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3878 \
    name skip_proj_weight_V_57 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_57 \
    op interface \
    ports { skip_proj_weight_V_57_address0 { O 9 vector } skip_proj_weight_V_57_ce0 { O 1 bit } skip_proj_weight_V_57_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3879 \
    name skip_proj_weight_V_58 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_58 \
    op interface \
    ports { skip_proj_weight_V_58_address0 { O 9 vector } skip_proj_weight_V_58_ce0 { O 1 bit } skip_proj_weight_V_58_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3880 \
    name skip_proj_weight_V_59 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_59 \
    op interface \
    ports { skip_proj_weight_V_59_address0 { O 9 vector } skip_proj_weight_V_59_ce0 { O 1 bit } skip_proj_weight_V_59_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3881 \
    name skip_proj_weight_V_60 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_60 \
    op interface \
    ports { skip_proj_weight_V_60_address0 { O 9 vector } skip_proj_weight_V_60_ce0 { O 1 bit } skip_proj_weight_V_60_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3882 \
    name skip_proj_weight_V_61 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_61 \
    op interface \
    ports { skip_proj_weight_V_61_address0 { O 9 vector } skip_proj_weight_V_61_ce0 { O 1 bit } skip_proj_weight_V_61_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3883 \
    name skip_proj_weight_V_62 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_62 \
    op interface \
    ports { skip_proj_weight_V_62_address0 { O 9 vector } skip_proj_weight_V_62_ce0 { O 1 bit } skip_proj_weight_V_62_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3884 \
    name skip_proj_weight_V_63 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename skip_proj_weight_V_63 \
    op interface \
    ports { skip_proj_weight_V_63_address0 { O 9 vector } skip_proj_weight_V_63_ce0 { O 1 bit } skip_proj_weight_V_63_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'skip_proj_weight_V_63'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3688 \
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
    id 3689 \
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


