-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GAT_compute_one_graph_compute_not_concat is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    out_nodes_features_V_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    out_nodes_features_V_ce0 : OUT STD_LOGIC;
    out_nodes_features_V_q0 : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_V_address1 : OUT STD_LOGIC_VECTOR (12 downto 0);
    out_nodes_features_V_ce1 : OUT STD_LOGIC;
    out_nodes_features_V_q1 : IN STD_LOGIC_VECTOR (27 downto 0);
    out_nodes_features_skip_concat_bias_V_address1 : OUT STD_LOGIC_VECTOR (12 downto 0);
    out_nodes_features_skip_concat_bias_V_ce1 : OUT STD_LOGIC;
    out_nodes_features_skip_concat_bias_V_we1 : OUT STD_LOGIC;
    out_nodes_features_skip_concat_bias_V_d1 : OUT STD_LOGIC_VECTOR (27 downto 0) );
end;


architecture behav of GAT_compute_one_graph_compute_not_concat is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv9_130 : STD_LOGIC_VECTOR (8 downto 0) := "100110000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv11_20 : STD_LOGIC_VECTOR (10 downto 0) := "00000100000";
    constant ap_const_lv53_0 : STD_LOGIC_VECTOR (52 downto 0) := "00000000000000000000000000000000000000000000000000000";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv11_10 : STD_LOGIC_VECTOR (10 downto 0) := "00000010000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv11_30 : STD_LOGIC_VECTOR (10 downto 0) := "00000110000";
    constant ap_const_lv18_0 : STD_LOGIC_VECTOR (17 downto 0) := "000000000000000000";
    constant ap_const_lv32_1B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011011";
    constant ap_const_lv46_0 : STD_LOGIC_VECTOR (45 downto 0) := "0000000000000000000000000000000000000000000000";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv32_2D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101101";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv27_0 : STD_LOGIC_VECTOR (26 downto 0) := "000000000000000000000000000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage1_iter1 : BOOLEAN;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal icmp_ln167_reg_437 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage1 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal icmp_ln167_fu_178_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal select_ln167_fu_208_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln167_reg_441 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln167_1_fu_216_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln167_1_reg_446 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln712_fu_234_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln712_reg_451 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln712_reg_451_pp0_iter1_reg : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal out_nodes_features_V_load_reg_476 : STD_LOGIC_VECTOR (27 downto 0);
    signal out_nodes_features_V_load_2_reg_481 : STD_LOGIC_VECTOR (27 downto 0);
    signal add_ln712_20_fu_335_p2 : STD_LOGIC_VECTOR (27 downto 0);
    signal add_ln712_20_reg_486 : STD_LOGIC_VECTOR (27 downto 0);
    signal tmp_39_reg_491 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_66_reg_496 : STD_LOGIC_VECTOR (25 downto 0);
    signal trunc_ln1201_2_reg_501 : STD_LOGIC_VECTOR (25 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_65_fu_245_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln712_6_fu_319_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal zext_ln712_7_fu_330_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal fout_fu_90 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_fout_load : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln168_fu_254_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal nd_fu_94 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_sig_allocacmp_nd_load : STD_LOGIC_VECTOR (4 downto 0);
    signal indvar_flatten_fu_98 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln167_1_fu_184_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln168_fu_202_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln167_fu_196_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_s_fu_224_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal or_ln712_2_fu_239_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_fu_275_p3 : STD_LOGIC_VECTOR (10 downto 0);
    signal or_ln712_fu_282_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal or_ln712_1_fu_296_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_112_cast_fu_288_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal zext_ln712_5_fu_310_p1 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln712_21_fu_313_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal tmp_113_cast_fu_302_p3 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln712_22_fu_324_p2 : STD_LOGIC_VECTOR (12 downto 0);
    signal add_ln712_fu_341_p2 : STD_LOGIC_VECTOR (27 downto 0);
    signal add_ln712_19_fu_345_p2 : STD_LOGIC_VECTOR (27 downto 0);
    signal t_fu_350_p3 : STD_LOGIC_VECTOR (45 downto 0);
    signal sub_ln1201_fu_366_p2 : STD_LOGIC_VECTOR (45 downto 0);
    signal zext_ln1201_1_fu_392_p1 : STD_LOGIC_VECTOR (26 downto 0);
    signal sub_ln1201_1_fu_398_p2 : STD_LOGIC_VECTOR (26 downto 0);
    signal zext_ln1201_fu_395_p1 : STD_LOGIC_VECTOR (26 downto 0);
    signal select_ln1201_fu_404_p3 : STD_LOGIC_VECTOR (26 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_idle_pp0_1to2 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage1,
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start_int;
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage1)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_loop_exit_ready_pp0_iter1_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_idle_pp0_0to0 = ap_const_logic_1) and (ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0))) then 
                ap_loop_exit_ready_pp0_iter1_reg <= ap_const_logic_0;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
            end if; 
        end if;
    end process;

    fout_fu_90_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln167_fu_178_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    fout_fu_90 <= add_ln168_fu_254_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    fout_fu_90 <= ap_const_lv5_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_98_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln167_fu_178_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten_fu_98 <= add_ln167_1_fu_184_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_98 <= ap_const_lv9_0;
                end if;
            end if; 
        end if;
    end process;

    nd_fu_94_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln167_fu_178_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    nd_fu_94 <= select_ln167_1_fu_216_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    nd_fu_94 <= ap_const_lv5_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln712_20_reg_486 <= add_ln712_20_fu_335_p2;
                icmp_ln167_reg_437 <= icmp_ln167_fu_178_p2;
                    zext_ln712_reg_451_pp0_iter1_reg(4 downto 0) <= zext_ln712_reg_451(4 downto 0);    zext_ln712_reg_451_pp0_iter1_reg(10 downto 6) <= zext_ln712_reg_451(10 downto 6);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln167_reg_437 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                out_nodes_features_V_load_2_reg_481 <= out_nodes_features_V_q0;
                out_nodes_features_V_load_reg_476 <= out_nodes_features_V_q1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln167_fu_178_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                select_ln167_1_reg_446 <= select_ln167_1_fu_216_p3;
                select_ln167_reg_441 <= select_ln167_fu_208_p3;
                    zext_ln712_reg_451(4 downto 0) <= zext_ln712_fu_234_p1(4 downto 0);    zext_ln712_reg_451(10 downto 6) <= zext_ln712_fu_234_p1(10 downto 6);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                tmp_39_reg_491 <= add_ln712_19_fu_345_p2(27 downto 27);
                tmp_66_reg_496 <= sub_ln1201_fu_366_p2(45 downto 20);
                trunc_ln1201_2_reg_501 <= add_ln712_19_fu_345_p2(27 downto 2);
            end if;
        end if;
    end process;
    zext_ln712_reg_451(5) <= '0';
    zext_ln712_reg_451(63 downto 11) <= "00000000000000000000000000000000000000000000000000000";
    zext_ln712_reg_451_pp0_iter1_reg(5) <= '0';
    zext_ln712_reg_451_pp0_iter1_reg(63 downto 11) <= "00000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage1_subdone, ap_block_pp0_stage0_subdone, ap_condition_exit_pp0_iter1_stage0, ap_idle_pp0_0to0, ap_idle_pp0_1to2, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if (((ap_idle_pp0_0to0 = ap_const_logic_1) and (ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to2 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    add_ln167_1_fu_184_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv9_1));
    add_ln167_fu_196_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_nd_load) + unsigned(ap_const_lv5_1));
    add_ln168_fu_254_p2 <= std_logic_vector(unsigned(select_ln167_fu_208_p3) + unsigned(ap_const_lv5_1));
    add_ln712_19_fu_345_p2 <= std_logic_vector(unsigned(add_ln712_20_reg_486) + unsigned(add_ln712_fu_341_p2));
    add_ln712_20_fu_335_p2 <= std_logic_vector(unsigned(out_nodes_features_V_q1) + unsigned(out_nodes_features_V_q0));
    add_ln712_21_fu_313_p2 <= std_logic_vector(unsigned(tmp_112_cast_fu_288_p3) + unsigned(zext_ln712_5_fu_310_p1));
    add_ln712_22_fu_324_p2 <= std_logic_vector(unsigned(tmp_113_cast_fu_302_p3) + unsigned(zext_ln712_5_fu_310_p1));
    add_ln712_fu_341_p2 <= std_logic_vector(unsigned(out_nodes_features_V_load_reg_476) + unsigned(out_nodes_features_V_load_2_reg_481));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage1_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage1_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone, icmp_ln167_reg_437)
    begin
        if (((icmp_ln167_reg_437 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln167_reg_437, ap_block_pp0_stage0_subdone)
    begin
        if (((icmp_ln167_reg_437 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg, ap_start_int)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start_int;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_1to2_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0_1to2 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to2 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage1;

    ap_ready_int_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_fout_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, fout_fu_90, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_fout_load <= ap_const_lv5_0;
        else 
            ap_sig_allocacmp_fout_load <= fout_fu_90;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten_fu_98)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv9_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_98;
        end if; 
    end process;


    ap_sig_allocacmp_nd_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, nd_fu_94)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_nd_load <= ap_const_lv5_0;
        else 
            ap_sig_allocacmp_nd_load <= nd_fu_94;
        end if; 
    end process;

    icmp_ln167_fu_178_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = ap_const_lv9_130) else "0";
    icmp_ln168_fu_202_p2 <= "1" when (ap_sig_allocacmp_fout_load = ap_const_lv5_10) else "0";
    or_ln712_1_fu_296_p2 <= (tmp_fu_275_p3 or ap_const_lv11_30);
    or_ln712_2_fu_239_p2 <= (tmp_s_fu_224_p4 or ap_const_lv11_20);
    or_ln712_fu_282_p2 <= (tmp_fu_275_p3 or ap_const_lv11_10);

    out_nodes_features_V_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, tmp_65_fu_245_p3, ap_block_pp0_stage1, zext_ln712_7_fu_330_p1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                out_nodes_features_V_address0 <= zext_ln712_7_fu_330_p1(13 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                out_nodes_features_V_address0 <= tmp_65_fu_245_p3(13 - 1 downto 0);
            else 
                out_nodes_features_V_address0 <= "XXXXXXXXXXXXX";
            end if;
        else 
            out_nodes_features_V_address0 <= "XXXXXXXXXXXXX";
        end if; 
    end process;


    out_nodes_features_V_address1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, zext_ln712_fu_234_p1, ap_block_pp0_stage0, zext_ln712_6_fu_319_p1, ap_block_pp0_stage1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                out_nodes_features_V_address1 <= zext_ln712_6_fu_319_p1(13 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                out_nodes_features_V_address1 <= zext_ln712_fu_234_p1(13 - 1 downto 0);
            else 
                out_nodes_features_V_address1 <= "XXXXXXXXXXXXX";
            end if;
        else 
            out_nodes_features_V_address1 <= "XXXXXXXXXXXXX";
        end if; 
    end process;


    out_nodes_features_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            out_nodes_features_V_ce0 <= ap_const_logic_1;
        else 
            out_nodes_features_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    out_nodes_features_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            out_nodes_features_V_ce1 <= ap_const_logic_1;
        else 
            out_nodes_features_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    out_nodes_features_skip_concat_bias_V_address1 <= zext_ln712_reg_451_pp0_iter1_reg(13 - 1 downto 0);

    out_nodes_features_skip_concat_bias_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            out_nodes_features_skip_concat_bias_V_ce1 <= ap_const_logic_1;
        else 
            out_nodes_features_skip_concat_bias_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

        out_nodes_features_skip_concat_bias_V_d1 <= std_logic_vector(IEEE.numeric_std.resize(signed(select_ln1201_fu_404_p3),28));


    out_nodes_features_skip_concat_bias_V_we1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            out_nodes_features_skip_concat_bias_V_we1 <= ap_const_logic_1;
        else 
            out_nodes_features_skip_concat_bias_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    select_ln1201_fu_404_p3 <= 
        sub_ln1201_1_fu_398_p2 when (tmp_39_reg_491(0) = '1') else 
        zext_ln1201_fu_395_p1;
    select_ln167_1_fu_216_p3 <= 
        add_ln167_fu_196_p2 when (icmp_ln168_fu_202_p2(0) = '1') else 
        ap_sig_allocacmp_nd_load;
    select_ln167_fu_208_p3 <= 
        ap_const_lv5_0 when (icmp_ln168_fu_202_p2(0) = '1') else 
        ap_sig_allocacmp_fout_load;
    sub_ln1201_1_fu_398_p2 <= std_logic_vector(unsigned(ap_const_lv27_0) - unsigned(zext_ln1201_1_fu_392_p1));
    sub_ln1201_fu_366_p2 <= std_logic_vector(unsigned(ap_const_lv46_0) - unsigned(t_fu_350_p3));
    t_fu_350_p3 <= (add_ln712_19_fu_345_p2 & ap_const_lv18_0);
    tmp_112_cast_fu_288_p3 <= (ap_const_lv2_0 & or_ln712_fu_282_p2);
    tmp_113_cast_fu_302_p3 <= (ap_const_lv2_0 & or_ln712_1_fu_296_p2);
    tmp_65_fu_245_p3 <= (ap_const_lv53_0 & or_ln712_2_fu_239_p2);
    tmp_fu_275_p3 <= (select_ln167_1_reg_446 & ap_const_lv6_0);
    tmp_s_fu_224_p4 <= ((select_ln167_1_fu_216_p3 & ap_const_lv1_0) & select_ln167_fu_208_p3);
    zext_ln1201_1_fu_392_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_66_reg_496),27));
    zext_ln1201_fu_395_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln1201_2_reg_501),27));
    zext_ln712_5_fu_310_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln167_reg_441),13));
    zext_ln712_6_fu_319_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln712_21_fu_313_p2),64));
    zext_ln712_7_fu_330_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln712_22_fu_324_p2),64));
    zext_ln712_fu_234_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_224_p4),64));
end behav;
