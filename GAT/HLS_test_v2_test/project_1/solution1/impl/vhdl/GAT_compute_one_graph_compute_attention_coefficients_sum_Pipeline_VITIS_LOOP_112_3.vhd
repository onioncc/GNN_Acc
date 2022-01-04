-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GAT_compute_one_graph_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_112_3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    num_of_nodes : IN STD_LOGIC_VECTOR (31 downto 0);
    mul_ln117_1 : IN STD_LOGIC_VECTOR (15 downto 0);
    mul_ln114 : IN STD_LOGIC_VECTOR (13 downto 0);
    sum_V_out : OUT STD_LOGIC_VECTOR (27 downto 0);
    sum_V_out_ap_vld : OUT STD_LOGIC;
    all_scores_V_address0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    all_scores_V_ce0 : OUT STD_LOGIC;
    all_scores_V_q0 : IN STD_LOGIC_VECTOR (27 downto 0);
    all_scores_V_address1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    all_scores_V_ce1 : OUT STD_LOGIC;
    all_scores_V_we1 : OUT STD_LOGIC;
    all_scores_V_d1 : OUT STD_LOGIC_VECTOR (27 downto 0);
    connectivity_mask_final_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    connectivity_mask_final_ce0 : OUT STD_LOGIC;
    connectivity_mask_final_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of GAT_compute_one_graph_compute_attention_coefficients_sum_Pipeline_VITIS_LOOP_112_3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv28_0 : STD_LOGIC_VECTOR (27 downto 0) := "0000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_80000000 : STD_LOGIC_VECTOR (31 downto 0) := "10000000000000000000000000000000";

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
    signal ap_enable_reg_pp0_iter6 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter7 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter8 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter9 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter10 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter11 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter12 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter13 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter14 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter15 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter6 : BOOLEAN;
    signal ap_block_state8_pp0_stage0_iter7 : BOOLEAN;
    signal ap_block_state9_pp0_stage0_iter8 : BOOLEAN;
    signal ap_block_state10_pp0_stage0_iter9 : BOOLEAN;
    signal ap_block_state11_pp0_stage0_iter10 : BOOLEAN;
    signal ap_block_state12_pp0_stage0_iter11 : BOOLEAN;
    signal ap_block_state13_pp0_stage0_iter12 : BOOLEAN;
    signal ap_block_state14_pp0_stage0_iter13 : BOOLEAN;
    signal ap_block_state15_pp0_stage0_iter14 : BOOLEAN;
    signal ap_block_state16_pp0_stage0_iter15 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln112_fu_153_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln112_reg_237 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln112_reg_237_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln112_reg_237_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln112_reg_237_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln112_reg_237_pp0_iter4_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln112_reg_237_pp0_iter5_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln112_reg_237_pp0_iter6_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln112_reg_237_pp0_iter7_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln112_reg_237_pp0_iter8_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln112_reg_237_pp0_iter9_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln112_reg_237_pp0_iter10_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln112_reg_237_pp0_iter11_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln112_reg_237_pp0_iter12_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln112_reg_237_pp0_iter13_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln117_fu_173_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal add_ln117_reg_241 : STD_LOGIC_VECTOR (15 downto 0);
    signal all_scores_V_addr_reg_251 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln114_fu_199_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln114_reg_257 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln114_reg_257_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln114_reg_257_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln114_reg_257_pp0_iter4_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln114_reg_257_pp0_iter5_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln114_reg_257_pp0_iter6_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln114_reg_257_pp0_iter7_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln114_reg_257_pp0_iter8_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln114_reg_257_pp0_iter9_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln114_reg_257_pp0_iter10_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln114_reg_257_pp0_iter11_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln114_reg_257_pp0_iter12_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln114_reg_257_pp0_iter13_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln114_reg_257_pp0_iter14_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_exp_28_10_s_fu_124_ap_return : STD_LOGIC_VECTOR (27 downto 0);
    signal op2_V_reg_261 : STD_LOGIC_VECTOR (27 downto 0);
    signal grp_exp_28_10_s_fu_124_ap_start : STD_LOGIC;
    signal grp_exp_28_10_s_fu_124_ap_done : STD_LOGIC;
    signal grp_exp_28_10_s_fu_124_ap_idle : STD_LOGIC;
    signal grp_exp_28_10_s_fu_124_ap_ready : STD_LOGIC;
    signal grp_exp_28_10_s_fu_124_ap_start_reg : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln114_fu_185_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln117_fu_195_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal n2_fu_60 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_n2_1 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln112_fu_159_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sum_V_fu_64 : STD_LOGIC_VECTOR (27 downto 0);
    signal sum_V_2_fu_208_p2 : STD_LOGIC_VECTOR (27 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal trunc_ln117_1_fu_169_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln117_fu_165_p1 : STD_LOGIC_VECTOR (13 downto 0);
    signal add_ln114_fu_179_p2 : STD_LOGIC_VECTOR (13 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter5_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter6_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter7_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter8_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter9_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter10_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter11_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter12_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter13_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter14_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component GAT_compute_one_graph_exp_28_10_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        x : IN STD_LOGIC_VECTOR (27 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (27 downto 0) );
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
    grp_exp_28_10_s_fu_124 : component GAT_compute_one_graph_exp_28_10_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_exp_28_10_s_fu_124_ap_start,
        ap_done => grp_exp_28_10_s_fu_124_ap_done,
        ap_idle => grp_exp_28_10_s_fu_124_ap_idle,
        ap_ready => grp_exp_28_10_s_fu_124_ap_ready,
        x => all_scores_V_q0,
        ap_return => grp_exp_28_10_s_fu_124_ap_return);

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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter14_reg = ap_const_logic_1))) then 
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


    ap_enable_reg_pp0_iter10_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter10 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter11_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter11 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter12_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter12 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter13_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter13 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter14_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter14 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter15_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter15 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
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


    ap_enable_reg_pp0_iter6_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter6 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter7_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter7 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter8_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter8 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter9_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter9 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
                end if; 
            end if;
        end if;
    end process;


    grp_exp_28_10_s_fu_124_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_exp_28_10_s_fu_124_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln114_fu_199_p2 = ap_const_lv1_0))) then 
                    grp_exp_28_10_s_fu_124_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_exp_28_10_s_fu_124_ap_ready = ap_const_logic_1)) then 
                    grp_exp_28_10_s_fu_124_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    n2_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln112_fu_153_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    n2_fu_60 <= add_ln112_fu_159_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    n2_fu_60 <= ap_const_lv32_0;
                end if;
            end if; 
        end if;
    end process;

    sum_V_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    sum_V_fu_64 <= ap_const_lv28_0;
                elsif (((ap_enable_reg_pp0_iter15 = ap_const_logic_1) and (icmp_ln114_reg_257_pp0_iter14_reg = ap_const_lv1_0))) then 
                    sum_V_fu_64 <= sum_V_2_fu_208_p2;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln112_fu_153_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln117_reg_241 <= add_ln117_fu_173_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                all_scores_V_addr_reg_251 <= zext_ln117_fu_195_p1(16 - 1 downto 0);
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                icmp_ln112_reg_237 <= icmp_ln112_fu_153_p2;
                icmp_ln112_reg_237_pp0_iter1_reg <= icmp_ln112_reg_237;
                icmp_ln114_reg_257 <= icmp_ln114_fu_199_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
                ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
                ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
                ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
                ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
                ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
                ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
                ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
                ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
                icmp_ln112_reg_237_pp0_iter10_reg <= icmp_ln112_reg_237_pp0_iter9_reg;
                icmp_ln112_reg_237_pp0_iter11_reg <= icmp_ln112_reg_237_pp0_iter10_reg;
                icmp_ln112_reg_237_pp0_iter12_reg <= icmp_ln112_reg_237_pp0_iter11_reg;
                icmp_ln112_reg_237_pp0_iter13_reg <= icmp_ln112_reg_237_pp0_iter12_reg;
                icmp_ln112_reg_237_pp0_iter2_reg <= icmp_ln112_reg_237_pp0_iter1_reg;
                icmp_ln112_reg_237_pp0_iter3_reg <= icmp_ln112_reg_237_pp0_iter2_reg;
                icmp_ln112_reg_237_pp0_iter4_reg <= icmp_ln112_reg_237_pp0_iter3_reg;
                icmp_ln112_reg_237_pp0_iter5_reg <= icmp_ln112_reg_237_pp0_iter4_reg;
                icmp_ln112_reg_237_pp0_iter6_reg <= icmp_ln112_reg_237_pp0_iter5_reg;
                icmp_ln112_reg_237_pp0_iter7_reg <= icmp_ln112_reg_237_pp0_iter6_reg;
                icmp_ln112_reg_237_pp0_iter8_reg <= icmp_ln112_reg_237_pp0_iter7_reg;
                icmp_ln112_reg_237_pp0_iter9_reg <= icmp_ln112_reg_237_pp0_iter8_reg;
                icmp_ln114_reg_257_pp0_iter10_reg <= icmp_ln114_reg_257_pp0_iter9_reg;
                icmp_ln114_reg_257_pp0_iter11_reg <= icmp_ln114_reg_257_pp0_iter10_reg;
                icmp_ln114_reg_257_pp0_iter12_reg <= icmp_ln114_reg_257_pp0_iter11_reg;
                icmp_ln114_reg_257_pp0_iter13_reg <= icmp_ln114_reg_257_pp0_iter12_reg;
                icmp_ln114_reg_257_pp0_iter14_reg <= icmp_ln114_reg_257_pp0_iter13_reg;
                icmp_ln114_reg_257_pp0_iter2_reg <= icmp_ln114_reg_257;
                icmp_ln114_reg_257_pp0_iter3_reg <= icmp_ln114_reg_257_pp0_iter2_reg;
                icmp_ln114_reg_257_pp0_iter4_reg <= icmp_ln114_reg_257_pp0_iter3_reg;
                icmp_ln114_reg_257_pp0_iter5_reg <= icmp_ln114_reg_257_pp0_iter4_reg;
                icmp_ln114_reg_257_pp0_iter6_reg <= icmp_ln114_reg_257_pp0_iter5_reg;
                icmp_ln114_reg_257_pp0_iter7_reg <= icmp_ln114_reg_257_pp0_iter6_reg;
                icmp_ln114_reg_257_pp0_iter8_reg <= icmp_ln114_reg_257_pp0_iter7_reg;
                icmp_ln114_reg_257_pp0_iter9_reg <= icmp_ln114_reg_257_pp0_iter8_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln114_reg_257_pp0_iter13_reg = ap_const_lv1_0))) then
                op2_V_reg_261 <= grp_exp_28_10_s_fu_124_ap_return;
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
    add_ln112_fu_159_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_n2_1) + unsigned(ap_const_lv32_1));
    add_ln114_fu_179_p2 <= std_logic_vector(unsigned(mul_ln114) + unsigned(trunc_ln117_fu_165_p1));
    add_ln117_fu_173_p2 <= std_logic_vector(unsigned(mul_ln117_1) + unsigned(trunc_ln117_1_fu_169_p1));
    all_scores_V_address0 <= zext_ln117_fu_195_p1(16 - 1 downto 0);
    all_scores_V_address1 <= all_scores_V_addr_reg_251;

    all_scores_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            all_scores_V_ce0 <= ap_const_logic_1;
        else 
            all_scores_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    all_scores_V_ce1_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            all_scores_V_ce1 <= ap_const_logic_1;
        else 
            all_scores_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    all_scores_V_d1 <= ap_const_lv28_0;

    all_scores_V_we1_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001, icmp_ln114_reg_257)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (icmp_ln114_reg_257 = ap_const_lv1_1))) then 
            all_scores_V_we1 <= ap_const_logic_1;
        else 
            all_scores_V_we1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state10_pp0_stage0_iter9 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state11_pp0_stage0_iter10 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state12_pp0_stage0_iter11 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state13_pp0_stage0_iter12 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state14_pp0_stage0_iter13 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state15_pp0_stage0_iter14 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state16_pp0_stage0_iter15 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter6 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state8_pp0_stage0_iter7 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state9_pp0_stage0_iter8 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln112_fu_153_p2)
    begin
        if (((icmp_ln112_fu_153_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter14_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter14_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5, ap_enable_reg_pp0_iter6, ap_enable_reg_pp0_iter7, ap_enable_reg_pp0_iter8, ap_enable_reg_pp0_iter9, ap_enable_reg_pp0_iter10, ap_enable_reg_pp0_iter11, ap_enable_reg_pp0_iter12, ap_enable_reg_pp0_iter13, ap_enable_reg_pp0_iter14, ap_enable_reg_pp0_iter15)
    begin
        if (((ap_enable_reg_pp0_iter15 = ap_const_logic_0) and (ap_enable_reg_pp0_iter14 = ap_const_logic_0) and (ap_enable_reg_pp0_iter13 = ap_const_logic_0) and (ap_enable_reg_pp0_iter12 = ap_const_logic_0) and (ap_enable_reg_pp0_iter11 = ap_const_logic_0) and (ap_enable_reg_pp0_iter10 = ap_const_logic_0) and (ap_enable_reg_pp0_iter9 = ap_const_logic_0) and (ap_enable_reg_pp0_iter8 = ap_const_logic_0) and (ap_enable_reg_pp0_iter7 = ap_const_logic_0) and (ap_enable_reg_pp0_iter6 = ap_const_logic_0) and (ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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


    ap_sig_allocacmp_n2_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, n2_fu_60, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_n2_1 <= ap_const_lv32_0;
        else 
            ap_sig_allocacmp_n2_1 <= n2_fu_60;
        end if; 
    end process;

    connectivity_mask_final_address0 <= zext_ln114_fu_185_p1(14 - 1 downto 0);

    connectivity_mask_final_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            connectivity_mask_final_ce0 <= ap_const_logic_1;
        else 
            connectivity_mask_final_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    grp_exp_28_10_s_fu_124_ap_start <= grp_exp_28_10_s_fu_124_ap_start_reg;
    icmp_ln112_fu_153_p2 <= "1" when (ap_sig_allocacmp_n2_1 = num_of_nodes) else "0";
    icmp_ln114_fu_199_p2 <= "1" when (connectivity_mask_final_q0 = ap_const_lv32_80000000) else "0";
    sum_V_2_fu_208_p2 <= std_logic_vector(unsigned(op2_V_reg_261) + unsigned(sum_V_fu_64));
    sum_V_out <= sum_V_fu_64;

    sum_V_out_ap_vld_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln112_reg_237_pp0_iter13_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln112_reg_237_pp0_iter13_reg = ap_const_lv1_1))) then 
            sum_V_out_ap_vld <= ap_const_logic_1;
        else 
            sum_V_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln117_1_fu_169_p1 <= ap_sig_allocacmp_n2_1(16 - 1 downto 0);
    trunc_ln117_fu_165_p1 <= ap_sig_allocacmp_n2_1(14 - 1 downto 0);
    zext_ln114_fu_185_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln114_fu_179_p2),64));
    zext_ln117_fu_195_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln117_reg_241),64));
end behav;
