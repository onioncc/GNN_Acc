-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GIN_compute_one_graph_MLP_PE_300_600_52 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    mlp_weight_fifo_10_V_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    mlp_weight_fifo_10_V_V_empty_n : IN STD_LOGIC;
    mlp_weight_fifo_10_V_V_read : OUT STD_LOGIC;
    mlp_weight_fifo_11_V_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    mlp_weight_fifo_11_V_V_full_n : IN STD_LOGIC;
    mlp_weight_fifo_11_V_V_write : OUT STD_LOGIC;
    mlp_1_bias_V_load_loc_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    mlp_1_bias_V_load_loc_empty_n : IN STD_LOGIC;
    mlp_1_bias_V_load_loc_read : OUT STD_LOGIC;
    mlp_in_local10_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
    mlp_in_local10_ce0 : OUT STD_LOGIC;
    mlp_in_local10_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    mlp_out_local25_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    mlp_out_local25_ce0 : OUT STD_LOGIC;
    mlp_out_local25_we0 : OUT STD_LOGIC;
    mlp_out_local25_d0 : OUT STD_LOGIC_VECTOR (30 downto 0);
    d_out_dout : IN STD_LOGIC_VECTOR (9 downto 0);
    d_out_empty_n : IN STD_LOGIC;
    d_out_read : OUT STD_LOGIC;
    mlp_1_bias_V_load_loc_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    mlp_1_bias_V_load_loc_out_full_n : IN STD_LOGIC;
    mlp_1_bias_V_load_loc_out_write : OUT STD_LOGIC;
    d_out_out_din : OUT STD_LOGIC_VECTOR (9 downto 0);
    d_out_out_full_n : IN STD_LOGIC;
    d_out_out_write : OUT STD_LOGIC );
end;


architecture behav of GIN_compute_one_graph_MLP_PE_300_600_52 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv9_12C : STD_LOGIC_VECTOR (8 downto 0) := "100101100";
    constant ap_const_lv22_0 : STD_LOGIC_VECTOR (21 downto 0) := "0000000000000000000000";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";
    constant ap_const_lv32_35 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110101";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal mlp_weight_fifo_10_V_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln86_reg_264 : STD_LOGIC_VECTOR (0 downto 0);
    signal mlp_weight_fifo_11_V_V_blk_n : STD_LOGIC;
    signal mlp_1_bias_V_load_loc_blk_n : STD_LOGIC;
    signal d_out_blk_n : STD_LOGIC;
    signal mlp_1_bias_V_load_loc_out_blk_n : STD_LOGIC;
    signal d_out_out_blk_n : STD_LOGIC;
    signal i_reg_147 : STD_LOGIC_VECTOR (8 downto 0);
    signal lhs_reg_158 : STD_LOGIC_VECTOR (31 downto 0);
    signal mlp_out_local25_addr_reg_254 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln86_fu_173_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln86_fu_179_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal zext_ln85_fu_168_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln86_fu_185_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal r_V_23_fu_198_p2 : STD_LOGIC_VECTOR (53 downto 0);
    signal lhs_23_fu_204_p3 : STD_LOGIC_VECTOR (53 downto 0);
    signal ret_V_fu_212_p2 : STD_LOGIC_VECTOR (53 downto 0);
    signal tmp_fu_232_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln86_fu_228_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component GIN_compute_one_graph_mul_32s_32s_54_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (53 downto 0) );
    end component;



begin
    mul_32s_32s_54_1_1_U162 : component GIN_compute_one_graph_mul_32s_32s_54_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 54)
    port map (
        din0 => mlp_in_local10_q0,
        din1 => mlp_weight_fifo_10_V_V_dout,
        dout => r_V_23_fu_198_p2);





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
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((not(((ap_start = ap_const_logic_0) or (d_out_out_full_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_out_full_n = ap_const_logic_0) or (d_out_empty_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif ((not(((ap_start = ap_const_logic_0) or (d_out_out_full_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_out_full_n = ap_const_logic_0) or (d_out_empty_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_147_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln86_fu_179_p2 = ap_const_lv1_0))) then 
                i_reg_147 <= add_ln86_fu_173_p2;
            elsif ((not(((ap_start = ap_const_logic_0) or (d_out_out_full_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_out_full_n = ap_const_logic_0) or (d_out_empty_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_147 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;

    lhs_reg_158_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln86_reg_264 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                lhs_reg_158 <= ret_V_fu_212_p2(53 downto 22);
            elsif ((not(((ap_start = ap_const_logic_0) or (d_out_out_full_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_out_full_n = ap_const_logic_0) or (d_out_empty_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                lhs_reg_158 <= mlp_1_bias_V_load_loc_dout;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln86_reg_264 <= icmp_ln86_fu_179_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                mlp_out_local25_addr_reg_254 <= zext_ln85_fu_168_p1(10 - 1 downto 0);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, mlp_1_bias_V_load_loc_empty_n, d_out_empty_n, mlp_1_bias_V_load_loc_out_full_n, d_out_out_full_n, ap_enable_reg_pp0_iter0, icmp_ln86_fu_179_p2, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (d_out_out_full_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_out_full_n = ap_const_logic_0) or (d_out_empty_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln86_fu_179_p2 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln86_fu_179_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln86_fu_173_p2 <= std_logic_vector(unsigned(i_reg_147) + unsigned(ap_const_lv9_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(mlp_weight_fifo_10_V_V_empty_n, mlp_weight_fifo_11_V_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln86_reg_264)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln86_reg_264 = ap_const_lv1_0) and (mlp_weight_fifo_11_V_V_full_n = ap_const_logic_0)) or ((icmp_ln86_reg_264 = ap_const_lv1_0) and (mlp_weight_fifo_10_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(mlp_weight_fifo_10_V_V_empty_n, mlp_weight_fifo_11_V_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln86_reg_264)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln86_reg_264 = ap_const_lv1_0) and (mlp_weight_fifo_11_V_V_full_n = ap_const_logic_0)) or ((icmp_ln86_reg_264 = ap_const_lv1_0) and (mlp_weight_fifo_10_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(mlp_weight_fifo_10_V_V_empty_n, mlp_weight_fifo_11_V_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln86_reg_264)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln86_reg_264 = ap_const_lv1_0) and (mlp_weight_fifo_11_V_V_full_n = ap_const_logic_0)) or ((icmp_ln86_reg_264 = ap_const_lv1_0) and (mlp_weight_fifo_10_V_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, mlp_1_bias_V_load_loc_empty_n, d_out_empty_n, mlp_1_bias_V_load_loc_out_full_n, d_out_out_full_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (d_out_out_full_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_out_full_n = ap_const_logic_0) or (d_out_empty_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(mlp_weight_fifo_10_V_V_empty_n, mlp_weight_fifo_11_V_V_full_n, icmp_ln86_reg_264)
    begin
                ap_block_state3_pp0_stage0_iter1 <= (((icmp_ln86_reg_264 = ap_const_lv1_0) and (mlp_weight_fifo_11_V_V_full_n = ap_const_logic_0)) or ((icmp_ln86_reg_264 = ap_const_lv1_0) and (mlp_weight_fifo_10_V_V_empty_n = ap_const_logic_0)));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln86_fu_179_p2)
    begin
        if ((icmp_ln86_fu_179_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    d_out_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, d_out_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            d_out_blk_n <= d_out_empty_n;
        else 
            d_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    d_out_out_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, d_out_out_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            d_out_out_blk_n <= d_out_out_full_n;
        else 
            d_out_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    d_out_out_din <= d_out_dout;

    d_out_out_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, mlp_1_bias_V_load_loc_empty_n, d_out_empty_n, mlp_1_bias_V_load_loc_out_full_n, d_out_out_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (d_out_out_full_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_out_full_n = ap_const_logic_0) or (d_out_empty_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            d_out_out_write <= ap_const_logic_1;
        else 
            d_out_out_write <= ap_const_logic_0;
        end if; 
    end process;


    d_out_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, mlp_1_bias_V_load_loc_empty_n, d_out_empty_n, mlp_1_bias_V_load_loc_out_full_n, d_out_out_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (d_out_out_full_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_out_full_n = ap_const_logic_0) or (d_out_empty_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            d_out_read <= ap_const_logic_1;
        else 
            d_out_read <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln86_fu_179_p2 <= "1" when (i_reg_147 = ap_const_lv9_12C) else "0";
    lhs_23_fu_204_p3 <= (lhs_reg_158 & ap_const_lv22_0);

    mlp_1_bias_V_load_loc_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, mlp_1_bias_V_load_loc_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            mlp_1_bias_V_load_loc_blk_n <= mlp_1_bias_V_load_loc_empty_n;
        else 
            mlp_1_bias_V_load_loc_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    mlp_1_bias_V_load_loc_out_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, mlp_1_bias_V_load_loc_out_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            mlp_1_bias_V_load_loc_out_blk_n <= mlp_1_bias_V_load_loc_out_full_n;
        else 
            mlp_1_bias_V_load_loc_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    mlp_1_bias_V_load_loc_out_din <= mlp_1_bias_V_load_loc_dout;

    mlp_1_bias_V_load_loc_out_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, mlp_1_bias_V_load_loc_empty_n, d_out_empty_n, mlp_1_bias_V_load_loc_out_full_n, d_out_out_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (d_out_out_full_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_out_full_n = ap_const_logic_0) or (d_out_empty_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            mlp_1_bias_V_load_loc_out_write <= ap_const_logic_1;
        else 
            mlp_1_bias_V_load_loc_out_write <= ap_const_logic_0;
        end if; 
    end process;


    mlp_1_bias_V_load_loc_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, mlp_1_bias_V_load_loc_empty_n, d_out_empty_n, mlp_1_bias_V_load_loc_out_full_n, d_out_out_full_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (d_out_out_full_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_out_full_n = ap_const_logic_0) or (d_out_empty_n = ap_const_logic_0) or (mlp_1_bias_V_load_loc_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            mlp_1_bias_V_load_loc_read <= ap_const_logic_1;
        else 
            mlp_1_bias_V_load_loc_read <= ap_const_logic_0;
        end if; 
    end process;

    mlp_in_local10_address0 <= zext_ln86_fu_185_p1(9 - 1 downto 0);

    mlp_in_local10_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            mlp_in_local10_ce0 <= ap_const_logic_1;
        else 
            mlp_in_local10_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    mlp_out_local25_address0 <= mlp_out_local25_addr_reg_254;

    mlp_out_local25_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            mlp_out_local25_ce0 <= ap_const_logic_1;
        else 
            mlp_out_local25_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    mlp_out_local25_d0 <= 
        ap_const_lv31_0 when (tmp_fu_232_p3(0) = '1') else 
        trunc_ln86_fu_228_p1;

    mlp_out_local25_we0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            mlp_out_local25_we0 <= ap_const_logic_1;
        else 
            mlp_out_local25_we0 <= ap_const_logic_0;
        end if; 
    end process;


    mlp_weight_fifo_10_V_V_blk_n_assign_proc : process(mlp_weight_fifo_10_V_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln86_reg_264)
    begin
        if (((icmp_ln86_reg_264 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            mlp_weight_fifo_10_V_V_blk_n <= mlp_weight_fifo_10_V_V_empty_n;
        else 
            mlp_weight_fifo_10_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    mlp_weight_fifo_10_V_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln86_reg_264, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln86_reg_264 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            mlp_weight_fifo_10_V_V_read <= ap_const_logic_1;
        else 
            mlp_weight_fifo_10_V_V_read <= ap_const_logic_0;
        end if; 
    end process;


    mlp_weight_fifo_11_V_V_blk_n_assign_proc : process(mlp_weight_fifo_11_V_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln86_reg_264)
    begin
        if (((icmp_ln86_reg_264 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            mlp_weight_fifo_11_V_V_blk_n <= mlp_weight_fifo_11_V_V_full_n;
        else 
            mlp_weight_fifo_11_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    mlp_weight_fifo_11_V_V_din <= mlp_weight_fifo_10_V_V_dout;

    mlp_weight_fifo_11_V_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln86_reg_264, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln86_reg_264 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            mlp_weight_fifo_11_V_V_write <= ap_const_logic_1;
        else 
            mlp_weight_fifo_11_V_V_write <= ap_const_logic_0;
        end if; 
    end process;

    ret_V_fu_212_p2 <= std_logic_vector(unsigned(r_V_23_fu_198_p2) + unsigned(lhs_23_fu_204_p3));
    tmp_fu_232_p3 <= lhs_reg_158(31 downto 31);
    trunc_ln86_fu_228_p1 <= lhs_reg_158(31 - 1 downto 0);
    zext_ln85_fu_168_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(d_out_dout),64));
    zext_ln86_fu_185_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_147),64));
end behav;
