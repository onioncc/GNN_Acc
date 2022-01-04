-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GAT_compute_one_graph_compute_attention_coefficients_sum is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    num_of_nodes : IN STD_LOGIC_VECTOR (31 downto 0);
    all_scores_V_address0 : OUT STD_LOGIC_VECTOR (17 downto 0);
    all_scores_V_ce0 : OUT STD_LOGIC;
    all_scores_V_q0 : IN STD_LOGIC_VECTOR (27 downto 0);
    all_scores_V_address1 : OUT STD_LOGIC_VECTOR (17 downto 0);
    all_scores_V_ce1 : OUT STD_LOGIC;
    all_scores_V_we1 : OUT STD_LOGIC;
    all_scores_V_d1 : OUT STD_LOGIC_VECTOR (27 downto 0);
    connectivity_mask_final_address0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    connectivity_mask_final_ce0 : OUT STD_LOGIC;
    connectivity_mask_final_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    attention_coefficients_sum_V_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    attention_coefficients_sum_V_ce1 : OUT STD_LOGIC;
    attention_coefficients_sum_V_we1 : OUT STD_LOGIC;
    attention_coefficients_sum_V_d1 : OUT STD_LOGIC_VECTOR (27 downto 0) );
end;


architecture behav of GAT_compute_one_graph_compute_attention_coefficients_sum is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv34_0 : STD_LOGIC_VECTOR (33 downto 0) := "0000000000000000000000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv34_1 : STD_LOGIC_VECTOR (33 downto 0) := "0000000000000000000000000000000001";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv11_C8 : STD_LOGIC_VECTOR (10 downto 0) := "00011001000";
    constant ap_const_lv18_C8 : STD_LOGIC_VECTOR (17 downto 0) := "000000000011001000";
    constant ap_const_lv16_C8 : STD_LOGIC_VECTOR (15 downto 0) := "0000000011001000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_fu_125_p3 : STD_LOGIC_VECTOR (33 downto 0);
    signal tmp_reg_297 : STD_LOGIC_VECTOR (33 downto 0);
    signal select_ln108_fu_183_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln108_reg_305 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln108_fu_163_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal grp_fu_241_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln116_reg_326 : STD_LOGIC_VECTOR (11 downto 0);
    signal grp_fu_250_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal mul_ln119_reg_336 : STD_LOGIC_VECTOR (17 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal grp_fu_257_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal mul_ln109_reg_341 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start : STD_LOGIC;
    signal grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_done : STD_LOGIC;
    signal grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_idle : STD_LOGIC;
    signal grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_ready : STD_LOGIC;
    signal grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_sum_V_out : STD_LOGIC_VECTOR (27 downto 0);
    signal grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_sum_V_out_ap_vld : STD_LOGIC;
    signal grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_address0 : STD_LOGIC_VECTOR (17 downto 0);
    signal grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_ce0 : STD_LOGIC;
    signal grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_address1 : STD_LOGIC_VECTOR (17 downto 0);
    signal grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_ce1 : STD_LOGIC;
    signal grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_we1 : STD_LOGIC;
    signal grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_d1 : STD_LOGIC_VECTOR (27 downto 0);
    signal grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_connectivity_mask_final_address0 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_connectivity_mask_final_ce0 : STD_LOGIC;
    signal grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal zext_ln116_2_fu_233_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal n1_fu_64 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln109_fu_203_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal nh_fu_68 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln108_1_fu_191_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal indvar_flatten_fu_72 : STD_LOGIC_VECTOR (33 downto 0);
    signal add_ln108_1_fu_168_p2 : STD_LOGIC_VECTOR (33 downto 0);
    signal zext_ln109_fu_154_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln109_fu_158_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln108_fu_177_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_fu_241_p0 : STD_LOGIC_VECTOR (2 downto 0);
    signal grp_fu_241_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_241_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_fu_250_p0 : STD_LOGIC_VECTOR (11 downto 0);
    signal grp_fu_250_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_257_p0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_fu_257_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal ap_ST_fsm_state8_blk : STD_LOGIC;
    signal ap_ST_fsm_state9_blk : STD_LOGIC;
    signal ap_ST_fsm_state10_blk : STD_LOGIC;
    signal grp_fu_241_p00 : STD_LOGIC_VECTOR (10 downto 0);
    signal grp_fu_241_p20 : STD_LOGIC_VECTOR (11 downto 0);
    signal grp_fu_250_p00 : STD_LOGIC_VECTOR (17 downto 0);
    signal grp_fu_257_p00 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component GAT_compute_one_graph_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        num_of_nodes : IN STD_LOGIC_VECTOR (31 downto 0);
        mul_ln116_1 : IN STD_LOGIC_VECTOR (17 downto 0);
        mul_ln113 : IN STD_LOGIC_VECTOR (15 downto 0);
        sum_V_out : OUT STD_LOGIC_VECTOR (27 downto 0);
        sum_V_out_ap_vld : OUT STD_LOGIC;
        all_scores_V_address0 : OUT STD_LOGIC_VECTOR (17 downto 0);
        all_scores_V_ce0 : OUT STD_LOGIC;
        all_scores_V_q0 : IN STD_LOGIC_VECTOR (27 downto 0);
        all_scores_V_address1 : OUT STD_LOGIC_VECTOR (17 downto 0);
        all_scores_V_ce1 : OUT STD_LOGIC;
        all_scores_V_we1 : OUT STD_LOGIC;
        all_scores_V_d1 : OUT STD_LOGIC_VECTOR (27 downto 0);
        connectivity_mask_final_address0 : OUT STD_LOGIC_VECTOR (15 downto 0);
        connectivity_mask_final_ce0 : OUT STD_LOGIC;
        connectivity_mask_final_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component GAT_compute_one_graph_mac_muladd_3ns_8ns_10ns_12_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (2 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (9 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (11 downto 0) );
    end component;


    component GAT_compute_one_graph_mul_mul_12ns_8ns_18_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (11 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (17 downto 0) );
    end component;


    component GAT_compute_one_graph_mul_mul_10ns_8ns_16_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (9 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103 : component GAT_compute_one_graph_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start,
        ap_done => grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_done,
        ap_idle => grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_idle,
        ap_ready => grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_ready,
        num_of_nodes => num_of_nodes,
        mul_ln116_1 => mul_ln119_reg_336,
        mul_ln113 => mul_ln109_reg_341,
        sum_V_out => grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_sum_V_out,
        sum_V_out_ap_vld => grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_sum_V_out_ap_vld,
        all_scores_V_address0 => grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_address0,
        all_scores_V_ce0 => grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_ce0,
        all_scores_V_q0 => all_scores_V_q0,
        all_scores_V_address1 => grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_address1,
        all_scores_V_ce1 => grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_ce1,
        all_scores_V_we1 => grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_we1,
        all_scores_V_d1 => grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_d1,
        connectivity_mask_final_address0 => grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_connectivity_mask_final_address0,
        connectivity_mask_final_ce0 => grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_connectivity_mask_final_ce0,
        connectivity_mask_final_q0 => connectivity_mask_final_q0);

    mac_muladd_3ns_8ns_10ns_12_4_1_U1048 : component GAT_compute_one_graph_mac_muladd_3ns_8ns_10ns_12_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 3,
        din1_WIDTH => 8,
        din2_WIDTH => 10,
        dout_WIDTH => 12)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_241_p0,
        din1 => grp_fu_241_p1,
        din2 => grp_fu_241_p2,
        ce => ap_const_logic_1,
        dout => grp_fu_241_p3);

    mul_mul_12ns_8ns_18_4_1_U1049 : component GAT_compute_one_graph_mul_mul_12ns_8ns_18_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 12,
        din1_WIDTH => 8,
        dout_WIDTH => 18)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_250_p0,
        din1 => grp_fu_250_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_250_p2);

    mul_mul_10ns_8ns_16_4_1_U1050 : component GAT_compute_one_graph_mul_mul_10ns_8ns_16_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 10,
        din1_WIDTH => 8,
        dout_WIDTH => 16)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_257_p0,
        din1 => grp_fu_257_p1,
        ce => ap_const_logic_1,
        dout => grp_fu_257_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                    grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_ready = ap_const_logic_1)) then 
                    grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                indvar_flatten_fu_72 <= ap_const_lv34_0;
            elsif (((icmp_ln108_fu_163_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                indvar_flatten_fu_72 <= add_ln108_1_fu_168_p2;
            end if; 
        end if;
    end process;

    n1_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                n1_fu_64 <= ap_const_lv10_0;
            elsif (((icmp_ln108_fu_163_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                n1_fu_64 <= add_ln109_fu_203_p2;
            end if; 
        end if;
    end process;

    nh_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                nh_fu_68 <= ap_const_lv3_0;
            elsif (((icmp_ln108_fu_163_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                nh_fu_68 <= select_ln108_1_fu_191_p3;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                add_ln116_reg_326 <= grp_fu_241_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                mul_ln109_reg_341 <= grp_fu_257_p2;
                mul_ln119_reg_336 <= grp_fu_250_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln108_fu_163_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                select_ln108_reg_305 <= select_ln108_fu_183_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                    tmp_reg_297(33 downto 2) <= tmp_fu_125_p3(33 downto 2);
            end if;
        end if;
    end process;
    tmp_reg_297(1 downto 0) <= "00";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln108_fu_163_p2, grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_done, ap_CS_fsm_state9)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln108_fu_163_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state9) and (grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state10;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    add_ln108_1_fu_168_p2 <= std_logic_vector(unsigned(indvar_flatten_fu_72) + unsigned(ap_const_lv34_1));
    add_ln108_fu_177_p2 <= std_logic_vector(unsigned(nh_fu_68) + unsigned(ap_const_lv3_1));
    add_ln109_fu_203_p2 <= std_logic_vector(unsigned(select_ln108_fu_183_p3) + unsigned(ap_const_lv10_1));
    all_scores_V_address0 <= grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_address0;
    all_scores_V_address1 <= grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_address1;
    all_scores_V_ce0 <= grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_ce0;
    all_scores_V_ce1 <= grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_ce1;
    all_scores_V_d1 <= grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_d1;
    all_scores_V_we1 <= grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_all_scores_V_we1;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);
    ap_ST_fsm_state10_blk <= ap_const_logic_0;

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;
    ap_ST_fsm_state6_blk <= ap_const_logic_0;
    ap_ST_fsm_state7_blk <= ap_const_logic_0;
    ap_ST_fsm_state8_blk <= ap_const_logic_0;

    ap_ST_fsm_state9_blk_assign_proc : process(grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_done)
    begin
        if ((grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state9_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state9_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln108_fu_163_p2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0)) or ((icmp_ln108_fu_163_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln108_fu_163_p2)
    begin
        if (((icmp_ln108_fu_163_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    attention_coefficients_sum_V_address1 <= zext_ln116_2_fu_233_p1(10 - 1 downto 0);

    attention_coefficients_sum_V_ce1_assign_proc : process(ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            attention_coefficients_sum_V_ce1 <= ap_const_logic_1;
        else 
            attention_coefficients_sum_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    attention_coefficients_sum_V_d1 <= grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_sum_V_out;

    attention_coefficients_sum_V_we1_assign_proc : process(ap_CS_fsm_state10)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            attention_coefficients_sum_V_we1 <= ap_const_logic_1;
        else 
            attention_coefficients_sum_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_final_address0 <= grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_connectivity_mask_final_address0;
    connectivity_mask_final_ce0 <= grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_connectivity_mask_final_ce0;
    grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start <= grp_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_111_3_fu_103_ap_start_reg;
    grp_fu_241_p0 <= grp_fu_241_p00(3 - 1 downto 0);
    grp_fu_241_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln108_1_fu_191_p3),11));
    grp_fu_241_p1 <= ap_const_lv11_C8(8 - 1 downto 0);
    grp_fu_241_p2 <= grp_fu_241_p20(10 - 1 downto 0);
    grp_fu_241_p20 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln108_reg_305),12));
    grp_fu_250_p0 <= grp_fu_250_p00(12 - 1 downto 0);
    grp_fu_250_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_fu_241_p3),18));
    grp_fu_250_p1 <= ap_const_lv18_C8(8 - 1 downto 0);
    grp_fu_257_p0 <= grp_fu_257_p00(10 - 1 downto 0);
    grp_fu_257_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln108_reg_305),16));
    grp_fu_257_p1 <= ap_const_lv16_C8(8 - 1 downto 0);
    icmp_ln108_fu_163_p2 <= "1" when (indvar_flatten_fu_72 = tmp_reg_297) else "0";
    icmp_ln109_fu_158_p2 <= "1" when (zext_ln109_fu_154_p1 = num_of_nodes) else "0";
    select_ln108_1_fu_191_p3 <= 
        add_ln108_fu_177_p2 when (icmp_ln109_fu_158_p2(0) = '1') else 
        nh_fu_68;
    select_ln108_fu_183_p3 <= 
        ap_const_lv10_0 when (icmp_ln109_fu_158_p2(0) = '1') else 
        n1_fu_64;
    tmp_fu_125_p3 <= (num_of_nodes & ap_const_lv2_0);
    zext_ln109_fu_154_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(n1_fu_64),32));
    zext_ln116_2_fu_233_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln116_reg_326),64));
end behav;
