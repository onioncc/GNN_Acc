# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 3438
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
set ID 3439
set hasByteEnable 0
set MemName GAT_compute_one_graph_CONV_nodes_features_proj_V_0
set CoreName ap_simcore_mem
set PortList { 1 2 }
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
set ID 3440
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


# Memory (RAM/ROM)  definition:
set ID 3441
set hasByteEnable 0
set MemName GAT_compute_one_graph_CONV_scores_target_V_0
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
    id 3443 \
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
    id 3444 \
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
    id 3445 \
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
    id 3446 \
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
    id 3447 \
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
    id 3448 \
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
    id 3449 \
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
    id 3450 \
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
    id 3451 \
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
    id 3452 \
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
    id 3453 \
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
    id 3454 \
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
    id 3455 \
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
    id 3456 \
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
    id 3457 \
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
    id 3458 \
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
    id 3459 \
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
    id 3460 \
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
    id 3461 \
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
    id 3462 \
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
    id 3463 \
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
    id 3464 \
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
    id 3465 \
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
    id 3466 \
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
    id 3467 \
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
    id 3468 \
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
    id 3469 \
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
    id 3470 \
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
    id 3471 \
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
    id 3472 \
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
    id 3473 \
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
    id 3474 \
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
    id 3475 \
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
    id 3476 \
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
    id 3477 \
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
    id 3478 \
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
    id 3479 \
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
    id 3480 \
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
    id 3481 \
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
    id 3482 \
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
    id 3483 \
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
    id 3484 \
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
    id 3485 \
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
    id 3486 \
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
    id 3487 \
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
    id 3488 \
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
    id 3489 \
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
    id 3490 \
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
    id 3491 \
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
    id 3492 \
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
    id 3493 \
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
    id 3494 \
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
    id 3495 \
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
    id 3496 \
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
    id 3497 \
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
    id 3498 \
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
    id 3499 \
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
    id 3500 \
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
    id 3501 \
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
    id 3502 \
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
    id 3503 \
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
    id 3504 \
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
    id 3505 \
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
    id 3506 \
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
    id 3507 \
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
    id 3508 \
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
    id 3509 \
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
    id 3510 \
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
    id 3511 \
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
    id 3512 \
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
    id 3513 \
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
    id 3514 \
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
    id 3515 \
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
    id 3516 \
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
    id 3517 \
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
    id 3518 \
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
    id 3519 \
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
    id 3520 \
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
    id 3521 \
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
    id 3522 \
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
    id 3523 \
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
    id 3524 \
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
    id 3525 \
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
    id 3526 \
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
    id 3527 \
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
    id 3528 \
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
    id 3529 \
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
    id 3530 \
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
    id 3531 \
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
    id 3532 \
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
    id 3533 \
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
    id 3534 \
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
    id 3535 \
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
    id 3536 \
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
    id 3537 \
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
    id 3538 \
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
    id 3539 \
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
    id 3540 \
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
    id 3541 \
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
    id 3542 \
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
    id 3543 \
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
    id 3544 \
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
    id 3545 \
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
    id 3546 \
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
    id 3547 \
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
    id 3548 \
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
    id 3549 \
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
    id 3550 \
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
    id 3551 \
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
    id 3552 \
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
    id 3553 \
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
    id 3554 \
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
    id 3555 \
    name connectivity_mask_final_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_1 \
    op interface \
    ports { connectivity_mask_final_1_address0 { O 7 vector } connectivity_mask_final_1_ce0 { O 1 bit } connectivity_mask_final_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3556 \
    name connectivity_mask_final_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_2 \
    op interface \
    ports { connectivity_mask_final_2_address0 { O 7 vector } connectivity_mask_final_2_ce0 { O 1 bit } connectivity_mask_final_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3557 \
    name connectivity_mask_final_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_3 \
    op interface \
    ports { connectivity_mask_final_3_address0 { O 7 vector } connectivity_mask_final_3_ce0 { O 1 bit } connectivity_mask_final_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3558 \
    name connectivity_mask_final_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_4 \
    op interface \
    ports { connectivity_mask_final_4_address0 { O 7 vector } connectivity_mask_final_4_ce0 { O 1 bit } connectivity_mask_final_4_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3559 \
    name connectivity_mask_final_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_5 \
    op interface \
    ports { connectivity_mask_final_5_address0 { O 7 vector } connectivity_mask_final_5_ce0 { O 1 bit } connectivity_mask_final_5_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3560 \
    name connectivity_mask_final_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_6 \
    op interface \
    ports { connectivity_mask_final_6_address0 { O 7 vector } connectivity_mask_final_6_ce0 { O 1 bit } connectivity_mask_final_6_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3561 \
    name connectivity_mask_final_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_7 \
    op interface \
    ports { connectivity_mask_final_7_address0 { O 7 vector } connectivity_mask_final_7_ce0 { O 1 bit } connectivity_mask_final_7_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3562 \
    name connectivity_mask_final_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_8 \
    op interface \
    ports { connectivity_mask_final_8_address0 { O 7 vector } connectivity_mask_final_8_ce0 { O 1 bit } connectivity_mask_final_8_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3563 \
    name connectivity_mask_final_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_9 \
    op interface \
    ports { connectivity_mask_final_9_address0 { O 7 vector } connectivity_mask_final_9_ce0 { O 1 bit } connectivity_mask_final_9_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3564 \
    name connectivity_mask_final_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_10 \
    op interface \
    ports { connectivity_mask_final_10_address0 { O 7 vector } connectivity_mask_final_10_ce0 { O 1 bit } connectivity_mask_final_10_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3565 \
    name connectivity_mask_final_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_11 \
    op interface \
    ports { connectivity_mask_final_11_address0 { O 7 vector } connectivity_mask_final_11_ce0 { O 1 bit } connectivity_mask_final_11_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3566 \
    name connectivity_mask_final_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_12 \
    op interface \
    ports { connectivity_mask_final_12_address0 { O 7 vector } connectivity_mask_final_12_ce0 { O 1 bit } connectivity_mask_final_12_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3567 \
    name connectivity_mask_final_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_13 \
    op interface \
    ports { connectivity_mask_final_13_address0 { O 7 vector } connectivity_mask_final_13_ce0 { O 1 bit } connectivity_mask_final_13_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3568 \
    name connectivity_mask_final_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_14 \
    op interface \
    ports { connectivity_mask_final_14_address0 { O 7 vector } connectivity_mask_final_14_ce0 { O 1 bit } connectivity_mask_final_14_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3569 \
    name connectivity_mask_final_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_15 \
    op interface \
    ports { connectivity_mask_final_15_address0 { O 7 vector } connectivity_mask_final_15_ce0 { O 1 bit } connectivity_mask_final_15_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3570 \
    name connectivity_mask_final_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_16 \
    op interface \
    ports { connectivity_mask_final_16_address0 { O 7 vector } connectivity_mask_final_16_ce0 { O 1 bit } connectivity_mask_final_16_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3571 \
    name connectivity_mask_final_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_17 \
    op interface \
    ports { connectivity_mask_final_17_address0 { O 7 vector } connectivity_mask_final_17_ce0 { O 1 bit } connectivity_mask_final_17_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3572 \
    name connectivity_mask_final_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_18 \
    op interface \
    ports { connectivity_mask_final_18_address0 { O 7 vector } connectivity_mask_final_18_ce0 { O 1 bit } connectivity_mask_final_18_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3573 \
    name connectivity_mask_final_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename connectivity_mask_final_0 \
    op interface \
    ports { connectivity_mask_final_0_address0 { O 7 vector } connectivity_mask_final_0_ce0 { O 1 bit } connectivity_mask_final_0_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_final_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 3574 \
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
    id 3575 \
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
    id 3576 \
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
    id 3577 \
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
    id 3578 \
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
    id 3579 \
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
    id 3580 \
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
    id 3581 \
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
    id 3582 \
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
    id 3583 \
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
    id 3584 \
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
    id 3585 \
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
    id 3586 \
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
    id 3587 \
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
    id 3588 \
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
    id 3589 \
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
    id 3590 \
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
    id 3591 \
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
    id 3592 \
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
    id 3593 \
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
    id 3594 \
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
    id 3595 \
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
    id 3596 \
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
    id 3597 \
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
    id 3598 \
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
    id 3599 \
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
    id 3600 \
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
    id 3601 \
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
    id 3602 \
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
    id 3603 \
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
    id 3604 \
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
    id 3605 \
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
    id 3606 \
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
    id 3607 \
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
    id 3608 \
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
    id 3609 \
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
    id 3610 \
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
    id 3611 \
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
    id 3612 \
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
    id 3613 \
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
    id 3614 \
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
    id 3615 \
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
    id 3616 \
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
    id 3617 \
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
    id 3618 \
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
    id 3619 \
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
    id 3620 \
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
    id 3621 \
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
    id 3622 \
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
    id 3623 \
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
    id 3624 \
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
    id 3625 \
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
    id 3626 \
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
    id 3627 \
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
    id 3628 \
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
    id 3629 \
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
    id 3630 \
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
    id 3631 \
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
    id 3632 \
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
    id 3633 \
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
    id 3634 \
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
    id 3635 \
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
    id 3636 \
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
    id 3637 \
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
    id 3442 \
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


