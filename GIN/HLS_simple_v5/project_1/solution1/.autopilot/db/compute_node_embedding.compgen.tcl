# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 1599
set hasByteEnable 0
set MemName GIN_compute_one_graph_compute_node_embedding_nd_feature_table_1
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 5
set AddrRange 9
set AddrWd 4
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "10111" "00100" "01100" "01100" "01010" "00110" "00110" "00010" "00000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 0.667
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
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
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
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
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
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
    id 1600 \
    name node_feature \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_feature \
    op interface \
    ports { node_feature_address0 { O 11 vector } node_feature_ce0 { O 1 bit } node_feature_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_feature'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1601 \
    name node_embedding_table_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_table_V \
    op interface \
    ports { node_embedding_table_V_address0 { O 16 vector } node_embedding_table_V_ce0 { O 1 bit } node_embedding_table_V_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_table_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1602 \
    name node_embedding_V_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_0 \
    op interface \
    ports { node_embedding_V_0_address1 { O 8 vector } node_embedding_V_0_ce1 { O 1 bit } node_embedding_V_0_we1 { O 1 bit } node_embedding_V_0_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1603 \
    name node_embedding_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_1 \
    op interface \
    ports { node_embedding_V_1_address1 { O 8 vector } node_embedding_V_1_ce1 { O 1 bit } node_embedding_V_1_we1 { O 1 bit } node_embedding_V_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1604 \
    name node_embedding_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_2 \
    op interface \
    ports { node_embedding_V_2_address1 { O 8 vector } node_embedding_V_2_ce1 { O 1 bit } node_embedding_V_2_we1 { O 1 bit } node_embedding_V_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1605 \
    name node_embedding_V_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_3 \
    op interface \
    ports { node_embedding_V_3_address1 { O 8 vector } node_embedding_V_3_ce1 { O 1 bit } node_embedding_V_3_we1 { O 1 bit } node_embedding_V_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1606 \
    name node_embedding_V_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_4 \
    op interface \
    ports { node_embedding_V_4_address1 { O 8 vector } node_embedding_V_4_ce1 { O 1 bit } node_embedding_V_4_we1 { O 1 bit } node_embedding_V_4_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1607 \
    name node_embedding_V_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_5 \
    op interface \
    ports { node_embedding_V_5_address1 { O 8 vector } node_embedding_V_5_ce1 { O 1 bit } node_embedding_V_5_we1 { O 1 bit } node_embedding_V_5_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1608 \
    name node_embedding_V_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_6 \
    op interface \
    ports { node_embedding_V_6_address1 { O 8 vector } node_embedding_V_6_ce1 { O 1 bit } node_embedding_V_6_we1 { O 1 bit } node_embedding_V_6_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1609 \
    name node_embedding_V_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_7 \
    op interface \
    ports { node_embedding_V_7_address1 { O 8 vector } node_embedding_V_7_ce1 { O 1 bit } node_embedding_V_7_we1 { O 1 bit } node_embedding_V_7_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1610 \
    name node_embedding_V_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_8 \
    op interface \
    ports { node_embedding_V_8_address1 { O 8 vector } node_embedding_V_8_ce1 { O 1 bit } node_embedding_V_8_we1 { O 1 bit } node_embedding_V_8_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1611 \
    name node_embedding_V_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_9 \
    op interface \
    ports { node_embedding_V_9_address1 { O 8 vector } node_embedding_V_9_ce1 { O 1 bit } node_embedding_V_9_we1 { O 1 bit } node_embedding_V_9_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1612 \
    name node_embedding_V_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_10 \
    op interface \
    ports { node_embedding_V_10_address1 { O 8 vector } node_embedding_V_10_ce1 { O 1 bit } node_embedding_V_10_we1 { O 1 bit } node_embedding_V_10_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1613 \
    name node_embedding_V_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_11 \
    op interface \
    ports { node_embedding_V_11_address1 { O 8 vector } node_embedding_V_11_ce1 { O 1 bit } node_embedding_V_11_we1 { O 1 bit } node_embedding_V_11_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1614 \
    name node_embedding_V_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_12 \
    op interface \
    ports { node_embedding_V_12_address1 { O 8 vector } node_embedding_V_12_ce1 { O 1 bit } node_embedding_V_12_we1 { O 1 bit } node_embedding_V_12_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1615 \
    name node_embedding_V_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_13 \
    op interface \
    ports { node_embedding_V_13_address1 { O 8 vector } node_embedding_V_13_ce1 { O 1 bit } node_embedding_V_13_we1 { O 1 bit } node_embedding_V_13_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1616 \
    name node_embedding_V_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_14 \
    op interface \
    ports { node_embedding_V_14_address1 { O 8 vector } node_embedding_V_14_ce1 { O 1 bit } node_embedding_V_14_we1 { O 1 bit } node_embedding_V_14_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1617 \
    name node_embedding_V_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_15 \
    op interface \
    ports { node_embedding_V_15_address1 { O 8 vector } node_embedding_V_15_ce1 { O 1 bit } node_embedding_V_15_we1 { O 1 bit } node_embedding_V_15_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1618 \
    name node_embedding_V_16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_16 \
    op interface \
    ports { node_embedding_V_16_address1 { O 8 vector } node_embedding_V_16_ce1 { O 1 bit } node_embedding_V_16_we1 { O 1 bit } node_embedding_V_16_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1619 \
    name node_embedding_V_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_17 \
    op interface \
    ports { node_embedding_V_17_address1 { O 8 vector } node_embedding_V_17_ce1 { O 1 bit } node_embedding_V_17_we1 { O 1 bit } node_embedding_V_17_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1620 \
    name node_embedding_V_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_18 \
    op interface \
    ports { node_embedding_V_18_address1 { O 8 vector } node_embedding_V_18_ce1 { O 1 bit } node_embedding_V_18_we1 { O 1 bit } node_embedding_V_18_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1621 \
    name node_embedding_V_19 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_19 \
    op interface \
    ports { node_embedding_V_19_address1 { O 8 vector } node_embedding_V_19_ce1 { O 1 bit } node_embedding_V_19_we1 { O 1 bit } node_embedding_V_19_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1622 \
    name node_embedding_V_20 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_20 \
    op interface \
    ports { node_embedding_V_20_address1 { O 8 vector } node_embedding_V_20_ce1 { O 1 bit } node_embedding_V_20_we1 { O 1 bit } node_embedding_V_20_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1623 \
    name node_embedding_V_21 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_21 \
    op interface \
    ports { node_embedding_V_21_address1 { O 8 vector } node_embedding_V_21_ce1 { O 1 bit } node_embedding_V_21_we1 { O 1 bit } node_embedding_V_21_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1624 \
    name node_embedding_V_22 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_22 \
    op interface \
    ports { node_embedding_V_22_address1 { O 8 vector } node_embedding_V_22_ce1 { O 1 bit } node_embedding_V_22_we1 { O 1 bit } node_embedding_V_22_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1625 \
    name node_embedding_V_23 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_23 \
    op interface \
    ports { node_embedding_V_23_address1 { O 8 vector } node_embedding_V_23_ce1 { O 1 bit } node_embedding_V_23_we1 { O 1 bit } node_embedding_V_23_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1626 \
    name node_embedding_V_24 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_24 \
    op interface \
    ports { node_embedding_V_24_address1 { O 8 vector } node_embedding_V_24_ce1 { O 1 bit } node_embedding_V_24_we1 { O 1 bit } node_embedding_V_24_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1627 \
    name node_embedding_V_25 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_25 \
    op interface \
    ports { node_embedding_V_25_address1 { O 8 vector } node_embedding_V_25_ce1 { O 1 bit } node_embedding_V_25_we1 { O 1 bit } node_embedding_V_25_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1628 \
    name node_embedding_V_26 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_26 \
    op interface \
    ports { node_embedding_V_26_address1 { O 8 vector } node_embedding_V_26_ce1 { O 1 bit } node_embedding_V_26_we1 { O 1 bit } node_embedding_V_26_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1629 \
    name node_embedding_V_27 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_27 \
    op interface \
    ports { node_embedding_V_27_address1 { O 8 vector } node_embedding_V_27_ce1 { O 1 bit } node_embedding_V_27_we1 { O 1 bit } node_embedding_V_27_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1630 \
    name node_embedding_V_28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_28 \
    op interface \
    ports { node_embedding_V_28_address1 { O 8 vector } node_embedding_V_28_ce1 { O 1 bit } node_embedding_V_28_we1 { O 1 bit } node_embedding_V_28_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1631 \
    name node_embedding_V_29 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_29 \
    op interface \
    ports { node_embedding_V_29_address1 { O 8 vector } node_embedding_V_29_ce1 { O 1 bit } node_embedding_V_29_we1 { O 1 bit } node_embedding_V_29_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1632 \
    name node_embedding_V_30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_30 \
    op interface \
    ports { node_embedding_V_30_address1 { O 8 vector } node_embedding_V_30_ce1 { O 1 bit } node_embedding_V_30_we1 { O 1 bit } node_embedding_V_30_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1633 \
    name node_embedding_V_31 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_31 \
    op interface \
    ports { node_embedding_V_31_address1 { O 8 vector } node_embedding_V_31_ce1 { O 1 bit } node_embedding_V_31_we1 { O 1 bit } node_embedding_V_31_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1634 \
    name node_embedding_V_32 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_32 \
    op interface \
    ports { node_embedding_V_32_address1 { O 8 vector } node_embedding_V_32_ce1 { O 1 bit } node_embedding_V_32_we1 { O 1 bit } node_embedding_V_32_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1635 \
    name node_embedding_V_33 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_33 \
    op interface \
    ports { node_embedding_V_33_address1 { O 8 vector } node_embedding_V_33_ce1 { O 1 bit } node_embedding_V_33_we1 { O 1 bit } node_embedding_V_33_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1636 \
    name node_embedding_V_34 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_34 \
    op interface \
    ports { node_embedding_V_34_address1 { O 8 vector } node_embedding_V_34_ce1 { O 1 bit } node_embedding_V_34_we1 { O 1 bit } node_embedding_V_34_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1637 \
    name node_embedding_V_35 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_35 \
    op interface \
    ports { node_embedding_V_35_address1 { O 8 vector } node_embedding_V_35_ce1 { O 1 bit } node_embedding_V_35_we1 { O 1 bit } node_embedding_V_35_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1638 \
    name node_embedding_V_36 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_36 \
    op interface \
    ports { node_embedding_V_36_address1 { O 8 vector } node_embedding_V_36_ce1 { O 1 bit } node_embedding_V_36_we1 { O 1 bit } node_embedding_V_36_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1639 \
    name node_embedding_V_37 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_37 \
    op interface \
    ports { node_embedding_V_37_address1 { O 8 vector } node_embedding_V_37_ce1 { O 1 bit } node_embedding_V_37_we1 { O 1 bit } node_embedding_V_37_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1640 \
    name node_embedding_V_38 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_38 \
    op interface \
    ports { node_embedding_V_38_address1 { O 8 vector } node_embedding_V_38_ce1 { O 1 bit } node_embedding_V_38_we1 { O 1 bit } node_embedding_V_38_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1641 \
    name node_embedding_V_39 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_39 \
    op interface \
    ports { node_embedding_V_39_address1 { O 8 vector } node_embedding_V_39_ce1 { O 1 bit } node_embedding_V_39_we1 { O 1 bit } node_embedding_V_39_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1642 \
    name node_embedding_V_40 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_40 \
    op interface \
    ports { node_embedding_V_40_address1 { O 8 vector } node_embedding_V_40_ce1 { O 1 bit } node_embedding_V_40_we1 { O 1 bit } node_embedding_V_40_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1643 \
    name node_embedding_V_41 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_41 \
    op interface \
    ports { node_embedding_V_41_address1 { O 8 vector } node_embedding_V_41_ce1 { O 1 bit } node_embedding_V_41_we1 { O 1 bit } node_embedding_V_41_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1644 \
    name node_embedding_V_42 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_42 \
    op interface \
    ports { node_embedding_V_42_address1 { O 8 vector } node_embedding_V_42_ce1 { O 1 bit } node_embedding_V_42_we1 { O 1 bit } node_embedding_V_42_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1645 \
    name node_embedding_V_43 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_43 \
    op interface \
    ports { node_embedding_V_43_address1 { O 8 vector } node_embedding_V_43_ce1 { O 1 bit } node_embedding_V_43_we1 { O 1 bit } node_embedding_V_43_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1646 \
    name node_embedding_V_44 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_44 \
    op interface \
    ports { node_embedding_V_44_address1 { O 8 vector } node_embedding_V_44_ce1 { O 1 bit } node_embedding_V_44_we1 { O 1 bit } node_embedding_V_44_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1647 \
    name node_embedding_V_45 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_45 \
    op interface \
    ports { node_embedding_V_45_address1 { O 8 vector } node_embedding_V_45_ce1 { O 1 bit } node_embedding_V_45_we1 { O 1 bit } node_embedding_V_45_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1648 \
    name node_embedding_V_46 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_46 \
    op interface \
    ports { node_embedding_V_46_address1 { O 8 vector } node_embedding_V_46_ce1 { O 1 bit } node_embedding_V_46_we1 { O 1 bit } node_embedding_V_46_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1649 \
    name node_embedding_V_47 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_47 \
    op interface \
    ports { node_embedding_V_47_address1 { O 8 vector } node_embedding_V_47_ce1 { O 1 bit } node_embedding_V_47_we1 { O 1 bit } node_embedding_V_47_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1650 \
    name node_embedding_V_48 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_48 \
    op interface \
    ports { node_embedding_V_48_address1 { O 8 vector } node_embedding_V_48_ce1 { O 1 bit } node_embedding_V_48_we1 { O 1 bit } node_embedding_V_48_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1651 \
    name node_embedding_V_49 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_49 \
    op interface \
    ports { node_embedding_V_49_address1 { O 8 vector } node_embedding_V_49_ce1 { O 1 bit } node_embedding_V_49_we1 { O 1 bit } node_embedding_V_49_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1652 \
    name node_embedding_V_50 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_50 \
    op interface \
    ports { node_embedding_V_50_address1 { O 8 vector } node_embedding_V_50_ce1 { O 1 bit } node_embedding_V_50_we1 { O 1 bit } node_embedding_V_50_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1653 \
    name node_embedding_V_51 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_51 \
    op interface \
    ports { node_embedding_V_51_address1 { O 8 vector } node_embedding_V_51_ce1 { O 1 bit } node_embedding_V_51_we1 { O 1 bit } node_embedding_V_51_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1654 \
    name node_embedding_V_52 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_52 \
    op interface \
    ports { node_embedding_V_52_address1 { O 8 vector } node_embedding_V_52_ce1 { O 1 bit } node_embedding_V_52_we1 { O 1 bit } node_embedding_V_52_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1655 \
    name node_embedding_V_53 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_53 \
    op interface \
    ports { node_embedding_V_53_address1 { O 8 vector } node_embedding_V_53_ce1 { O 1 bit } node_embedding_V_53_we1 { O 1 bit } node_embedding_V_53_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1656 \
    name node_embedding_V_54 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_54 \
    op interface \
    ports { node_embedding_V_54_address1 { O 8 vector } node_embedding_V_54_ce1 { O 1 bit } node_embedding_V_54_we1 { O 1 bit } node_embedding_V_54_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1657 \
    name node_embedding_V_55 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_55 \
    op interface \
    ports { node_embedding_V_55_address1 { O 8 vector } node_embedding_V_55_ce1 { O 1 bit } node_embedding_V_55_we1 { O 1 bit } node_embedding_V_55_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1658 \
    name node_embedding_V_56 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_56 \
    op interface \
    ports { node_embedding_V_56_address1 { O 8 vector } node_embedding_V_56_ce1 { O 1 bit } node_embedding_V_56_we1 { O 1 bit } node_embedding_V_56_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1659 \
    name node_embedding_V_57 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_57 \
    op interface \
    ports { node_embedding_V_57_address1 { O 8 vector } node_embedding_V_57_ce1 { O 1 bit } node_embedding_V_57_we1 { O 1 bit } node_embedding_V_57_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1660 \
    name node_embedding_V_58 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_58 \
    op interface \
    ports { node_embedding_V_58_address1 { O 8 vector } node_embedding_V_58_ce1 { O 1 bit } node_embedding_V_58_we1 { O 1 bit } node_embedding_V_58_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1661 \
    name node_embedding_V_59 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_59 \
    op interface \
    ports { node_embedding_V_59_address1 { O 8 vector } node_embedding_V_59_ce1 { O 1 bit } node_embedding_V_59_we1 { O 1 bit } node_embedding_V_59_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1662 \
    name node_embedding_V_60 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_60 \
    op interface \
    ports { node_embedding_V_60_address1 { O 8 vector } node_embedding_V_60_ce1 { O 1 bit } node_embedding_V_60_we1 { O 1 bit } node_embedding_V_60_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1663 \
    name node_embedding_V_61 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_61 \
    op interface \
    ports { node_embedding_V_61_address1 { O 8 vector } node_embedding_V_61_ce1 { O 1 bit } node_embedding_V_61_we1 { O 1 bit } node_embedding_V_61_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1664 \
    name node_embedding_V_62 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_62 \
    op interface \
    ports { node_embedding_V_62_address1 { O 8 vector } node_embedding_V_62_ce1 { O 1 bit } node_embedding_V_62_we1 { O 1 bit } node_embedding_V_62_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1665 \
    name node_embedding_V_63 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_63 \
    op interface \
    ports { node_embedding_V_63_address1 { O 8 vector } node_embedding_V_63_ce1 { O 1 bit } node_embedding_V_63_we1 { O 1 bit } node_embedding_V_63_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_63'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1666 \
    name node_embedding_V_64 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_64 \
    op interface \
    ports { node_embedding_V_64_address1 { O 8 vector } node_embedding_V_64_ce1 { O 1 bit } node_embedding_V_64_we1 { O 1 bit } node_embedding_V_64_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_64'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1667 \
    name node_embedding_V_65 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_65 \
    op interface \
    ports { node_embedding_V_65_address1 { O 8 vector } node_embedding_V_65_ce1 { O 1 bit } node_embedding_V_65_we1 { O 1 bit } node_embedding_V_65_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_65'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1668 \
    name node_embedding_V_66 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_66 \
    op interface \
    ports { node_embedding_V_66_address1 { O 8 vector } node_embedding_V_66_ce1 { O 1 bit } node_embedding_V_66_we1 { O 1 bit } node_embedding_V_66_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_66'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1669 \
    name node_embedding_V_67 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_67 \
    op interface \
    ports { node_embedding_V_67_address1 { O 8 vector } node_embedding_V_67_ce1 { O 1 bit } node_embedding_V_67_we1 { O 1 bit } node_embedding_V_67_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_67'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1670 \
    name node_embedding_V_68 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_68 \
    op interface \
    ports { node_embedding_V_68_address1 { O 8 vector } node_embedding_V_68_ce1 { O 1 bit } node_embedding_V_68_we1 { O 1 bit } node_embedding_V_68_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_68'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1671 \
    name node_embedding_V_69 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_69 \
    op interface \
    ports { node_embedding_V_69_address1 { O 8 vector } node_embedding_V_69_ce1 { O 1 bit } node_embedding_V_69_we1 { O 1 bit } node_embedding_V_69_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_69'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1672 \
    name node_embedding_V_70 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_70 \
    op interface \
    ports { node_embedding_V_70_address1 { O 8 vector } node_embedding_V_70_ce1 { O 1 bit } node_embedding_V_70_we1 { O 1 bit } node_embedding_V_70_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_70'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1673 \
    name node_embedding_V_71 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_71 \
    op interface \
    ports { node_embedding_V_71_address1 { O 8 vector } node_embedding_V_71_ce1 { O 1 bit } node_embedding_V_71_we1 { O 1 bit } node_embedding_V_71_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_71'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1674 \
    name node_embedding_V_72 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_72 \
    op interface \
    ports { node_embedding_V_72_address1 { O 8 vector } node_embedding_V_72_ce1 { O 1 bit } node_embedding_V_72_we1 { O 1 bit } node_embedding_V_72_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_72'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1675 \
    name node_embedding_V_73 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_73 \
    op interface \
    ports { node_embedding_V_73_address1 { O 8 vector } node_embedding_V_73_ce1 { O 1 bit } node_embedding_V_73_we1 { O 1 bit } node_embedding_V_73_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_73'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1676 \
    name node_embedding_V_74 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_74 \
    op interface \
    ports { node_embedding_V_74_address1 { O 8 vector } node_embedding_V_74_ce1 { O 1 bit } node_embedding_V_74_we1 { O 1 bit } node_embedding_V_74_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_74'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1677 \
    name node_embedding_V_75 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_75 \
    op interface \
    ports { node_embedding_V_75_address1 { O 8 vector } node_embedding_V_75_ce1 { O 1 bit } node_embedding_V_75_we1 { O 1 bit } node_embedding_V_75_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_75'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1678 \
    name node_embedding_V_76 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_76 \
    op interface \
    ports { node_embedding_V_76_address1 { O 8 vector } node_embedding_V_76_ce1 { O 1 bit } node_embedding_V_76_we1 { O 1 bit } node_embedding_V_76_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_76'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1679 \
    name node_embedding_V_77 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_77 \
    op interface \
    ports { node_embedding_V_77_address1 { O 8 vector } node_embedding_V_77_ce1 { O 1 bit } node_embedding_V_77_we1 { O 1 bit } node_embedding_V_77_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_77'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1680 \
    name node_embedding_V_78 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_78 \
    op interface \
    ports { node_embedding_V_78_address1 { O 8 vector } node_embedding_V_78_ce1 { O 1 bit } node_embedding_V_78_we1 { O 1 bit } node_embedding_V_78_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_78'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1681 \
    name node_embedding_V_79 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_79 \
    op interface \
    ports { node_embedding_V_79_address1 { O 8 vector } node_embedding_V_79_ce1 { O 1 bit } node_embedding_V_79_we1 { O 1 bit } node_embedding_V_79_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_79'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1682 \
    name node_embedding_V_80 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_80 \
    op interface \
    ports { node_embedding_V_80_address1 { O 8 vector } node_embedding_V_80_ce1 { O 1 bit } node_embedding_V_80_we1 { O 1 bit } node_embedding_V_80_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_80'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1683 \
    name node_embedding_V_81 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_81 \
    op interface \
    ports { node_embedding_V_81_address1 { O 8 vector } node_embedding_V_81_ce1 { O 1 bit } node_embedding_V_81_we1 { O 1 bit } node_embedding_V_81_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_81'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1684 \
    name node_embedding_V_82 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_82 \
    op interface \
    ports { node_embedding_V_82_address1 { O 8 vector } node_embedding_V_82_ce1 { O 1 bit } node_embedding_V_82_we1 { O 1 bit } node_embedding_V_82_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_82'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1685 \
    name node_embedding_V_83 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_83 \
    op interface \
    ports { node_embedding_V_83_address1 { O 8 vector } node_embedding_V_83_ce1 { O 1 bit } node_embedding_V_83_we1 { O 1 bit } node_embedding_V_83_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_83'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1686 \
    name node_embedding_V_84 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_84 \
    op interface \
    ports { node_embedding_V_84_address1 { O 8 vector } node_embedding_V_84_ce1 { O 1 bit } node_embedding_V_84_we1 { O 1 bit } node_embedding_V_84_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_84'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1687 \
    name node_embedding_V_85 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_85 \
    op interface \
    ports { node_embedding_V_85_address1 { O 8 vector } node_embedding_V_85_ce1 { O 1 bit } node_embedding_V_85_we1 { O 1 bit } node_embedding_V_85_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_85'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1688 \
    name node_embedding_V_86 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_86 \
    op interface \
    ports { node_embedding_V_86_address1 { O 8 vector } node_embedding_V_86_ce1 { O 1 bit } node_embedding_V_86_we1 { O 1 bit } node_embedding_V_86_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_86'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1689 \
    name node_embedding_V_87 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_87 \
    op interface \
    ports { node_embedding_V_87_address1 { O 8 vector } node_embedding_V_87_ce1 { O 1 bit } node_embedding_V_87_we1 { O 1 bit } node_embedding_V_87_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_87'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1690 \
    name node_embedding_V_88 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_88 \
    op interface \
    ports { node_embedding_V_88_address1 { O 8 vector } node_embedding_V_88_ce1 { O 1 bit } node_embedding_V_88_we1 { O 1 bit } node_embedding_V_88_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_88'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1691 \
    name node_embedding_V_89 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_89 \
    op interface \
    ports { node_embedding_V_89_address1 { O 8 vector } node_embedding_V_89_ce1 { O 1 bit } node_embedding_V_89_we1 { O 1 bit } node_embedding_V_89_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_89'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1692 \
    name node_embedding_V_90 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_90 \
    op interface \
    ports { node_embedding_V_90_address1 { O 8 vector } node_embedding_V_90_ce1 { O 1 bit } node_embedding_V_90_we1 { O 1 bit } node_embedding_V_90_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_90'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1693 \
    name node_embedding_V_91 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_91 \
    op interface \
    ports { node_embedding_V_91_address1 { O 8 vector } node_embedding_V_91_ce1 { O 1 bit } node_embedding_V_91_we1 { O 1 bit } node_embedding_V_91_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_91'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1694 \
    name node_embedding_V_92 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_92 \
    op interface \
    ports { node_embedding_V_92_address1 { O 8 vector } node_embedding_V_92_ce1 { O 1 bit } node_embedding_V_92_we1 { O 1 bit } node_embedding_V_92_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_92'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1695 \
    name node_embedding_V_93 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_93 \
    op interface \
    ports { node_embedding_V_93_address1 { O 8 vector } node_embedding_V_93_ce1 { O 1 bit } node_embedding_V_93_we1 { O 1 bit } node_embedding_V_93_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_93'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1696 \
    name node_embedding_V_94 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_94 \
    op interface \
    ports { node_embedding_V_94_address1 { O 8 vector } node_embedding_V_94_ce1 { O 1 bit } node_embedding_V_94_we1 { O 1 bit } node_embedding_V_94_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_94'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1697 \
    name node_embedding_V_95 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_95 \
    op interface \
    ports { node_embedding_V_95_address1 { O 8 vector } node_embedding_V_95_ce1 { O 1 bit } node_embedding_V_95_we1 { O 1 bit } node_embedding_V_95_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_95'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1698 \
    name node_embedding_V_96 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_96 \
    op interface \
    ports { node_embedding_V_96_address1 { O 8 vector } node_embedding_V_96_ce1 { O 1 bit } node_embedding_V_96_we1 { O 1 bit } node_embedding_V_96_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_96'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1699 \
    name node_embedding_V_97 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_97 \
    op interface \
    ports { node_embedding_V_97_address1 { O 8 vector } node_embedding_V_97_ce1 { O 1 bit } node_embedding_V_97_we1 { O 1 bit } node_embedding_V_97_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_97'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1700 \
    name node_embedding_V_98 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_98 \
    op interface \
    ports { node_embedding_V_98_address1 { O 8 vector } node_embedding_V_98_ce1 { O 1 bit } node_embedding_V_98_we1 { O 1 bit } node_embedding_V_98_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_98'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1701 \
    name node_embedding_V_99 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_99 \
    op interface \
    ports { node_embedding_V_99_address1 { O 8 vector } node_embedding_V_99_ce1 { O 1 bit } node_embedding_V_99_we1 { O 1 bit } node_embedding_V_99_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_99'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1702 \
    name node_embedding_V_100 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_100 \
    op interface \
    ports { node_embedding_V_100_address1 { O 8 vector } node_embedding_V_100_ce1 { O 1 bit } node_embedding_V_100_we1 { O 1 bit } node_embedding_V_100_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_100'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1703 \
    name node_embedding_V_101 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_101 \
    op interface \
    ports { node_embedding_V_101_address1 { O 8 vector } node_embedding_V_101_ce1 { O 1 bit } node_embedding_V_101_we1 { O 1 bit } node_embedding_V_101_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_101'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1704 \
    name node_embedding_V_102 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_102 \
    op interface \
    ports { node_embedding_V_102_address1 { O 8 vector } node_embedding_V_102_ce1 { O 1 bit } node_embedding_V_102_we1 { O 1 bit } node_embedding_V_102_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_102'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1705 \
    name node_embedding_V_103 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_103 \
    op interface \
    ports { node_embedding_V_103_address1 { O 8 vector } node_embedding_V_103_ce1 { O 1 bit } node_embedding_V_103_we1 { O 1 bit } node_embedding_V_103_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_103'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1706 \
    name node_embedding_V_104 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_104 \
    op interface \
    ports { node_embedding_V_104_address1 { O 8 vector } node_embedding_V_104_ce1 { O 1 bit } node_embedding_V_104_we1 { O 1 bit } node_embedding_V_104_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_104'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1707 \
    name node_embedding_V_105 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_105 \
    op interface \
    ports { node_embedding_V_105_address1 { O 8 vector } node_embedding_V_105_ce1 { O 1 bit } node_embedding_V_105_we1 { O 1 bit } node_embedding_V_105_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_105'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1708 \
    name node_embedding_V_106 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_106 \
    op interface \
    ports { node_embedding_V_106_address1 { O 8 vector } node_embedding_V_106_ce1 { O 1 bit } node_embedding_V_106_we1 { O 1 bit } node_embedding_V_106_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_106'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1709 \
    name node_embedding_V_107 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_107 \
    op interface \
    ports { node_embedding_V_107_address1 { O 8 vector } node_embedding_V_107_ce1 { O 1 bit } node_embedding_V_107_we1 { O 1 bit } node_embedding_V_107_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_107'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1710 \
    name node_embedding_V_108 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_108 \
    op interface \
    ports { node_embedding_V_108_address1 { O 8 vector } node_embedding_V_108_ce1 { O 1 bit } node_embedding_V_108_we1 { O 1 bit } node_embedding_V_108_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_108'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1711 \
    name node_embedding_V_109 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_109 \
    op interface \
    ports { node_embedding_V_109_address1 { O 8 vector } node_embedding_V_109_ce1 { O 1 bit } node_embedding_V_109_we1 { O 1 bit } node_embedding_V_109_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_109'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1712 \
    name node_embedding_V_110 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_110 \
    op interface \
    ports { node_embedding_V_110_address1 { O 8 vector } node_embedding_V_110_ce1 { O 1 bit } node_embedding_V_110_we1 { O 1 bit } node_embedding_V_110_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_110'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1713 \
    name node_embedding_V_111 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_111 \
    op interface \
    ports { node_embedding_V_111_address1 { O 8 vector } node_embedding_V_111_ce1 { O 1 bit } node_embedding_V_111_we1 { O 1 bit } node_embedding_V_111_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_111'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1714 \
    name node_embedding_V_112 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_112 \
    op interface \
    ports { node_embedding_V_112_address1 { O 8 vector } node_embedding_V_112_ce1 { O 1 bit } node_embedding_V_112_we1 { O 1 bit } node_embedding_V_112_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_112'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1715 \
    name node_embedding_V_113 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_113 \
    op interface \
    ports { node_embedding_V_113_address1 { O 8 vector } node_embedding_V_113_ce1 { O 1 bit } node_embedding_V_113_we1 { O 1 bit } node_embedding_V_113_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_113'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1716 \
    name node_embedding_V_114 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_114 \
    op interface \
    ports { node_embedding_V_114_address1 { O 8 vector } node_embedding_V_114_ce1 { O 1 bit } node_embedding_V_114_we1 { O 1 bit } node_embedding_V_114_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_114'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1717 \
    name node_embedding_V_115 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_115 \
    op interface \
    ports { node_embedding_V_115_address1 { O 8 vector } node_embedding_V_115_ce1 { O 1 bit } node_embedding_V_115_we1 { O 1 bit } node_embedding_V_115_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_115'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1718 \
    name node_embedding_V_116 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_116 \
    op interface \
    ports { node_embedding_V_116_address1 { O 8 vector } node_embedding_V_116_ce1 { O 1 bit } node_embedding_V_116_we1 { O 1 bit } node_embedding_V_116_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_116'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1719 \
    name node_embedding_V_117 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_117 \
    op interface \
    ports { node_embedding_V_117_address1 { O 8 vector } node_embedding_V_117_ce1 { O 1 bit } node_embedding_V_117_we1 { O 1 bit } node_embedding_V_117_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_117'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1720 \
    name node_embedding_V_118 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_118 \
    op interface \
    ports { node_embedding_V_118_address1 { O 8 vector } node_embedding_V_118_ce1 { O 1 bit } node_embedding_V_118_we1 { O 1 bit } node_embedding_V_118_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_118'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1721 \
    name node_embedding_V_119 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_119 \
    op interface \
    ports { node_embedding_V_119_address1 { O 8 vector } node_embedding_V_119_ce1 { O 1 bit } node_embedding_V_119_we1 { O 1 bit } node_embedding_V_119_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_119'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1722 \
    name node_embedding_V_120 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_120 \
    op interface \
    ports { node_embedding_V_120_address1 { O 8 vector } node_embedding_V_120_ce1 { O 1 bit } node_embedding_V_120_we1 { O 1 bit } node_embedding_V_120_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_120'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1723 \
    name node_embedding_V_121 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_121 \
    op interface \
    ports { node_embedding_V_121_address1 { O 8 vector } node_embedding_V_121_ce1 { O 1 bit } node_embedding_V_121_we1 { O 1 bit } node_embedding_V_121_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_121'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1724 \
    name node_embedding_V_122 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_122 \
    op interface \
    ports { node_embedding_V_122_address1 { O 8 vector } node_embedding_V_122_ce1 { O 1 bit } node_embedding_V_122_we1 { O 1 bit } node_embedding_V_122_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_122'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1725 \
    name node_embedding_V_123 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_123 \
    op interface \
    ports { node_embedding_V_123_address1 { O 8 vector } node_embedding_V_123_ce1 { O 1 bit } node_embedding_V_123_we1 { O 1 bit } node_embedding_V_123_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_123'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1726 \
    name node_embedding_V_124 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_124 \
    op interface \
    ports { node_embedding_V_124_address1 { O 8 vector } node_embedding_V_124_ce1 { O 1 bit } node_embedding_V_124_we1 { O 1 bit } node_embedding_V_124_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_124'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1727 \
    name node_embedding_V_125 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_125 \
    op interface \
    ports { node_embedding_V_125_address1 { O 8 vector } node_embedding_V_125_ce1 { O 1 bit } node_embedding_V_125_we1 { O 1 bit } node_embedding_V_125_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_125'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1728 \
    name node_embedding_V_126 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_126 \
    op interface \
    ports { node_embedding_V_126_address1 { O 8 vector } node_embedding_V_126_ce1 { O 1 bit } node_embedding_V_126_we1 { O 1 bit } node_embedding_V_126_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_126'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1729 \
    name node_embedding_V_127 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_127 \
    op interface \
    ports { node_embedding_V_127_address1 { O 8 vector } node_embedding_V_127_ce1 { O 1 bit } node_embedding_V_127_we1 { O 1 bit } node_embedding_V_127_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_127'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1730 \
    name node_embedding_V_128 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_128 \
    op interface \
    ports { node_embedding_V_128_address1 { O 8 vector } node_embedding_V_128_ce1 { O 1 bit } node_embedding_V_128_we1 { O 1 bit } node_embedding_V_128_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_128'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1731 \
    name node_embedding_V_129 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_129 \
    op interface \
    ports { node_embedding_V_129_address1 { O 8 vector } node_embedding_V_129_ce1 { O 1 bit } node_embedding_V_129_we1 { O 1 bit } node_embedding_V_129_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_129'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1732 \
    name node_embedding_V_130 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_130 \
    op interface \
    ports { node_embedding_V_130_address1 { O 8 vector } node_embedding_V_130_ce1 { O 1 bit } node_embedding_V_130_we1 { O 1 bit } node_embedding_V_130_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_130'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1733 \
    name node_embedding_V_131 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_131 \
    op interface \
    ports { node_embedding_V_131_address1 { O 8 vector } node_embedding_V_131_ce1 { O 1 bit } node_embedding_V_131_we1 { O 1 bit } node_embedding_V_131_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_131'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1734 \
    name node_embedding_V_132 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_132 \
    op interface \
    ports { node_embedding_V_132_address1 { O 8 vector } node_embedding_V_132_ce1 { O 1 bit } node_embedding_V_132_we1 { O 1 bit } node_embedding_V_132_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_132'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1735 \
    name node_embedding_V_133 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_133 \
    op interface \
    ports { node_embedding_V_133_address1 { O 8 vector } node_embedding_V_133_ce1 { O 1 bit } node_embedding_V_133_we1 { O 1 bit } node_embedding_V_133_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_133'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1736 \
    name node_embedding_V_134 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_134 \
    op interface \
    ports { node_embedding_V_134_address1 { O 8 vector } node_embedding_V_134_ce1 { O 1 bit } node_embedding_V_134_we1 { O 1 bit } node_embedding_V_134_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_134'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1737 \
    name node_embedding_V_135 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_135 \
    op interface \
    ports { node_embedding_V_135_address1 { O 8 vector } node_embedding_V_135_ce1 { O 1 bit } node_embedding_V_135_we1 { O 1 bit } node_embedding_V_135_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_135'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1738 \
    name node_embedding_V_136 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_136 \
    op interface \
    ports { node_embedding_V_136_address1 { O 8 vector } node_embedding_V_136_ce1 { O 1 bit } node_embedding_V_136_we1 { O 1 bit } node_embedding_V_136_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_136'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1739 \
    name node_embedding_V_137 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_137 \
    op interface \
    ports { node_embedding_V_137_address1 { O 8 vector } node_embedding_V_137_ce1 { O 1 bit } node_embedding_V_137_we1 { O 1 bit } node_embedding_V_137_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_137'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1740 \
    name node_embedding_V_138 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_138 \
    op interface \
    ports { node_embedding_V_138_address1 { O 8 vector } node_embedding_V_138_ce1 { O 1 bit } node_embedding_V_138_we1 { O 1 bit } node_embedding_V_138_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_138'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1741 \
    name node_embedding_V_139 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_139 \
    op interface \
    ports { node_embedding_V_139_address1 { O 8 vector } node_embedding_V_139_ce1 { O 1 bit } node_embedding_V_139_we1 { O 1 bit } node_embedding_V_139_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_139'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1742 \
    name node_embedding_V_140 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_140 \
    op interface \
    ports { node_embedding_V_140_address1 { O 8 vector } node_embedding_V_140_ce1 { O 1 bit } node_embedding_V_140_we1 { O 1 bit } node_embedding_V_140_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_140'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1743 \
    name node_embedding_V_141 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_141 \
    op interface \
    ports { node_embedding_V_141_address1 { O 8 vector } node_embedding_V_141_ce1 { O 1 bit } node_embedding_V_141_we1 { O 1 bit } node_embedding_V_141_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_141'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1744 \
    name node_embedding_V_142 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_142 \
    op interface \
    ports { node_embedding_V_142_address1 { O 8 vector } node_embedding_V_142_ce1 { O 1 bit } node_embedding_V_142_we1 { O 1 bit } node_embedding_V_142_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_142'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1745 \
    name node_embedding_V_143 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_143 \
    op interface \
    ports { node_embedding_V_143_address1 { O 8 vector } node_embedding_V_143_ce1 { O 1 bit } node_embedding_V_143_we1 { O 1 bit } node_embedding_V_143_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_143'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1746 \
    name node_embedding_V_144 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_144 \
    op interface \
    ports { node_embedding_V_144_address1 { O 8 vector } node_embedding_V_144_ce1 { O 1 bit } node_embedding_V_144_we1 { O 1 bit } node_embedding_V_144_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_144'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1747 \
    name node_embedding_V_145 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_145 \
    op interface \
    ports { node_embedding_V_145_address1 { O 8 vector } node_embedding_V_145_ce1 { O 1 bit } node_embedding_V_145_we1 { O 1 bit } node_embedding_V_145_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_145'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1748 \
    name node_embedding_V_146 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_146 \
    op interface \
    ports { node_embedding_V_146_address1 { O 8 vector } node_embedding_V_146_ce1 { O 1 bit } node_embedding_V_146_we1 { O 1 bit } node_embedding_V_146_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_146'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1749 \
    name node_embedding_V_147 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_147 \
    op interface \
    ports { node_embedding_V_147_address1 { O 8 vector } node_embedding_V_147_ce1 { O 1 bit } node_embedding_V_147_we1 { O 1 bit } node_embedding_V_147_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_147'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1750 \
    name node_embedding_V_148 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_148 \
    op interface \
    ports { node_embedding_V_148_address1 { O 8 vector } node_embedding_V_148_ce1 { O 1 bit } node_embedding_V_148_we1 { O 1 bit } node_embedding_V_148_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_148'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1751 \
    name node_embedding_V_149 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_149 \
    op interface \
    ports { node_embedding_V_149_address1 { O 8 vector } node_embedding_V_149_ce1 { O 1 bit } node_embedding_V_149_we1 { O 1 bit } node_embedding_V_149_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_149'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1752 \
    name node_embedding_V_150 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_150 \
    op interface \
    ports { node_embedding_V_150_address1 { O 8 vector } node_embedding_V_150_ce1 { O 1 bit } node_embedding_V_150_we1 { O 1 bit } node_embedding_V_150_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_150'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1753 \
    name node_embedding_V_151 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_151 \
    op interface \
    ports { node_embedding_V_151_address1 { O 8 vector } node_embedding_V_151_ce1 { O 1 bit } node_embedding_V_151_we1 { O 1 bit } node_embedding_V_151_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_151'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1754 \
    name node_embedding_V_152 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_152 \
    op interface \
    ports { node_embedding_V_152_address1 { O 8 vector } node_embedding_V_152_ce1 { O 1 bit } node_embedding_V_152_we1 { O 1 bit } node_embedding_V_152_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_152'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1755 \
    name node_embedding_V_153 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_153 \
    op interface \
    ports { node_embedding_V_153_address1 { O 8 vector } node_embedding_V_153_ce1 { O 1 bit } node_embedding_V_153_we1 { O 1 bit } node_embedding_V_153_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_153'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1756 \
    name node_embedding_V_154 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_154 \
    op interface \
    ports { node_embedding_V_154_address1 { O 8 vector } node_embedding_V_154_ce1 { O 1 bit } node_embedding_V_154_we1 { O 1 bit } node_embedding_V_154_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_154'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1757 \
    name node_embedding_V_155 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_155 \
    op interface \
    ports { node_embedding_V_155_address1 { O 8 vector } node_embedding_V_155_ce1 { O 1 bit } node_embedding_V_155_we1 { O 1 bit } node_embedding_V_155_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_155'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1758 \
    name node_embedding_V_156 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_156 \
    op interface \
    ports { node_embedding_V_156_address1 { O 8 vector } node_embedding_V_156_ce1 { O 1 bit } node_embedding_V_156_we1 { O 1 bit } node_embedding_V_156_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_156'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1759 \
    name node_embedding_V_157 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_157 \
    op interface \
    ports { node_embedding_V_157_address1 { O 8 vector } node_embedding_V_157_ce1 { O 1 bit } node_embedding_V_157_we1 { O 1 bit } node_embedding_V_157_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_157'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1760 \
    name node_embedding_V_158 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_158 \
    op interface \
    ports { node_embedding_V_158_address1 { O 8 vector } node_embedding_V_158_ce1 { O 1 bit } node_embedding_V_158_we1 { O 1 bit } node_embedding_V_158_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_158'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1761 \
    name node_embedding_V_159 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_159 \
    op interface \
    ports { node_embedding_V_159_address1 { O 8 vector } node_embedding_V_159_ce1 { O 1 bit } node_embedding_V_159_we1 { O 1 bit } node_embedding_V_159_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_159'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1762 \
    name node_embedding_V_160 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_160 \
    op interface \
    ports { node_embedding_V_160_address1 { O 8 vector } node_embedding_V_160_ce1 { O 1 bit } node_embedding_V_160_we1 { O 1 bit } node_embedding_V_160_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_160'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1763 \
    name node_embedding_V_161 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_161 \
    op interface \
    ports { node_embedding_V_161_address1 { O 8 vector } node_embedding_V_161_ce1 { O 1 bit } node_embedding_V_161_we1 { O 1 bit } node_embedding_V_161_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_161'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1764 \
    name node_embedding_V_162 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_162 \
    op interface \
    ports { node_embedding_V_162_address1 { O 8 vector } node_embedding_V_162_ce1 { O 1 bit } node_embedding_V_162_we1 { O 1 bit } node_embedding_V_162_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_162'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1765 \
    name node_embedding_V_163 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_163 \
    op interface \
    ports { node_embedding_V_163_address1 { O 8 vector } node_embedding_V_163_ce1 { O 1 bit } node_embedding_V_163_we1 { O 1 bit } node_embedding_V_163_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_163'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1766 \
    name node_embedding_V_164 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_164 \
    op interface \
    ports { node_embedding_V_164_address1 { O 8 vector } node_embedding_V_164_ce1 { O 1 bit } node_embedding_V_164_we1 { O 1 bit } node_embedding_V_164_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_164'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1767 \
    name node_embedding_V_165 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_165 \
    op interface \
    ports { node_embedding_V_165_address1 { O 8 vector } node_embedding_V_165_ce1 { O 1 bit } node_embedding_V_165_we1 { O 1 bit } node_embedding_V_165_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_165'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1768 \
    name node_embedding_V_166 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_166 \
    op interface \
    ports { node_embedding_V_166_address1 { O 8 vector } node_embedding_V_166_ce1 { O 1 bit } node_embedding_V_166_we1 { O 1 bit } node_embedding_V_166_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_166'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1769 \
    name node_embedding_V_167 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_167 \
    op interface \
    ports { node_embedding_V_167_address1 { O 8 vector } node_embedding_V_167_ce1 { O 1 bit } node_embedding_V_167_we1 { O 1 bit } node_embedding_V_167_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_167'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1770 \
    name node_embedding_V_168 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_168 \
    op interface \
    ports { node_embedding_V_168_address1 { O 8 vector } node_embedding_V_168_ce1 { O 1 bit } node_embedding_V_168_we1 { O 1 bit } node_embedding_V_168_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_168'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1771 \
    name node_embedding_V_169 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_169 \
    op interface \
    ports { node_embedding_V_169_address1 { O 8 vector } node_embedding_V_169_ce1 { O 1 bit } node_embedding_V_169_we1 { O 1 bit } node_embedding_V_169_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_169'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1772 \
    name node_embedding_V_170 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_170 \
    op interface \
    ports { node_embedding_V_170_address1 { O 8 vector } node_embedding_V_170_ce1 { O 1 bit } node_embedding_V_170_we1 { O 1 bit } node_embedding_V_170_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_170'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1773 \
    name node_embedding_V_171 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_171 \
    op interface \
    ports { node_embedding_V_171_address1 { O 8 vector } node_embedding_V_171_ce1 { O 1 bit } node_embedding_V_171_we1 { O 1 bit } node_embedding_V_171_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_171'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1774 \
    name node_embedding_V_172 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_172 \
    op interface \
    ports { node_embedding_V_172_address1 { O 8 vector } node_embedding_V_172_ce1 { O 1 bit } node_embedding_V_172_we1 { O 1 bit } node_embedding_V_172_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_172'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1775 \
    name node_embedding_V_173 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_173 \
    op interface \
    ports { node_embedding_V_173_address1 { O 8 vector } node_embedding_V_173_ce1 { O 1 bit } node_embedding_V_173_we1 { O 1 bit } node_embedding_V_173_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_173'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1776 \
    name node_embedding_V_174 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_174 \
    op interface \
    ports { node_embedding_V_174_address1 { O 8 vector } node_embedding_V_174_ce1 { O 1 bit } node_embedding_V_174_we1 { O 1 bit } node_embedding_V_174_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_174'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1777 \
    name node_embedding_V_175 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_175 \
    op interface \
    ports { node_embedding_V_175_address1 { O 8 vector } node_embedding_V_175_ce1 { O 1 bit } node_embedding_V_175_we1 { O 1 bit } node_embedding_V_175_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_175'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1778 \
    name node_embedding_V_176 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_176 \
    op interface \
    ports { node_embedding_V_176_address1 { O 8 vector } node_embedding_V_176_ce1 { O 1 bit } node_embedding_V_176_we1 { O 1 bit } node_embedding_V_176_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_176'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1779 \
    name node_embedding_V_177 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_177 \
    op interface \
    ports { node_embedding_V_177_address1 { O 8 vector } node_embedding_V_177_ce1 { O 1 bit } node_embedding_V_177_we1 { O 1 bit } node_embedding_V_177_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_177'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1780 \
    name node_embedding_V_178 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_178 \
    op interface \
    ports { node_embedding_V_178_address1 { O 8 vector } node_embedding_V_178_ce1 { O 1 bit } node_embedding_V_178_we1 { O 1 bit } node_embedding_V_178_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_178'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1781 \
    name node_embedding_V_179 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_179 \
    op interface \
    ports { node_embedding_V_179_address1 { O 8 vector } node_embedding_V_179_ce1 { O 1 bit } node_embedding_V_179_we1 { O 1 bit } node_embedding_V_179_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_179'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1782 \
    name node_embedding_V_180 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_180 \
    op interface \
    ports { node_embedding_V_180_address1 { O 8 vector } node_embedding_V_180_ce1 { O 1 bit } node_embedding_V_180_we1 { O 1 bit } node_embedding_V_180_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_180'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1783 \
    name node_embedding_V_181 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_181 \
    op interface \
    ports { node_embedding_V_181_address1 { O 8 vector } node_embedding_V_181_ce1 { O 1 bit } node_embedding_V_181_we1 { O 1 bit } node_embedding_V_181_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_181'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1784 \
    name node_embedding_V_182 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_182 \
    op interface \
    ports { node_embedding_V_182_address1 { O 8 vector } node_embedding_V_182_ce1 { O 1 bit } node_embedding_V_182_we1 { O 1 bit } node_embedding_V_182_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_182'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1785 \
    name node_embedding_V_183 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_183 \
    op interface \
    ports { node_embedding_V_183_address1 { O 8 vector } node_embedding_V_183_ce1 { O 1 bit } node_embedding_V_183_we1 { O 1 bit } node_embedding_V_183_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_183'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1786 \
    name node_embedding_V_184 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_184 \
    op interface \
    ports { node_embedding_V_184_address1 { O 8 vector } node_embedding_V_184_ce1 { O 1 bit } node_embedding_V_184_we1 { O 1 bit } node_embedding_V_184_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_184'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1787 \
    name node_embedding_V_185 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_185 \
    op interface \
    ports { node_embedding_V_185_address1 { O 8 vector } node_embedding_V_185_ce1 { O 1 bit } node_embedding_V_185_we1 { O 1 bit } node_embedding_V_185_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_185'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1788 \
    name node_embedding_V_186 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_186 \
    op interface \
    ports { node_embedding_V_186_address1 { O 8 vector } node_embedding_V_186_ce1 { O 1 bit } node_embedding_V_186_we1 { O 1 bit } node_embedding_V_186_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_186'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1789 \
    name node_embedding_V_187 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_187 \
    op interface \
    ports { node_embedding_V_187_address1 { O 8 vector } node_embedding_V_187_ce1 { O 1 bit } node_embedding_V_187_we1 { O 1 bit } node_embedding_V_187_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_187'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1790 \
    name node_embedding_V_188 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_188 \
    op interface \
    ports { node_embedding_V_188_address1 { O 8 vector } node_embedding_V_188_ce1 { O 1 bit } node_embedding_V_188_we1 { O 1 bit } node_embedding_V_188_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_188'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1791 \
    name node_embedding_V_189 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_189 \
    op interface \
    ports { node_embedding_V_189_address1 { O 8 vector } node_embedding_V_189_ce1 { O 1 bit } node_embedding_V_189_we1 { O 1 bit } node_embedding_V_189_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_189'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1792 \
    name node_embedding_V_190 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_190 \
    op interface \
    ports { node_embedding_V_190_address1 { O 8 vector } node_embedding_V_190_ce1 { O 1 bit } node_embedding_V_190_we1 { O 1 bit } node_embedding_V_190_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_190'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1793 \
    name node_embedding_V_191 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_191 \
    op interface \
    ports { node_embedding_V_191_address1 { O 8 vector } node_embedding_V_191_ce1 { O 1 bit } node_embedding_V_191_we1 { O 1 bit } node_embedding_V_191_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_191'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1794 \
    name node_embedding_V_192 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_192 \
    op interface \
    ports { node_embedding_V_192_address1 { O 8 vector } node_embedding_V_192_ce1 { O 1 bit } node_embedding_V_192_we1 { O 1 bit } node_embedding_V_192_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_192'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1795 \
    name node_embedding_V_193 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_193 \
    op interface \
    ports { node_embedding_V_193_address1 { O 8 vector } node_embedding_V_193_ce1 { O 1 bit } node_embedding_V_193_we1 { O 1 bit } node_embedding_V_193_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_193'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1796 \
    name node_embedding_V_194 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_194 \
    op interface \
    ports { node_embedding_V_194_address1 { O 8 vector } node_embedding_V_194_ce1 { O 1 bit } node_embedding_V_194_we1 { O 1 bit } node_embedding_V_194_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_194'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1797 \
    name node_embedding_V_195 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_195 \
    op interface \
    ports { node_embedding_V_195_address1 { O 8 vector } node_embedding_V_195_ce1 { O 1 bit } node_embedding_V_195_we1 { O 1 bit } node_embedding_V_195_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_195'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1798 \
    name node_embedding_V_196 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_196 \
    op interface \
    ports { node_embedding_V_196_address1 { O 8 vector } node_embedding_V_196_ce1 { O 1 bit } node_embedding_V_196_we1 { O 1 bit } node_embedding_V_196_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_196'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1799 \
    name node_embedding_V_197 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_197 \
    op interface \
    ports { node_embedding_V_197_address1 { O 8 vector } node_embedding_V_197_ce1 { O 1 bit } node_embedding_V_197_we1 { O 1 bit } node_embedding_V_197_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_197'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1800 \
    name node_embedding_V_198 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_198 \
    op interface \
    ports { node_embedding_V_198_address1 { O 8 vector } node_embedding_V_198_ce1 { O 1 bit } node_embedding_V_198_we1 { O 1 bit } node_embedding_V_198_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_198'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1801 \
    name node_embedding_V_199 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_199 \
    op interface \
    ports { node_embedding_V_199_address1 { O 8 vector } node_embedding_V_199_ce1 { O 1 bit } node_embedding_V_199_we1 { O 1 bit } node_embedding_V_199_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_199'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1802 \
    name node_embedding_V_200 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_200 \
    op interface \
    ports { node_embedding_V_200_address1 { O 8 vector } node_embedding_V_200_ce1 { O 1 bit } node_embedding_V_200_we1 { O 1 bit } node_embedding_V_200_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_200'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1803 \
    name node_embedding_V_201 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_201 \
    op interface \
    ports { node_embedding_V_201_address1 { O 8 vector } node_embedding_V_201_ce1 { O 1 bit } node_embedding_V_201_we1 { O 1 bit } node_embedding_V_201_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_201'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1804 \
    name node_embedding_V_202 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_202 \
    op interface \
    ports { node_embedding_V_202_address1 { O 8 vector } node_embedding_V_202_ce1 { O 1 bit } node_embedding_V_202_we1 { O 1 bit } node_embedding_V_202_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_202'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1805 \
    name node_embedding_V_203 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_203 \
    op interface \
    ports { node_embedding_V_203_address1 { O 8 vector } node_embedding_V_203_ce1 { O 1 bit } node_embedding_V_203_we1 { O 1 bit } node_embedding_V_203_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_203'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1806 \
    name node_embedding_V_204 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_204 \
    op interface \
    ports { node_embedding_V_204_address1 { O 8 vector } node_embedding_V_204_ce1 { O 1 bit } node_embedding_V_204_we1 { O 1 bit } node_embedding_V_204_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_204'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1807 \
    name node_embedding_V_205 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_205 \
    op interface \
    ports { node_embedding_V_205_address1 { O 8 vector } node_embedding_V_205_ce1 { O 1 bit } node_embedding_V_205_we1 { O 1 bit } node_embedding_V_205_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_205'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1808 \
    name node_embedding_V_206 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_206 \
    op interface \
    ports { node_embedding_V_206_address1 { O 8 vector } node_embedding_V_206_ce1 { O 1 bit } node_embedding_V_206_we1 { O 1 bit } node_embedding_V_206_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_206'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1809 \
    name node_embedding_V_207 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_207 \
    op interface \
    ports { node_embedding_V_207_address1 { O 8 vector } node_embedding_V_207_ce1 { O 1 bit } node_embedding_V_207_we1 { O 1 bit } node_embedding_V_207_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_207'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1810 \
    name node_embedding_V_208 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_208 \
    op interface \
    ports { node_embedding_V_208_address1 { O 8 vector } node_embedding_V_208_ce1 { O 1 bit } node_embedding_V_208_we1 { O 1 bit } node_embedding_V_208_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_208'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1811 \
    name node_embedding_V_209 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_209 \
    op interface \
    ports { node_embedding_V_209_address1 { O 8 vector } node_embedding_V_209_ce1 { O 1 bit } node_embedding_V_209_we1 { O 1 bit } node_embedding_V_209_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_209'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1812 \
    name node_embedding_V_210 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_210 \
    op interface \
    ports { node_embedding_V_210_address1 { O 8 vector } node_embedding_V_210_ce1 { O 1 bit } node_embedding_V_210_we1 { O 1 bit } node_embedding_V_210_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_210'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1813 \
    name node_embedding_V_211 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_211 \
    op interface \
    ports { node_embedding_V_211_address1 { O 8 vector } node_embedding_V_211_ce1 { O 1 bit } node_embedding_V_211_we1 { O 1 bit } node_embedding_V_211_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_211'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1814 \
    name node_embedding_V_212 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_212 \
    op interface \
    ports { node_embedding_V_212_address1 { O 8 vector } node_embedding_V_212_ce1 { O 1 bit } node_embedding_V_212_we1 { O 1 bit } node_embedding_V_212_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_212'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1815 \
    name node_embedding_V_213 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_213 \
    op interface \
    ports { node_embedding_V_213_address1 { O 8 vector } node_embedding_V_213_ce1 { O 1 bit } node_embedding_V_213_we1 { O 1 bit } node_embedding_V_213_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_213'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1816 \
    name node_embedding_V_214 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_214 \
    op interface \
    ports { node_embedding_V_214_address1 { O 8 vector } node_embedding_V_214_ce1 { O 1 bit } node_embedding_V_214_we1 { O 1 bit } node_embedding_V_214_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_214'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1817 \
    name node_embedding_V_215 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_215 \
    op interface \
    ports { node_embedding_V_215_address1 { O 8 vector } node_embedding_V_215_ce1 { O 1 bit } node_embedding_V_215_we1 { O 1 bit } node_embedding_V_215_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_215'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1818 \
    name node_embedding_V_216 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_216 \
    op interface \
    ports { node_embedding_V_216_address1 { O 8 vector } node_embedding_V_216_ce1 { O 1 bit } node_embedding_V_216_we1 { O 1 bit } node_embedding_V_216_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_216'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1819 \
    name node_embedding_V_217 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_217 \
    op interface \
    ports { node_embedding_V_217_address1 { O 8 vector } node_embedding_V_217_ce1 { O 1 bit } node_embedding_V_217_we1 { O 1 bit } node_embedding_V_217_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_217'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1820 \
    name node_embedding_V_218 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_218 \
    op interface \
    ports { node_embedding_V_218_address1 { O 8 vector } node_embedding_V_218_ce1 { O 1 bit } node_embedding_V_218_we1 { O 1 bit } node_embedding_V_218_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_218'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1821 \
    name node_embedding_V_219 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_219 \
    op interface \
    ports { node_embedding_V_219_address1 { O 8 vector } node_embedding_V_219_ce1 { O 1 bit } node_embedding_V_219_we1 { O 1 bit } node_embedding_V_219_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_219'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1822 \
    name node_embedding_V_220 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_220 \
    op interface \
    ports { node_embedding_V_220_address1 { O 8 vector } node_embedding_V_220_ce1 { O 1 bit } node_embedding_V_220_we1 { O 1 bit } node_embedding_V_220_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_220'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1823 \
    name node_embedding_V_221 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_221 \
    op interface \
    ports { node_embedding_V_221_address1 { O 8 vector } node_embedding_V_221_ce1 { O 1 bit } node_embedding_V_221_we1 { O 1 bit } node_embedding_V_221_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_221'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1824 \
    name node_embedding_V_222 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_222 \
    op interface \
    ports { node_embedding_V_222_address1 { O 8 vector } node_embedding_V_222_ce1 { O 1 bit } node_embedding_V_222_we1 { O 1 bit } node_embedding_V_222_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_222'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1825 \
    name node_embedding_V_223 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_223 \
    op interface \
    ports { node_embedding_V_223_address1 { O 8 vector } node_embedding_V_223_ce1 { O 1 bit } node_embedding_V_223_we1 { O 1 bit } node_embedding_V_223_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_223'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1826 \
    name node_embedding_V_224 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_224 \
    op interface \
    ports { node_embedding_V_224_address1 { O 8 vector } node_embedding_V_224_ce1 { O 1 bit } node_embedding_V_224_we1 { O 1 bit } node_embedding_V_224_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_224'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1827 \
    name node_embedding_V_225 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_225 \
    op interface \
    ports { node_embedding_V_225_address1 { O 8 vector } node_embedding_V_225_ce1 { O 1 bit } node_embedding_V_225_we1 { O 1 bit } node_embedding_V_225_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_225'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1828 \
    name node_embedding_V_226 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_226 \
    op interface \
    ports { node_embedding_V_226_address1 { O 8 vector } node_embedding_V_226_ce1 { O 1 bit } node_embedding_V_226_we1 { O 1 bit } node_embedding_V_226_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_226'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1829 \
    name node_embedding_V_227 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_227 \
    op interface \
    ports { node_embedding_V_227_address1 { O 8 vector } node_embedding_V_227_ce1 { O 1 bit } node_embedding_V_227_we1 { O 1 bit } node_embedding_V_227_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_227'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1830 \
    name node_embedding_V_228 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_228 \
    op interface \
    ports { node_embedding_V_228_address1 { O 8 vector } node_embedding_V_228_ce1 { O 1 bit } node_embedding_V_228_we1 { O 1 bit } node_embedding_V_228_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_228'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1831 \
    name node_embedding_V_229 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_229 \
    op interface \
    ports { node_embedding_V_229_address1 { O 8 vector } node_embedding_V_229_ce1 { O 1 bit } node_embedding_V_229_we1 { O 1 bit } node_embedding_V_229_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_229'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1832 \
    name node_embedding_V_230 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_230 \
    op interface \
    ports { node_embedding_V_230_address1 { O 8 vector } node_embedding_V_230_ce1 { O 1 bit } node_embedding_V_230_we1 { O 1 bit } node_embedding_V_230_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_230'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1833 \
    name node_embedding_V_231 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_231 \
    op interface \
    ports { node_embedding_V_231_address1 { O 8 vector } node_embedding_V_231_ce1 { O 1 bit } node_embedding_V_231_we1 { O 1 bit } node_embedding_V_231_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_231'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1834 \
    name node_embedding_V_232 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_232 \
    op interface \
    ports { node_embedding_V_232_address1 { O 8 vector } node_embedding_V_232_ce1 { O 1 bit } node_embedding_V_232_we1 { O 1 bit } node_embedding_V_232_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_232'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1835 \
    name node_embedding_V_233 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_233 \
    op interface \
    ports { node_embedding_V_233_address1 { O 8 vector } node_embedding_V_233_ce1 { O 1 bit } node_embedding_V_233_we1 { O 1 bit } node_embedding_V_233_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_233'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1836 \
    name node_embedding_V_234 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_234 \
    op interface \
    ports { node_embedding_V_234_address1 { O 8 vector } node_embedding_V_234_ce1 { O 1 bit } node_embedding_V_234_we1 { O 1 bit } node_embedding_V_234_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_234'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1837 \
    name node_embedding_V_235 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_235 \
    op interface \
    ports { node_embedding_V_235_address1 { O 8 vector } node_embedding_V_235_ce1 { O 1 bit } node_embedding_V_235_we1 { O 1 bit } node_embedding_V_235_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_235'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1838 \
    name node_embedding_V_236 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_236 \
    op interface \
    ports { node_embedding_V_236_address1 { O 8 vector } node_embedding_V_236_ce1 { O 1 bit } node_embedding_V_236_we1 { O 1 bit } node_embedding_V_236_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_236'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1839 \
    name node_embedding_V_237 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_237 \
    op interface \
    ports { node_embedding_V_237_address1 { O 8 vector } node_embedding_V_237_ce1 { O 1 bit } node_embedding_V_237_we1 { O 1 bit } node_embedding_V_237_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_237'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1840 \
    name node_embedding_V_238 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_238 \
    op interface \
    ports { node_embedding_V_238_address1 { O 8 vector } node_embedding_V_238_ce1 { O 1 bit } node_embedding_V_238_we1 { O 1 bit } node_embedding_V_238_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_238'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1841 \
    name node_embedding_V_239 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_239 \
    op interface \
    ports { node_embedding_V_239_address1 { O 8 vector } node_embedding_V_239_ce1 { O 1 bit } node_embedding_V_239_we1 { O 1 bit } node_embedding_V_239_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_239'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1842 \
    name node_embedding_V_240 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_240 \
    op interface \
    ports { node_embedding_V_240_address1 { O 8 vector } node_embedding_V_240_ce1 { O 1 bit } node_embedding_V_240_we1 { O 1 bit } node_embedding_V_240_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_240'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1843 \
    name node_embedding_V_241 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_241 \
    op interface \
    ports { node_embedding_V_241_address1 { O 8 vector } node_embedding_V_241_ce1 { O 1 bit } node_embedding_V_241_we1 { O 1 bit } node_embedding_V_241_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_241'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1844 \
    name node_embedding_V_242 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_242 \
    op interface \
    ports { node_embedding_V_242_address1 { O 8 vector } node_embedding_V_242_ce1 { O 1 bit } node_embedding_V_242_we1 { O 1 bit } node_embedding_V_242_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_242'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1845 \
    name node_embedding_V_243 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_243 \
    op interface \
    ports { node_embedding_V_243_address1 { O 8 vector } node_embedding_V_243_ce1 { O 1 bit } node_embedding_V_243_we1 { O 1 bit } node_embedding_V_243_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_243'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1846 \
    name node_embedding_V_244 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_244 \
    op interface \
    ports { node_embedding_V_244_address1 { O 8 vector } node_embedding_V_244_ce1 { O 1 bit } node_embedding_V_244_we1 { O 1 bit } node_embedding_V_244_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_244'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1847 \
    name node_embedding_V_245 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_245 \
    op interface \
    ports { node_embedding_V_245_address1 { O 8 vector } node_embedding_V_245_ce1 { O 1 bit } node_embedding_V_245_we1 { O 1 bit } node_embedding_V_245_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_245'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1848 \
    name node_embedding_V_246 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_246 \
    op interface \
    ports { node_embedding_V_246_address1 { O 8 vector } node_embedding_V_246_ce1 { O 1 bit } node_embedding_V_246_we1 { O 1 bit } node_embedding_V_246_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_246'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1849 \
    name node_embedding_V_247 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_247 \
    op interface \
    ports { node_embedding_V_247_address1 { O 8 vector } node_embedding_V_247_ce1 { O 1 bit } node_embedding_V_247_we1 { O 1 bit } node_embedding_V_247_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_247'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1850 \
    name node_embedding_V_248 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_248 \
    op interface \
    ports { node_embedding_V_248_address1 { O 8 vector } node_embedding_V_248_ce1 { O 1 bit } node_embedding_V_248_we1 { O 1 bit } node_embedding_V_248_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_248'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1851 \
    name node_embedding_V_249 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_249 \
    op interface \
    ports { node_embedding_V_249_address1 { O 8 vector } node_embedding_V_249_ce1 { O 1 bit } node_embedding_V_249_we1 { O 1 bit } node_embedding_V_249_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_249'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1852 \
    name node_embedding_V_250 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_250 \
    op interface \
    ports { node_embedding_V_250_address1 { O 8 vector } node_embedding_V_250_ce1 { O 1 bit } node_embedding_V_250_we1 { O 1 bit } node_embedding_V_250_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_250'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1853 \
    name node_embedding_V_251 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_251 \
    op interface \
    ports { node_embedding_V_251_address1 { O 8 vector } node_embedding_V_251_ce1 { O 1 bit } node_embedding_V_251_we1 { O 1 bit } node_embedding_V_251_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_251'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1854 \
    name node_embedding_V_252 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_252 \
    op interface \
    ports { node_embedding_V_252_address1 { O 8 vector } node_embedding_V_252_ce1 { O 1 bit } node_embedding_V_252_we1 { O 1 bit } node_embedding_V_252_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_252'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1855 \
    name node_embedding_V_253 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_253 \
    op interface \
    ports { node_embedding_V_253_address1 { O 8 vector } node_embedding_V_253_ce1 { O 1 bit } node_embedding_V_253_we1 { O 1 bit } node_embedding_V_253_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_253'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1856 \
    name node_embedding_V_254 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_254 \
    op interface \
    ports { node_embedding_V_254_address1 { O 8 vector } node_embedding_V_254_ce1 { O 1 bit } node_embedding_V_254_we1 { O 1 bit } node_embedding_V_254_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_254'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1857 \
    name node_embedding_V_255 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_255 \
    op interface \
    ports { node_embedding_V_255_address1 { O 8 vector } node_embedding_V_255_ce1 { O 1 bit } node_embedding_V_255_we1 { O 1 bit } node_embedding_V_255_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_255'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1858 \
    name node_embedding_V_256 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_256 \
    op interface \
    ports { node_embedding_V_256_address1 { O 8 vector } node_embedding_V_256_ce1 { O 1 bit } node_embedding_V_256_we1 { O 1 bit } node_embedding_V_256_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_256'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1859 \
    name node_embedding_V_257 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_257 \
    op interface \
    ports { node_embedding_V_257_address1 { O 8 vector } node_embedding_V_257_ce1 { O 1 bit } node_embedding_V_257_we1 { O 1 bit } node_embedding_V_257_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_257'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1860 \
    name node_embedding_V_258 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_258 \
    op interface \
    ports { node_embedding_V_258_address1 { O 8 vector } node_embedding_V_258_ce1 { O 1 bit } node_embedding_V_258_we1 { O 1 bit } node_embedding_V_258_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_258'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1861 \
    name node_embedding_V_259 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_259 \
    op interface \
    ports { node_embedding_V_259_address1 { O 8 vector } node_embedding_V_259_ce1 { O 1 bit } node_embedding_V_259_we1 { O 1 bit } node_embedding_V_259_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_259'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1862 \
    name node_embedding_V_260 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_260 \
    op interface \
    ports { node_embedding_V_260_address1 { O 8 vector } node_embedding_V_260_ce1 { O 1 bit } node_embedding_V_260_we1 { O 1 bit } node_embedding_V_260_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_260'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1863 \
    name node_embedding_V_261 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_261 \
    op interface \
    ports { node_embedding_V_261_address1 { O 8 vector } node_embedding_V_261_ce1 { O 1 bit } node_embedding_V_261_we1 { O 1 bit } node_embedding_V_261_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_261'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1864 \
    name node_embedding_V_262 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_262 \
    op interface \
    ports { node_embedding_V_262_address1 { O 8 vector } node_embedding_V_262_ce1 { O 1 bit } node_embedding_V_262_we1 { O 1 bit } node_embedding_V_262_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_262'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1865 \
    name node_embedding_V_263 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_263 \
    op interface \
    ports { node_embedding_V_263_address1 { O 8 vector } node_embedding_V_263_ce1 { O 1 bit } node_embedding_V_263_we1 { O 1 bit } node_embedding_V_263_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_263'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1866 \
    name node_embedding_V_264 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_264 \
    op interface \
    ports { node_embedding_V_264_address1 { O 8 vector } node_embedding_V_264_ce1 { O 1 bit } node_embedding_V_264_we1 { O 1 bit } node_embedding_V_264_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_264'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1867 \
    name node_embedding_V_265 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_265 \
    op interface \
    ports { node_embedding_V_265_address1 { O 8 vector } node_embedding_V_265_ce1 { O 1 bit } node_embedding_V_265_we1 { O 1 bit } node_embedding_V_265_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_265'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1868 \
    name node_embedding_V_266 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_266 \
    op interface \
    ports { node_embedding_V_266_address1 { O 8 vector } node_embedding_V_266_ce1 { O 1 bit } node_embedding_V_266_we1 { O 1 bit } node_embedding_V_266_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_266'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1869 \
    name node_embedding_V_267 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_267 \
    op interface \
    ports { node_embedding_V_267_address1 { O 8 vector } node_embedding_V_267_ce1 { O 1 bit } node_embedding_V_267_we1 { O 1 bit } node_embedding_V_267_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_267'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1870 \
    name node_embedding_V_268 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_268 \
    op interface \
    ports { node_embedding_V_268_address1 { O 8 vector } node_embedding_V_268_ce1 { O 1 bit } node_embedding_V_268_we1 { O 1 bit } node_embedding_V_268_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_268'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1871 \
    name node_embedding_V_269 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_269 \
    op interface \
    ports { node_embedding_V_269_address1 { O 8 vector } node_embedding_V_269_ce1 { O 1 bit } node_embedding_V_269_we1 { O 1 bit } node_embedding_V_269_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_269'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1872 \
    name node_embedding_V_270 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_270 \
    op interface \
    ports { node_embedding_V_270_address1 { O 8 vector } node_embedding_V_270_ce1 { O 1 bit } node_embedding_V_270_we1 { O 1 bit } node_embedding_V_270_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_270'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1873 \
    name node_embedding_V_271 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_271 \
    op interface \
    ports { node_embedding_V_271_address1 { O 8 vector } node_embedding_V_271_ce1 { O 1 bit } node_embedding_V_271_we1 { O 1 bit } node_embedding_V_271_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_271'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1874 \
    name node_embedding_V_272 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_272 \
    op interface \
    ports { node_embedding_V_272_address1 { O 8 vector } node_embedding_V_272_ce1 { O 1 bit } node_embedding_V_272_we1 { O 1 bit } node_embedding_V_272_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_272'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1875 \
    name node_embedding_V_273 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_273 \
    op interface \
    ports { node_embedding_V_273_address1 { O 8 vector } node_embedding_V_273_ce1 { O 1 bit } node_embedding_V_273_we1 { O 1 bit } node_embedding_V_273_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_273'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1876 \
    name node_embedding_V_274 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_274 \
    op interface \
    ports { node_embedding_V_274_address1 { O 8 vector } node_embedding_V_274_ce1 { O 1 bit } node_embedding_V_274_we1 { O 1 bit } node_embedding_V_274_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_274'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1877 \
    name node_embedding_V_275 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_275 \
    op interface \
    ports { node_embedding_V_275_address1 { O 8 vector } node_embedding_V_275_ce1 { O 1 bit } node_embedding_V_275_we1 { O 1 bit } node_embedding_V_275_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_275'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1878 \
    name node_embedding_V_276 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_276 \
    op interface \
    ports { node_embedding_V_276_address1 { O 8 vector } node_embedding_V_276_ce1 { O 1 bit } node_embedding_V_276_we1 { O 1 bit } node_embedding_V_276_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_276'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1879 \
    name node_embedding_V_277 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_277 \
    op interface \
    ports { node_embedding_V_277_address1 { O 8 vector } node_embedding_V_277_ce1 { O 1 bit } node_embedding_V_277_we1 { O 1 bit } node_embedding_V_277_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_277'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1880 \
    name node_embedding_V_278 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_278 \
    op interface \
    ports { node_embedding_V_278_address1 { O 8 vector } node_embedding_V_278_ce1 { O 1 bit } node_embedding_V_278_we1 { O 1 bit } node_embedding_V_278_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_278'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1881 \
    name node_embedding_V_279 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_279 \
    op interface \
    ports { node_embedding_V_279_address1 { O 8 vector } node_embedding_V_279_ce1 { O 1 bit } node_embedding_V_279_we1 { O 1 bit } node_embedding_V_279_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_279'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1882 \
    name node_embedding_V_280 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_280 \
    op interface \
    ports { node_embedding_V_280_address1 { O 8 vector } node_embedding_V_280_ce1 { O 1 bit } node_embedding_V_280_we1 { O 1 bit } node_embedding_V_280_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_280'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1883 \
    name node_embedding_V_281 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_281 \
    op interface \
    ports { node_embedding_V_281_address1 { O 8 vector } node_embedding_V_281_ce1 { O 1 bit } node_embedding_V_281_we1 { O 1 bit } node_embedding_V_281_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_281'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1884 \
    name node_embedding_V_282 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_282 \
    op interface \
    ports { node_embedding_V_282_address1 { O 8 vector } node_embedding_V_282_ce1 { O 1 bit } node_embedding_V_282_we1 { O 1 bit } node_embedding_V_282_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_282'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1885 \
    name node_embedding_V_283 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_283 \
    op interface \
    ports { node_embedding_V_283_address1 { O 8 vector } node_embedding_V_283_ce1 { O 1 bit } node_embedding_V_283_we1 { O 1 bit } node_embedding_V_283_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_283'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1886 \
    name node_embedding_V_284 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_284 \
    op interface \
    ports { node_embedding_V_284_address1 { O 8 vector } node_embedding_V_284_ce1 { O 1 bit } node_embedding_V_284_we1 { O 1 bit } node_embedding_V_284_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_284'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1887 \
    name node_embedding_V_285 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_285 \
    op interface \
    ports { node_embedding_V_285_address1 { O 8 vector } node_embedding_V_285_ce1 { O 1 bit } node_embedding_V_285_we1 { O 1 bit } node_embedding_V_285_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_285'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1888 \
    name node_embedding_V_286 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_286 \
    op interface \
    ports { node_embedding_V_286_address1 { O 8 vector } node_embedding_V_286_ce1 { O 1 bit } node_embedding_V_286_we1 { O 1 bit } node_embedding_V_286_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_286'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1889 \
    name node_embedding_V_287 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_287 \
    op interface \
    ports { node_embedding_V_287_address1 { O 8 vector } node_embedding_V_287_ce1 { O 1 bit } node_embedding_V_287_we1 { O 1 bit } node_embedding_V_287_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_287'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1890 \
    name node_embedding_V_288 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_288 \
    op interface \
    ports { node_embedding_V_288_address1 { O 8 vector } node_embedding_V_288_ce1 { O 1 bit } node_embedding_V_288_we1 { O 1 bit } node_embedding_V_288_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_288'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1891 \
    name node_embedding_V_289 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_289 \
    op interface \
    ports { node_embedding_V_289_address1 { O 8 vector } node_embedding_V_289_ce1 { O 1 bit } node_embedding_V_289_we1 { O 1 bit } node_embedding_V_289_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_289'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1892 \
    name node_embedding_V_290 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_290 \
    op interface \
    ports { node_embedding_V_290_address1 { O 8 vector } node_embedding_V_290_ce1 { O 1 bit } node_embedding_V_290_we1 { O 1 bit } node_embedding_V_290_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_290'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1893 \
    name node_embedding_V_291 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_291 \
    op interface \
    ports { node_embedding_V_291_address1 { O 8 vector } node_embedding_V_291_ce1 { O 1 bit } node_embedding_V_291_we1 { O 1 bit } node_embedding_V_291_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_291'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1894 \
    name node_embedding_V_292 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_292 \
    op interface \
    ports { node_embedding_V_292_address1 { O 8 vector } node_embedding_V_292_ce1 { O 1 bit } node_embedding_V_292_we1 { O 1 bit } node_embedding_V_292_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_292'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1895 \
    name node_embedding_V_293 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_293 \
    op interface \
    ports { node_embedding_V_293_address1 { O 8 vector } node_embedding_V_293_ce1 { O 1 bit } node_embedding_V_293_we1 { O 1 bit } node_embedding_V_293_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_293'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1896 \
    name node_embedding_V_294 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_294 \
    op interface \
    ports { node_embedding_V_294_address1 { O 8 vector } node_embedding_V_294_ce1 { O 1 bit } node_embedding_V_294_we1 { O 1 bit } node_embedding_V_294_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_294'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1897 \
    name node_embedding_V_295 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_295 \
    op interface \
    ports { node_embedding_V_295_address1 { O 8 vector } node_embedding_V_295_ce1 { O 1 bit } node_embedding_V_295_we1 { O 1 bit } node_embedding_V_295_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_295'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1898 \
    name node_embedding_V_296 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_296 \
    op interface \
    ports { node_embedding_V_296_address1 { O 8 vector } node_embedding_V_296_ce1 { O 1 bit } node_embedding_V_296_we1 { O 1 bit } node_embedding_V_296_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_296'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1899 \
    name node_embedding_V_297 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_297 \
    op interface \
    ports { node_embedding_V_297_address1 { O 8 vector } node_embedding_V_297_ce1 { O 1 bit } node_embedding_V_297_we1 { O 1 bit } node_embedding_V_297_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_297'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1900 \
    name node_embedding_V_298 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_298 \
    op interface \
    ports { node_embedding_V_298_address1 { O 8 vector } node_embedding_V_298_ce1 { O 1 bit } node_embedding_V_298_we1 { O 1 bit } node_embedding_V_298_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_298'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 1901 \
    name node_embedding_V_299 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename node_embedding_V_299 \
    op interface \
    ports { node_embedding_V_299_address1 { O 8 vector } node_embedding_V_299_ce1 { O 1 bit } node_embedding_V_299_we1 { O 1 bit } node_embedding_V_299_d1 { O 32 vector } } \
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


