-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GAT_compute_one_graph_prepare_out_nodes_features_Pipeline_VITIS_LOOP_167_3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    out_nodes_features_V_load : IN STD_LOGIC_VECTOR (27 downto 0);
    num_in_features : IN STD_LOGIC_VECTOR (6 downto 0);
    tmp_2 : IN STD_LOGIC_VECTOR (14 downto 0);
    out_nodes_features_skip_concat_bias_V_0_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_1_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_2_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_3_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_4_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_5_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_6_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_7_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_8_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_9_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_10_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_11_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_12_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_13_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_14_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_15_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_16_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_17_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_18_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_19_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_20_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_21_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_22_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_23_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_24_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_25_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_26_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_27_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_28_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_29_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_30_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_31_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_32_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_33_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_34_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_35_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_36_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_37_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_38_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_39_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_40_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_41_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_42_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_43_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_44_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_45_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_46_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_47_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_48_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_49_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_50_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_51_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_52_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_53_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_54_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_55_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_56_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_57_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_58_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_59_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_60_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_61_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_62_load : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_63_load : IN STD_LOGIC_VECTOR (27 downto 0);
    lhs_out : OUT STD_LOGIC_VECTOR (27 downto 0);
    lhs_out_ap_vld : OUT STD_LOGIC;
    skip_proj_weight_V_address0 : OUT STD_LOGIC_VECTOR (14 downto 0);
    skip_proj_weight_V_ce0 : OUT STD_LOGIC;
    skip_proj_weight_V_q0 : IN STD_LOGIC_VECTOR (27 downto 0) );
end;


architecture behav of GAT_compute_one_graph_prepare_out_nodes_features_Pipeline_VITIS_LOOP_167_3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv18_0 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000000";
    constant ap_const_lv32_12 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010010";
    constant ap_const_lv32_2D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101101";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln167_fu_627_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln167_reg_859 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln167_reg_859_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln167_reg_859_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln167_reg_859_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal r_V_fu_658_p66 : STD_LOGIC_VECTOR (27 downto 0);
    signal r_V_reg_868 : STD_LOGIC_VECTOR (27 downto 0);
    signal r_V_reg_868_pp0_iter1_reg : STD_LOGIC_VECTOR (27 downto 0);
    signal skip_proj_weight_V_load_reg_873 : STD_LOGIC_VECTOR (27 downto 0);
    signal grp_fu_803_p2 : STD_LOGIC_VECTOR (45 downto 0);
    signal r_V_1_reg_888 : STD_LOGIC_VECTOR (45 downto 0);
    signal zext_ln1171_1_fu_649_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal lhs_fu_184 : STD_LOGIC_VECTOR (27 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal dim_in_fu_188 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_sig_allocacmp_dim_in_1 : STD_LOGIC_VECTOR (6 downto 0);
    signal add_ln167_fu_633_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal zext_ln1171_fu_639_p1 : STD_LOGIC_VECTOR (14 downto 0);
    signal add_ln1171_fu_643_p2 : STD_LOGIC_VECTOR (14 downto 0);
    signal r_V_fu_658_p65 : STD_LOGIC_VECTOR (5 downto 0);
    signal lhs_1_fu_812_p3 : STD_LOGIC_VECTOR (45 downto 0);
    signal ret_V_fu_820_p2 : STD_LOGIC_VECTOR (45 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component GAT_compute_one_graph_mux_646_28_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        din9_WIDTH : INTEGER;
        din10_WIDTH : INTEGER;
        din11_WIDTH : INTEGER;
        din12_WIDTH : INTEGER;
        din13_WIDTH : INTEGER;
        din14_WIDTH : INTEGER;
        din15_WIDTH : INTEGER;
        din16_WIDTH : INTEGER;
        din17_WIDTH : INTEGER;
        din18_WIDTH : INTEGER;
        din19_WIDTH : INTEGER;
        din20_WIDTH : INTEGER;
        din21_WIDTH : INTEGER;
        din22_WIDTH : INTEGER;
        din23_WIDTH : INTEGER;
        din24_WIDTH : INTEGER;
        din25_WIDTH : INTEGER;
        din26_WIDTH : INTEGER;
        din27_WIDTH : INTEGER;
        din28_WIDTH : INTEGER;
        din29_WIDTH : INTEGER;
        din30_WIDTH : INTEGER;
        din31_WIDTH : INTEGER;
        din32_WIDTH : INTEGER;
        din33_WIDTH : INTEGER;
        din34_WIDTH : INTEGER;
        din35_WIDTH : INTEGER;
        din36_WIDTH : INTEGER;
        din37_WIDTH : INTEGER;
        din38_WIDTH : INTEGER;
        din39_WIDTH : INTEGER;
        din40_WIDTH : INTEGER;
        din41_WIDTH : INTEGER;
        din42_WIDTH : INTEGER;
        din43_WIDTH : INTEGER;
        din44_WIDTH : INTEGER;
        din45_WIDTH : INTEGER;
        din46_WIDTH : INTEGER;
        din47_WIDTH : INTEGER;
        din48_WIDTH : INTEGER;
        din49_WIDTH : INTEGER;
        din50_WIDTH : INTEGER;
        din51_WIDTH : INTEGER;
        din52_WIDTH : INTEGER;
        din53_WIDTH : INTEGER;
        din54_WIDTH : INTEGER;
        din55_WIDTH : INTEGER;
        din56_WIDTH : INTEGER;
        din57_WIDTH : INTEGER;
        din58_WIDTH : INTEGER;
        din59_WIDTH : INTEGER;
        din60_WIDTH : INTEGER;
        din61_WIDTH : INTEGER;
        din62_WIDTH : INTEGER;
        din63_WIDTH : INTEGER;
        din64_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (27 downto 0);
        din1 : IN STD_LOGIC_VECTOR (27 downto 0);
        din2 : IN STD_LOGIC_VECTOR (27 downto 0);
        din3 : IN STD_LOGIC_VECTOR (27 downto 0);
        din4 : IN STD_LOGIC_VECTOR (27 downto 0);
        din5 : IN STD_LOGIC_VECTOR (27 downto 0);
        din6 : IN STD_LOGIC_VECTOR (27 downto 0);
        din7 : IN STD_LOGIC_VECTOR (27 downto 0);
        din8 : IN STD_LOGIC_VECTOR (27 downto 0);
        din9 : IN STD_LOGIC_VECTOR (27 downto 0);
        din10 : IN STD_LOGIC_VECTOR (27 downto 0);
        din11 : IN STD_LOGIC_VECTOR (27 downto 0);
        din12 : IN STD_LOGIC_VECTOR (27 downto 0);
        din13 : IN STD_LOGIC_VECTOR (27 downto 0);
        din14 : IN STD_LOGIC_VECTOR (27 downto 0);
        din15 : IN STD_LOGIC_VECTOR (27 downto 0);
        din16 : IN STD_LOGIC_VECTOR (27 downto 0);
        din17 : IN STD_LOGIC_VECTOR (27 downto 0);
        din18 : IN STD_LOGIC_VECTOR (27 downto 0);
        din19 : IN STD_LOGIC_VECTOR (27 downto 0);
        din20 : IN STD_LOGIC_VECTOR (27 downto 0);
        din21 : IN STD_LOGIC_VECTOR (27 downto 0);
        din22 : IN STD_LOGIC_VECTOR (27 downto 0);
        din23 : IN STD_LOGIC_VECTOR (27 downto 0);
        din24 : IN STD_LOGIC_VECTOR (27 downto 0);
        din25 : IN STD_LOGIC_VECTOR (27 downto 0);
        din26 : IN STD_LOGIC_VECTOR (27 downto 0);
        din27 : IN STD_LOGIC_VECTOR (27 downto 0);
        din28 : IN STD_LOGIC_VECTOR (27 downto 0);
        din29 : IN STD_LOGIC_VECTOR (27 downto 0);
        din30 : IN STD_LOGIC_VECTOR (27 downto 0);
        din31 : IN STD_LOGIC_VECTOR (27 downto 0);
        din32 : IN STD_LOGIC_VECTOR (27 downto 0);
        din33 : IN STD_LOGIC_VECTOR (27 downto 0);
        din34 : IN STD_LOGIC_VECTOR (27 downto 0);
        din35 : IN STD_LOGIC_VECTOR (27 downto 0);
        din36 : IN STD_LOGIC_VECTOR (27 downto 0);
        din37 : IN STD_LOGIC_VECTOR (27 downto 0);
        din38 : IN STD_LOGIC_VECTOR (27 downto 0);
        din39 : IN STD_LOGIC_VECTOR (27 downto 0);
        din40 : IN STD_LOGIC_VECTOR (27 downto 0);
        din41 : IN STD_LOGIC_VECTOR (27 downto 0);
        din42 : IN STD_LOGIC_VECTOR (27 downto 0);
        din43 : IN STD_LOGIC_VECTOR (27 downto 0);
        din44 : IN STD_LOGIC_VECTOR (27 downto 0);
        din45 : IN STD_LOGIC_VECTOR (27 downto 0);
        din46 : IN STD_LOGIC_VECTOR (27 downto 0);
        din47 : IN STD_LOGIC_VECTOR (27 downto 0);
        din48 : IN STD_LOGIC_VECTOR (27 downto 0);
        din49 : IN STD_LOGIC_VECTOR (27 downto 0);
        din50 : IN STD_LOGIC_VECTOR (27 downto 0);
        din51 : IN STD_LOGIC_VECTOR (27 downto 0);
        din52 : IN STD_LOGIC_VECTOR (27 downto 0);
        din53 : IN STD_LOGIC_VECTOR (27 downto 0);
        din54 : IN STD_LOGIC_VECTOR (27 downto 0);
        din55 : IN STD_LOGIC_VECTOR (27 downto 0);
        din56 : IN STD_LOGIC_VECTOR (27 downto 0);
        din57 : IN STD_LOGIC_VECTOR (27 downto 0);
        din58 : IN STD_LOGIC_VECTOR (27 downto 0);
        din59 : IN STD_LOGIC_VECTOR (27 downto 0);
        din60 : IN STD_LOGIC_VECTOR (27 downto 0);
        din61 : IN STD_LOGIC_VECTOR (27 downto 0);
        din62 : IN STD_LOGIC_VECTOR (27 downto 0);
        din63 : IN STD_LOGIC_VECTOR (27 downto 0);
        din64 : IN STD_LOGIC_VECTOR (5 downto 0);
        dout : OUT STD_LOGIC_VECTOR (27 downto 0) );
    end component;


    component GAT_compute_one_graph_mul_28s_28s_46_3_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (27 downto 0);
        din1 : IN STD_LOGIC_VECTOR (27 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (45 downto 0) );
    end component;


    component GAT_compute_one_graph_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    mux_646_28_1_1_U998 : component GAT_compute_one_graph_mux_646_28_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 28,
        din1_WIDTH => 28,
        din2_WIDTH => 28,
        din3_WIDTH => 28,
        din4_WIDTH => 28,
        din5_WIDTH => 28,
        din6_WIDTH => 28,
        din7_WIDTH => 28,
        din8_WIDTH => 28,
        din9_WIDTH => 28,
        din10_WIDTH => 28,
        din11_WIDTH => 28,
        din12_WIDTH => 28,
        din13_WIDTH => 28,
        din14_WIDTH => 28,
        din15_WIDTH => 28,
        din16_WIDTH => 28,
        din17_WIDTH => 28,
        din18_WIDTH => 28,
        din19_WIDTH => 28,
        din20_WIDTH => 28,
        din21_WIDTH => 28,
        din22_WIDTH => 28,
        din23_WIDTH => 28,
        din24_WIDTH => 28,
        din25_WIDTH => 28,
        din26_WIDTH => 28,
        din27_WIDTH => 28,
        din28_WIDTH => 28,
        din29_WIDTH => 28,
        din30_WIDTH => 28,
        din31_WIDTH => 28,
        din32_WIDTH => 28,
        din33_WIDTH => 28,
        din34_WIDTH => 28,
        din35_WIDTH => 28,
        din36_WIDTH => 28,
        din37_WIDTH => 28,
        din38_WIDTH => 28,
        din39_WIDTH => 28,
        din40_WIDTH => 28,
        din41_WIDTH => 28,
        din42_WIDTH => 28,
        din43_WIDTH => 28,
        din44_WIDTH => 28,
        din45_WIDTH => 28,
        din46_WIDTH => 28,
        din47_WIDTH => 28,
        din48_WIDTH => 28,
        din49_WIDTH => 28,
        din50_WIDTH => 28,
        din51_WIDTH => 28,
        din52_WIDTH => 28,
        din53_WIDTH => 28,
        din54_WIDTH => 28,
        din55_WIDTH => 28,
        din56_WIDTH => 28,
        din57_WIDTH => 28,
        din58_WIDTH => 28,
        din59_WIDTH => 28,
        din60_WIDTH => 28,
        din61_WIDTH => 28,
        din62_WIDTH => 28,
        din63_WIDTH => 28,
        din64_WIDTH => 6,
        dout_WIDTH => 28)
    port map (
        din0 => out_nodes_features_skip_concat_bias_V_0_load,
        din1 => out_nodes_features_skip_concat_bias_V_1_load,
        din2 => out_nodes_features_skip_concat_bias_V_2_load,
        din3 => out_nodes_features_skip_concat_bias_V_3_load,
        din4 => out_nodes_features_skip_concat_bias_V_4_load,
        din5 => out_nodes_features_skip_concat_bias_V_5_load,
        din6 => out_nodes_features_skip_concat_bias_V_6_load,
        din7 => out_nodes_features_skip_concat_bias_V_7_load,
        din8 => out_nodes_features_skip_concat_bias_V_8_load,
        din9 => out_nodes_features_skip_concat_bias_V_9_load,
        din10 => out_nodes_features_skip_concat_bias_V_10_load,
        din11 => out_nodes_features_skip_concat_bias_V_11_load,
        din12 => out_nodes_features_skip_concat_bias_V_12_load,
        din13 => out_nodes_features_skip_concat_bias_V_13_load,
        din14 => out_nodes_features_skip_concat_bias_V_14_load,
        din15 => out_nodes_features_skip_concat_bias_V_15_load,
        din16 => out_nodes_features_skip_concat_bias_V_16_load,
        din17 => out_nodes_features_skip_concat_bias_V_17_load,
        din18 => out_nodes_features_skip_concat_bias_V_18_load,
        din19 => out_nodes_features_skip_concat_bias_V_19_load,
        din20 => out_nodes_features_skip_concat_bias_V_20_load,
        din21 => out_nodes_features_skip_concat_bias_V_21_load,
        din22 => out_nodes_features_skip_concat_bias_V_22_load,
        din23 => out_nodes_features_skip_concat_bias_V_23_load,
        din24 => out_nodes_features_skip_concat_bias_V_24_load,
        din25 => out_nodes_features_skip_concat_bias_V_25_load,
        din26 => out_nodes_features_skip_concat_bias_V_26_load,
        din27 => out_nodes_features_skip_concat_bias_V_27_load,
        din28 => out_nodes_features_skip_concat_bias_V_28_load,
        din29 => out_nodes_features_skip_concat_bias_V_29_load,
        din30 => out_nodes_features_skip_concat_bias_V_30_load,
        din31 => out_nodes_features_skip_concat_bias_V_31_load,
        din32 => out_nodes_features_skip_concat_bias_V_32_load,
        din33 => out_nodes_features_skip_concat_bias_V_33_load,
        din34 => out_nodes_features_skip_concat_bias_V_34_load,
        din35 => out_nodes_features_skip_concat_bias_V_35_load,
        din36 => out_nodes_features_skip_concat_bias_V_36_load,
        din37 => out_nodes_features_skip_concat_bias_V_37_load,
        din38 => out_nodes_features_skip_concat_bias_V_38_load,
        din39 => out_nodes_features_skip_concat_bias_V_39_load,
        din40 => out_nodes_features_skip_concat_bias_V_40_load,
        din41 => out_nodes_features_skip_concat_bias_V_41_load,
        din42 => out_nodes_features_skip_concat_bias_V_42_load,
        din43 => out_nodes_features_skip_concat_bias_V_43_load,
        din44 => out_nodes_features_skip_concat_bias_V_44_load,
        din45 => out_nodes_features_skip_concat_bias_V_45_load,
        din46 => out_nodes_features_skip_concat_bias_V_46_load,
        din47 => out_nodes_features_skip_concat_bias_V_47_load,
        din48 => out_nodes_features_skip_concat_bias_V_48_load,
        din49 => out_nodes_features_skip_concat_bias_V_49_load,
        din50 => out_nodes_features_skip_concat_bias_V_50_load,
        din51 => out_nodes_features_skip_concat_bias_V_51_load,
        din52 => out_nodes_features_skip_concat_bias_V_52_load,
        din53 => out_nodes_features_skip_concat_bias_V_53_load,
        din54 => out_nodes_features_skip_concat_bias_V_54_load,
        din55 => out_nodes_features_skip_concat_bias_V_55_load,
        din56 => out_nodes_features_skip_concat_bias_V_56_load,
        din57 => out_nodes_features_skip_concat_bias_V_57_load,
        din58 => out_nodes_features_skip_concat_bias_V_58_load,
        din59 => out_nodes_features_skip_concat_bias_V_59_load,
        din60 => out_nodes_features_skip_concat_bias_V_60_load,
        din61 => out_nodes_features_skip_concat_bias_V_61_load,
        din62 => out_nodes_features_skip_concat_bias_V_62_load,
        din63 => out_nodes_features_skip_concat_bias_V_63_load,
        din64 => r_V_fu_658_p65,
        dout => r_V_fu_658_p66);

    mul_28s_28s_46_3_1_U999 : component GAT_compute_one_graph_mul_28s_28s_46_3_1
    generic map (
        ID => 1,
        NUM_STAGE => 3,
        din0_WIDTH => 28,
        din1_WIDTH => 28,
        dout_WIDTH => 46)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => skip_proj_weight_V_load_reg_873,
        din1 => r_V_reg_868_pp0_iter1_reg,
        ce => ap_const_logic_1,
        dout => grp_fu_803_p2);

    flow_control_loop_pipe_sequential_init_U : component GAT_compute_one_graph_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    dim_in_fu_188_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln167_fu_627_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    dim_in_fu_188 <= add_ln167_fu_633_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    dim_in_fu_188 <= ap_const_lv7_0;
                end if;
            end if; 
        end if;
    end process;

    lhs_fu_184_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    lhs_fu_184 <= out_nodes_features_V_load;
                elsif ((ap_enable_reg_pp0_iter5 = ap_const_logic_1)) then 
                    lhs_fu_184 <= ret_V_fu_820_p2(45 downto 18);
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                icmp_ln167_reg_859 <= icmp_ln167_fu_627_p2;
                icmp_ln167_reg_859_pp0_iter1_reg <= icmp_ln167_reg_859;
                r_V_reg_868_pp0_iter1_reg <= r_V_reg_868;
                skip_proj_weight_V_load_reg_873 <= skip_proj_weight_V_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                icmp_ln167_reg_859_pp0_iter2_reg <= icmp_ln167_reg_859_pp0_iter1_reg;
                icmp_ln167_reg_859_pp0_iter3_reg <= icmp_ln167_reg_859_pp0_iter2_reg;
                r_V_1_reg_888 <= grp_fu_803_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln167_fu_627_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                r_V_reg_868 <= r_V_fu_658_p66;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln1171_fu_643_p2 <= std_logic_vector(unsigned(tmp_2) + unsigned(zext_ln1171_fu_639_p1));
    add_ln167_fu_633_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_dim_in_1) + unsigned(ap_const_lv7_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln167_fu_627_p2)
    begin
        if (((icmp_ln167_fu_627_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter4_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter4_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5)
    begin
        if (((ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_dim_in_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, dim_in_fu_188)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_dim_in_1 <= ap_const_lv7_0;
        else 
            ap_sig_allocacmp_dim_in_1 <= dim_in_fu_188;
        end if; 
    end process;

    icmp_ln167_fu_627_p2 <= "1" when (ap_sig_allocacmp_dim_in_1 = num_in_features) else "0";
    lhs_1_fu_812_p3 <= (lhs_fu_184 & ap_const_lv18_0);
    lhs_out <= lhs_fu_184;

    lhs_out_ap_vld_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln167_reg_859_pp0_iter3_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln167_reg_859_pp0_iter3_reg = ap_const_lv1_1))) then 
            lhs_out_ap_vld <= ap_const_logic_1;
        else 
            lhs_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    r_V_fu_658_p65 <= ap_sig_allocacmp_dim_in_1(6 - 1 downto 0);
    ret_V_fu_820_p2 <= std_logic_vector(unsigned(lhs_1_fu_812_p3) + unsigned(r_V_1_reg_888));
    skip_proj_weight_V_address0 <= zext_ln1171_1_fu_649_p1(15 - 1 downto 0);

    skip_proj_weight_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            skip_proj_weight_V_ce0 <= ap_const_logic_1;
        else 
            skip_proj_weight_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln1171_1_fu_649_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1171_fu_643_p2),64));
    zext_ln1171_fu_639_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_dim_in_1),15));
end behav;
