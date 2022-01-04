# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 690
set hasByteEnable 0
set MemName GAT_compute_one_graph_compute_connectivity_mask_connectivity_mask_19
set CoreName ap_simcore_mem
set PortList { 1 0 }
set DataWd 32
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
    id 691 \
    name connectivity_mask_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_0 \
    op interface \
    ports { connectivity_mask_0_address0 { O 7 vector } connectivity_mask_0_ce0 { O 1 bit } connectivity_mask_0_q0 { I 32 vector } connectivity_mask_0_address1 { O 7 vector } connectivity_mask_0_ce1 { O 1 bit } connectivity_mask_0_we1 { O 1 bit } connectivity_mask_0_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 692 \
    name connectivity_mask_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_1 \
    op interface \
    ports { connectivity_mask_1_address0 { O 7 vector } connectivity_mask_1_ce0 { O 1 bit } connectivity_mask_1_q0 { I 32 vector } connectivity_mask_1_address1 { O 7 vector } connectivity_mask_1_ce1 { O 1 bit } connectivity_mask_1_we1 { O 1 bit } connectivity_mask_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 693 \
    name connectivity_mask_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_2 \
    op interface \
    ports { connectivity_mask_2_address0 { O 7 vector } connectivity_mask_2_ce0 { O 1 bit } connectivity_mask_2_q0 { I 32 vector } connectivity_mask_2_address1 { O 7 vector } connectivity_mask_2_ce1 { O 1 bit } connectivity_mask_2_we1 { O 1 bit } connectivity_mask_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 694 \
    name connectivity_mask_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_3 \
    op interface \
    ports { connectivity_mask_3_address0 { O 7 vector } connectivity_mask_3_ce0 { O 1 bit } connectivity_mask_3_q0 { I 32 vector } connectivity_mask_3_address1 { O 7 vector } connectivity_mask_3_ce1 { O 1 bit } connectivity_mask_3_we1 { O 1 bit } connectivity_mask_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 695 \
    name connectivity_mask_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_4 \
    op interface \
    ports { connectivity_mask_4_address0 { O 7 vector } connectivity_mask_4_ce0 { O 1 bit } connectivity_mask_4_q0 { I 32 vector } connectivity_mask_4_address1 { O 7 vector } connectivity_mask_4_ce1 { O 1 bit } connectivity_mask_4_we1 { O 1 bit } connectivity_mask_4_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 696 \
    name connectivity_mask_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_5 \
    op interface \
    ports { connectivity_mask_5_address0 { O 7 vector } connectivity_mask_5_ce0 { O 1 bit } connectivity_mask_5_q0 { I 32 vector } connectivity_mask_5_address1 { O 7 vector } connectivity_mask_5_ce1 { O 1 bit } connectivity_mask_5_we1 { O 1 bit } connectivity_mask_5_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 697 \
    name connectivity_mask_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_6 \
    op interface \
    ports { connectivity_mask_6_address0 { O 7 vector } connectivity_mask_6_ce0 { O 1 bit } connectivity_mask_6_q0 { I 32 vector } connectivity_mask_6_address1 { O 7 vector } connectivity_mask_6_ce1 { O 1 bit } connectivity_mask_6_we1 { O 1 bit } connectivity_mask_6_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 698 \
    name connectivity_mask_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_7 \
    op interface \
    ports { connectivity_mask_7_address0 { O 7 vector } connectivity_mask_7_ce0 { O 1 bit } connectivity_mask_7_q0 { I 32 vector } connectivity_mask_7_address1 { O 7 vector } connectivity_mask_7_ce1 { O 1 bit } connectivity_mask_7_we1 { O 1 bit } connectivity_mask_7_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 699 \
    name connectivity_mask_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_8 \
    op interface \
    ports { connectivity_mask_8_address0 { O 7 vector } connectivity_mask_8_ce0 { O 1 bit } connectivity_mask_8_q0 { I 32 vector } connectivity_mask_8_address1 { O 7 vector } connectivity_mask_8_ce1 { O 1 bit } connectivity_mask_8_we1 { O 1 bit } connectivity_mask_8_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 700 \
    name connectivity_mask_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_9 \
    op interface \
    ports { connectivity_mask_9_address0 { O 7 vector } connectivity_mask_9_ce0 { O 1 bit } connectivity_mask_9_q0 { I 32 vector } connectivity_mask_9_address1 { O 7 vector } connectivity_mask_9_ce1 { O 1 bit } connectivity_mask_9_we1 { O 1 bit } connectivity_mask_9_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 701 \
    name connectivity_mask_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_10 \
    op interface \
    ports { connectivity_mask_10_address0 { O 7 vector } connectivity_mask_10_ce0 { O 1 bit } connectivity_mask_10_q0 { I 32 vector } connectivity_mask_10_address1 { O 7 vector } connectivity_mask_10_ce1 { O 1 bit } connectivity_mask_10_we1 { O 1 bit } connectivity_mask_10_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 702 \
    name connectivity_mask_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_11 \
    op interface \
    ports { connectivity_mask_11_address0 { O 7 vector } connectivity_mask_11_ce0 { O 1 bit } connectivity_mask_11_q0 { I 32 vector } connectivity_mask_11_address1 { O 7 vector } connectivity_mask_11_ce1 { O 1 bit } connectivity_mask_11_we1 { O 1 bit } connectivity_mask_11_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 703 \
    name connectivity_mask_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_12 \
    op interface \
    ports { connectivity_mask_12_address0 { O 7 vector } connectivity_mask_12_ce0 { O 1 bit } connectivity_mask_12_q0 { I 32 vector } connectivity_mask_12_address1 { O 7 vector } connectivity_mask_12_ce1 { O 1 bit } connectivity_mask_12_we1 { O 1 bit } connectivity_mask_12_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 704 \
    name connectivity_mask_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_13 \
    op interface \
    ports { connectivity_mask_13_address0 { O 7 vector } connectivity_mask_13_ce0 { O 1 bit } connectivity_mask_13_q0 { I 32 vector } connectivity_mask_13_address1 { O 7 vector } connectivity_mask_13_ce1 { O 1 bit } connectivity_mask_13_we1 { O 1 bit } connectivity_mask_13_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 705 \
    name connectivity_mask_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_14 \
    op interface \
    ports { connectivity_mask_14_address0 { O 7 vector } connectivity_mask_14_ce0 { O 1 bit } connectivity_mask_14_q0 { I 32 vector } connectivity_mask_14_address1 { O 7 vector } connectivity_mask_14_ce1 { O 1 bit } connectivity_mask_14_we1 { O 1 bit } connectivity_mask_14_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 706 \
    name connectivity_mask_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_15 \
    op interface \
    ports { connectivity_mask_15_address0 { O 7 vector } connectivity_mask_15_ce0 { O 1 bit } connectivity_mask_15_q0 { I 32 vector } connectivity_mask_15_address1 { O 7 vector } connectivity_mask_15_ce1 { O 1 bit } connectivity_mask_15_we1 { O 1 bit } connectivity_mask_15_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 707 \
    name connectivity_mask_16 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_16 \
    op interface \
    ports { connectivity_mask_16_address0 { O 7 vector } connectivity_mask_16_ce0 { O 1 bit } connectivity_mask_16_q0 { I 32 vector } connectivity_mask_16_address1 { O 7 vector } connectivity_mask_16_ce1 { O 1 bit } connectivity_mask_16_we1 { O 1 bit } connectivity_mask_16_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 708 \
    name connectivity_mask_17 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_17 \
    op interface \
    ports { connectivity_mask_17_address0 { O 7 vector } connectivity_mask_17_ce0 { O 1 bit } connectivity_mask_17_q0 { I 32 vector } connectivity_mask_17_address1 { O 7 vector } connectivity_mask_17_ce1 { O 1 bit } connectivity_mask_17_we1 { O 1 bit } connectivity_mask_17_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 709 \
    name connectivity_mask_18 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename connectivity_mask_18 \
    op interface \
    ports { connectivity_mask_18_address0 { O 7 vector } connectivity_mask_18_ce0 { O 1 bit } connectivity_mask_18_q0 { I 32 vector } connectivity_mask_18_address1 { O 7 vector } connectivity_mask_18_ce1 { O 1 bit } connectivity_mask_18_we1 { O 1 bit } connectivity_mask_18_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'connectivity_mask_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 710 \
    name edge_list \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename edge_list \
    op interface \
    ports { edge_list_address0 { O 10 vector } edge_list_ce0 { O 1 bit } edge_list_q0 { I 32 vector } edge_list_address1 { O 10 vector } edge_list_ce1 { O 1 bit } edge_list_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'edge_list'"
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


