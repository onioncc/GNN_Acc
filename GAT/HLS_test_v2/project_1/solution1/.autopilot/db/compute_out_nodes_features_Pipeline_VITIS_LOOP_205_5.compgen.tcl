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
    id 2264 \
    name out_nodes_features_prep_V_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_0 \
    op interface \
    ports { out_nodes_features_prep_V_0_address1 { O 7 vector } out_nodes_features_prep_V_0_ce1 { O 1 bit } out_nodes_features_prep_V_0_we1 { O 1 bit } out_nodes_features_prep_V_0_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2265 \
    name out_nodes_features_sum_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename out_nodes_features_sum_V \
    op interface \
    ports { out_nodes_features_sum_V_address0 { O 4 vector } out_nodes_features_sum_V_ce0 { O 1 bit } out_nodes_features_sum_V_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_sum_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2266 \
    name out_nodes_features_prep_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_1 \
    op interface \
    ports { out_nodes_features_prep_V_1_address1 { O 7 vector } out_nodes_features_prep_V_1_ce1 { O 1 bit } out_nodes_features_prep_V_1_we1 { O 1 bit } out_nodes_features_prep_V_1_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2267 \
    name out_nodes_features_prep_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_2 \
    op interface \
    ports { out_nodes_features_prep_V_2_address1 { O 7 vector } out_nodes_features_prep_V_2_ce1 { O 1 bit } out_nodes_features_prep_V_2_we1 { O 1 bit } out_nodes_features_prep_V_2_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2268 \
    name out_nodes_features_prep_V_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_3 \
    op interface \
    ports { out_nodes_features_prep_V_3_address1 { O 7 vector } out_nodes_features_prep_V_3_ce1 { O 1 bit } out_nodes_features_prep_V_3_we1 { O 1 bit } out_nodes_features_prep_V_3_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2269 \
    name out_nodes_features_prep_V_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_4 \
    op interface \
    ports { out_nodes_features_prep_V_4_address1 { O 7 vector } out_nodes_features_prep_V_4_ce1 { O 1 bit } out_nodes_features_prep_V_4_we1 { O 1 bit } out_nodes_features_prep_V_4_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2270 \
    name out_nodes_features_prep_V_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_5 \
    op interface \
    ports { out_nodes_features_prep_V_5_address1 { O 7 vector } out_nodes_features_prep_V_5_ce1 { O 1 bit } out_nodes_features_prep_V_5_we1 { O 1 bit } out_nodes_features_prep_V_5_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2271 \
    name out_nodes_features_prep_V_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_6 \
    op interface \
    ports { out_nodes_features_prep_V_6_address1 { O 7 vector } out_nodes_features_prep_V_6_ce1 { O 1 bit } out_nodes_features_prep_V_6_we1 { O 1 bit } out_nodes_features_prep_V_6_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2272 \
    name out_nodes_features_prep_V_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_7 \
    op interface \
    ports { out_nodes_features_prep_V_7_address1 { O 7 vector } out_nodes_features_prep_V_7_ce1 { O 1 bit } out_nodes_features_prep_V_7_we1 { O 1 bit } out_nodes_features_prep_V_7_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2273 \
    name out_nodes_features_prep_V_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_8 \
    op interface \
    ports { out_nodes_features_prep_V_8_address1 { O 7 vector } out_nodes_features_prep_V_8_ce1 { O 1 bit } out_nodes_features_prep_V_8_we1 { O 1 bit } out_nodes_features_prep_V_8_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2274 \
    name out_nodes_features_prep_V_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_9 \
    op interface \
    ports { out_nodes_features_prep_V_9_address1 { O 7 vector } out_nodes_features_prep_V_9_ce1 { O 1 bit } out_nodes_features_prep_V_9_we1 { O 1 bit } out_nodes_features_prep_V_9_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2275 \
    name out_nodes_features_prep_V_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_10 \
    op interface \
    ports { out_nodes_features_prep_V_10_address1 { O 7 vector } out_nodes_features_prep_V_10_ce1 { O 1 bit } out_nodes_features_prep_V_10_we1 { O 1 bit } out_nodes_features_prep_V_10_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2276 \
    name out_nodes_features_prep_V_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_11 \
    op interface \
    ports { out_nodes_features_prep_V_11_address1 { O 7 vector } out_nodes_features_prep_V_11_ce1 { O 1 bit } out_nodes_features_prep_V_11_we1 { O 1 bit } out_nodes_features_prep_V_11_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2277 \
    name out_nodes_features_prep_V_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_12 \
    op interface \
    ports { out_nodes_features_prep_V_12_address1 { O 7 vector } out_nodes_features_prep_V_12_ce1 { O 1 bit } out_nodes_features_prep_V_12_we1 { O 1 bit } out_nodes_features_prep_V_12_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2278 \
    name out_nodes_features_prep_V_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_13 \
    op interface \
    ports { out_nodes_features_prep_V_13_address1 { O 7 vector } out_nodes_features_prep_V_13_ce1 { O 1 bit } out_nodes_features_prep_V_13_we1 { O 1 bit } out_nodes_features_prep_V_13_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2279 \
    name out_nodes_features_prep_V_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_14 \
    op interface \
    ports { out_nodes_features_prep_V_14_address1 { O 7 vector } out_nodes_features_prep_V_14_ce1 { O 1 bit } out_nodes_features_prep_V_14_we1 { O 1 bit } out_nodes_features_prep_V_14_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2280 \
    name out_nodes_features_prep_V_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_15 \
    op interface \
    ports { out_nodes_features_prep_V_15_address1 { O 7 vector } out_nodes_features_prep_V_15_ce1 { O 1 bit } out_nodes_features_prep_V_15_we1 { O 1 bit } out_nodes_features_prep_V_15_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2281 \
    name out_nodes_features_prep_V_16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_16 \
    op interface \
    ports { out_nodes_features_prep_V_16_address1 { O 7 vector } out_nodes_features_prep_V_16_ce1 { O 1 bit } out_nodes_features_prep_V_16_we1 { O 1 bit } out_nodes_features_prep_V_16_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2282 \
    name out_nodes_features_prep_V_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_17 \
    op interface \
    ports { out_nodes_features_prep_V_17_address1 { O 7 vector } out_nodes_features_prep_V_17_ce1 { O 1 bit } out_nodes_features_prep_V_17_we1 { O 1 bit } out_nodes_features_prep_V_17_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2283 \
    name out_nodes_features_prep_V_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_18 \
    op interface \
    ports { out_nodes_features_prep_V_18_address1 { O 7 vector } out_nodes_features_prep_V_18_ce1 { O 1 bit } out_nodes_features_prep_V_18_we1 { O 1 bit } out_nodes_features_prep_V_18_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2284 \
    name out_nodes_features_prep_V_19 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_19 \
    op interface \
    ports { out_nodes_features_prep_V_19_address1 { O 7 vector } out_nodes_features_prep_V_19_ce1 { O 1 bit } out_nodes_features_prep_V_19_we1 { O 1 bit } out_nodes_features_prep_V_19_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2285 \
    name out_nodes_features_prep_V_20 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_20 \
    op interface \
    ports { out_nodes_features_prep_V_20_address1 { O 7 vector } out_nodes_features_prep_V_20_ce1 { O 1 bit } out_nodes_features_prep_V_20_we1 { O 1 bit } out_nodes_features_prep_V_20_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2286 \
    name out_nodes_features_prep_V_21 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_21 \
    op interface \
    ports { out_nodes_features_prep_V_21_address1 { O 7 vector } out_nodes_features_prep_V_21_ce1 { O 1 bit } out_nodes_features_prep_V_21_we1 { O 1 bit } out_nodes_features_prep_V_21_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2287 \
    name out_nodes_features_prep_V_22 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_22 \
    op interface \
    ports { out_nodes_features_prep_V_22_address1 { O 7 vector } out_nodes_features_prep_V_22_ce1 { O 1 bit } out_nodes_features_prep_V_22_we1 { O 1 bit } out_nodes_features_prep_V_22_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2288 \
    name out_nodes_features_prep_V_23 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_23 \
    op interface \
    ports { out_nodes_features_prep_V_23_address1 { O 7 vector } out_nodes_features_prep_V_23_ce1 { O 1 bit } out_nodes_features_prep_V_23_we1 { O 1 bit } out_nodes_features_prep_V_23_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2289 \
    name out_nodes_features_prep_V_24 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_24 \
    op interface \
    ports { out_nodes_features_prep_V_24_address1 { O 7 vector } out_nodes_features_prep_V_24_ce1 { O 1 bit } out_nodes_features_prep_V_24_we1 { O 1 bit } out_nodes_features_prep_V_24_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2290 \
    name out_nodes_features_prep_V_25 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_25 \
    op interface \
    ports { out_nodes_features_prep_V_25_address1 { O 7 vector } out_nodes_features_prep_V_25_ce1 { O 1 bit } out_nodes_features_prep_V_25_we1 { O 1 bit } out_nodes_features_prep_V_25_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2291 \
    name out_nodes_features_prep_V_26 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_26 \
    op interface \
    ports { out_nodes_features_prep_V_26_address1 { O 7 vector } out_nodes_features_prep_V_26_ce1 { O 1 bit } out_nodes_features_prep_V_26_we1 { O 1 bit } out_nodes_features_prep_V_26_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2292 \
    name out_nodes_features_prep_V_27 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_27 \
    op interface \
    ports { out_nodes_features_prep_V_27_address1 { O 7 vector } out_nodes_features_prep_V_27_ce1 { O 1 bit } out_nodes_features_prep_V_27_we1 { O 1 bit } out_nodes_features_prep_V_27_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2293 \
    name out_nodes_features_prep_V_28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_28 \
    op interface \
    ports { out_nodes_features_prep_V_28_address1 { O 7 vector } out_nodes_features_prep_V_28_ce1 { O 1 bit } out_nodes_features_prep_V_28_we1 { O 1 bit } out_nodes_features_prep_V_28_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2294 \
    name out_nodes_features_prep_V_29 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_29 \
    op interface \
    ports { out_nodes_features_prep_V_29_address1 { O 7 vector } out_nodes_features_prep_V_29_ce1 { O 1 bit } out_nodes_features_prep_V_29_we1 { O 1 bit } out_nodes_features_prep_V_29_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2295 \
    name out_nodes_features_prep_V_30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_30 \
    op interface \
    ports { out_nodes_features_prep_V_30_address1 { O 7 vector } out_nodes_features_prep_V_30_ce1 { O 1 bit } out_nodes_features_prep_V_30_we1 { O 1 bit } out_nodes_features_prep_V_30_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2296 \
    name out_nodes_features_prep_V_31 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_31 \
    op interface \
    ports { out_nodes_features_prep_V_31_address1 { O 7 vector } out_nodes_features_prep_V_31_ce1 { O 1 bit } out_nodes_features_prep_V_31_we1 { O 1 bit } out_nodes_features_prep_V_31_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2297 \
    name out_nodes_features_prep_V_32 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_32 \
    op interface \
    ports { out_nodes_features_prep_V_32_address1 { O 7 vector } out_nodes_features_prep_V_32_ce1 { O 1 bit } out_nodes_features_prep_V_32_we1 { O 1 bit } out_nodes_features_prep_V_32_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2298 \
    name out_nodes_features_prep_V_33 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_33 \
    op interface \
    ports { out_nodes_features_prep_V_33_address1 { O 7 vector } out_nodes_features_prep_V_33_ce1 { O 1 bit } out_nodes_features_prep_V_33_we1 { O 1 bit } out_nodes_features_prep_V_33_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2299 \
    name out_nodes_features_prep_V_34 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_34 \
    op interface \
    ports { out_nodes_features_prep_V_34_address1 { O 7 vector } out_nodes_features_prep_V_34_ce1 { O 1 bit } out_nodes_features_prep_V_34_we1 { O 1 bit } out_nodes_features_prep_V_34_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2300 \
    name out_nodes_features_prep_V_35 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_35 \
    op interface \
    ports { out_nodes_features_prep_V_35_address1 { O 7 vector } out_nodes_features_prep_V_35_ce1 { O 1 bit } out_nodes_features_prep_V_35_we1 { O 1 bit } out_nodes_features_prep_V_35_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2301 \
    name out_nodes_features_prep_V_36 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_36 \
    op interface \
    ports { out_nodes_features_prep_V_36_address1 { O 7 vector } out_nodes_features_prep_V_36_ce1 { O 1 bit } out_nodes_features_prep_V_36_we1 { O 1 bit } out_nodes_features_prep_V_36_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2302 \
    name out_nodes_features_prep_V_37 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_37 \
    op interface \
    ports { out_nodes_features_prep_V_37_address1 { O 7 vector } out_nodes_features_prep_V_37_ce1 { O 1 bit } out_nodes_features_prep_V_37_we1 { O 1 bit } out_nodes_features_prep_V_37_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2303 \
    name out_nodes_features_prep_V_38 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_38 \
    op interface \
    ports { out_nodes_features_prep_V_38_address1 { O 7 vector } out_nodes_features_prep_V_38_ce1 { O 1 bit } out_nodes_features_prep_V_38_we1 { O 1 bit } out_nodes_features_prep_V_38_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2304 \
    name out_nodes_features_prep_V_39 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_39 \
    op interface \
    ports { out_nodes_features_prep_V_39_address1 { O 7 vector } out_nodes_features_prep_V_39_ce1 { O 1 bit } out_nodes_features_prep_V_39_we1 { O 1 bit } out_nodes_features_prep_V_39_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2305 \
    name out_nodes_features_prep_V_40 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_40 \
    op interface \
    ports { out_nodes_features_prep_V_40_address1 { O 7 vector } out_nodes_features_prep_V_40_ce1 { O 1 bit } out_nodes_features_prep_V_40_we1 { O 1 bit } out_nodes_features_prep_V_40_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2306 \
    name out_nodes_features_prep_V_41 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_41 \
    op interface \
    ports { out_nodes_features_prep_V_41_address1 { O 7 vector } out_nodes_features_prep_V_41_ce1 { O 1 bit } out_nodes_features_prep_V_41_we1 { O 1 bit } out_nodes_features_prep_V_41_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2307 \
    name out_nodes_features_prep_V_42 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_42 \
    op interface \
    ports { out_nodes_features_prep_V_42_address1 { O 7 vector } out_nodes_features_prep_V_42_ce1 { O 1 bit } out_nodes_features_prep_V_42_we1 { O 1 bit } out_nodes_features_prep_V_42_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2308 \
    name out_nodes_features_prep_V_43 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_43 \
    op interface \
    ports { out_nodes_features_prep_V_43_address1 { O 7 vector } out_nodes_features_prep_V_43_ce1 { O 1 bit } out_nodes_features_prep_V_43_we1 { O 1 bit } out_nodes_features_prep_V_43_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2309 \
    name out_nodes_features_prep_V_44 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_44 \
    op interface \
    ports { out_nodes_features_prep_V_44_address1 { O 7 vector } out_nodes_features_prep_V_44_ce1 { O 1 bit } out_nodes_features_prep_V_44_we1 { O 1 bit } out_nodes_features_prep_V_44_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2310 \
    name out_nodes_features_prep_V_45 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_45 \
    op interface \
    ports { out_nodes_features_prep_V_45_address1 { O 7 vector } out_nodes_features_prep_V_45_ce1 { O 1 bit } out_nodes_features_prep_V_45_we1 { O 1 bit } out_nodes_features_prep_V_45_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2311 \
    name out_nodes_features_prep_V_46 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_46 \
    op interface \
    ports { out_nodes_features_prep_V_46_address1 { O 7 vector } out_nodes_features_prep_V_46_ce1 { O 1 bit } out_nodes_features_prep_V_46_we1 { O 1 bit } out_nodes_features_prep_V_46_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2312 \
    name out_nodes_features_prep_V_47 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_47 \
    op interface \
    ports { out_nodes_features_prep_V_47_address1 { O 7 vector } out_nodes_features_prep_V_47_ce1 { O 1 bit } out_nodes_features_prep_V_47_we1 { O 1 bit } out_nodes_features_prep_V_47_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2313 \
    name out_nodes_features_prep_V_48 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_48 \
    op interface \
    ports { out_nodes_features_prep_V_48_address1 { O 7 vector } out_nodes_features_prep_V_48_ce1 { O 1 bit } out_nodes_features_prep_V_48_we1 { O 1 bit } out_nodes_features_prep_V_48_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2314 \
    name out_nodes_features_prep_V_49 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_49 \
    op interface \
    ports { out_nodes_features_prep_V_49_address1 { O 7 vector } out_nodes_features_prep_V_49_ce1 { O 1 bit } out_nodes_features_prep_V_49_we1 { O 1 bit } out_nodes_features_prep_V_49_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2315 \
    name out_nodes_features_prep_V_50 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_50 \
    op interface \
    ports { out_nodes_features_prep_V_50_address1 { O 7 vector } out_nodes_features_prep_V_50_ce1 { O 1 bit } out_nodes_features_prep_V_50_we1 { O 1 bit } out_nodes_features_prep_V_50_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2316 \
    name out_nodes_features_prep_V_51 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_51 \
    op interface \
    ports { out_nodes_features_prep_V_51_address1 { O 7 vector } out_nodes_features_prep_V_51_ce1 { O 1 bit } out_nodes_features_prep_V_51_we1 { O 1 bit } out_nodes_features_prep_V_51_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2317 \
    name out_nodes_features_prep_V_52 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_52 \
    op interface \
    ports { out_nodes_features_prep_V_52_address1 { O 7 vector } out_nodes_features_prep_V_52_ce1 { O 1 bit } out_nodes_features_prep_V_52_we1 { O 1 bit } out_nodes_features_prep_V_52_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2318 \
    name out_nodes_features_prep_V_53 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_53 \
    op interface \
    ports { out_nodes_features_prep_V_53_address1 { O 7 vector } out_nodes_features_prep_V_53_ce1 { O 1 bit } out_nodes_features_prep_V_53_we1 { O 1 bit } out_nodes_features_prep_V_53_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2319 \
    name out_nodes_features_prep_V_54 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_54 \
    op interface \
    ports { out_nodes_features_prep_V_54_address1 { O 7 vector } out_nodes_features_prep_V_54_ce1 { O 1 bit } out_nodes_features_prep_V_54_we1 { O 1 bit } out_nodes_features_prep_V_54_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2320 \
    name out_nodes_features_prep_V_55 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_55 \
    op interface \
    ports { out_nodes_features_prep_V_55_address1 { O 7 vector } out_nodes_features_prep_V_55_ce1 { O 1 bit } out_nodes_features_prep_V_55_we1 { O 1 bit } out_nodes_features_prep_V_55_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2321 \
    name out_nodes_features_prep_V_56 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_56 \
    op interface \
    ports { out_nodes_features_prep_V_56_address1 { O 7 vector } out_nodes_features_prep_V_56_ce1 { O 1 bit } out_nodes_features_prep_V_56_we1 { O 1 bit } out_nodes_features_prep_V_56_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2322 \
    name out_nodes_features_prep_V_57 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_57 \
    op interface \
    ports { out_nodes_features_prep_V_57_address1 { O 7 vector } out_nodes_features_prep_V_57_ce1 { O 1 bit } out_nodes_features_prep_V_57_we1 { O 1 bit } out_nodes_features_prep_V_57_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2323 \
    name out_nodes_features_prep_V_58 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_58 \
    op interface \
    ports { out_nodes_features_prep_V_58_address1 { O 7 vector } out_nodes_features_prep_V_58_ce1 { O 1 bit } out_nodes_features_prep_V_58_we1 { O 1 bit } out_nodes_features_prep_V_58_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2324 \
    name out_nodes_features_prep_V_59 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_59 \
    op interface \
    ports { out_nodes_features_prep_V_59_address1 { O 7 vector } out_nodes_features_prep_V_59_ce1 { O 1 bit } out_nodes_features_prep_V_59_we1 { O 1 bit } out_nodes_features_prep_V_59_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2325 \
    name out_nodes_features_prep_V_60 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_60 \
    op interface \
    ports { out_nodes_features_prep_V_60_address1 { O 7 vector } out_nodes_features_prep_V_60_ce1 { O 1 bit } out_nodes_features_prep_V_60_we1 { O 1 bit } out_nodes_features_prep_V_60_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2326 \
    name out_nodes_features_prep_V_61 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_61 \
    op interface \
    ports { out_nodes_features_prep_V_61_address1 { O 7 vector } out_nodes_features_prep_V_61_ce1 { O 1 bit } out_nodes_features_prep_V_61_we1 { O 1 bit } out_nodes_features_prep_V_61_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2327 \
    name out_nodes_features_prep_V_62 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_62 \
    op interface \
    ports { out_nodes_features_prep_V_62_address1 { O 7 vector } out_nodes_features_prep_V_62_ce1 { O 1 bit } out_nodes_features_prep_V_62_we1 { O 1 bit } out_nodes_features_prep_V_62_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 2328 \
    name out_nodes_features_prep_V_63 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename out_nodes_features_prep_V_63 \
    op interface \
    ports { out_nodes_features_prep_V_63_address1 { O 7 vector } out_nodes_features_prep_V_63_ce1 { O 1 bit } out_nodes_features_prep_V_63_we1 { O 1 bit } out_nodes_features_prep_V_63_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_nodes_features_prep_V_63'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2262 \
    name zext_ln191 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln191 \
    op interface \
    ports { zext_ln191 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2263 \
    name nh_cast_mid2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nh_cast_mid2 \
    op interface \
    ports { nh_cast_mid2 { I 2 vector } } \
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


