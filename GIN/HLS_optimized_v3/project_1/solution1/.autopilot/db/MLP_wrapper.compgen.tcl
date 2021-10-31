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
    id 546 \
    name emb_vec \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename emb_vec \
    op interface \
    ports { emb_vec_address0 { O 7 vector } emb_vec_ce0 { O 1 bit } emb_vec_we0 { O 1 bit } emb_vec_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'emb_vec'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 547 \
    name message_tb \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename message_tb \
    op interface \
    ports { message_tb_address0 { O 15 vector } message_tb_ce0 { O 1 bit } message_tb_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'message_tb'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 549 \
    name node_embedding_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename node_embedding_V \
    op interface \
    ports { node_embedding_V_address0 { O 15 vector } node_embedding_V_ce0 { O 1 bit } node_embedding_V_q0 { I 32 vector } node_embedding_V_address1 { O 15 vector } node_embedding_V_ce1 { O 1 bit } node_embedding_V_we1 { O 1 bit } node_embedding_V_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name mlp_in_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in_read \
    op interface \
    ports { mlp_in_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name mlp_in12_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in12_read \
    op interface \
    ports { mlp_in12_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name mlp_in2_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in2_read \
    op interface \
    ports { mlp_in2_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name mlp_in3_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in3_read \
    op interface \
    ports { mlp_in3_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name mlp_in4_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in4_read \
    op interface \
    ports { mlp_in4_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name mlp_in5_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in5_read \
    op interface \
    ports { mlp_in5_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name mlp_in6_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in6_read \
    op interface \
    ports { mlp_in6_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name mlp_in7_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in7_read \
    op interface \
    ports { mlp_in7_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name mlp_in8_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in8_read \
    op interface \
    ports { mlp_in8_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name mlp_in9_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in9_read \
    op interface \
    ports { mlp_in9_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name mlp_in10_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in10_read \
    op interface \
    ports { mlp_in10_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name mlp_in11_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in11_read \
    op interface \
    ports { mlp_in11_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name mlp_in1214_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in1214_read \
    op interface \
    ports { mlp_in1214_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name mlp_in13_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in13_read \
    op interface \
    ports { mlp_in13_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name mlp_in14_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in14_read \
    op interface \
    ports { mlp_in14_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name mlp_in15_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in15_read \
    op interface \
    ports { mlp_in15_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name mlp_in16_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in16_read \
    op interface \
    ports { mlp_in16_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name mlp_in17_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in17_read \
    op interface \
    ports { mlp_in17_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name mlp_in18_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in18_read \
    op interface \
    ports { mlp_in18_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name mlp_in19_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in19_read \
    op interface \
    ports { mlp_in19_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name mlp_in20_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in20_read \
    op interface \
    ports { mlp_in20_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name mlp_in21_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in21_read \
    op interface \
    ports { mlp_in21_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 367 \
    name mlp_in22_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in22_read \
    op interface \
    ports { mlp_in22_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
    name mlp_in23_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in23_read \
    op interface \
    ports { mlp_in23_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 369 \
    name mlp_in2427_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in2427_read \
    op interface \
    ports { mlp_in2427_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 370 \
    name mlp_in25_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in25_read \
    op interface \
    ports { mlp_in25_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name mlp_in26_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in26_read \
    op interface \
    ports { mlp_in26_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name mlp_in27_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in27_read \
    op interface \
    ports { mlp_in27_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name mlp_in28_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in28_read \
    op interface \
    ports { mlp_in28_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name mlp_in29_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in29_read \
    op interface \
    ports { mlp_in29_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name mlp_in30_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in30_read \
    op interface \
    ports { mlp_in30_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name mlp_in31_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in31_read \
    op interface \
    ports { mlp_in31_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name mlp_in32_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in32_read \
    op interface \
    ports { mlp_in32_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name mlp_in33_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in33_read \
    op interface \
    ports { mlp_in33_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name mlp_in34_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in34_read \
    op interface \
    ports { mlp_in34_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name mlp_in3539_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in3539_read \
    op interface \
    ports { mlp_in3539_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name mlp_in36_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in36_read \
    op interface \
    ports { mlp_in36_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name mlp_in37_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in37_read \
    op interface \
    ports { mlp_in37_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name mlp_in38_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in38_read \
    op interface \
    ports { mlp_in38_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name mlp_in39_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in39_read \
    op interface \
    ports { mlp_in39_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name mlp_in40_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in40_read \
    op interface \
    ports { mlp_in40_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name mlp_in41_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in41_read \
    op interface \
    ports { mlp_in41_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name mlp_in42_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in42_read \
    op interface \
    ports { mlp_in42_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name mlp_in43_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in43_read \
    op interface \
    ports { mlp_in43_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name mlp_in44_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in44_read \
    op interface \
    ports { mlp_in44_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name mlp_in45_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in45_read \
    op interface \
    ports { mlp_in45_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name mlp_in4651_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in4651_read \
    op interface \
    ports { mlp_in4651_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name mlp_in47_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in47_read \
    op interface \
    ports { mlp_in47_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name mlp_in48_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in48_read \
    op interface \
    ports { mlp_in48_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name mlp_in49_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in49_read \
    op interface \
    ports { mlp_in49_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name mlp_in50_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in50_read \
    op interface \
    ports { mlp_in50_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name mlp_in51_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in51_read \
    op interface \
    ports { mlp_in51_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name mlp_in52_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in52_read \
    op interface \
    ports { mlp_in52_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name mlp_in53_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in53_read \
    op interface \
    ports { mlp_in53_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name mlp_in54_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in54_read \
    op interface \
    ports { mlp_in54_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name mlp_in55_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in55_read \
    op interface \
    ports { mlp_in55_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name mlp_in56_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in56_read \
    op interface \
    ports { mlp_in56_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name mlp_in5763_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in5763_read \
    op interface \
    ports { mlp_in5763_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name mlp_in58_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in58_read \
    op interface \
    ports { mlp_in58_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name mlp_in59_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in59_read \
    op interface \
    ports { mlp_in59_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name mlp_in60_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in60_read \
    op interface \
    ports { mlp_in60_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name mlp_in61_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in61_read \
    op interface \
    ports { mlp_in61_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name mlp_in62_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in62_read \
    op interface \
    ports { mlp_in62_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name mlp_in63_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in63_read \
    op interface \
    ports { mlp_in63_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 409 \
    name mlp_in64_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in64_read \
    op interface \
    ports { mlp_in64_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 410 \
    name mlp_in65_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in65_read \
    op interface \
    ports { mlp_in65_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name mlp_in66_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in66_read \
    op interface \
    ports { mlp_in66_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name mlp_in67_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in67_read \
    op interface \
    ports { mlp_in67_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name mlp_in6875_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in6875_read \
    op interface \
    ports { mlp_in6875_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name mlp_in69_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in69_read \
    op interface \
    ports { mlp_in69_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name mlp_in70_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in70_read \
    op interface \
    ports { mlp_in70_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name mlp_in71_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in71_read \
    op interface \
    ports { mlp_in71_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name mlp_in72_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in72_read \
    op interface \
    ports { mlp_in72_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name mlp_in73_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in73_read \
    op interface \
    ports { mlp_in73_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 419 \
    name mlp_in74_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in74_read \
    op interface \
    ports { mlp_in74_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 420 \
    name mlp_in75_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in75_read \
    op interface \
    ports { mlp_in75_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 421 \
    name mlp_in76_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in76_read \
    op interface \
    ports { mlp_in76_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name mlp_in77_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in77_read \
    op interface \
    ports { mlp_in77_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name mlp_in78_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in78_read \
    op interface \
    ports { mlp_in78_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name mlp_in7987_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in7987_read \
    op interface \
    ports { mlp_in7987_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name mlp_in80_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in80_read \
    op interface \
    ports { mlp_in80_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name mlp_in81_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in81_read \
    op interface \
    ports { mlp_in81_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name mlp_in82_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in82_read \
    op interface \
    ports { mlp_in82_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name mlp_in83_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in83_read \
    op interface \
    ports { mlp_in83_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name mlp_in84_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in84_read \
    op interface \
    ports { mlp_in84_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name mlp_in85_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in85_read \
    op interface \
    ports { mlp_in85_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name mlp_in86_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in86_read \
    op interface \
    ports { mlp_in86_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name mlp_in87_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in87_read \
    op interface \
    ports { mlp_in87_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name mlp_in88_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in88_read \
    op interface \
    ports { mlp_in88_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name mlp_in89_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in89_read \
    op interface \
    ports { mlp_in89_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name mlp_in90_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in90_read \
    op interface \
    ports { mlp_in90_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name mlp_in91_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in91_read \
    op interface \
    ports { mlp_in91_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name mlp_in92_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in92_read \
    op interface \
    ports { mlp_in92_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name mlp_in93_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in93_read \
    op interface \
    ports { mlp_in93_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name mlp_in94_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in94_read \
    op interface \
    ports { mlp_in94_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name mlp_in95_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in95_read \
    op interface \
    ports { mlp_in95_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name mlp_in96_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in96_read \
    op interface \
    ports { mlp_in96_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name mlp_in97_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in97_read \
    op interface \
    ports { mlp_in97_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name mlp_in98_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in98_read \
    op interface \
    ports { mlp_in98_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name mlp_in99_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_in99_read \
    op interface \
    ports { mlp_in99_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name mlp_out_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out_read \
    op interface \
    ports { mlp_out_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name mlp_out100_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out100_read \
    op interface \
    ports { mlp_out100_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name mlp_out101_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out101_read \
    op interface \
    ports { mlp_out101_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name mlp_out102_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out102_read \
    op interface \
    ports { mlp_out102_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name mlp_out103_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out103_read \
    op interface \
    ports { mlp_out103_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name mlp_out104_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out104_read \
    op interface \
    ports { mlp_out104_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name mlp_out105_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out105_read \
    op interface \
    ports { mlp_out105_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name mlp_out106_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out106_read \
    op interface \
    ports { mlp_out106_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name mlp_out107_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out107_read \
    op interface \
    ports { mlp_out107_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name mlp_out108_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out108_read \
    op interface \
    ports { mlp_out108_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name mlp_out109_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out109_read \
    op interface \
    ports { mlp_out109_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name mlp_out110_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out110_read \
    op interface \
    ports { mlp_out110_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name mlp_out111_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out111_read \
    op interface \
    ports { mlp_out111_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name mlp_out112_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out112_read \
    op interface \
    ports { mlp_out112_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name mlp_out113_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out113_read \
    op interface \
    ports { mlp_out113_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name mlp_out114_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out114_read \
    op interface \
    ports { mlp_out114_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name mlp_out115_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out115_read \
    op interface \
    ports { mlp_out115_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name mlp_out116_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out116_read \
    op interface \
    ports { mlp_out116_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name mlp_out117_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out117_read \
    op interface \
    ports { mlp_out117_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name mlp_out118_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out118_read \
    op interface \
    ports { mlp_out118_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name mlp_out119_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out119_read \
    op interface \
    ports { mlp_out119_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name mlp_out120_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out120_read \
    op interface \
    ports { mlp_out120_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name mlp_out121_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out121_read \
    op interface \
    ports { mlp_out121_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name mlp_out122_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out122_read \
    op interface \
    ports { mlp_out122_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name mlp_out123_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out123_read \
    op interface \
    ports { mlp_out123_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name mlp_out124_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out124_read \
    op interface \
    ports { mlp_out124_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name mlp_out125_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out125_read \
    op interface \
    ports { mlp_out125_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name mlp_out126_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out126_read \
    op interface \
    ports { mlp_out126_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name mlp_out127_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out127_read \
    op interface \
    ports { mlp_out127_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name mlp_out128_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out128_read \
    op interface \
    ports { mlp_out128_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name mlp_out129_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out129_read \
    op interface \
    ports { mlp_out129_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name mlp_out130_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out130_read \
    op interface \
    ports { mlp_out130_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name mlp_out131_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out131_read \
    op interface \
    ports { mlp_out131_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name mlp_out132_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out132_read \
    op interface \
    ports { mlp_out132_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name mlp_out133_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out133_read \
    op interface \
    ports { mlp_out133_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name mlp_out134_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out134_read \
    op interface \
    ports { mlp_out134_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name mlp_out135_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out135_read \
    op interface \
    ports { mlp_out135_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name mlp_out136_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out136_read \
    op interface \
    ports { mlp_out136_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name mlp_out137_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out137_read \
    op interface \
    ports { mlp_out137_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name mlp_out138_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out138_read \
    op interface \
    ports { mlp_out138_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name mlp_out139_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out139_read \
    op interface \
    ports { mlp_out139_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name mlp_out140_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out140_read \
    op interface \
    ports { mlp_out140_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name mlp_out141_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out141_read \
    op interface \
    ports { mlp_out141_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name mlp_out142_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out142_read \
    op interface \
    ports { mlp_out142_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name mlp_out143_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out143_read \
    op interface \
    ports { mlp_out143_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name mlp_out144_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out144_read \
    op interface \
    ports { mlp_out144_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name mlp_out145_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out145_read \
    op interface \
    ports { mlp_out145_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 492 \
    name mlp_out146_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out146_read \
    op interface \
    ports { mlp_out146_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 493 \
    name mlp_out147_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out147_read \
    op interface \
    ports { mlp_out147_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 494 \
    name mlp_out148_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out148_read \
    op interface \
    ports { mlp_out148_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name mlp_out149_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out149_read \
    op interface \
    ports { mlp_out149_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name mlp_out150_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out150_read \
    op interface \
    ports { mlp_out150_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name mlp_out151_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out151_read \
    op interface \
    ports { mlp_out151_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name mlp_out152_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out152_read \
    op interface \
    ports { mlp_out152_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 499 \
    name mlp_out153_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out153_read \
    op interface \
    ports { mlp_out153_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name mlp_out154_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out154_read \
    op interface \
    ports { mlp_out154_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 501 \
    name mlp_out155_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out155_read \
    op interface \
    ports { mlp_out155_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 502 \
    name mlp_out156_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out156_read \
    op interface \
    ports { mlp_out156_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name mlp_out157_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out157_read \
    op interface \
    ports { mlp_out157_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 504 \
    name mlp_out158_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out158_read \
    op interface \
    ports { mlp_out158_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 505 \
    name mlp_out159_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out159_read \
    op interface \
    ports { mlp_out159_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 506 \
    name mlp_out160_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out160_read \
    op interface \
    ports { mlp_out160_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 507 \
    name mlp_out161_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out161_read \
    op interface \
    ports { mlp_out161_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 508 \
    name mlp_out162_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out162_read \
    op interface \
    ports { mlp_out162_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 509 \
    name mlp_out163_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out163_read \
    op interface \
    ports { mlp_out163_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 510 \
    name mlp_out164_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out164_read \
    op interface \
    ports { mlp_out164_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 511 \
    name mlp_out165_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out165_read \
    op interface \
    ports { mlp_out165_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 512 \
    name mlp_out166_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out166_read \
    op interface \
    ports { mlp_out166_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 513 \
    name mlp_out167_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out167_read \
    op interface \
    ports { mlp_out167_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 514 \
    name mlp_out168_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out168_read \
    op interface \
    ports { mlp_out168_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 515 \
    name mlp_out169_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out169_read \
    op interface \
    ports { mlp_out169_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 516 \
    name mlp_out170_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out170_read \
    op interface \
    ports { mlp_out170_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 517 \
    name mlp_out171_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out171_read \
    op interface \
    ports { mlp_out171_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 518 \
    name mlp_out172_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out172_read \
    op interface \
    ports { mlp_out172_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 519 \
    name mlp_out173_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out173_read \
    op interface \
    ports { mlp_out173_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 520 \
    name mlp_out174_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out174_read \
    op interface \
    ports { mlp_out174_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name mlp_out175_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out175_read \
    op interface \
    ports { mlp_out175_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name mlp_out176_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out176_read \
    op interface \
    ports { mlp_out176_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name mlp_out177_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out177_read \
    op interface \
    ports { mlp_out177_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name mlp_out178_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out178_read \
    op interface \
    ports { mlp_out178_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 525 \
    name mlp_out179_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out179_read \
    op interface \
    ports { mlp_out179_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 526 \
    name mlp_out180_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out180_read \
    op interface \
    ports { mlp_out180_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 527 \
    name mlp_out181_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out181_read \
    op interface \
    ports { mlp_out181_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 528 \
    name mlp_out182_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out182_read \
    op interface \
    ports { mlp_out182_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 529 \
    name mlp_out183_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out183_read \
    op interface \
    ports { mlp_out183_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 530 \
    name mlp_out184_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out184_read \
    op interface \
    ports { mlp_out184_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 531 \
    name mlp_out185_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out185_read \
    op interface \
    ports { mlp_out185_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name mlp_out186_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out186_read \
    op interface \
    ports { mlp_out186_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name mlp_out187_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out187_read \
    op interface \
    ports { mlp_out187_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name mlp_out188_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out188_read \
    op interface \
    ports { mlp_out188_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name mlp_out189_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out189_read \
    op interface \
    ports { mlp_out189_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name mlp_out190_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out190_read \
    op interface \
    ports { mlp_out190_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name mlp_out191_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out191_read \
    op interface \
    ports { mlp_out191_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name mlp_out192_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out192_read \
    op interface \
    ports { mlp_out192_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
    name mlp_out193_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out193_read \
    op interface \
    ports { mlp_out193_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 540 \
    name mlp_out194_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out194_read \
    op interface \
    ports { mlp_out194_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 541 \
    name mlp_out195_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out195_read \
    op interface \
    ports { mlp_out195_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 542 \
    name mlp_out196_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out196_read \
    op interface \
    ports { mlp_out196_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 543 \
    name mlp_out197_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out197_read \
    op interface \
    ports { mlp_out197_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name mlp_out198_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mlp_out198_read \
    op interface \
    ports { mlp_out198_read { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name nd \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_nd \
    op interface \
    ports { nd { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


