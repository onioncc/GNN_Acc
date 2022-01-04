# This script segment is generated automatically by AutoPilot

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
    id 2482 \
    name attention_coefficients_sum_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename attention_coefficients_sum_V \
    op interface \
    ports { attention_coefficients_sum_V_address1 { O 9 vector } attention_coefficients_sum_V_ce1 { O 1 bit } attention_coefficients_sum_V_we1 { O 1 bit } attention_coefficients_sum_V_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'attention_coefficients_sum_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2483 \
    name all_scores_V_18 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_18 \
    op interface \
    ports { all_scores_V_18_address0 { O 9 vector } all_scores_V_18_ce0 { O 1 bit } all_scores_V_18_q0 { I 28 vector } all_scores_V_18_address1 { O 9 vector } all_scores_V_18_ce1 { O 1 bit } all_scores_V_18_we1 { O 1 bit } all_scores_V_18_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2484 \
    name all_scores_V_17 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_17 \
    op interface \
    ports { all_scores_V_17_address0 { O 9 vector } all_scores_V_17_ce0 { O 1 bit } all_scores_V_17_q0 { I 28 vector } all_scores_V_17_address1 { O 9 vector } all_scores_V_17_ce1 { O 1 bit } all_scores_V_17_we1 { O 1 bit } all_scores_V_17_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2485 \
    name all_scores_V_16 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_16 \
    op interface \
    ports { all_scores_V_16_address0 { O 9 vector } all_scores_V_16_ce0 { O 1 bit } all_scores_V_16_q0 { I 28 vector } all_scores_V_16_address1 { O 9 vector } all_scores_V_16_ce1 { O 1 bit } all_scores_V_16_we1 { O 1 bit } all_scores_V_16_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2486 \
    name all_scores_V_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_15 \
    op interface \
    ports { all_scores_V_15_address0 { O 9 vector } all_scores_V_15_ce0 { O 1 bit } all_scores_V_15_q0 { I 28 vector } all_scores_V_15_address1 { O 9 vector } all_scores_V_15_ce1 { O 1 bit } all_scores_V_15_we1 { O 1 bit } all_scores_V_15_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2487 \
    name all_scores_V_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_14 \
    op interface \
    ports { all_scores_V_14_address0 { O 9 vector } all_scores_V_14_ce0 { O 1 bit } all_scores_V_14_q0 { I 28 vector } all_scores_V_14_address1 { O 9 vector } all_scores_V_14_ce1 { O 1 bit } all_scores_V_14_we1 { O 1 bit } all_scores_V_14_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2488 \
    name all_scores_V_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_13 \
    op interface \
    ports { all_scores_V_13_address0 { O 9 vector } all_scores_V_13_ce0 { O 1 bit } all_scores_V_13_q0 { I 28 vector } all_scores_V_13_address1 { O 9 vector } all_scores_V_13_ce1 { O 1 bit } all_scores_V_13_we1 { O 1 bit } all_scores_V_13_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2489 \
    name all_scores_V_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_12 \
    op interface \
    ports { all_scores_V_12_address0 { O 9 vector } all_scores_V_12_ce0 { O 1 bit } all_scores_V_12_q0 { I 28 vector } all_scores_V_12_address1 { O 9 vector } all_scores_V_12_ce1 { O 1 bit } all_scores_V_12_we1 { O 1 bit } all_scores_V_12_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2490 \
    name all_scores_V_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_11 \
    op interface \
    ports { all_scores_V_11_address0 { O 9 vector } all_scores_V_11_ce0 { O 1 bit } all_scores_V_11_q0 { I 28 vector } all_scores_V_11_address1 { O 9 vector } all_scores_V_11_ce1 { O 1 bit } all_scores_V_11_we1 { O 1 bit } all_scores_V_11_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2491 \
    name all_scores_V_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_10 \
    op interface \
    ports { all_scores_V_10_address0 { O 9 vector } all_scores_V_10_ce0 { O 1 bit } all_scores_V_10_q0 { I 28 vector } all_scores_V_10_address1 { O 9 vector } all_scores_V_10_ce1 { O 1 bit } all_scores_V_10_we1 { O 1 bit } all_scores_V_10_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2492 \
    name all_scores_V_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_9 \
    op interface \
    ports { all_scores_V_9_address0 { O 9 vector } all_scores_V_9_ce0 { O 1 bit } all_scores_V_9_q0 { I 28 vector } all_scores_V_9_address1 { O 9 vector } all_scores_V_9_ce1 { O 1 bit } all_scores_V_9_we1 { O 1 bit } all_scores_V_9_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2493 \
    name all_scores_V_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_8 \
    op interface \
    ports { all_scores_V_8_address0 { O 9 vector } all_scores_V_8_ce0 { O 1 bit } all_scores_V_8_q0 { I 28 vector } all_scores_V_8_address1 { O 9 vector } all_scores_V_8_ce1 { O 1 bit } all_scores_V_8_we1 { O 1 bit } all_scores_V_8_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2494 \
    name all_scores_V_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_7 \
    op interface \
    ports { all_scores_V_7_address0 { O 9 vector } all_scores_V_7_ce0 { O 1 bit } all_scores_V_7_q0 { I 28 vector } all_scores_V_7_address1 { O 9 vector } all_scores_V_7_ce1 { O 1 bit } all_scores_V_7_we1 { O 1 bit } all_scores_V_7_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2495 \
    name all_scores_V_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_6 \
    op interface \
    ports { all_scores_V_6_address0 { O 9 vector } all_scores_V_6_ce0 { O 1 bit } all_scores_V_6_q0 { I 28 vector } all_scores_V_6_address1 { O 9 vector } all_scores_V_6_ce1 { O 1 bit } all_scores_V_6_we1 { O 1 bit } all_scores_V_6_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2496 \
    name all_scores_V_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_5 \
    op interface \
    ports { all_scores_V_5_address0 { O 9 vector } all_scores_V_5_ce0 { O 1 bit } all_scores_V_5_q0 { I 28 vector } all_scores_V_5_address1 { O 9 vector } all_scores_V_5_ce1 { O 1 bit } all_scores_V_5_we1 { O 1 bit } all_scores_V_5_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2497 \
    name all_scores_V_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_4 \
    op interface \
    ports { all_scores_V_4_address0 { O 9 vector } all_scores_V_4_ce0 { O 1 bit } all_scores_V_4_q0 { I 28 vector } all_scores_V_4_address1 { O 9 vector } all_scores_V_4_ce1 { O 1 bit } all_scores_V_4_we1 { O 1 bit } all_scores_V_4_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2498 \
    name all_scores_V_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_3 \
    op interface \
    ports { all_scores_V_3_address0 { O 9 vector } all_scores_V_3_ce0 { O 1 bit } all_scores_V_3_q0 { I 28 vector } all_scores_V_3_address1 { O 9 vector } all_scores_V_3_ce1 { O 1 bit } all_scores_V_3_we1 { O 1 bit } all_scores_V_3_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2499 \
    name all_scores_V_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_2 \
    op interface \
    ports { all_scores_V_2_address0 { O 9 vector } all_scores_V_2_ce0 { O 1 bit } all_scores_V_2_q0 { I 28 vector } all_scores_V_2_address1 { O 9 vector } all_scores_V_2_ce1 { O 1 bit } all_scores_V_2_we1 { O 1 bit } all_scores_V_2_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2500 \
    name all_scores_V_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_1 \
    op interface \
    ports { all_scores_V_1_address0 { O 9 vector } all_scores_V_1_ce0 { O 1 bit } all_scores_V_1_q0 { I 28 vector } all_scores_V_1_address1 { O 9 vector } all_scores_V_1_ce1 { O 1 bit } all_scores_V_1_we1 { O 1 bit } all_scores_V_1_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2501 \
    name all_scores_V_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename all_scores_V_0 \
    op interface \
    ports { all_scores_V_0_address0 { O 9 vector } all_scores_V_0_ce0 { O 1 bit } all_scores_V_0_q0 { I 28 vector } all_scores_V_0_address1 { O 9 vector } all_scores_V_0_ce1 { O 1 bit } all_scores_V_0_we1 { O 1 bit } all_scores_V_0_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'all_scores_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2502 \
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
    id 2503 \
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
    id 2504 \
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
    id 2505 \
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
    id 2506 \
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
    id 2507 \
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
    id 2508 \
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
    id 2509 \
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
    id 2510 \
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
    id 2511 \
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
    id 2512 \
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
    id 2513 \
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
    id 2514 \
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
    id 2515 \
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
    id 2516 \
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
    id 2517 \
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
    id 2518 \
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
    id 2519 \
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
    id 2520 \
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


