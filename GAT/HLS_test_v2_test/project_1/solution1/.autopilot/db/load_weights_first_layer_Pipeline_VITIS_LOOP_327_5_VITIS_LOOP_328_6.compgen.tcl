# This script segment is generated automatically by AutoPilot

set name GAT_compute_one_graph_urem_13ns_5ns_13_17_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {urem} IMPL {auto} LATENCY 16 ALLOW_PRAGMA 1
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
    id 41 \
    name linear_proj_weight_V_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_0 \
    op interface \
    ports { linear_proj_weight_V_0_address0 { O 9 vector } linear_proj_weight_V_0_ce0 { O 1 bit } linear_proj_weight_V_0_we0 { O 1 bit } linear_proj_weight_V_0_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 42 \
    name linear_proj_weight_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_1 \
    op interface \
    ports { linear_proj_weight_V_1_address0 { O 9 vector } linear_proj_weight_V_1_ce0 { O 1 bit } linear_proj_weight_V_1_we0 { O 1 bit } linear_proj_weight_V_1_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 43 \
    name linear_proj_weight_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_2 \
    op interface \
    ports { linear_proj_weight_V_2_address0 { O 9 vector } linear_proj_weight_V_2_ce0 { O 1 bit } linear_proj_weight_V_2_we0 { O 1 bit } linear_proj_weight_V_2_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 44 \
    name linear_proj_weight_V_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_3 \
    op interface \
    ports { linear_proj_weight_V_3_address0 { O 9 vector } linear_proj_weight_V_3_ce0 { O 1 bit } linear_proj_weight_V_3_we0 { O 1 bit } linear_proj_weight_V_3_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 45 \
    name linear_proj_weight_V_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_4 \
    op interface \
    ports { linear_proj_weight_V_4_address0 { O 9 vector } linear_proj_weight_V_4_ce0 { O 1 bit } linear_proj_weight_V_4_we0 { O 1 bit } linear_proj_weight_V_4_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 46 \
    name linear_proj_weight_V_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_5 \
    op interface \
    ports { linear_proj_weight_V_5_address0 { O 9 vector } linear_proj_weight_V_5_ce0 { O 1 bit } linear_proj_weight_V_5_we0 { O 1 bit } linear_proj_weight_V_5_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 47 \
    name linear_proj_weight_V_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_6 \
    op interface \
    ports { linear_proj_weight_V_6_address0 { O 9 vector } linear_proj_weight_V_6_ce0 { O 1 bit } linear_proj_weight_V_6_we0 { O 1 bit } linear_proj_weight_V_6_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 48 \
    name linear_proj_weight_V_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_7 \
    op interface \
    ports { linear_proj_weight_V_7_address0 { O 9 vector } linear_proj_weight_V_7_ce0 { O 1 bit } linear_proj_weight_V_7_we0 { O 1 bit } linear_proj_weight_V_7_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 49 \
    name linear_proj_weight_V_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_8 \
    op interface \
    ports { linear_proj_weight_V_8_address0 { O 9 vector } linear_proj_weight_V_8_ce0 { O 1 bit } linear_proj_weight_V_8_we0 { O 1 bit } linear_proj_weight_V_8_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 50 \
    name linear_proj_weight_V_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_9 \
    op interface \
    ports { linear_proj_weight_V_9_address0 { O 9 vector } linear_proj_weight_V_9_ce0 { O 1 bit } linear_proj_weight_V_9_we0 { O 1 bit } linear_proj_weight_V_9_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 51 \
    name linear_proj_weight_V_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_10 \
    op interface \
    ports { linear_proj_weight_V_10_address0 { O 9 vector } linear_proj_weight_V_10_ce0 { O 1 bit } linear_proj_weight_V_10_we0 { O 1 bit } linear_proj_weight_V_10_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 52 \
    name linear_proj_weight_V_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_11 \
    op interface \
    ports { linear_proj_weight_V_11_address0 { O 9 vector } linear_proj_weight_V_11_ce0 { O 1 bit } linear_proj_weight_V_11_we0 { O 1 bit } linear_proj_weight_V_11_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 53 \
    name linear_proj_weight_V_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_12 \
    op interface \
    ports { linear_proj_weight_V_12_address0 { O 9 vector } linear_proj_weight_V_12_ce0 { O 1 bit } linear_proj_weight_V_12_we0 { O 1 bit } linear_proj_weight_V_12_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 54 \
    name linear_proj_weight_V_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_13 \
    op interface \
    ports { linear_proj_weight_V_13_address0 { O 9 vector } linear_proj_weight_V_13_ce0 { O 1 bit } linear_proj_weight_V_13_we0 { O 1 bit } linear_proj_weight_V_13_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 55 \
    name linear_proj_weight_V_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_14 \
    op interface \
    ports { linear_proj_weight_V_14_address0 { O 9 vector } linear_proj_weight_V_14_ce0 { O 1 bit } linear_proj_weight_V_14_we0 { O 1 bit } linear_proj_weight_V_14_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 56 \
    name linear_proj_weight_V_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_15 \
    op interface \
    ports { linear_proj_weight_V_15_address0 { O 9 vector } linear_proj_weight_V_15_ce0 { O 1 bit } linear_proj_weight_V_15_we0 { O 1 bit } linear_proj_weight_V_15_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 57 \
    name linear_proj_weight_V_16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_16 \
    op interface \
    ports { linear_proj_weight_V_16_address0 { O 9 vector } linear_proj_weight_V_16_ce0 { O 1 bit } linear_proj_weight_V_16_we0 { O 1 bit } linear_proj_weight_V_16_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 58 \
    name linear_proj_weight_V_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_17 \
    op interface \
    ports { linear_proj_weight_V_17_address0 { O 9 vector } linear_proj_weight_V_17_ce0 { O 1 bit } linear_proj_weight_V_17_we0 { O 1 bit } linear_proj_weight_V_17_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 59 \
    name linear_proj_weight_V_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_18 \
    op interface \
    ports { linear_proj_weight_V_18_address0 { O 9 vector } linear_proj_weight_V_18_ce0 { O 1 bit } linear_proj_weight_V_18_we0 { O 1 bit } linear_proj_weight_V_18_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 60 \
    name linear_proj_weight_V_19 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_19 \
    op interface \
    ports { linear_proj_weight_V_19_address0 { O 9 vector } linear_proj_weight_V_19_ce0 { O 1 bit } linear_proj_weight_V_19_we0 { O 1 bit } linear_proj_weight_V_19_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 61 \
    name linear_proj_weight_V_20 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_20 \
    op interface \
    ports { linear_proj_weight_V_20_address0 { O 9 vector } linear_proj_weight_V_20_ce0 { O 1 bit } linear_proj_weight_V_20_we0 { O 1 bit } linear_proj_weight_V_20_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 62 \
    name linear_proj_weight_V_21 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_21 \
    op interface \
    ports { linear_proj_weight_V_21_address0 { O 9 vector } linear_proj_weight_V_21_ce0 { O 1 bit } linear_proj_weight_V_21_we0 { O 1 bit } linear_proj_weight_V_21_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 63 \
    name linear_proj_weight_V_22 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_22 \
    op interface \
    ports { linear_proj_weight_V_22_address0 { O 9 vector } linear_proj_weight_V_22_ce0 { O 1 bit } linear_proj_weight_V_22_we0 { O 1 bit } linear_proj_weight_V_22_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 64 \
    name linear_proj_weight_V_23 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_23 \
    op interface \
    ports { linear_proj_weight_V_23_address0 { O 9 vector } linear_proj_weight_V_23_ce0 { O 1 bit } linear_proj_weight_V_23_we0 { O 1 bit } linear_proj_weight_V_23_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 65 \
    name linear_proj_weight_V_24 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_24 \
    op interface \
    ports { linear_proj_weight_V_24_address0 { O 9 vector } linear_proj_weight_V_24_ce0 { O 1 bit } linear_proj_weight_V_24_we0 { O 1 bit } linear_proj_weight_V_24_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 66 \
    name linear_proj_weight_V_25 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_25 \
    op interface \
    ports { linear_proj_weight_V_25_address0 { O 9 vector } linear_proj_weight_V_25_ce0 { O 1 bit } linear_proj_weight_V_25_we0 { O 1 bit } linear_proj_weight_V_25_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 67 \
    name linear_proj_weight_V_26 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_26 \
    op interface \
    ports { linear_proj_weight_V_26_address0 { O 9 vector } linear_proj_weight_V_26_ce0 { O 1 bit } linear_proj_weight_V_26_we0 { O 1 bit } linear_proj_weight_V_26_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 68 \
    name linear_proj_weight_V_27 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_27 \
    op interface \
    ports { linear_proj_weight_V_27_address0 { O 9 vector } linear_proj_weight_V_27_ce0 { O 1 bit } linear_proj_weight_V_27_we0 { O 1 bit } linear_proj_weight_V_27_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 69 \
    name linear_proj_weight_V_28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_28 \
    op interface \
    ports { linear_proj_weight_V_28_address0 { O 9 vector } linear_proj_weight_V_28_ce0 { O 1 bit } linear_proj_weight_V_28_we0 { O 1 bit } linear_proj_weight_V_28_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 70 \
    name linear_proj_weight_V_29 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_29 \
    op interface \
    ports { linear_proj_weight_V_29_address0 { O 9 vector } linear_proj_weight_V_29_ce0 { O 1 bit } linear_proj_weight_V_29_we0 { O 1 bit } linear_proj_weight_V_29_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 71 \
    name linear_proj_weight_V_30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_30 \
    op interface \
    ports { linear_proj_weight_V_30_address0 { O 9 vector } linear_proj_weight_V_30_ce0 { O 1 bit } linear_proj_weight_V_30_we0 { O 1 bit } linear_proj_weight_V_30_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 72 \
    name linear_proj_weight_V_31 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_31 \
    op interface \
    ports { linear_proj_weight_V_31_address0 { O 9 vector } linear_proj_weight_V_31_ce0 { O 1 bit } linear_proj_weight_V_31_we0 { O 1 bit } linear_proj_weight_V_31_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 73 \
    name linear_proj_weight_V_32 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_32 \
    op interface \
    ports { linear_proj_weight_V_32_address0 { O 9 vector } linear_proj_weight_V_32_ce0 { O 1 bit } linear_proj_weight_V_32_we0 { O 1 bit } linear_proj_weight_V_32_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 74 \
    name linear_proj_weight_V_33 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_33 \
    op interface \
    ports { linear_proj_weight_V_33_address0 { O 9 vector } linear_proj_weight_V_33_ce0 { O 1 bit } linear_proj_weight_V_33_we0 { O 1 bit } linear_proj_weight_V_33_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 75 \
    name linear_proj_weight_V_34 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_34 \
    op interface \
    ports { linear_proj_weight_V_34_address0 { O 9 vector } linear_proj_weight_V_34_ce0 { O 1 bit } linear_proj_weight_V_34_we0 { O 1 bit } linear_proj_weight_V_34_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 76 \
    name linear_proj_weight_V_35 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_35 \
    op interface \
    ports { linear_proj_weight_V_35_address0 { O 9 vector } linear_proj_weight_V_35_ce0 { O 1 bit } linear_proj_weight_V_35_we0 { O 1 bit } linear_proj_weight_V_35_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 77 \
    name linear_proj_weight_V_36 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_36 \
    op interface \
    ports { linear_proj_weight_V_36_address0 { O 9 vector } linear_proj_weight_V_36_ce0 { O 1 bit } linear_proj_weight_V_36_we0 { O 1 bit } linear_proj_weight_V_36_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 78 \
    name linear_proj_weight_V_37 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_37 \
    op interface \
    ports { linear_proj_weight_V_37_address0 { O 9 vector } linear_proj_weight_V_37_ce0 { O 1 bit } linear_proj_weight_V_37_we0 { O 1 bit } linear_proj_weight_V_37_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 79 \
    name linear_proj_weight_V_38 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_38 \
    op interface \
    ports { linear_proj_weight_V_38_address0 { O 9 vector } linear_proj_weight_V_38_ce0 { O 1 bit } linear_proj_weight_V_38_we0 { O 1 bit } linear_proj_weight_V_38_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 80 \
    name linear_proj_weight_V_39 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_39 \
    op interface \
    ports { linear_proj_weight_V_39_address0 { O 9 vector } linear_proj_weight_V_39_ce0 { O 1 bit } linear_proj_weight_V_39_we0 { O 1 bit } linear_proj_weight_V_39_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 81 \
    name linear_proj_weight_V_40 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_40 \
    op interface \
    ports { linear_proj_weight_V_40_address0 { O 9 vector } linear_proj_weight_V_40_ce0 { O 1 bit } linear_proj_weight_V_40_we0 { O 1 bit } linear_proj_weight_V_40_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 82 \
    name linear_proj_weight_V_41 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_41 \
    op interface \
    ports { linear_proj_weight_V_41_address0 { O 9 vector } linear_proj_weight_V_41_ce0 { O 1 bit } linear_proj_weight_V_41_we0 { O 1 bit } linear_proj_weight_V_41_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 83 \
    name linear_proj_weight_V_42 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_42 \
    op interface \
    ports { linear_proj_weight_V_42_address0 { O 9 vector } linear_proj_weight_V_42_ce0 { O 1 bit } linear_proj_weight_V_42_we0 { O 1 bit } linear_proj_weight_V_42_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 84 \
    name linear_proj_weight_V_43 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_43 \
    op interface \
    ports { linear_proj_weight_V_43_address0 { O 9 vector } linear_proj_weight_V_43_ce0 { O 1 bit } linear_proj_weight_V_43_we0 { O 1 bit } linear_proj_weight_V_43_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 85 \
    name linear_proj_weight_V_44 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_44 \
    op interface \
    ports { linear_proj_weight_V_44_address0 { O 9 vector } linear_proj_weight_V_44_ce0 { O 1 bit } linear_proj_weight_V_44_we0 { O 1 bit } linear_proj_weight_V_44_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 86 \
    name linear_proj_weight_V_45 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_45 \
    op interface \
    ports { linear_proj_weight_V_45_address0 { O 9 vector } linear_proj_weight_V_45_ce0 { O 1 bit } linear_proj_weight_V_45_we0 { O 1 bit } linear_proj_weight_V_45_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 87 \
    name linear_proj_weight_V_46 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_46 \
    op interface \
    ports { linear_proj_weight_V_46_address0 { O 9 vector } linear_proj_weight_V_46_ce0 { O 1 bit } linear_proj_weight_V_46_we0 { O 1 bit } linear_proj_weight_V_46_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 88 \
    name linear_proj_weight_V_47 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_47 \
    op interface \
    ports { linear_proj_weight_V_47_address0 { O 9 vector } linear_proj_weight_V_47_ce0 { O 1 bit } linear_proj_weight_V_47_we0 { O 1 bit } linear_proj_weight_V_47_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 89 \
    name linear_proj_weight_V_48 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_48 \
    op interface \
    ports { linear_proj_weight_V_48_address0 { O 9 vector } linear_proj_weight_V_48_ce0 { O 1 bit } linear_proj_weight_V_48_we0 { O 1 bit } linear_proj_weight_V_48_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 90 \
    name linear_proj_weight_V_49 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_49 \
    op interface \
    ports { linear_proj_weight_V_49_address0 { O 9 vector } linear_proj_weight_V_49_ce0 { O 1 bit } linear_proj_weight_V_49_we0 { O 1 bit } linear_proj_weight_V_49_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 91 \
    name linear_proj_weight_V_50 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_50 \
    op interface \
    ports { linear_proj_weight_V_50_address0 { O 9 vector } linear_proj_weight_V_50_ce0 { O 1 bit } linear_proj_weight_V_50_we0 { O 1 bit } linear_proj_weight_V_50_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 92 \
    name linear_proj_weight_V_51 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_51 \
    op interface \
    ports { linear_proj_weight_V_51_address0 { O 9 vector } linear_proj_weight_V_51_ce0 { O 1 bit } linear_proj_weight_V_51_we0 { O 1 bit } linear_proj_weight_V_51_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 93 \
    name linear_proj_weight_V_52 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_52 \
    op interface \
    ports { linear_proj_weight_V_52_address0 { O 9 vector } linear_proj_weight_V_52_ce0 { O 1 bit } linear_proj_weight_V_52_we0 { O 1 bit } linear_proj_weight_V_52_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 94 \
    name linear_proj_weight_V_53 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_53 \
    op interface \
    ports { linear_proj_weight_V_53_address0 { O 9 vector } linear_proj_weight_V_53_ce0 { O 1 bit } linear_proj_weight_V_53_we0 { O 1 bit } linear_proj_weight_V_53_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 95 \
    name linear_proj_weight_V_54 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_54 \
    op interface \
    ports { linear_proj_weight_V_54_address0 { O 9 vector } linear_proj_weight_V_54_ce0 { O 1 bit } linear_proj_weight_V_54_we0 { O 1 bit } linear_proj_weight_V_54_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 96 \
    name linear_proj_weight_V_55 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_55 \
    op interface \
    ports { linear_proj_weight_V_55_address0 { O 9 vector } linear_proj_weight_V_55_ce0 { O 1 bit } linear_proj_weight_V_55_we0 { O 1 bit } linear_proj_weight_V_55_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 97 \
    name linear_proj_weight_V_56 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_56 \
    op interface \
    ports { linear_proj_weight_V_56_address0 { O 9 vector } linear_proj_weight_V_56_ce0 { O 1 bit } linear_proj_weight_V_56_we0 { O 1 bit } linear_proj_weight_V_56_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 98 \
    name linear_proj_weight_V_57 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_57 \
    op interface \
    ports { linear_proj_weight_V_57_address0 { O 9 vector } linear_proj_weight_V_57_ce0 { O 1 bit } linear_proj_weight_V_57_we0 { O 1 bit } linear_proj_weight_V_57_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 99 \
    name linear_proj_weight_V_58 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_58 \
    op interface \
    ports { linear_proj_weight_V_58_address0 { O 9 vector } linear_proj_weight_V_58_ce0 { O 1 bit } linear_proj_weight_V_58_we0 { O 1 bit } linear_proj_weight_V_58_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 100 \
    name linear_proj_weight_V_59 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_59 \
    op interface \
    ports { linear_proj_weight_V_59_address0 { O 9 vector } linear_proj_weight_V_59_ce0 { O 1 bit } linear_proj_weight_V_59_we0 { O 1 bit } linear_proj_weight_V_59_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 101 \
    name linear_proj_weight_V_60 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_60 \
    op interface \
    ports { linear_proj_weight_V_60_address0 { O 9 vector } linear_proj_weight_V_60_ce0 { O 1 bit } linear_proj_weight_V_60_we0 { O 1 bit } linear_proj_weight_V_60_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 102 \
    name linear_proj_weight_V_61 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_61 \
    op interface \
    ports { linear_proj_weight_V_61_address0 { O 9 vector } linear_proj_weight_V_61_ce0 { O 1 bit } linear_proj_weight_V_61_we0 { O 1 bit } linear_proj_weight_V_61_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 103 \
    name linear_proj_weight_V_62 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_62 \
    op interface \
    ports { linear_proj_weight_V_62_address0 { O 9 vector } linear_proj_weight_V_62_ce0 { O 1 bit } linear_proj_weight_V_62_we0 { O 1 bit } linear_proj_weight_V_62_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 104 \
    name linear_proj_weight_V_63 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename linear_proj_weight_V_63 \
    op interface \
    ports { linear_proj_weight_V_63_address0 { O 9 vector } linear_proj_weight_V_63_ce0 { O 1 bit } linear_proj_weight_V_63_we0 { O 1 bit } linear_proj_weight_V_63_d0 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'linear_proj_weight_V_63'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name gat_net_linear_proj_weight_fixed \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gat_net_linear_proj_weight_fixed \
    op interface \
    ports { gat_net_linear_proj_weight_fixed { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
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


