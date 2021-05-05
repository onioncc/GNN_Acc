# This script segment is generated automatically by AutoPilot

set id 108
set name GIN_compute_one_graph_mux_1007_28_1_1
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 28
set din0_signed 0
set din1_width 28
set din1_signed 0
set din2_width 28
set din2_signed 0
set din3_width 28
set din3_signed 0
set din4_width 28
set din4_signed 0
set din5_width 28
set din5_signed 0
set din6_width 28
set din6_signed 0
set din7_width 28
set din7_signed 0
set din8_width 28
set din8_signed 0
set din9_width 28
set din9_signed 0
set din10_width 28
set din10_signed 0
set din11_width 28
set din11_signed 0
set din12_width 28
set din12_signed 0
set din13_width 28
set din13_signed 0
set din14_width 28
set din14_signed 0
set din15_width 28
set din15_signed 0
set din16_width 28
set din16_signed 0
set din17_width 28
set din17_signed 0
set din18_width 28
set din18_signed 0
set din19_width 28
set din19_signed 0
set din20_width 28
set din20_signed 0
set din21_width 28
set din21_signed 0
set din22_width 28
set din22_signed 0
set din23_width 28
set din23_signed 0
set din24_width 28
set din24_signed 0
set din25_width 28
set din25_signed 0
set din26_width 28
set din26_signed 0
set din27_width 28
set din27_signed 0
set din28_width 28
set din28_signed 0
set din29_width 28
set din29_signed 0
set din30_width 28
set din30_signed 0
set din31_width 28
set din31_signed 0
set din32_width 28
set din32_signed 0
set din33_width 28
set din33_signed 0
set din34_width 28
set din34_signed 0
set din35_width 28
set din35_signed 0
set din36_width 28
set din36_signed 0
set din37_width 28
set din37_signed 0
set din38_width 28
set din38_signed 0
set din39_width 28
set din39_signed 0
set din40_width 28
set din40_signed 0
set din41_width 28
set din41_signed 0
set din42_width 28
set din42_signed 0
set din43_width 28
set din43_signed 0
set din44_width 28
set din44_signed 0
set din45_width 28
set din45_signed 0
set din46_width 28
set din46_signed 0
set din47_width 28
set din47_signed 0
set din48_width 28
set din48_signed 0
set din49_width 28
set din49_signed 0
set din50_width 28
set din50_signed 0
set din51_width 28
set din51_signed 0
set din52_width 28
set din52_signed 0
set din53_width 28
set din53_signed 0
set din54_width 28
set din54_signed 0
set din55_width 28
set din55_signed 0
set din56_width 28
set din56_signed 0
set din57_width 28
set din57_signed 0
set din58_width 28
set din58_signed 0
set din59_width 28
set din59_signed 0
set din60_width 28
set din60_signed 0
set din61_width 28
set din61_signed 0
set din62_width 28
set din62_signed 0
set din63_width 28
set din63_signed 0
set din64_width 28
set din64_signed 0
set din65_width 28
set din65_signed 0
set din66_width 28
set din66_signed 0
set din67_width 28
set din67_signed 0
set din68_width 28
set din68_signed 0
set din69_width 28
set din69_signed 0
set din70_width 28
set din70_signed 0
set din71_width 28
set din71_signed 0
set din72_width 28
set din72_signed 0
set din73_width 28
set din73_signed 0
set din74_width 28
set din74_signed 0
set din75_width 28
set din75_signed 0
set din76_width 28
set din76_signed 0
set din77_width 28
set din77_signed 0
set din78_width 28
set din78_signed 0
set din79_width 28
set din79_signed 0
set din80_width 28
set din80_signed 0
set din81_width 28
set din81_signed 0
set din82_width 28
set din82_signed 0
set din83_width 28
set din83_signed 0
set din84_width 28
set din84_signed 0
set din85_width 28
set din85_signed 0
set din86_width 28
set din86_signed 0
set din87_width 28
set din87_signed 0
set din88_width 28
set din88_signed 0
set din89_width 28
set din89_signed 0
set din90_width 28
set din90_signed 0
set din91_width 28
set din91_signed 0
set din92_width 28
set din92_signed 0
set din93_width 28
set din93_signed 0
set din94_width 28
set din94_signed 0
set din95_width 28
set din95_signed 0
set din96_width 28
set din96_signed 0
set din97_width 28
set din97_signed 0
set din98_width 28
set din98_signed 0
set din99_width 28
set din99_signed 0
set din100_width 7
set din100_signed 0
set dout_width 28
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    din33_width ${din33_width} \
    din33_signed ${din33_signed} \
    din34_width ${din34_width} \
    din34_signed ${din34_signed} \
    din35_width ${din35_width} \
    din35_signed ${din35_signed} \
    din36_width ${din36_width} \
    din36_signed ${din36_signed} \
    din37_width ${din37_width} \
    din37_signed ${din37_signed} \
    din38_width ${din38_width} \
    din38_signed ${din38_signed} \
    din39_width ${din39_width} \
    din39_signed ${din39_signed} \
    din40_width ${din40_width} \
    din40_signed ${din40_signed} \
    din41_width ${din41_width} \
    din41_signed ${din41_signed} \
    din42_width ${din42_width} \
    din42_signed ${din42_signed} \
    din43_width ${din43_width} \
    din43_signed ${din43_signed} \
    din44_width ${din44_width} \
    din44_signed ${din44_signed} \
    din45_width ${din45_width} \
    din45_signed ${din45_signed} \
    din46_width ${din46_width} \
    din46_signed ${din46_signed} \
    din47_width ${din47_width} \
    din47_signed ${din47_signed} \
    din48_width ${din48_width} \
    din48_signed ${din48_signed} \
    din49_width ${din49_width} \
    din49_signed ${din49_signed} \
    din50_width ${din50_width} \
    din50_signed ${din50_signed} \
    din51_width ${din51_width} \
    din51_signed ${din51_signed} \
    din52_width ${din52_width} \
    din52_signed ${din52_signed} \
    din53_width ${din53_width} \
    din53_signed ${din53_signed} \
    din54_width ${din54_width} \
    din54_signed ${din54_signed} \
    din55_width ${din55_width} \
    din55_signed ${din55_signed} \
    din56_width ${din56_width} \
    din56_signed ${din56_signed} \
    din57_width ${din57_width} \
    din57_signed ${din57_signed} \
    din58_width ${din58_width} \
    din58_signed ${din58_signed} \
    din59_width ${din59_width} \
    din59_signed ${din59_signed} \
    din60_width ${din60_width} \
    din60_signed ${din60_signed} \
    din61_width ${din61_width} \
    din61_signed ${din61_signed} \
    din62_width ${din62_width} \
    din62_signed ${din62_signed} \
    din63_width ${din63_width} \
    din63_signed ${din63_signed} \
    din64_width ${din64_width} \
    din64_signed ${din64_signed} \
    din65_width ${din65_width} \
    din65_signed ${din65_signed} \
    din66_width ${din66_width} \
    din66_signed ${din66_signed} \
    din67_width ${din67_width} \
    din67_signed ${din67_signed} \
    din68_width ${din68_width} \
    din68_signed ${din68_signed} \
    din69_width ${din69_width} \
    din69_signed ${din69_signed} \
    din70_width ${din70_width} \
    din70_signed ${din70_signed} \
    din71_width ${din71_width} \
    din71_signed ${din71_signed} \
    din72_width ${din72_width} \
    din72_signed ${din72_signed} \
    din73_width ${din73_width} \
    din73_signed ${din73_signed} \
    din74_width ${din74_width} \
    din74_signed ${din74_signed} \
    din75_width ${din75_width} \
    din75_signed ${din75_signed} \
    din76_width ${din76_width} \
    din76_signed ${din76_signed} \
    din77_width ${din77_width} \
    din77_signed ${din77_signed} \
    din78_width ${din78_width} \
    din78_signed ${din78_signed} \
    din79_width ${din79_width} \
    din79_signed ${din79_signed} \
    din80_width ${din80_width} \
    din80_signed ${din80_signed} \
    din81_width ${din81_width} \
    din81_signed ${din81_signed} \
    din82_width ${din82_width} \
    din82_signed ${din82_signed} \
    din83_width ${din83_width} \
    din83_signed ${din83_signed} \
    din84_width ${din84_width} \
    din84_signed ${din84_signed} \
    din85_width ${din85_width} \
    din85_signed ${din85_signed} \
    din86_width ${din86_width} \
    din86_signed ${din86_signed} \
    din87_width ${din87_width} \
    din87_signed ${din87_signed} \
    din88_width ${din88_width} \
    din88_signed ${din88_signed} \
    din89_width ${din89_width} \
    din89_signed ${din89_signed} \
    din90_width ${din90_width} \
    din90_signed ${din90_signed} \
    din91_width ${din91_width} \
    din91_signed ${din91_signed} \
    din92_width ${din92_width} \
    din92_signed ${din92_signed} \
    din93_width ${din93_width} \
    din93_signed ${din93_signed} \
    din94_width ${din94_width} \
    din94_signed ${din94_signed} \
    din95_width ${din95_width} \
    din95_signed ${din95_signed} \
    din96_width ${din96_width} \
    din96_signed ${din96_signed} \
    din97_width ${din97_width} \
    din97_signed ${din97_signed} \
    din98_width ${din98_width} \
    din98_signed ${din98_signed} \
    din99_width ${din99_width} \
    din99_signed ${din99_signed} \
    din100_width ${din100_width} \
    din100_signed ${din100_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    din33_width ${din33_width} \
    din33_signed ${din33_signed} \
    din34_width ${din34_width} \
    din34_signed ${din34_signed} \
    din35_width ${din35_width} \
    din35_signed ${din35_signed} \
    din36_width ${din36_width} \
    din36_signed ${din36_signed} \
    din37_width ${din37_width} \
    din37_signed ${din37_signed} \
    din38_width ${din38_width} \
    din38_signed ${din38_signed} \
    din39_width ${din39_width} \
    din39_signed ${din39_signed} \
    din40_width ${din40_width} \
    din40_signed ${din40_signed} \
    din41_width ${din41_width} \
    din41_signed ${din41_signed} \
    din42_width ${din42_width} \
    din42_signed ${din42_signed} \
    din43_width ${din43_width} \
    din43_signed ${din43_signed} \
    din44_width ${din44_width} \
    din44_signed ${din44_signed} \
    din45_width ${din45_width} \
    din45_signed ${din45_signed} \
    din46_width ${din46_width} \
    din46_signed ${din46_signed} \
    din47_width ${din47_width} \
    din47_signed ${din47_signed} \
    din48_width ${din48_width} \
    din48_signed ${din48_signed} \
    din49_width ${din49_width} \
    din49_signed ${din49_signed} \
    din50_width ${din50_width} \
    din50_signed ${din50_signed} \
    din51_width ${din51_width} \
    din51_signed ${din51_signed} \
    din52_width ${din52_width} \
    din52_signed ${din52_signed} \
    din53_width ${din53_width} \
    din53_signed ${din53_signed} \
    din54_width ${din54_width} \
    din54_signed ${din54_signed} \
    din55_width ${din55_width} \
    din55_signed ${din55_signed} \
    din56_width ${din56_width} \
    din56_signed ${din56_signed} \
    din57_width ${din57_width} \
    din57_signed ${din57_signed} \
    din58_width ${din58_width} \
    din58_signed ${din58_signed} \
    din59_width ${din59_width} \
    din59_signed ${din59_signed} \
    din60_width ${din60_width} \
    din60_signed ${din60_signed} \
    din61_width ${din61_width} \
    din61_signed ${din61_signed} \
    din62_width ${din62_width} \
    din62_signed ${din62_signed} \
    din63_width ${din63_width} \
    din63_signed ${din63_signed} \
    din64_width ${din64_width} \
    din64_signed ${din64_signed} \
    din65_width ${din65_width} \
    din65_signed ${din65_signed} \
    din66_width ${din66_width} \
    din66_signed ${din66_signed} \
    din67_width ${din67_width} \
    din67_signed ${din67_signed} \
    din68_width ${din68_width} \
    din68_signed ${din68_signed} \
    din69_width ${din69_width} \
    din69_signed ${din69_signed} \
    din70_width ${din70_width} \
    din70_signed ${din70_signed} \
    din71_width ${din71_width} \
    din71_signed ${din71_signed} \
    din72_width ${din72_width} \
    din72_signed ${din72_signed} \
    din73_width ${din73_width} \
    din73_signed ${din73_signed} \
    din74_width ${din74_width} \
    din74_signed ${din74_signed} \
    din75_width ${din75_width} \
    din75_signed ${din75_signed} \
    din76_width ${din76_width} \
    din76_signed ${din76_signed} \
    din77_width ${din77_width} \
    din77_signed ${din77_signed} \
    din78_width ${din78_width} \
    din78_signed ${din78_signed} \
    din79_width ${din79_width} \
    din79_signed ${din79_signed} \
    din80_width ${din80_width} \
    din80_signed ${din80_signed} \
    din81_width ${din81_width} \
    din81_signed ${din81_signed} \
    din82_width ${din82_width} \
    din82_signed ${din82_signed} \
    din83_width ${din83_width} \
    din83_signed ${din83_signed} \
    din84_width ${din84_width} \
    din84_signed ${din84_signed} \
    din85_width ${din85_width} \
    din85_signed ${din85_signed} \
    din86_width ${din86_width} \
    din86_signed ${din86_signed} \
    din87_width ${din87_width} \
    din87_signed ${din87_signed} \
    din88_width ${din88_width} \
    din88_signed ${din88_signed} \
    din89_width ${din89_width} \
    din89_signed ${din89_signed} \
    din90_width ${din90_width} \
    din90_signed ${din90_signed} \
    din91_width ${din91_width} \
    din91_signed ${din91_signed} \
    din92_width ${din92_width} \
    din92_signed ${din92_signed} \
    din93_width ${din93_width} \
    din93_signed ${din93_signed} \
    din94_width ${din94_width} \
    din94_signed ${din94_signed} \
    din95_width ${din95_width} \
    din95_signed ${din95_signed} \
    din96_width ${din96_width} \
    din96_signed ${din96_signed} \
    din97_width ${din97_width} \
    din97_signed ${din97_signed} \
    din98_width ${din98_width} \
    din98_signed ${din98_signed} \
    din99_width ${din99_width} \
    din99_signed ${din99_signed} \
    din100_width ${din100_width} \
    din100_signed ${din100_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 109
set name GIN_compute_one_graph_mac_muladd_15s_8ns_7ns_15_4_1
set corename simcore_mac
set op mac
set stage_num 4
set max_latency -1
set registered_input 1
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 15
set in0_signed 1
set in1_width 8
set in1_signed 0
set in2_width 7
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 15
set exp i0*i1+i2
set arg_lists {i0 {15 1 +} i1 {8 0 +} m {15 1 +} i2 {7 0 +} p {15 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
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
    id 112 \
    name message_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename message_V \
    op interface \
    ports { message_V_address0 { O 15 vector } message_V_ce0 { O 1 bit } message_V_q0 { I 28 vector } message_V_address1 { O 15 vector } message_V_ce1 { O 1 bit } message_V_we1 { O 1 bit } message_V_d1 { O 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'message_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 113 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name node_embedding_V_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_0 \
    op interface \
    ports { node_embedding_V_0_address0 { O 8 vector } node_embedding_V_0_ce0 { O 1 bit } node_embedding_V_0_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name node_embedding_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_1 \
    op interface \
    ports { node_embedding_V_1_address0 { O 8 vector } node_embedding_V_1_ce0 { O 1 bit } node_embedding_V_1_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name node_embedding_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_2 \
    op interface \
    ports { node_embedding_V_2_address0 { O 8 vector } node_embedding_V_2_ce0 { O 1 bit } node_embedding_V_2_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 117 \
    name node_embedding_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_3 \
    op interface \
    ports { node_embedding_V_3_address0 { O 8 vector } node_embedding_V_3_ce0 { O 1 bit } node_embedding_V_3_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 118 \
    name node_embedding_V_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_4 \
    op interface \
    ports { node_embedding_V_4_address0 { O 8 vector } node_embedding_V_4_ce0 { O 1 bit } node_embedding_V_4_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 119 \
    name node_embedding_V_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_5 \
    op interface \
    ports { node_embedding_V_5_address0 { O 8 vector } node_embedding_V_5_ce0 { O 1 bit } node_embedding_V_5_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 120 \
    name node_embedding_V_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_6 \
    op interface \
    ports { node_embedding_V_6_address0 { O 8 vector } node_embedding_V_6_ce0 { O 1 bit } node_embedding_V_6_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 121 \
    name node_embedding_V_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_7 \
    op interface \
    ports { node_embedding_V_7_address0 { O 8 vector } node_embedding_V_7_ce0 { O 1 bit } node_embedding_V_7_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name node_embedding_V_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_8 \
    op interface \
    ports { node_embedding_V_8_address0 { O 8 vector } node_embedding_V_8_ce0 { O 1 bit } node_embedding_V_8_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 123 \
    name node_embedding_V_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_9 \
    op interface \
    ports { node_embedding_V_9_address0 { O 8 vector } node_embedding_V_9_ce0 { O 1 bit } node_embedding_V_9_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 124 \
    name node_embedding_V_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_10 \
    op interface \
    ports { node_embedding_V_10_address0 { O 8 vector } node_embedding_V_10_ce0 { O 1 bit } node_embedding_V_10_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 125 \
    name node_embedding_V_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_11 \
    op interface \
    ports { node_embedding_V_11_address0 { O 8 vector } node_embedding_V_11_ce0 { O 1 bit } node_embedding_V_11_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 126 \
    name node_embedding_V_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_12 \
    op interface \
    ports { node_embedding_V_12_address0 { O 8 vector } node_embedding_V_12_ce0 { O 1 bit } node_embedding_V_12_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name node_embedding_V_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_13 \
    op interface \
    ports { node_embedding_V_13_address0 { O 8 vector } node_embedding_V_13_ce0 { O 1 bit } node_embedding_V_13_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 128 \
    name node_embedding_V_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_14 \
    op interface \
    ports { node_embedding_V_14_address0 { O 8 vector } node_embedding_V_14_ce0 { O 1 bit } node_embedding_V_14_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name node_embedding_V_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_15 \
    op interface \
    ports { node_embedding_V_15_address0 { O 8 vector } node_embedding_V_15_ce0 { O 1 bit } node_embedding_V_15_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name node_embedding_V_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_16 \
    op interface \
    ports { node_embedding_V_16_address0 { O 8 vector } node_embedding_V_16_ce0 { O 1 bit } node_embedding_V_16_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
    name node_embedding_V_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_17 \
    op interface \
    ports { node_embedding_V_17_address0 { O 8 vector } node_embedding_V_17_ce0 { O 1 bit } node_embedding_V_17_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name node_embedding_V_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_18 \
    op interface \
    ports { node_embedding_V_18_address0 { O 8 vector } node_embedding_V_18_ce0 { O 1 bit } node_embedding_V_18_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 133 \
    name node_embedding_V_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_19 \
    op interface \
    ports { node_embedding_V_19_address0 { O 8 vector } node_embedding_V_19_ce0 { O 1 bit } node_embedding_V_19_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name node_embedding_V_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_20 \
    op interface \
    ports { node_embedding_V_20_address0 { O 8 vector } node_embedding_V_20_ce0 { O 1 bit } node_embedding_V_20_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name node_embedding_V_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_21 \
    op interface \
    ports { node_embedding_V_21_address0 { O 8 vector } node_embedding_V_21_ce0 { O 1 bit } node_embedding_V_21_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 136 \
    name node_embedding_V_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_22 \
    op interface \
    ports { node_embedding_V_22_address0 { O 8 vector } node_embedding_V_22_ce0 { O 1 bit } node_embedding_V_22_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 137 \
    name node_embedding_V_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_23 \
    op interface \
    ports { node_embedding_V_23_address0 { O 8 vector } node_embedding_V_23_ce0 { O 1 bit } node_embedding_V_23_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 138 \
    name node_embedding_V_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_24 \
    op interface \
    ports { node_embedding_V_24_address0 { O 8 vector } node_embedding_V_24_ce0 { O 1 bit } node_embedding_V_24_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
    name node_embedding_V_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_25 \
    op interface \
    ports { node_embedding_V_25_address0 { O 8 vector } node_embedding_V_25_ce0 { O 1 bit } node_embedding_V_25_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
    name node_embedding_V_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_26 \
    op interface \
    ports { node_embedding_V_26_address0 { O 8 vector } node_embedding_V_26_ce0 { O 1 bit } node_embedding_V_26_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name node_embedding_V_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_27 \
    op interface \
    ports { node_embedding_V_27_address0 { O 8 vector } node_embedding_V_27_ce0 { O 1 bit } node_embedding_V_27_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name node_embedding_V_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_28 \
    op interface \
    ports { node_embedding_V_28_address0 { O 8 vector } node_embedding_V_28_ce0 { O 1 bit } node_embedding_V_28_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name node_embedding_V_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_29 \
    op interface \
    ports { node_embedding_V_29_address0 { O 8 vector } node_embedding_V_29_ce0 { O 1 bit } node_embedding_V_29_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name node_embedding_V_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_30 \
    op interface \
    ports { node_embedding_V_30_address0 { O 8 vector } node_embedding_V_30_ce0 { O 1 bit } node_embedding_V_30_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name node_embedding_V_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_31 \
    op interface \
    ports { node_embedding_V_31_address0 { O 8 vector } node_embedding_V_31_ce0 { O 1 bit } node_embedding_V_31_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name node_embedding_V_32 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_32 \
    op interface \
    ports { node_embedding_V_32_address0 { O 8 vector } node_embedding_V_32_ce0 { O 1 bit } node_embedding_V_32_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name node_embedding_V_33 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_33 \
    op interface \
    ports { node_embedding_V_33_address0 { O 8 vector } node_embedding_V_33_ce0 { O 1 bit } node_embedding_V_33_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 148 \
    name node_embedding_V_34 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_34 \
    op interface \
    ports { node_embedding_V_34_address0 { O 8 vector } node_embedding_V_34_ce0 { O 1 bit } node_embedding_V_34_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 149 \
    name node_embedding_V_35 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_35 \
    op interface \
    ports { node_embedding_V_35_address0 { O 8 vector } node_embedding_V_35_ce0 { O 1 bit } node_embedding_V_35_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 150 \
    name node_embedding_V_36 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_36 \
    op interface \
    ports { node_embedding_V_36_address0 { O 8 vector } node_embedding_V_36_ce0 { O 1 bit } node_embedding_V_36_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 151 \
    name node_embedding_V_37 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_37 \
    op interface \
    ports { node_embedding_V_37_address0 { O 8 vector } node_embedding_V_37_ce0 { O 1 bit } node_embedding_V_37_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 152 \
    name node_embedding_V_38 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_38 \
    op interface \
    ports { node_embedding_V_38_address0 { O 8 vector } node_embedding_V_38_ce0 { O 1 bit } node_embedding_V_38_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
    name node_embedding_V_39 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_39 \
    op interface \
    ports { node_embedding_V_39_address0 { O 8 vector } node_embedding_V_39_ce0 { O 1 bit } node_embedding_V_39_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name node_embedding_V_40 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_40 \
    op interface \
    ports { node_embedding_V_40_address0 { O 8 vector } node_embedding_V_40_ce0 { O 1 bit } node_embedding_V_40_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name node_embedding_V_41 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_41 \
    op interface \
    ports { node_embedding_V_41_address0 { O 8 vector } node_embedding_V_41_ce0 { O 1 bit } node_embedding_V_41_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name node_embedding_V_42 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_42 \
    op interface \
    ports { node_embedding_V_42_address0 { O 8 vector } node_embedding_V_42_ce0 { O 1 bit } node_embedding_V_42_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 157 \
    name node_embedding_V_43 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_43 \
    op interface \
    ports { node_embedding_V_43_address0 { O 8 vector } node_embedding_V_43_ce0 { O 1 bit } node_embedding_V_43_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 158 \
    name node_embedding_V_44 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_44 \
    op interface \
    ports { node_embedding_V_44_address0 { O 8 vector } node_embedding_V_44_ce0 { O 1 bit } node_embedding_V_44_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 159 \
    name node_embedding_V_45 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_45 \
    op interface \
    ports { node_embedding_V_45_address0 { O 8 vector } node_embedding_V_45_ce0 { O 1 bit } node_embedding_V_45_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 160 \
    name node_embedding_V_46 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_46 \
    op interface \
    ports { node_embedding_V_46_address0 { O 8 vector } node_embedding_V_46_ce0 { O 1 bit } node_embedding_V_46_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 161 \
    name node_embedding_V_47 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_47 \
    op interface \
    ports { node_embedding_V_47_address0 { O 8 vector } node_embedding_V_47_ce0 { O 1 bit } node_embedding_V_47_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name node_embedding_V_48 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_48 \
    op interface \
    ports { node_embedding_V_48_address0 { O 8 vector } node_embedding_V_48_ce0 { O 1 bit } node_embedding_V_48_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 163 \
    name node_embedding_V_49 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_49 \
    op interface \
    ports { node_embedding_V_49_address0 { O 8 vector } node_embedding_V_49_ce0 { O 1 bit } node_embedding_V_49_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name node_embedding_V_50 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_50 \
    op interface \
    ports { node_embedding_V_50_address0 { O 8 vector } node_embedding_V_50_ce0 { O 1 bit } node_embedding_V_50_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name node_embedding_V_51 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_51 \
    op interface \
    ports { node_embedding_V_51_address0 { O 8 vector } node_embedding_V_51_ce0 { O 1 bit } node_embedding_V_51_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name node_embedding_V_52 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_52 \
    op interface \
    ports { node_embedding_V_52_address0 { O 8 vector } node_embedding_V_52_ce0 { O 1 bit } node_embedding_V_52_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name node_embedding_V_53 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_53 \
    op interface \
    ports { node_embedding_V_53_address0 { O 8 vector } node_embedding_V_53_ce0 { O 1 bit } node_embedding_V_53_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 168 \
    name node_embedding_V_54 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_54 \
    op interface \
    ports { node_embedding_V_54_address0 { O 8 vector } node_embedding_V_54_ce0 { O 1 bit } node_embedding_V_54_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 169 \
    name node_embedding_V_55 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_55 \
    op interface \
    ports { node_embedding_V_55_address0 { O 8 vector } node_embedding_V_55_ce0 { O 1 bit } node_embedding_V_55_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 170 \
    name node_embedding_V_56 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_56 \
    op interface \
    ports { node_embedding_V_56_address0 { O 8 vector } node_embedding_V_56_ce0 { O 1 bit } node_embedding_V_56_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 171 \
    name node_embedding_V_57 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_57 \
    op interface \
    ports { node_embedding_V_57_address0 { O 8 vector } node_embedding_V_57_ce0 { O 1 bit } node_embedding_V_57_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 172 \
    name node_embedding_V_58 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_58 \
    op interface \
    ports { node_embedding_V_58_address0 { O 8 vector } node_embedding_V_58_ce0 { O 1 bit } node_embedding_V_58_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 173 \
    name node_embedding_V_59 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_59 \
    op interface \
    ports { node_embedding_V_59_address0 { O 8 vector } node_embedding_V_59_ce0 { O 1 bit } node_embedding_V_59_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 174 \
    name node_embedding_V_60 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_60 \
    op interface \
    ports { node_embedding_V_60_address0 { O 8 vector } node_embedding_V_60_ce0 { O 1 bit } node_embedding_V_60_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 175 \
    name node_embedding_V_61 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_61 \
    op interface \
    ports { node_embedding_V_61_address0 { O 8 vector } node_embedding_V_61_ce0 { O 1 bit } node_embedding_V_61_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 176 \
    name node_embedding_V_62 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_62 \
    op interface \
    ports { node_embedding_V_62_address0 { O 8 vector } node_embedding_V_62_ce0 { O 1 bit } node_embedding_V_62_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 177 \
    name node_embedding_V_63 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_63 \
    op interface \
    ports { node_embedding_V_63_address0 { O 8 vector } node_embedding_V_63_ce0 { O 1 bit } node_embedding_V_63_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_63'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 178 \
    name node_embedding_V_64 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_64 \
    op interface \
    ports { node_embedding_V_64_address0 { O 8 vector } node_embedding_V_64_ce0 { O 1 bit } node_embedding_V_64_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_64'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 179 \
    name node_embedding_V_65 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_65 \
    op interface \
    ports { node_embedding_V_65_address0 { O 8 vector } node_embedding_V_65_ce0 { O 1 bit } node_embedding_V_65_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_65'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 180 \
    name node_embedding_V_66 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_66 \
    op interface \
    ports { node_embedding_V_66_address0 { O 8 vector } node_embedding_V_66_ce0 { O 1 bit } node_embedding_V_66_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_66'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 181 \
    name node_embedding_V_67 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_67 \
    op interface \
    ports { node_embedding_V_67_address0 { O 8 vector } node_embedding_V_67_ce0 { O 1 bit } node_embedding_V_67_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_67'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 182 \
    name node_embedding_V_68 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_68 \
    op interface \
    ports { node_embedding_V_68_address0 { O 8 vector } node_embedding_V_68_ce0 { O 1 bit } node_embedding_V_68_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_68'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 183 \
    name node_embedding_V_69 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_69 \
    op interface \
    ports { node_embedding_V_69_address0 { O 8 vector } node_embedding_V_69_ce0 { O 1 bit } node_embedding_V_69_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_69'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 184 \
    name node_embedding_V_70 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_70 \
    op interface \
    ports { node_embedding_V_70_address0 { O 8 vector } node_embedding_V_70_ce0 { O 1 bit } node_embedding_V_70_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_70'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 185 \
    name node_embedding_V_71 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_71 \
    op interface \
    ports { node_embedding_V_71_address0 { O 8 vector } node_embedding_V_71_ce0 { O 1 bit } node_embedding_V_71_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_71'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 186 \
    name node_embedding_V_72 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_72 \
    op interface \
    ports { node_embedding_V_72_address0 { O 8 vector } node_embedding_V_72_ce0 { O 1 bit } node_embedding_V_72_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_72'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 187 \
    name node_embedding_V_73 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_73 \
    op interface \
    ports { node_embedding_V_73_address0 { O 8 vector } node_embedding_V_73_ce0 { O 1 bit } node_embedding_V_73_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_73'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 188 \
    name node_embedding_V_74 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_74 \
    op interface \
    ports { node_embedding_V_74_address0 { O 8 vector } node_embedding_V_74_ce0 { O 1 bit } node_embedding_V_74_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_74'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 189 \
    name node_embedding_V_75 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_75 \
    op interface \
    ports { node_embedding_V_75_address0 { O 8 vector } node_embedding_V_75_ce0 { O 1 bit } node_embedding_V_75_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_75'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 190 \
    name node_embedding_V_76 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_76 \
    op interface \
    ports { node_embedding_V_76_address0 { O 8 vector } node_embedding_V_76_ce0 { O 1 bit } node_embedding_V_76_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_76'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 191 \
    name node_embedding_V_77 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_77 \
    op interface \
    ports { node_embedding_V_77_address0 { O 8 vector } node_embedding_V_77_ce0 { O 1 bit } node_embedding_V_77_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_77'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 192 \
    name node_embedding_V_78 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_78 \
    op interface \
    ports { node_embedding_V_78_address0 { O 8 vector } node_embedding_V_78_ce0 { O 1 bit } node_embedding_V_78_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_78'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 193 \
    name node_embedding_V_79 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_79 \
    op interface \
    ports { node_embedding_V_79_address0 { O 8 vector } node_embedding_V_79_ce0 { O 1 bit } node_embedding_V_79_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_79'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 194 \
    name node_embedding_V_80 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_80 \
    op interface \
    ports { node_embedding_V_80_address0 { O 8 vector } node_embedding_V_80_ce0 { O 1 bit } node_embedding_V_80_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_80'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 195 \
    name node_embedding_V_81 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_81 \
    op interface \
    ports { node_embedding_V_81_address0 { O 8 vector } node_embedding_V_81_ce0 { O 1 bit } node_embedding_V_81_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_81'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 196 \
    name node_embedding_V_82 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_82 \
    op interface \
    ports { node_embedding_V_82_address0 { O 8 vector } node_embedding_V_82_ce0 { O 1 bit } node_embedding_V_82_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_82'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 197 \
    name node_embedding_V_83 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_83 \
    op interface \
    ports { node_embedding_V_83_address0 { O 8 vector } node_embedding_V_83_ce0 { O 1 bit } node_embedding_V_83_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_83'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 198 \
    name node_embedding_V_84 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_84 \
    op interface \
    ports { node_embedding_V_84_address0 { O 8 vector } node_embedding_V_84_ce0 { O 1 bit } node_embedding_V_84_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_84'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 199 \
    name node_embedding_V_85 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_85 \
    op interface \
    ports { node_embedding_V_85_address0 { O 8 vector } node_embedding_V_85_ce0 { O 1 bit } node_embedding_V_85_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_85'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 200 \
    name node_embedding_V_86 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_86 \
    op interface \
    ports { node_embedding_V_86_address0 { O 8 vector } node_embedding_V_86_ce0 { O 1 bit } node_embedding_V_86_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_86'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 201 \
    name node_embedding_V_87 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_87 \
    op interface \
    ports { node_embedding_V_87_address0 { O 8 vector } node_embedding_V_87_ce0 { O 1 bit } node_embedding_V_87_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_87'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 202 \
    name node_embedding_V_88 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_88 \
    op interface \
    ports { node_embedding_V_88_address0 { O 8 vector } node_embedding_V_88_ce0 { O 1 bit } node_embedding_V_88_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_88'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 203 \
    name node_embedding_V_89 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_89 \
    op interface \
    ports { node_embedding_V_89_address0 { O 8 vector } node_embedding_V_89_ce0 { O 1 bit } node_embedding_V_89_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_89'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 204 \
    name node_embedding_V_90 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_90 \
    op interface \
    ports { node_embedding_V_90_address0 { O 8 vector } node_embedding_V_90_ce0 { O 1 bit } node_embedding_V_90_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_90'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 205 \
    name node_embedding_V_91 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_91 \
    op interface \
    ports { node_embedding_V_91_address0 { O 8 vector } node_embedding_V_91_ce0 { O 1 bit } node_embedding_V_91_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_91'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 206 \
    name node_embedding_V_92 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_92 \
    op interface \
    ports { node_embedding_V_92_address0 { O 8 vector } node_embedding_V_92_ce0 { O 1 bit } node_embedding_V_92_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_92'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 207 \
    name node_embedding_V_93 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_93 \
    op interface \
    ports { node_embedding_V_93_address0 { O 8 vector } node_embedding_V_93_ce0 { O 1 bit } node_embedding_V_93_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_93'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 208 \
    name node_embedding_V_94 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_94 \
    op interface \
    ports { node_embedding_V_94_address0 { O 8 vector } node_embedding_V_94_ce0 { O 1 bit } node_embedding_V_94_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_94'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 209 \
    name node_embedding_V_95 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_95 \
    op interface \
    ports { node_embedding_V_95_address0 { O 8 vector } node_embedding_V_95_ce0 { O 1 bit } node_embedding_V_95_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_95'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 210 \
    name node_embedding_V_96 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_96 \
    op interface \
    ports { node_embedding_V_96_address0 { O 8 vector } node_embedding_V_96_ce0 { O 1 bit } node_embedding_V_96_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_96'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 211 \
    name node_embedding_V_97 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_97 \
    op interface \
    ports { node_embedding_V_97_address0 { O 8 vector } node_embedding_V_97_ce0 { O 1 bit } node_embedding_V_97_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_97'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 212 \
    name node_embedding_V_98 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_98 \
    op interface \
    ports { node_embedding_V_98_address0 { O 8 vector } node_embedding_V_98_ce0 { O 1 bit } node_embedding_V_98_q0 { I 28 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'node_embedding_V_98'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 213 \
    name node_embedding_V_99 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename node_embedding_V_99 \
    op interface \
    ports { node_embedding_V_99_address0 { O 8 vector } node_embedding_V_99_ce0 { O 1 bit } node_embedding_V_99_q0 { I 28 vector } } \
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


