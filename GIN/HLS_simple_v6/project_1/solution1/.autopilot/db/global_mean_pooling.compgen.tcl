# This script segment is generated automatically by AutoPilot

set id 443
set name GIN_compute_one_graph_mul_28s_30ns_57_1_1
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 28
set in0_signed 1
set in1_width 30
set in1_signed 0
set out_width 57
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


# Memory (RAM/ROM)  definition:
set ID 445
set hasByteEnable 0
set MemName GIN_compute_one_graph_global_mean_pooling_graph_embedding_V
set CoreName ap_simcore_mem
set PortList { 3 0 }
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
set MaxLatency -1
set DelayBudget 1.196
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
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM_2P_BRAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
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
    id 446 \
    name node_embedding_V_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_0 \
    op interface \
    ports { node_embedding_V_0_address0 { O 8 vector } node_embedding_V_0_ce0 { O 1 bit } node_embedding_V_0_q0 { I 28 vector } node_embedding_V_0_address1 { O 8 vector } node_embedding_V_0_ce1 { O 1 bit } node_embedding_V_0_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 447 \
    name node_embedding_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_1 \
    op interface \
    ports { node_embedding_V_1_address0 { O 8 vector } node_embedding_V_1_ce0 { O 1 bit } node_embedding_V_1_q0 { I 28 vector } node_embedding_V_1_address1 { O 8 vector } node_embedding_V_1_ce1 { O 1 bit } node_embedding_V_1_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 448 \
    name node_embedding_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_2 \
    op interface \
    ports { node_embedding_V_2_address0 { O 8 vector } node_embedding_V_2_ce0 { O 1 bit } node_embedding_V_2_q0 { I 28 vector } node_embedding_V_2_address1 { O 8 vector } node_embedding_V_2_ce1 { O 1 bit } node_embedding_V_2_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 449 \
    name node_embedding_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_3 \
    op interface \
    ports { node_embedding_V_3_address0 { O 8 vector } node_embedding_V_3_ce0 { O 1 bit } node_embedding_V_3_q0 { I 28 vector } node_embedding_V_3_address1 { O 8 vector } node_embedding_V_3_ce1 { O 1 bit } node_embedding_V_3_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 450 \
    name node_embedding_V_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_4 \
    op interface \
    ports { node_embedding_V_4_address0 { O 8 vector } node_embedding_V_4_ce0 { O 1 bit } node_embedding_V_4_q0 { I 28 vector } node_embedding_V_4_address1 { O 8 vector } node_embedding_V_4_ce1 { O 1 bit } node_embedding_V_4_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 451 \
    name node_embedding_V_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_5 \
    op interface \
    ports { node_embedding_V_5_address0 { O 8 vector } node_embedding_V_5_ce0 { O 1 bit } node_embedding_V_5_q0 { I 28 vector } node_embedding_V_5_address1 { O 8 vector } node_embedding_V_5_ce1 { O 1 bit } node_embedding_V_5_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 452 \
    name node_embedding_V_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_6 \
    op interface \
    ports { node_embedding_V_6_address0 { O 8 vector } node_embedding_V_6_ce0 { O 1 bit } node_embedding_V_6_q0 { I 28 vector } node_embedding_V_6_address1 { O 8 vector } node_embedding_V_6_ce1 { O 1 bit } node_embedding_V_6_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 453 \
    name node_embedding_V_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_7 \
    op interface \
    ports { node_embedding_V_7_address0 { O 8 vector } node_embedding_V_7_ce0 { O 1 bit } node_embedding_V_7_q0 { I 28 vector } node_embedding_V_7_address1 { O 8 vector } node_embedding_V_7_ce1 { O 1 bit } node_embedding_V_7_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 454 \
    name node_embedding_V_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_8 \
    op interface \
    ports { node_embedding_V_8_address0 { O 8 vector } node_embedding_V_8_ce0 { O 1 bit } node_embedding_V_8_q0 { I 28 vector } node_embedding_V_8_address1 { O 8 vector } node_embedding_V_8_ce1 { O 1 bit } node_embedding_V_8_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 455 \
    name node_embedding_V_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_9 \
    op interface \
    ports { node_embedding_V_9_address0 { O 8 vector } node_embedding_V_9_ce0 { O 1 bit } node_embedding_V_9_q0 { I 28 vector } node_embedding_V_9_address1 { O 8 vector } node_embedding_V_9_ce1 { O 1 bit } node_embedding_V_9_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 456 \
    name node_embedding_V_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_10 \
    op interface \
    ports { node_embedding_V_10_address0 { O 8 vector } node_embedding_V_10_ce0 { O 1 bit } node_embedding_V_10_q0 { I 28 vector } node_embedding_V_10_address1 { O 8 vector } node_embedding_V_10_ce1 { O 1 bit } node_embedding_V_10_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 457 \
    name node_embedding_V_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_11 \
    op interface \
    ports { node_embedding_V_11_address0 { O 8 vector } node_embedding_V_11_ce0 { O 1 bit } node_embedding_V_11_q0 { I 28 vector } node_embedding_V_11_address1 { O 8 vector } node_embedding_V_11_ce1 { O 1 bit } node_embedding_V_11_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 458 \
    name node_embedding_V_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_12 \
    op interface \
    ports { node_embedding_V_12_address0 { O 8 vector } node_embedding_V_12_ce0 { O 1 bit } node_embedding_V_12_q0 { I 28 vector } node_embedding_V_12_address1 { O 8 vector } node_embedding_V_12_ce1 { O 1 bit } node_embedding_V_12_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 459 \
    name node_embedding_V_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_13 \
    op interface \
    ports { node_embedding_V_13_address0 { O 8 vector } node_embedding_V_13_ce0 { O 1 bit } node_embedding_V_13_q0 { I 28 vector } node_embedding_V_13_address1 { O 8 vector } node_embedding_V_13_ce1 { O 1 bit } node_embedding_V_13_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 460 \
    name node_embedding_V_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_14 \
    op interface \
    ports { node_embedding_V_14_address0 { O 8 vector } node_embedding_V_14_ce0 { O 1 bit } node_embedding_V_14_q0 { I 28 vector } node_embedding_V_14_address1 { O 8 vector } node_embedding_V_14_ce1 { O 1 bit } node_embedding_V_14_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 461 \
    name node_embedding_V_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_15 \
    op interface \
    ports { node_embedding_V_15_address0 { O 8 vector } node_embedding_V_15_ce0 { O 1 bit } node_embedding_V_15_q0 { I 28 vector } node_embedding_V_15_address1 { O 8 vector } node_embedding_V_15_ce1 { O 1 bit } node_embedding_V_15_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 462 \
    name node_embedding_V_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_16 \
    op interface \
    ports { node_embedding_V_16_address0 { O 8 vector } node_embedding_V_16_ce0 { O 1 bit } node_embedding_V_16_q0 { I 28 vector } node_embedding_V_16_address1 { O 8 vector } node_embedding_V_16_ce1 { O 1 bit } node_embedding_V_16_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 463 \
    name node_embedding_V_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_17 \
    op interface \
    ports { node_embedding_V_17_address0 { O 8 vector } node_embedding_V_17_ce0 { O 1 bit } node_embedding_V_17_q0 { I 28 vector } node_embedding_V_17_address1 { O 8 vector } node_embedding_V_17_ce1 { O 1 bit } node_embedding_V_17_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 464 \
    name node_embedding_V_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_18 \
    op interface \
    ports { node_embedding_V_18_address0 { O 8 vector } node_embedding_V_18_ce0 { O 1 bit } node_embedding_V_18_q0 { I 28 vector } node_embedding_V_18_address1 { O 8 vector } node_embedding_V_18_ce1 { O 1 bit } node_embedding_V_18_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 465 \
    name node_embedding_V_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_19 \
    op interface \
    ports { node_embedding_V_19_address0 { O 8 vector } node_embedding_V_19_ce0 { O 1 bit } node_embedding_V_19_q0 { I 28 vector } node_embedding_V_19_address1 { O 8 vector } node_embedding_V_19_ce1 { O 1 bit } node_embedding_V_19_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 466 \
    name node_embedding_V_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_20 \
    op interface \
    ports { node_embedding_V_20_address0 { O 8 vector } node_embedding_V_20_ce0 { O 1 bit } node_embedding_V_20_q0 { I 28 vector } node_embedding_V_20_address1 { O 8 vector } node_embedding_V_20_ce1 { O 1 bit } node_embedding_V_20_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 467 \
    name node_embedding_V_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_21 \
    op interface \
    ports { node_embedding_V_21_address0 { O 8 vector } node_embedding_V_21_ce0 { O 1 bit } node_embedding_V_21_q0 { I 28 vector } node_embedding_V_21_address1 { O 8 vector } node_embedding_V_21_ce1 { O 1 bit } node_embedding_V_21_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 468 \
    name node_embedding_V_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_22 \
    op interface \
    ports { node_embedding_V_22_address0 { O 8 vector } node_embedding_V_22_ce0 { O 1 bit } node_embedding_V_22_q0 { I 28 vector } node_embedding_V_22_address1 { O 8 vector } node_embedding_V_22_ce1 { O 1 bit } node_embedding_V_22_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 469 \
    name node_embedding_V_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_23 \
    op interface \
    ports { node_embedding_V_23_address0 { O 8 vector } node_embedding_V_23_ce0 { O 1 bit } node_embedding_V_23_q0 { I 28 vector } node_embedding_V_23_address1 { O 8 vector } node_embedding_V_23_ce1 { O 1 bit } node_embedding_V_23_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 470 \
    name node_embedding_V_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_24 \
    op interface \
    ports { node_embedding_V_24_address0 { O 8 vector } node_embedding_V_24_ce0 { O 1 bit } node_embedding_V_24_q0 { I 28 vector } node_embedding_V_24_address1 { O 8 vector } node_embedding_V_24_ce1 { O 1 bit } node_embedding_V_24_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 471 \
    name node_embedding_V_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_25 \
    op interface \
    ports { node_embedding_V_25_address0 { O 8 vector } node_embedding_V_25_ce0 { O 1 bit } node_embedding_V_25_q0 { I 28 vector } node_embedding_V_25_address1 { O 8 vector } node_embedding_V_25_ce1 { O 1 bit } node_embedding_V_25_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 472 \
    name node_embedding_V_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_26 \
    op interface \
    ports { node_embedding_V_26_address0 { O 8 vector } node_embedding_V_26_ce0 { O 1 bit } node_embedding_V_26_q0 { I 28 vector } node_embedding_V_26_address1 { O 8 vector } node_embedding_V_26_ce1 { O 1 bit } node_embedding_V_26_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 473 \
    name node_embedding_V_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_27 \
    op interface \
    ports { node_embedding_V_27_address0 { O 8 vector } node_embedding_V_27_ce0 { O 1 bit } node_embedding_V_27_q0 { I 28 vector } node_embedding_V_27_address1 { O 8 vector } node_embedding_V_27_ce1 { O 1 bit } node_embedding_V_27_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 474 \
    name node_embedding_V_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_28 \
    op interface \
    ports { node_embedding_V_28_address0 { O 8 vector } node_embedding_V_28_ce0 { O 1 bit } node_embedding_V_28_q0 { I 28 vector } node_embedding_V_28_address1 { O 8 vector } node_embedding_V_28_ce1 { O 1 bit } node_embedding_V_28_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 475 \
    name node_embedding_V_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_29 \
    op interface \
    ports { node_embedding_V_29_address0 { O 8 vector } node_embedding_V_29_ce0 { O 1 bit } node_embedding_V_29_q0 { I 28 vector } node_embedding_V_29_address1 { O 8 vector } node_embedding_V_29_ce1 { O 1 bit } node_embedding_V_29_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 476 \
    name node_embedding_V_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_30 \
    op interface \
    ports { node_embedding_V_30_address0 { O 8 vector } node_embedding_V_30_ce0 { O 1 bit } node_embedding_V_30_q0 { I 28 vector } node_embedding_V_30_address1 { O 8 vector } node_embedding_V_30_ce1 { O 1 bit } node_embedding_V_30_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 477 \
    name node_embedding_V_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_31 \
    op interface \
    ports { node_embedding_V_31_address0 { O 8 vector } node_embedding_V_31_ce0 { O 1 bit } node_embedding_V_31_q0 { I 28 vector } node_embedding_V_31_address1 { O 8 vector } node_embedding_V_31_ce1 { O 1 bit } node_embedding_V_31_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 478 \
    name node_embedding_V_32 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_32 \
    op interface \
    ports { node_embedding_V_32_address0 { O 8 vector } node_embedding_V_32_ce0 { O 1 bit } node_embedding_V_32_q0 { I 28 vector } node_embedding_V_32_address1 { O 8 vector } node_embedding_V_32_ce1 { O 1 bit } node_embedding_V_32_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 479 \
    name node_embedding_V_33 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_33 \
    op interface \
    ports { node_embedding_V_33_address0 { O 8 vector } node_embedding_V_33_ce0 { O 1 bit } node_embedding_V_33_q0 { I 28 vector } node_embedding_V_33_address1 { O 8 vector } node_embedding_V_33_ce1 { O 1 bit } node_embedding_V_33_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 480 \
    name node_embedding_V_34 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_34 \
    op interface \
    ports { node_embedding_V_34_address0 { O 8 vector } node_embedding_V_34_ce0 { O 1 bit } node_embedding_V_34_q0 { I 28 vector } node_embedding_V_34_address1 { O 8 vector } node_embedding_V_34_ce1 { O 1 bit } node_embedding_V_34_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 481 \
    name node_embedding_V_35 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_35 \
    op interface \
    ports { node_embedding_V_35_address0 { O 8 vector } node_embedding_V_35_ce0 { O 1 bit } node_embedding_V_35_q0 { I 28 vector } node_embedding_V_35_address1 { O 8 vector } node_embedding_V_35_ce1 { O 1 bit } node_embedding_V_35_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 482 \
    name node_embedding_V_36 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_36 \
    op interface \
    ports { node_embedding_V_36_address0 { O 8 vector } node_embedding_V_36_ce0 { O 1 bit } node_embedding_V_36_q0 { I 28 vector } node_embedding_V_36_address1 { O 8 vector } node_embedding_V_36_ce1 { O 1 bit } node_embedding_V_36_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 483 \
    name node_embedding_V_37 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_37 \
    op interface \
    ports { node_embedding_V_37_address0 { O 8 vector } node_embedding_V_37_ce0 { O 1 bit } node_embedding_V_37_q0 { I 28 vector } node_embedding_V_37_address1 { O 8 vector } node_embedding_V_37_ce1 { O 1 bit } node_embedding_V_37_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 484 \
    name node_embedding_V_38 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_38 \
    op interface \
    ports { node_embedding_V_38_address0 { O 8 vector } node_embedding_V_38_ce0 { O 1 bit } node_embedding_V_38_q0 { I 28 vector } node_embedding_V_38_address1 { O 8 vector } node_embedding_V_38_ce1 { O 1 bit } node_embedding_V_38_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 485 \
    name node_embedding_V_39 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_39 \
    op interface \
    ports { node_embedding_V_39_address0 { O 8 vector } node_embedding_V_39_ce0 { O 1 bit } node_embedding_V_39_q0 { I 28 vector } node_embedding_V_39_address1 { O 8 vector } node_embedding_V_39_ce1 { O 1 bit } node_embedding_V_39_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 486 \
    name node_embedding_V_40 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_40 \
    op interface \
    ports { node_embedding_V_40_address0 { O 8 vector } node_embedding_V_40_ce0 { O 1 bit } node_embedding_V_40_q0 { I 28 vector } node_embedding_V_40_address1 { O 8 vector } node_embedding_V_40_ce1 { O 1 bit } node_embedding_V_40_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 487 \
    name node_embedding_V_41 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_41 \
    op interface \
    ports { node_embedding_V_41_address0 { O 8 vector } node_embedding_V_41_ce0 { O 1 bit } node_embedding_V_41_q0 { I 28 vector } node_embedding_V_41_address1 { O 8 vector } node_embedding_V_41_ce1 { O 1 bit } node_embedding_V_41_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 488 \
    name node_embedding_V_42 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_42 \
    op interface \
    ports { node_embedding_V_42_address0 { O 8 vector } node_embedding_V_42_ce0 { O 1 bit } node_embedding_V_42_q0 { I 28 vector } node_embedding_V_42_address1 { O 8 vector } node_embedding_V_42_ce1 { O 1 bit } node_embedding_V_42_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 489 \
    name node_embedding_V_43 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_43 \
    op interface \
    ports { node_embedding_V_43_address0 { O 8 vector } node_embedding_V_43_ce0 { O 1 bit } node_embedding_V_43_q0 { I 28 vector } node_embedding_V_43_address1 { O 8 vector } node_embedding_V_43_ce1 { O 1 bit } node_embedding_V_43_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 490 \
    name node_embedding_V_44 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_44 \
    op interface \
    ports { node_embedding_V_44_address0 { O 8 vector } node_embedding_V_44_ce0 { O 1 bit } node_embedding_V_44_q0 { I 28 vector } node_embedding_V_44_address1 { O 8 vector } node_embedding_V_44_ce1 { O 1 bit } node_embedding_V_44_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 491 \
    name node_embedding_V_45 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_45 \
    op interface \
    ports { node_embedding_V_45_address0 { O 8 vector } node_embedding_V_45_ce0 { O 1 bit } node_embedding_V_45_q0 { I 28 vector } node_embedding_V_45_address1 { O 8 vector } node_embedding_V_45_ce1 { O 1 bit } node_embedding_V_45_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 492 \
    name node_embedding_V_46 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_46 \
    op interface \
    ports { node_embedding_V_46_address0 { O 8 vector } node_embedding_V_46_ce0 { O 1 bit } node_embedding_V_46_q0 { I 28 vector } node_embedding_V_46_address1 { O 8 vector } node_embedding_V_46_ce1 { O 1 bit } node_embedding_V_46_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 493 \
    name node_embedding_V_47 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_47 \
    op interface \
    ports { node_embedding_V_47_address0 { O 8 vector } node_embedding_V_47_ce0 { O 1 bit } node_embedding_V_47_q0 { I 28 vector } node_embedding_V_47_address1 { O 8 vector } node_embedding_V_47_ce1 { O 1 bit } node_embedding_V_47_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 494 \
    name node_embedding_V_48 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_48 \
    op interface \
    ports { node_embedding_V_48_address0 { O 8 vector } node_embedding_V_48_ce0 { O 1 bit } node_embedding_V_48_q0 { I 28 vector } node_embedding_V_48_address1 { O 8 vector } node_embedding_V_48_ce1 { O 1 bit } node_embedding_V_48_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 495 \
    name node_embedding_V_49 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_49 \
    op interface \
    ports { node_embedding_V_49_address0 { O 8 vector } node_embedding_V_49_ce0 { O 1 bit } node_embedding_V_49_q0 { I 28 vector } node_embedding_V_49_address1 { O 8 vector } node_embedding_V_49_ce1 { O 1 bit } node_embedding_V_49_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 496 \
    name node_embedding_V_50 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_50 \
    op interface \
    ports { node_embedding_V_50_address0 { O 8 vector } node_embedding_V_50_ce0 { O 1 bit } node_embedding_V_50_q0 { I 28 vector } node_embedding_V_50_address1 { O 8 vector } node_embedding_V_50_ce1 { O 1 bit } node_embedding_V_50_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 497 \
    name node_embedding_V_51 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_51 \
    op interface \
    ports { node_embedding_V_51_address0 { O 8 vector } node_embedding_V_51_ce0 { O 1 bit } node_embedding_V_51_q0 { I 28 vector } node_embedding_V_51_address1 { O 8 vector } node_embedding_V_51_ce1 { O 1 bit } node_embedding_V_51_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 498 \
    name node_embedding_V_52 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_52 \
    op interface \
    ports { node_embedding_V_52_address0 { O 8 vector } node_embedding_V_52_ce0 { O 1 bit } node_embedding_V_52_q0 { I 28 vector } node_embedding_V_52_address1 { O 8 vector } node_embedding_V_52_ce1 { O 1 bit } node_embedding_V_52_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 499 \
    name node_embedding_V_53 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_53 \
    op interface \
    ports { node_embedding_V_53_address0 { O 8 vector } node_embedding_V_53_ce0 { O 1 bit } node_embedding_V_53_q0 { I 28 vector } node_embedding_V_53_address1 { O 8 vector } node_embedding_V_53_ce1 { O 1 bit } node_embedding_V_53_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 500 \
    name node_embedding_V_54 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_54 \
    op interface \
    ports { node_embedding_V_54_address0 { O 8 vector } node_embedding_V_54_ce0 { O 1 bit } node_embedding_V_54_q0 { I 28 vector } node_embedding_V_54_address1 { O 8 vector } node_embedding_V_54_ce1 { O 1 bit } node_embedding_V_54_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 501 \
    name node_embedding_V_55 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_55 \
    op interface \
    ports { node_embedding_V_55_address0 { O 8 vector } node_embedding_V_55_ce0 { O 1 bit } node_embedding_V_55_q0 { I 28 vector } node_embedding_V_55_address1 { O 8 vector } node_embedding_V_55_ce1 { O 1 bit } node_embedding_V_55_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 502 \
    name node_embedding_V_56 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_56 \
    op interface \
    ports { node_embedding_V_56_address0 { O 8 vector } node_embedding_V_56_ce0 { O 1 bit } node_embedding_V_56_q0 { I 28 vector } node_embedding_V_56_address1 { O 8 vector } node_embedding_V_56_ce1 { O 1 bit } node_embedding_V_56_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 503 \
    name node_embedding_V_57 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_57 \
    op interface \
    ports { node_embedding_V_57_address0 { O 8 vector } node_embedding_V_57_ce0 { O 1 bit } node_embedding_V_57_q0 { I 28 vector } node_embedding_V_57_address1 { O 8 vector } node_embedding_V_57_ce1 { O 1 bit } node_embedding_V_57_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 504 \
    name node_embedding_V_58 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_58 \
    op interface \
    ports { node_embedding_V_58_address0 { O 8 vector } node_embedding_V_58_ce0 { O 1 bit } node_embedding_V_58_q0 { I 28 vector } node_embedding_V_58_address1 { O 8 vector } node_embedding_V_58_ce1 { O 1 bit } node_embedding_V_58_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 505 \
    name node_embedding_V_59 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_59 \
    op interface \
    ports { node_embedding_V_59_address0 { O 8 vector } node_embedding_V_59_ce0 { O 1 bit } node_embedding_V_59_q0 { I 28 vector } node_embedding_V_59_address1 { O 8 vector } node_embedding_V_59_ce1 { O 1 bit } node_embedding_V_59_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 506 \
    name node_embedding_V_60 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_60 \
    op interface \
    ports { node_embedding_V_60_address0 { O 8 vector } node_embedding_V_60_ce0 { O 1 bit } node_embedding_V_60_q0 { I 28 vector } node_embedding_V_60_address1 { O 8 vector } node_embedding_V_60_ce1 { O 1 bit } node_embedding_V_60_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 507 \
    name node_embedding_V_61 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_61 \
    op interface \
    ports { node_embedding_V_61_address0 { O 8 vector } node_embedding_V_61_ce0 { O 1 bit } node_embedding_V_61_q0 { I 28 vector } node_embedding_V_61_address1 { O 8 vector } node_embedding_V_61_ce1 { O 1 bit } node_embedding_V_61_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 508 \
    name node_embedding_V_62 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_62 \
    op interface \
    ports { node_embedding_V_62_address0 { O 8 vector } node_embedding_V_62_ce0 { O 1 bit } node_embedding_V_62_q0 { I 28 vector } node_embedding_V_62_address1 { O 8 vector } node_embedding_V_62_ce1 { O 1 bit } node_embedding_V_62_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 509 \
    name node_embedding_V_63 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_63 \
    op interface \
    ports { node_embedding_V_63_address0 { O 8 vector } node_embedding_V_63_ce0 { O 1 bit } node_embedding_V_63_q0 { I 28 vector } node_embedding_V_63_address1 { O 8 vector } node_embedding_V_63_ce1 { O 1 bit } node_embedding_V_63_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_63'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 510 \
    name node_embedding_V_64 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_64 \
    op interface \
    ports { node_embedding_V_64_address0 { O 8 vector } node_embedding_V_64_ce0 { O 1 bit } node_embedding_V_64_q0 { I 28 vector } node_embedding_V_64_address1 { O 8 vector } node_embedding_V_64_ce1 { O 1 bit } node_embedding_V_64_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_64'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 511 \
    name node_embedding_V_65 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_65 \
    op interface \
    ports { node_embedding_V_65_address0 { O 8 vector } node_embedding_V_65_ce0 { O 1 bit } node_embedding_V_65_q0 { I 28 vector } node_embedding_V_65_address1 { O 8 vector } node_embedding_V_65_ce1 { O 1 bit } node_embedding_V_65_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_65'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 512 \
    name node_embedding_V_66 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_66 \
    op interface \
    ports { node_embedding_V_66_address0 { O 8 vector } node_embedding_V_66_ce0 { O 1 bit } node_embedding_V_66_q0 { I 28 vector } node_embedding_V_66_address1 { O 8 vector } node_embedding_V_66_ce1 { O 1 bit } node_embedding_V_66_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_66'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 513 \
    name node_embedding_V_67 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_67 \
    op interface \
    ports { node_embedding_V_67_address0 { O 8 vector } node_embedding_V_67_ce0 { O 1 bit } node_embedding_V_67_q0 { I 28 vector } node_embedding_V_67_address1 { O 8 vector } node_embedding_V_67_ce1 { O 1 bit } node_embedding_V_67_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_67'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 514 \
    name node_embedding_V_68 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_68 \
    op interface \
    ports { node_embedding_V_68_address0 { O 8 vector } node_embedding_V_68_ce0 { O 1 bit } node_embedding_V_68_q0 { I 28 vector } node_embedding_V_68_address1 { O 8 vector } node_embedding_V_68_ce1 { O 1 bit } node_embedding_V_68_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_68'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 515 \
    name node_embedding_V_69 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_69 \
    op interface \
    ports { node_embedding_V_69_address0 { O 8 vector } node_embedding_V_69_ce0 { O 1 bit } node_embedding_V_69_q0 { I 28 vector } node_embedding_V_69_address1 { O 8 vector } node_embedding_V_69_ce1 { O 1 bit } node_embedding_V_69_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_69'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 516 \
    name node_embedding_V_70 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_70 \
    op interface \
    ports { node_embedding_V_70_address0 { O 8 vector } node_embedding_V_70_ce0 { O 1 bit } node_embedding_V_70_q0 { I 28 vector } node_embedding_V_70_address1 { O 8 vector } node_embedding_V_70_ce1 { O 1 bit } node_embedding_V_70_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_70'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 517 \
    name node_embedding_V_71 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_71 \
    op interface \
    ports { node_embedding_V_71_address0 { O 8 vector } node_embedding_V_71_ce0 { O 1 bit } node_embedding_V_71_q0 { I 28 vector } node_embedding_V_71_address1 { O 8 vector } node_embedding_V_71_ce1 { O 1 bit } node_embedding_V_71_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_71'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 518 \
    name node_embedding_V_72 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_72 \
    op interface \
    ports { node_embedding_V_72_address0 { O 8 vector } node_embedding_V_72_ce0 { O 1 bit } node_embedding_V_72_q0 { I 28 vector } node_embedding_V_72_address1 { O 8 vector } node_embedding_V_72_ce1 { O 1 bit } node_embedding_V_72_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_72'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 519 \
    name node_embedding_V_73 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_73 \
    op interface \
    ports { node_embedding_V_73_address0 { O 8 vector } node_embedding_V_73_ce0 { O 1 bit } node_embedding_V_73_q0 { I 28 vector } node_embedding_V_73_address1 { O 8 vector } node_embedding_V_73_ce1 { O 1 bit } node_embedding_V_73_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_73'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 520 \
    name node_embedding_V_74 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_74 \
    op interface \
    ports { node_embedding_V_74_address0 { O 8 vector } node_embedding_V_74_ce0 { O 1 bit } node_embedding_V_74_q0 { I 28 vector } node_embedding_V_74_address1 { O 8 vector } node_embedding_V_74_ce1 { O 1 bit } node_embedding_V_74_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_74'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 521 \
    name node_embedding_V_75 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_75 \
    op interface \
    ports { node_embedding_V_75_address0 { O 8 vector } node_embedding_V_75_ce0 { O 1 bit } node_embedding_V_75_q0 { I 28 vector } node_embedding_V_75_address1 { O 8 vector } node_embedding_V_75_ce1 { O 1 bit } node_embedding_V_75_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_75'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 522 \
    name node_embedding_V_76 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_76 \
    op interface \
    ports { node_embedding_V_76_address0 { O 8 vector } node_embedding_V_76_ce0 { O 1 bit } node_embedding_V_76_q0 { I 28 vector } node_embedding_V_76_address1 { O 8 vector } node_embedding_V_76_ce1 { O 1 bit } node_embedding_V_76_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_76'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 523 \
    name node_embedding_V_77 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_77 \
    op interface \
    ports { node_embedding_V_77_address0 { O 8 vector } node_embedding_V_77_ce0 { O 1 bit } node_embedding_V_77_q0 { I 28 vector } node_embedding_V_77_address1 { O 8 vector } node_embedding_V_77_ce1 { O 1 bit } node_embedding_V_77_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_77'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 524 \
    name node_embedding_V_78 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_78 \
    op interface \
    ports { node_embedding_V_78_address0 { O 8 vector } node_embedding_V_78_ce0 { O 1 bit } node_embedding_V_78_q0 { I 28 vector } node_embedding_V_78_address1 { O 8 vector } node_embedding_V_78_ce1 { O 1 bit } node_embedding_V_78_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_78'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 525 \
    name node_embedding_V_79 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_79 \
    op interface \
    ports { node_embedding_V_79_address0 { O 8 vector } node_embedding_V_79_ce0 { O 1 bit } node_embedding_V_79_q0 { I 28 vector } node_embedding_V_79_address1 { O 8 vector } node_embedding_V_79_ce1 { O 1 bit } node_embedding_V_79_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_79'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 526 \
    name node_embedding_V_80 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_80 \
    op interface \
    ports { node_embedding_V_80_address0 { O 8 vector } node_embedding_V_80_ce0 { O 1 bit } node_embedding_V_80_q0 { I 28 vector } node_embedding_V_80_address1 { O 8 vector } node_embedding_V_80_ce1 { O 1 bit } node_embedding_V_80_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_80'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 527 \
    name node_embedding_V_81 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_81 \
    op interface \
    ports { node_embedding_V_81_address0 { O 8 vector } node_embedding_V_81_ce0 { O 1 bit } node_embedding_V_81_q0 { I 28 vector } node_embedding_V_81_address1 { O 8 vector } node_embedding_V_81_ce1 { O 1 bit } node_embedding_V_81_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_81'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 528 \
    name node_embedding_V_82 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_82 \
    op interface \
    ports { node_embedding_V_82_address0 { O 8 vector } node_embedding_V_82_ce0 { O 1 bit } node_embedding_V_82_q0 { I 28 vector } node_embedding_V_82_address1 { O 8 vector } node_embedding_V_82_ce1 { O 1 bit } node_embedding_V_82_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_82'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 529 \
    name node_embedding_V_83 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_83 \
    op interface \
    ports { node_embedding_V_83_address0 { O 8 vector } node_embedding_V_83_ce0 { O 1 bit } node_embedding_V_83_q0 { I 28 vector } node_embedding_V_83_address1 { O 8 vector } node_embedding_V_83_ce1 { O 1 bit } node_embedding_V_83_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_83'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 530 \
    name node_embedding_V_84 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_84 \
    op interface \
    ports { node_embedding_V_84_address0 { O 8 vector } node_embedding_V_84_ce0 { O 1 bit } node_embedding_V_84_q0 { I 28 vector } node_embedding_V_84_address1 { O 8 vector } node_embedding_V_84_ce1 { O 1 bit } node_embedding_V_84_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_84'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 531 \
    name node_embedding_V_85 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_85 \
    op interface \
    ports { node_embedding_V_85_address0 { O 8 vector } node_embedding_V_85_ce0 { O 1 bit } node_embedding_V_85_q0 { I 28 vector } node_embedding_V_85_address1 { O 8 vector } node_embedding_V_85_ce1 { O 1 bit } node_embedding_V_85_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_85'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 532 \
    name node_embedding_V_86 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_86 \
    op interface \
    ports { node_embedding_V_86_address0 { O 8 vector } node_embedding_V_86_ce0 { O 1 bit } node_embedding_V_86_q0 { I 28 vector } node_embedding_V_86_address1 { O 8 vector } node_embedding_V_86_ce1 { O 1 bit } node_embedding_V_86_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_86'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 533 \
    name node_embedding_V_87 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_87 \
    op interface \
    ports { node_embedding_V_87_address0 { O 8 vector } node_embedding_V_87_ce0 { O 1 bit } node_embedding_V_87_q0 { I 28 vector } node_embedding_V_87_address1 { O 8 vector } node_embedding_V_87_ce1 { O 1 bit } node_embedding_V_87_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_87'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 534 \
    name node_embedding_V_88 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_88 \
    op interface \
    ports { node_embedding_V_88_address0 { O 8 vector } node_embedding_V_88_ce0 { O 1 bit } node_embedding_V_88_q0 { I 28 vector } node_embedding_V_88_address1 { O 8 vector } node_embedding_V_88_ce1 { O 1 bit } node_embedding_V_88_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_88'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 535 \
    name node_embedding_V_89 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_89 \
    op interface \
    ports { node_embedding_V_89_address0 { O 8 vector } node_embedding_V_89_ce0 { O 1 bit } node_embedding_V_89_q0 { I 28 vector } node_embedding_V_89_address1 { O 8 vector } node_embedding_V_89_ce1 { O 1 bit } node_embedding_V_89_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_89'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 536 \
    name node_embedding_V_90 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_90 \
    op interface \
    ports { node_embedding_V_90_address0 { O 8 vector } node_embedding_V_90_ce0 { O 1 bit } node_embedding_V_90_q0 { I 28 vector } node_embedding_V_90_address1 { O 8 vector } node_embedding_V_90_ce1 { O 1 bit } node_embedding_V_90_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_90'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 537 \
    name node_embedding_V_91 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_91 \
    op interface \
    ports { node_embedding_V_91_address0 { O 8 vector } node_embedding_V_91_ce0 { O 1 bit } node_embedding_V_91_q0 { I 28 vector } node_embedding_V_91_address1 { O 8 vector } node_embedding_V_91_ce1 { O 1 bit } node_embedding_V_91_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_91'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 538 \
    name node_embedding_V_92 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_92 \
    op interface \
    ports { node_embedding_V_92_address0 { O 8 vector } node_embedding_V_92_ce0 { O 1 bit } node_embedding_V_92_q0 { I 28 vector } node_embedding_V_92_address1 { O 8 vector } node_embedding_V_92_ce1 { O 1 bit } node_embedding_V_92_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_92'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 539 \
    name node_embedding_V_93 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_93 \
    op interface \
    ports { node_embedding_V_93_address0 { O 8 vector } node_embedding_V_93_ce0 { O 1 bit } node_embedding_V_93_q0 { I 28 vector } node_embedding_V_93_address1 { O 8 vector } node_embedding_V_93_ce1 { O 1 bit } node_embedding_V_93_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_93'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 540 \
    name node_embedding_V_94 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_94 \
    op interface \
    ports { node_embedding_V_94_address0 { O 8 vector } node_embedding_V_94_ce0 { O 1 bit } node_embedding_V_94_q0 { I 28 vector } node_embedding_V_94_address1 { O 8 vector } node_embedding_V_94_ce1 { O 1 bit } node_embedding_V_94_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_94'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 541 \
    name node_embedding_V_95 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_95 \
    op interface \
    ports { node_embedding_V_95_address0 { O 8 vector } node_embedding_V_95_ce0 { O 1 bit } node_embedding_V_95_q0 { I 28 vector } node_embedding_V_95_address1 { O 8 vector } node_embedding_V_95_ce1 { O 1 bit } node_embedding_V_95_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_95'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 542 \
    name node_embedding_V_96 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_96 \
    op interface \
    ports { node_embedding_V_96_address0 { O 8 vector } node_embedding_V_96_ce0 { O 1 bit } node_embedding_V_96_q0 { I 28 vector } node_embedding_V_96_address1 { O 8 vector } node_embedding_V_96_ce1 { O 1 bit } node_embedding_V_96_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_96'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 543 \
    name node_embedding_V_97 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_97 \
    op interface \
    ports { node_embedding_V_97_address0 { O 8 vector } node_embedding_V_97_ce0 { O 1 bit } node_embedding_V_97_q0 { I 28 vector } node_embedding_V_97_address1 { O 8 vector } node_embedding_V_97_ce1 { O 1 bit } node_embedding_V_97_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_97'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 544 \
    name node_embedding_V_98 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_98 \
    op interface \
    ports { node_embedding_V_98_address0 { O 8 vector } node_embedding_V_98_ce0 { O 1 bit } node_embedding_V_98_q0 { I 28 vector } node_embedding_V_98_address1 { O 8 vector } node_embedding_V_98_ce1 { O 1 bit } node_embedding_V_98_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_98'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 545 \
    name node_embedding_V_99 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_99 \
    op interface \
    ports { node_embedding_V_99_address0 { O 8 vector } node_embedding_V_99_ce0 { O 1 bit } node_embedding_V_99_q0 { I 28 vector } node_embedding_V_99_address1 { O 8 vector } node_embedding_V_99_ce1 { O 1 bit } node_embedding_V_99_q1 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_99'"
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


