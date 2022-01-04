set SynModuleInfo {
  {SRCNAME load_weights_first_layer_Pipeline_VITIS_LOOP_315_1_VITIS_LOOP_316_2 MODELNAME load_weights_first_layer_Pipeline_VITIS_LOOP_315_1_VITIS_LOOP_316_2 RTLNAME GAT_compute_one_graph_load_weights_first_layer_Pipeline_VITIS_LOOP_315_1_VITIS_LOOP_316_2
    SUBMODULES {
      {MODELNAME GAT_compute_one_graph_flow_control_loop_pipe_sequential_init RTLNAME GAT_compute_one_graph_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME GAT_compute_one_graph_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME load_weights_first_layer_Pipeline_VITIS_LOOP_321_3_VITIS_LOOP_322_4 MODELNAME load_weights_first_layer_Pipeline_VITIS_LOOP_321_3_VITIS_LOOP_322_4 RTLNAME GAT_compute_one_graph_load_weights_first_layer_Pipeline_VITIS_LOOP_321_3_VITIS_LOOP_322_4}
  {SRCNAME load_weights_first_layer_Pipeline_VITIS_LOOP_327_5_VITIS_LOOP_328_6 MODELNAME load_weights_first_layer_Pipeline_VITIS_LOOP_327_5_VITIS_LOOP_328_6 RTLNAME GAT_compute_one_graph_load_weights_first_layer_Pipeline_VITIS_LOOP_327_5_VITIS_LOOP_328_6
    SUBMODULES {
      {MODELNAME GAT_compute_one_graph_urem_13ns_5ns_13_17_1 RTLNAME GAT_compute_one_graph_urem_13ns_5ns_13_17_1 BINDTYPE op TYPE urem IMPL auto LATENCY 16 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME load_weights_first_layer_Pipeline_VITIS_LOOP_337_7_VITIS_LOOP_338_8 MODELNAME load_weights_first_layer_Pipeline_VITIS_LOOP_337_7_VITIS_LOOP_338_8 RTLNAME GAT_compute_one_graph_load_weights_first_layer_Pipeline_VITIS_LOOP_337_7_VITIS_LOOP_338_8}
  {SRCNAME load_weights_first_layer MODELNAME load_weights_first_layer RTLNAME GAT_compute_one_graph_load_weights_first_layer}
  {SRCNAME load_weights_one_layer_Pipeline_VITIS_LOOP_365_5_VITIS_LOOP_366_6 MODELNAME load_weights_one_layer_Pipeline_VITIS_LOOP_365_5_VITIS_LOOP_366_6 RTLNAME GAT_compute_one_graph_load_weights_one_layer_Pipeline_VITIS_LOOP_365_5_VITIS_LOOP_366_6}
  {SRCNAME load_weights_one_layer_Pipeline_VITIS_LOOP_371_7_VITIS_LOOP_372_8 MODELNAME load_weights_one_layer_Pipeline_VITIS_LOOP_371_7_VITIS_LOOP_372_8 RTLNAME GAT_compute_one_graph_load_weights_one_layer_Pipeline_VITIS_LOOP_371_7_VITIS_LOOP_372_8}
  {SRCNAME load_weights_one_layer MODELNAME load_weights_one_layer RTLNAME GAT_compute_one_graph_load_weights_one_layer}
  {SRCNAME load_misc_weights_Pipeline_VITIS_LOOP_387_2 MODELNAME load_misc_weights_Pipeline_VITIS_LOOP_387_2 RTLNAME GAT_compute_one_graph_load_misc_weights_Pipeline_VITIS_LOOP_387_2}
  {SRCNAME load_misc_weights MODELNAME load_misc_weights RTLNAME GAT_compute_one_graph_load_misc_weights}
  {SRCNAME load_graph_Pipeline_VITIS_LOOP_397_1_VITIS_LOOP_398_2 MODELNAME load_graph_Pipeline_VITIS_LOOP_397_1_VITIS_LOOP_398_2 RTLNAME GAT_compute_one_graph_load_graph_Pipeline_VITIS_LOOP_397_1_VITIS_LOOP_398_2}
  {SRCNAME load_graph_Pipeline_VITIS_LOOP_403_3 MODELNAME load_graph_Pipeline_VITIS_LOOP_403_3 RTLNAME GAT_compute_one_graph_load_graph_Pipeline_VITIS_LOOP_403_3}
  {SRCNAME load_graph MODELNAME load_graph RTLNAME GAT_compute_one_graph_load_graph}
  {SRCNAME compute_connectivity_mask_Pipeline_1 MODELNAME compute_connectivity_mask_Pipeline_1 RTLNAME GAT_compute_one_graph_compute_connectivity_mask_Pipeline_1}
  {SRCNAME compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1 MODELNAME compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1 RTLNAME GAT_compute_one_graph_compute_connectivity_mask_Pipeline_VITIS_LOOP_423_1
    SUBMODULES {
      {MODELNAME GAT_compute_one_graph_mac_muladd_16s_8ns_16ns_16_4_1 RTLNAME GAT_compute_one_graph_mac_muladd_16s_8ns_16ns_16_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2 MODELNAME compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2 RTLNAME GAT_compute_one_graph_compute_connectivity_mask_Pipeline_VITIS_LOOP_428_2}
  {SRCNAME compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4 MODELNAME compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4 RTLNAME GAT_compute_one_graph_compute_connectivity_mask_Pipeline_VITIS_LOOP_432_3_VITIS_LOOP_433_4}
  {SRCNAME compute_connectivity_mask MODELNAME compute_connectivity_mask RTLNAME GAT_compute_one_graph_compute_connectivity_mask
    SUBMODULES {
      {MODELNAME GAT_compute_one_graph_mul_32s_32s_32_2_1 RTLNAME GAT_compute_one_graph_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_mul_31ns_31ns_62_2_1 RTLNAME GAT_compute_one_graph_mul_31ns_31ns_62_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_compute_connectivity_mask_connectivity_mask RTLNAME GAT_compute_one_graph_compute_connectivity_mask_connectivity_mask BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_nodes_features_proj MODELNAME compute_nodes_features_proj RTLNAME GAT_compute_one_graph_compute_nodes_features_proj
    SUBMODULES {
      {MODELNAME GAT_compute_one_graph_mul_28s_28s_46_1_1 RTLNAME GAT_compute_one_graph_mul_28s_28s_46_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_scores_source MODELNAME compute_scores_source RTLNAME GAT_compute_one_graph_compute_scores_source
    SUBMODULES {
      {MODELNAME GAT_compute_one_graph_mac_muladd_3ns_8ns_10ns_10_4_1 RTLNAME GAT_compute_one_graph_mac_muladd_3ns_8ns_10ns_10_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_scores_target MODELNAME compute_scores_target RTLNAME GAT_compute_one_graph_compute_scores_target}
  {SRCNAME compute_all_scores MODELNAME compute_all_scores RTLNAME GAT_compute_one_graph_compute_all_scores
    SUBMODULES {
      {MODELNAME GAT_compute_one_graph_mul_32ns_32ns_64_2_1 RTLNAME GAT_compute_one_graph_mul_32ns_32ns_64_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_mul_3ns_9ns_10_1_1 RTLNAME GAT_compute_one_graph_mul_3ns_9ns_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_mul_3ns_9ns_11_1_1 RTLNAME GAT_compute_one_graph_mul_3ns_9ns_11_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_ama_addmuladd_11ns_18ns_8ns_18ns_18_4_1 RTLNAME GAT_compute_one_graph_ama_addmuladd_11ns_18ns_8ns_18ns_18_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_mul_mul_28s_16ns_45_4_1 RTLNAME GAT_compute_one_graph_mul_mul_28s_16ns_45_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {exp<28, 10>} MODELNAME exp_28_10_s RTLNAME GAT_compute_one_graph_exp_28_10_s
    SUBMODULES {
      {MODELNAME GAT_compute_one_graph_mul_44ns_42ns_86_2_1 RTLNAME GAT_compute_one_graph_mul_44ns_42ns_86_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_mul_50ns_48ns_98_3_1 RTLNAME GAT_compute_one_graph_mul_50ns_48ns_98_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_mul_50ns_50ns_100_3_1 RTLNAME GAT_compute_one_graph_mul_50ns_50ns_100_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_exp_28_10_s_f_x_msb_4_h_table_V RTLNAME GAT_compute_one_graph_exp_28_10_s_f_x_msb_4_h_table_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_exp_28_10_s_f_x_msb_4_l_table_V RTLNAME GAT_compute_one_graph_exp_28_10_s_f_x_msb_4_l_table_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_exp_28_10_s_f_x_msb_3_table_V RTLNAME GAT_compute_one_graph_exp_28_10_s_f_x_msb_3_table_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_exp_28_10_s_f_x_msb_2_table_V RTLNAME GAT_compute_one_graph_exp_28_10_s_f_x_msb_2_table_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_exp_28_10_s_exp_x_msb_1_table_V RTLNAME GAT_compute_one_graph_exp_28_10_s_exp_x_msb_1_table_V BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3 MODELNAME compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3 RTLNAME GAT_compute_one_graph_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3}
  {SRCNAME compute_attention_coefficients_sum MODELNAME compute_attention_coefficients_sum RTLNAME GAT_compute_one_graph_compute_attention_coefficients_sum
    SUBMODULES {
      {MODELNAME GAT_compute_one_graph_mac_muladd_3ns_8ns_10ns_12_4_1 RTLNAME GAT_compute_one_graph_mac_muladd_3ns_8ns_10ns_12_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_mul_mul_12ns_8ns_18_4_1 RTLNAME GAT_compute_one_graph_mul_mul_12ns_8ns_18_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_mul_mul_10ns_8ns_16_4_1 RTLNAME GAT_compute_one_graph_mul_mul_10ns_8ns_16_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_all_attention_coefficients MODELNAME compute_all_attention_coefficients RTLNAME GAT_compute_one_graph_compute_all_attention_coefficients
    SUBMODULES {
      {MODELNAME GAT_compute_one_graph_sdiv_46ns_28s_28_50_1 RTLNAME GAT_compute_one_graph_sdiv_46ns_28s_28_50_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 49 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_out_nodes_features_Pipeline_VITIS_LOOP_193_3_VITIS_LOOP_197_4 MODELNAME compute_out_nodes_features_Pipeline_VITIS_LOOP_193_3_VITIS_LOOP_197_4 RTLNAME GAT_compute_one_graph_compute_out_nodes_features_Pipeline_VITIS_LOOP_193_3_VITIS_LOOP_197_4
    SUBMODULES {
      {MODELNAME GAT_compute_one_graph_mux_164_28_1_1 RTLNAME GAT_compute_one_graph_mux_164_28_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_out_nodes_features_Pipeline_VITIS_LOOP_205_5 MODELNAME compute_out_nodes_features_Pipeline_VITIS_LOOP_205_5 RTLNAME GAT_compute_one_graph_compute_out_nodes_features_Pipeline_VITIS_LOOP_205_5}
  {SRCNAME compute_out_nodes_features MODELNAME compute_out_nodes_features RTLNAME GAT_compute_one_graph_compute_out_nodes_features
    SUBMODULES {
      {MODELNAME GAT_compute_one_graph_mac_muladd_3ns_8ns_18ns_18_4_1 RTLNAME GAT_compute_one_graph_mac_muladd_3ns_8ns_18ns_18_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_mul_mul_18s_8ns_18_4_1 RTLNAME GAT_compute_one_graph_mul_mul_18s_8ns_18_4_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_compute_out_nodes_features_out_nodes_features_sum_V RTLNAME GAT_compute_one_graph_compute_out_nodes_features_out_nodes_features_sum_V BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME prepare_out_nodes_features MODELNAME prepare_out_nodes_features RTLNAME GAT_compute_one_graph_prepare_out_nodes_features
    SUBMODULES {
      {MODELNAME GAT_compute_one_graph_mux_646_28_1_1 RTLNAME GAT_compute_one_graph_mux_646_28_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_activation MODELNAME compute_activation RTLNAME GAT_compute_one_graph_compute_activation}
  {SRCNAME compute_not_concat MODELNAME compute_not_concat RTLNAME GAT_compute_one_graph_compute_not_concat}
  {SRCNAME CONV MODELNAME CONV RTLNAME GAT_compute_one_graph_CONV
    SUBMODULES {
      {MODELNAME GAT_compute_one_graph_CONV_out_nodes_features_skip_concat_bias_V_16 RTLNAME GAT_compute_one_graph_CONV_out_nodes_features_skip_concat_bias_V_16 BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_CONV_nodes_features_proj_V_0 RTLNAME GAT_compute_one_graph_CONV_nodes_features_proj_V_0 BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_CONV_all_scores_V RTLNAME GAT_compute_one_graph_CONV_all_scores_V BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME global_mean_pooling_Pipeline_VITIS_LOOP_292_2 MODELNAME global_mean_pooling_Pipeline_VITIS_LOOP_292_2 RTLNAME GAT_compute_one_graph_global_mean_pooling_Pipeline_VITIS_LOOP_292_2}
  {SRCNAME global_mean_pooling MODELNAME global_mean_pooling RTLNAME GAT_compute_one_graph_global_mean_pooling
    SUBMODULES {
      {MODELNAME GAT_compute_one_graph_sdiv_46ns_28s_28_50_seq_1 RTLNAME GAT_compute_one_graph_sdiv_46ns_28s_28_50_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 49 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME global_graph_prediction MODELNAME global_graph_prediction RTLNAME GAT_compute_one_graph_global_graph_prediction}
  {SRCNAME GAT_compute_one_graph MODELNAME GAT_compute_one_graph RTLNAME GAT_compute_one_graph IS_TOP 1
    SUBMODULES {
      {MODELNAME GAT_compute_one_graph_scoring_fn_target_V_0 RTLNAME GAT_compute_one_graph_scoring_fn_target_V_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_linear_proj_weight_V_0 RTLNAME GAT_compute_one_graph_linear_proj_weight_V_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_pred_linear_weight_V RTLNAME GAT_compute_one_graph_pred_linear_weight_V BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_out_nodes_features_skip_concat_bias_V_0 RTLNAME GAT_compute_one_graph_out_nodes_features_skip_concat_bias_V_0 BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_edge_list RTLNAME GAT_compute_one_graph_edge_list BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME GAT_compute_one_graph_control_s_axi RTLNAME GAT_compute_one_graph_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME GAT_compute_one_graph_mem_m_axi RTLNAME GAT_compute_one_graph_mem_m_axi BINDTYPE interface TYPE interface_m_axi}
    }
  }
}
