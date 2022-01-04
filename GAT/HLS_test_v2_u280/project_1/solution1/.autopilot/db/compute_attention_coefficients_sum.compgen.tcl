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
    id 1268 \
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
    id 1269 \
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
    id 1270 \
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
    id 1271 \
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
    id 1272 \
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
    id 1273 \
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
    id 1274 \
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
    id 1275 \
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
    id 1276 \
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
    id 1277 \
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
    id 1278 \
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
    id 1279 \
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
    id 1280 \
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
    id 1281 \
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
    id 1282 \
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
    id 1283 \
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
    id 1284 \
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
    id 1285 \
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
    id 1286 \
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
    id 1287 \
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
    id 1288 \
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
    id 1289 \
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
    id 1290 \
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
    id 1291 \
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
    id 1292 \
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
    id 1293 \
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
    id 1294 \
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
    id 1295 \
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
    id 1296 \
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
    id 1297 \
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
    id 1298 \
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
    id 1299 \
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
    id 1300 \
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
    id 1301 \
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
    id 1302 \
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
    id 1303 \
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
    id 1304 \
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
    id 1305 \
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
    id 1306 \
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


