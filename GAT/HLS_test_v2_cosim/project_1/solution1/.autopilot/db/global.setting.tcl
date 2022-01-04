
set TopModule "GAT_compute_one_graph"
set ClockPeriod 4
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 0
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix GAT_compute_one_graph_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xcu280:-fsvh2892:-2L-e
set SourceFiles {sc {} c ../../GAT_compute.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile C:/Users/david/Desktop/GNN_Acc/GAT/HLS_test_v2_cosim/project_1/solution1/solution1.directive
set TBFiles {verilog {../../g1_edge_attr.bin ../../g1_edge_list.bin ../../g1_info.txt ../../g1_node_feature.bin ../../g2_edge_attr.bin ../../g2_edge_list.bin ../../g2_info.txt ../../g2_node_feature.bin ../../gat_ep1_linear_proj_weight_0_layer5.bin ../../gat_ep1_linear_proj_weight_1_layer5.bin ../../gat_ep1_pred_bias_layer5.bin ../../gat_ep1_pred_weights_layer5.bin ../../gat_ep1_scoring_fn_source_layer5.bin ../../gat_ep1_scoring_fn_target_layer5.bin ../../gat_ep1_skip_proj_weight_0_layer5.bin ../../gat_ep1_skip_proj_weight_1_layer5.bin ../../load_weights_graph.cpp ../../main.cpp} bc {../../g1_edge_attr.bin ../../g1_edge_list.bin ../../g1_info.txt ../../g1_node_feature.bin ../../g2_edge_attr.bin ../../g2_edge_list.bin ../../g2_info.txt ../../g2_node_feature.bin ../../gat_ep1_linear_proj_weight_0_layer5.bin ../../gat_ep1_linear_proj_weight_1_layer5.bin ../../gat_ep1_pred_bias_layer5.bin ../../gat_ep1_pred_weights_layer5.bin ../../gat_ep1_scoring_fn_source_layer5.bin ../../gat_ep1_scoring_fn_target_layer5.bin ../../gat_ep1_skip_proj_weight_0_layer5.bin ../../gat_ep1_skip_proj_weight_1_layer5.bin ../../load_weights_graph.cpp ../../main.cpp} sc {../../g1_edge_attr.bin ../../g1_edge_list.bin ../../g1_info.txt ../../g1_node_feature.bin ../../g2_edge_attr.bin ../../g2_edge_list.bin ../../g2_info.txt ../../g2_node_feature.bin ../../gat_ep1_linear_proj_weight_0_layer5.bin ../../gat_ep1_linear_proj_weight_1_layer5.bin ../../gat_ep1_pred_bias_layer5.bin ../../gat_ep1_pred_weights_layer5.bin ../../gat_ep1_scoring_fn_source_layer5.bin ../../gat_ep1_scoring_fn_target_layer5.bin ../../gat_ep1_skip_proj_weight_0_layer5.bin ../../gat_ep1_skip_proj_weight_1_layer5.bin ../../load_weights_graph.cpp ../../main.cpp} vhdl {../../g1_edge_attr.bin ../../g1_edge_list.bin ../../g1_info.txt ../../g1_node_feature.bin ../../g2_edge_attr.bin ../../g2_edge_list.bin ../../g2_info.txt ../../g2_node_feature.bin ../../gat_ep1_linear_proj_weight_0_layer5.bin ../../gat_ep1_linear_proj_weight_1_layer5.bin ../../gat_ep1_pred_bias_layer5.bin ../../gat_ep1_pred_weights_layer5.bin ../../gat_ep1_scoring_fn_source_layer5.bin ../../gat_ep1_scoring_fn_target_layer5.bin ../../gat_ep1_skip_proj_weight_0_layer5.bin ../../gat_ep1_skip_proj_weight_1_layer5.bin ../../load_weights_graph.cpp ../../main.cpp} c {} cas {../../g1_edge_attr.bin ../../g1_edge_list.bin ../../g1_info.txt ../../g1_node_feature.bin ../../g2_edge_attr.bin ../../g2_edge_list.bin ../../g2_info.txt ../../g2_node_feature.bin ../../gat_ep1_linear_proj_weight_0_layer5.bin ../../gat_ep1_linear_proj_weight_1_layer5.bin ../../gat_ep1_pred_bias_layer5.bin ../../gat_ep1_pred_weights_layer5.bin ../../gat_ep1_scoring_fn_source_layer5.bin ../../gat_ep1_scoring_fn_target_layer5.bin ../../gat_ep1_skip_proj_weight_0_layer5.bin ../../gat_ep1_skip_proj_weight_1_layer5.bin ../../load_weights_graph.cpp ../../main.cpp}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/virtexuplus/virtexuplus}}}
set HPFPO 0
