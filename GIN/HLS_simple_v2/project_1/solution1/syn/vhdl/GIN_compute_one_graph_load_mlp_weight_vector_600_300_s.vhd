-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GIN_compute_one_graph_load_mlp_weight_vector_600_300_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    mlp_weight_vector_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    mlp_weight_vector_full_n : IN STD_LOGIC;
    mlp_weight_vector_write : OUT STD_LOGIC;
    d_out_dout : IN STD_LOGIC_VECTOR (8 downto 0);
    d_out_empty_n : IN STD_LOGIC;
    d_out_read : OUT STD_LOGIC;
    d_out_out_din : OUT STD_LOGIC_VECTOR (8 downto 0);
    d_out_out_full_n : IN STD_LOGIC;
    d_out_out_write : OUT STD_LOGIC;
    mlp_2_weights_V_address0 : OUT STD_LOGIC_VECTOR (17 downto 0);
    mlp_2_weights_V_ce0 : OUT STD_LOGIC;
    mlp_2_weights_V_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of GIN_compute_one_graph_load_mlp_weight_vector_600_300_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv10_258 : STD_LOGIC_VECTOR (9 downto 0) := "1001011000";
    constant ap_const_lv18_258 : STD_LOGIC_VECTOR (17 downto 0) := "000000001001011000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal mlp_weight_vector_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln74_reg_149 : STD_LOGIC_VECTOR (0 downto 0);
    signal d_out_blk_n : STD_LOGIC;
    signal d_out_out_blk_n : STD_LOGIC;
    signal i_reg_87 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_fu_128_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal mul_ln74_reg_139 : STD_LOGIC_VECTOR (17 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal add_ln74_fu_102_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state5_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln74_fu_108_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state5 : STD_LOGIC;
    signal zext_ln77_1_fu_123_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal zext_ln77_fu_114_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal add_ln77_fu_118_p2 : STD_LOGIC_VECTOR (17 downto 0);
    attribute use_dsp48 : string;
    attribute use_dsp48 of add_ln77_fu_118_p2 : signal is "no";
    signal grp_fu_128_p0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_fu_128_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal grp_fu_128_ce : STD_LOGIC;
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal grp_fu_128_p00 : STD_LOGIC_VECTOR (17 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component GIN_compute_one_graph_mul_mul_9ns_11ns_18_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (8 downto 0);
        din1 : IN STD_LOGIC_VECTOR (10 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (17 downto 0) );
    end component;



begin
    mul_mul_9ns_11ns_18_4_1_U303 : component GIN_compute_one_graph_mul_mul_9ns_11ns_18_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 9,
        din1_WIDTH => 11,
        dout_WIDTH => 18)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_128_p0,
        din1 => grp_fu_128_p1,
        ce => grp_fu_128_ce,
        dout => grp_fu_128_p2);





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
                elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state5))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state5))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state5);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_87_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                i_reg_87 <= ap_const_lv10_0;
            elsif (((icmp_ln74_fu_108_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                i_reg_87 <= add_ln74_fu_102_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln74_reg_149 <= icmp_ln74_fu_108_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                mul_ln74_reg_139 <= grp_fu_128_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, d_out_empty_n, d_out_out_full_n, ap_enable_reg_pp0_iter0, icmp_ln74_fu_108_p2, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((d_out_out_full_n = ap_const_logic_0) or (d_out_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((icmp_ln74_fu_108_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((icmp_ln74_fu_108_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    add_ln74_fu_102_p2 <= std_logic_vector(unsigned(i_reg_87) + unsigned(ap_const_lv10_1));
    add_ln77_fu_118_p2 <= std_logic_vector(unsigned(mul_ln74_reg_139) + unsigned(zext_ln77_fu_114_p1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(4);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state7 <= ap_CS_fsm(5);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(mlp_weight_vector_full_n, ap_enable_reg_pp0_iter1, icmp_ln74_reg_149)
    begin
                ap_block_pp0_stage0_01001 <= ((icmp_ln74_reg_149 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (mlp_weight_vector_full_n = ap_const_logic_0));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(mlp_weight_vector_full_n, ap_enable_reg_pp0_iter1, icmp_ln74_reg_149)
    begin
                ap_block_pp0_stage0_11001 <= ((icmp_ln74_reg_149 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (mlp_weight_vector_full_n = ap_const_logic_0));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(mlp_weight_vector_full_n, ap_enable_reg_pp0_iter1, icmp_ln74_reg_149)
    begin
                ap_block_pp0_stage0_subdone <= ((icmp_ln74_reg_149 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (mlp_weight_vector_full_n = ap_const_logic_0));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, d_out_empty_n, d_out_out_full_n)
    begin
                ap_block_state1 <= ((d_out_out_full_n = ap_const_logic_0) or (d_out_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;

        ap_block_state5_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state6_pp0_stage0_iter1_assign_proc : process(mlp_weight_vector_full_n, icmp_ln74_reg_149)
    begin
                ap_block_state6_pp0_stage0_iter1 <= ((icmp_ln74_reg_149 = ap_const_lv1_0) and (mlp_weight_vector_full_n = ap_const_logic_0));
    end process;


    ap_condition_pp0_exit_iter0_state5_assign_proc : process(icmp_ln74_fu_108_p2)
    begin
        if ((icmp_ln74_fu_108_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state5 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state5 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    d_out_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, d_out_empty_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            d_out_blk_n <= d_out_empty_n;
        else 
            d_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    d_out_out_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, d_out_out_full_n)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            d_out_out_blk_n <= d_out_out_full_n;
        else 
            d_out_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    d_out_out_din <= d_out_dout;

    d_out_out_write_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, d_out_empty_n, d_out_out_full_n)
    begin
        if ((not(((d_out_out_full_n = ap_const_logic_0) or (d_out_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            d_out_out_write <= ap_const_logic_1;
        else 
            d_out_out_write <= ap_const_logic_0;
        end if; 
    end process;


    d_out_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, d_out_empty_n, d_out_out_full_n)
    begin
        if ((not(((d_out_out_full_n = ap_const_logic_0) or (d_out_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            d_out_read <= ap_const_logic_1;
        else 
            d_out_read <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_128_ce_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, d_out_empty_n, d_out_out_full_n, ap_CS_fsm_pp0_stage0, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) or (ap_const_logic_1 = ap_CS_fsm_state7) or ((ap_const_logic_1 = ap_CS_fsm_state1) and ((d_out_out_full_n = ap_const_logic_0) or (d_out_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))))) then 
            grp_fu_128_ce <= ap_const_logic_0;
        else 
            grp_fu_128_ce <= ap_const_logic_1;
        end if; 
    end process;

    grp_fu_128_p0 <= grp_fu_128_p00(9 - 1 downto 0);
    grp_fu_128_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(d_out_dout),18));
    grp_fu_128_p1 <= ap_const_lv18_258(11 - 1 downto 0);
    icmp_ln74_fu_108_p2 <= "1" when (i_reg_87 = ap_const_lv10_258) else "0";
    mlp_2_weights_V_address0 <= zext_ln77_1_fu_123_p1(18 - 1 downto 0);

    mlp_2_weights_V_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            mlp_2_weights_V_ce0 <= ap_const_logic_1;
        else 
            mlp_2_weights_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    mlp_weight_vector_blk_n_assign_proc : process(mlp_weight_vector_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln74_reg_149)
    begin
        if (((icmp_ln74_reg_149 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            mlp_weight_vector_blk_n <= mlp_weight_vector_full_n;
        else 
            mlp_weight_vector_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    mlp_weight_vector_din <= mlp_2_weights_V_q0;

    mlp_weight_vector_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln74_reg_149, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln74_reg_149 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            mlp_weight_vector_write <= ap_const_logic_1;
        else 
            mlp_weight_vector_write <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln77_1_fu_123_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln77_fu_118_p2),64));
    zext_ln77_fu_114_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_87),18));
end behav;
