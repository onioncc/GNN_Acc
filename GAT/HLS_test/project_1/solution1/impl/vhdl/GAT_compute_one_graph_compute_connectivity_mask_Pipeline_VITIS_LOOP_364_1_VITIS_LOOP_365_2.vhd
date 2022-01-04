-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GAT_compute_one_graph_compute_connectivity_mask_Pipeline_VITIS_LOOP_364_1_VITIS_LOOP_365_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    connectivity_mask_0_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_0_ce1 : OUT STD_LOGIC;
    connectivity_mask_0_we1 : OUT STD_LOGIC;
    connectivity_mask_0_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_1_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_1_ce1 : OUT STD_LOGIC;
    connectivity_mask_1_we1 : OUT STD_LOGIC;
    connectivity_mask_1_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_2_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_2_ce1 : OUT STD_LOGIC;
    connectivity_mask_2_we1 : OUT STD_LOGIC;
    connectivity_mask_2_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_3_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_3_ce1 : OUT STD_LOGIC;
    connectivity_mask_3_we1 : OUT STD_LOGIC;
    connectivity_mask_3_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_4_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_4_ce1 : OUT STD_LOGIC;
    connectivity_mask_4_we1 : OUT STD_LOGIC;
    connectivity_mask_4_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_5_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_5_ce1 : OUT STD_LOGIC;
    connectivity_mask_5_we1 : OUT STD_LOGIC;
    connectivity_mask_5_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_6_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_6_ce1 : OUT STD_LOGIC;
    connectivity_mask_6_we1 : OUT STD_LOGIC;
    connectivity_mask_6_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_7_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_7_ce1 : OUT STD_LOGIC;
    connectivity_mask_7_we1 : OUT STD_LOGIC;
    connectivity_mask_7_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_8_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_8_ce1 : OUT STD_LOGIC;
    connectivity_mask_8_we1 : OUT STD_LOGIC;
    connectivity_mask_8_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_9_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_9_ce1 : OUT STD_LOGIC;
    connectivity_mask_9_we1 : OUT STD_LOGIC;
    connectivity_mask_9_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_10_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_10_ce1 : OUT STD_LOGIC;
    connectivity_mask_10_we1 : OUT STD_LOGIC;
    connectivity_mask_10_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_11_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_11_ce1 : OUT STD_LOGIC;
    connectivity_mask_11_we1 : OUT STD_LOGIC;
    connectivity_mask_11_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_12_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_12_ce1 : OUT STD_LOGIC;
    connectivity_mask_12_we1 : OUT STD_LOGIC;
    connectivity_mask_12_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_13_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_13_ce1 : OUT STD_LOGIC;
    connectivity_mask_13_we1 : OUT STD_LOGIC;
    connectivity_mask_13_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_14_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_14_ce1 : OUT STD_LOGIC;
    connectivity_mask_14_we1 : OUT STD_LOGIC;
    connectivity_mask_14_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_15_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_15_ce1 : OUT STD_LOGIC;
    connectivity_mask_15_we1 : OUT STD_LOGIC;
    connectivity_mask_15_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_16_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_16_ce1 : OUT STD_LOGIC;
    connectivity_mask_16_we1 : OUT STD_LOGIC;
    connectivity_mask_16_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_17_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_17_ce1 : OUT STD_LOGIC;
    connectivity_mask_17_we1 : OUT STD_LOGIC;
    connectivity_mask_17_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    connectivity_mask_18_address1 : OUT STD_LOGIC_VECTOR (6 downto 0);
    connectivity_mask_18_ce1 : OUT STD_LOGIC;
    connectivity_mask_18_we1 : OUT STD_LOGIC;
    connectivity_mask_18_d1 : OUT STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of GAT_compute_one_graph_compute_connectivity_mask_Pipeline_VITIS_LOOP_364_1_VITIS_LOOP_365_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_11 : STD_LOGIC_VECTOR (4 downto 0) := "10001";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_F : STD_LOGIC_VECTOR (4 downto 0) := "01111";
    constant ap_const_lv5_E : STD_LOGIC_VECTOR (4 downto 0) := "01110";
    constant ap_const_lv5_D : STD_LOGIC_VECTOR (4 downto 0) := "01101";
    constant ap_const_lv5_C : STD_LOGIC_VECTOR (4 downto 0) := "01100";
    constant ap_const_lv5_B : STD_LOGIC_VECTOR (4 downto 0) := "01011";
    constant ap_const_lv5_A : STD_LOGIC_VECTOR (4 downto 0) := "01010";
    constant ap_const_lv5_9 : STD_LOGIC_VECTOR (4 downto 0) := "01001";
    constant ap_const_lv5_8 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_const_lv5_7 : STD_LOGIC_VECTOR (4 downto 0) := "00111";
    constant ap_const_lv5_6 : STD_LOGIC_VECTOR (4 downto 0) := "00110";
    constant ap_const_lv5_5 : STD_LOGIC_VECTOR (4 downto 0) := "00101";
    constant ap_const_lv5_4 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_const_lv5_3 : STD_LOGIC_VECTOR (4 downto 0) := "00011";
    constant ap_const_lv5_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv9_169 : STD_LOGIC_VECTOR (8 downto 0) := "101101001";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv5_13 : STD_LOGIC_VECTOR (4 downto 0) := "10011";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln364_fu_484_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal zext_ln364_fu_530_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal select_ln364_fu_514_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal j_fu_112 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_j_load : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln365_fu_553_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_fu_116 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_sig_allocacmp_i_load : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln364_1_fu_522_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal indvar_flatten_fu_120 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_sig_allocacmp_indvar_flatten_load : STD_LOGIC_VECTOR (8 downto 0);
    signal add_ln364_1_fu_490_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal icmp_ln365_fu_508_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln364_fu_502_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





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


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_start_int = ap_const_logic_1) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_fu_116_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                if ((icmp_ln364_fu_484_p2 = ap_const_lv1_0)) then 
                    i_fu_116 <= select_ln364_1_fu_522_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_116 <= ap_const_lv5_0;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten_fu_120_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                if ((icmp_ln364_fu_484_p2 = ap_const_lv1_0)) then 
                    indvar_flatten_fu_120 <= add_ln364_1_fu_490_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten_fu_120 <= ap_const_lv9_0;
                end if;
            end if; 
        end if;
    end process;

    j_fu_112_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                if ((icmp_ln364_fu_484_p2 = ap_const_lv1_0)) then 
                    j_fu_112 <= add_ln365_fu_553_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_112 <= ap_const_lv5_0;
                end if;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln364_1_fu_490_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten_load) + unsigned(ap_const_lv9_1));
    add_ln364_fu_502_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_load) + unsigned(ap_const_lv5_1));
    add_ln365_fu_553_p2 <= std_logic_vector(unsigned(select_ln364_fu_514_p3) + unsigned(ap_const_lv5_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start_int)
    begin
        if ((ap_start_int = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state1, ap_loop_exit_ready, ap_done_reg, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_load_assign_proc : process(ap_CS_fsm_state1, ap_loop_init, i_fu_116)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_i_load <= ap_const_lv5_0;
        else 
            ap_sig_allocacmp_i_load <= i_fu_116;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten_load_assign_proc : process(ap_CS_fsm_state1, ap_loop_init, indvar_flatten_fu_120)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_indvar_flatten_load <= ap_const_lv9_0;
        else 
            ap_sig_allocacmp_indvar_flatten_load <= indvar_flatten_fu_120;
        end if; 
    end process;


    ap_sig_allocacmp_j_load_assign_proc : process(ap_CS_fsm_state1, j_fu_112, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_j_load <= ap_const_lv5_0;
        else 
            ap_sig_allocacmp_j_load <= j_fu_112;
        end if; 
    end process;

    connectivity_mask_0_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_0_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_0_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_0_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_0_d1 <= ap_const_lv32_0;

    connectivity_mask_0_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_0))) then 
            connectivity_mask_0_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_0_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_10_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_10_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_10_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_10_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_10_d1 <= ap_const_lv32_0;

    connectivity_mask_10_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_A))) then 
            connectivity_mask_10_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_10_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_11_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_11_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_11_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_11_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_11_d1 <= ap_const_lv32_0;

    connectivity_mask_11_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_B))) then 
            connectivity_mask_11_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_11_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_12_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_12_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_12_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_12_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_12_d1 <= ap_const_lv32_0;

    connectivity_mask_12_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_C))) then 
            connectivity_mask_12_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_12_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_13_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_13_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_13_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_13_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_13_d1 <= ap_const_lv32_0;

    connectivity_mask_13_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_D))) then 
            connectivity_mask_13_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_13_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_14_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_14_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_14_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_14_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_14_d1 <= ap_const_lv32_0;

    connectivity_mask_14_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_E))) then 
            connectivity_mask_14_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_14_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_15_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_15_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_15_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_15_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_15_d1 <= ap_const_lv32_0;

    connectivity_mask_15_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_F))) then 
            connectivity_mask_15_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_15_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_16_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_16_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_16_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_16_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_16_d1 <= ap_const_lv32_0;

    connectivity_mask_16_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_10))) then 
            connectivity_mask_16_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_16_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_17_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_17_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_17_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_17_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_17_d1 <= ap_const_lv32_0;

    connectivity_mask_17_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_11))) then 
            connectivity_mask_17_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_17_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_18_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_18_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_18_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_18_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_18_d1 <= ap_const_lv32_0;

    connectivity_mask_18_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if ((not((select_ln364_fu_514_p3 = ap_const_lv5_0)) and not((select_ln364_fu_514_p3 = ap_const_lv5_1)) and not((select_ln364_fu_514_p3 = ap_const_lv5_2)) and not((select_ln364_fu_514_p3 = ap_const_lv5_3)) and not((select_ln364_fu_514_p3 = ap_const_lv5_4)) and not((select_ln364_fu_514_p3 = ap_const_lv5_5)) and not((select_ln364_fu_514_p3 = ap_const_lv5_6)) and not((select_ln364_fu_514_p3 = ap_const_lv5_7)) and not((select_ln364_fu_514_p3 = ap_const_lv5_8)) and not((select_ln364_fu_514_p3 = ap_const_lv5_9)) and not((select_ln364_fu_514_p3 = ap_const_lv5_A)) and not((select_ln364_fu_514_p3 = ap_const_lv5_B)) and not((select_ln364_fu_514_p3 = ap_const_lv5_C)) and not((select_ln364_fu_514_p3 = ap_const_lv5_D)) and not((select_ln364_fu_514_p3 = ap_const_lv5_E)) and not((select_ln364_fu_514_p3 = ap_const_lv5_F)) and not((select_ln364_fu_514_p3 = ap_const_lv5_10)) and not((select_ln364_fu_514_p3 = ap_const_lv5_11)) and (ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_18_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_18_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_1_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_1_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_1_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_1_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_1_d1 <= ap_const_lv32_0;

    connectivity_mask_1_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_1))) then 
            connectivity_mask_1_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_1_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_2_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_2_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_2_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_2_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_2_d1 <= ap_const_lv32_0;

    connectivity_mask_2_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_2))) then 
            connectivity_mask_2_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_2_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_3_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_3_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_3_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_3_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_3_d1 <= ap_const_lv32_0;

    connectivity_mask_3_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_3))) then 
            connectivity_mask_3_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_3_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_4_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_4_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_4_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_4_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_4_d1 <= ap_const_lv32_0;

    connectivity_mask_4_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_4))) then 
            connectivity_mask_4_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_4_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_5_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_5_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_5_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_5_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_5_d1 <= ap_const_lv32_0;

    connectivity_mask_5_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_5))) then 
            connectivity_mask_5_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_5_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_6_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_6_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_6_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_6_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_6_d1 <= ap_const_lv32_0;

    connectivity_mask_6_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_6))) then 
            connectivity_mask_6_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_6_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_7_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_7_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_7_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_7_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_7_d1 <= ap_const_lv32_0;

    connectivity_mask_7_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_7))) then 
            connectivity_mask_7_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_7_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_8_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_8_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_8_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_8_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_8_d1 <= ap_const_lv32_0;

    connectivity_mask_8_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_8))) then 
            connectivity_mask_8_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_8_we1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_9_address1 <= zext_ln364_fu_530_p1(7 - 1 downto 0);

    connectivity_mask_9_ce1_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            connectivity_mask_9_ce1 <= ap_const_logic_1;
        else 
            connectivity_mask_9_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    connectivity_mask_9_d1 <= ap_const_lv32_0;

    connectivity_mask_9_we1_assign_proc : process(ap_CS_fsm_state1, icmp_ln364_fu_484_p2, select_ln364_fu_514_p3, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_1) and (icmp_ln364_fu_484_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (select_ln364_fu_514_p3 = ap_const_lv5_9))) then 
            connectivity_mask_9_we1 <= ap_const_logic_1;
        else 
            connectivity_mask_9_we1 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln364_fu_484_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten_load = ap_const_lv9_169) else "0";
    icmp_ln365_fu_508_p2 <= "1" when (ap_sig_allocacmp_j_load = ap_const_lv5_13) else "0";
    select_ln364_1_fu_522_p3 <= 
        add_ln364_fu_502_p2 when (icmp_ln365_fu_508_p2(0) = '1') else 
        ap_sig_allocacmp_i_load;
    select_ln364_fu_514_p3 <= 
        ap_const_lv5_0 when (icmp_ln365_fu_508_p2(0) = '1') else 
        ap_sig_allocacmp_j_load;
    zext_ln364_fu_530_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln364_1_fu_522_p3),64));
end behav;
