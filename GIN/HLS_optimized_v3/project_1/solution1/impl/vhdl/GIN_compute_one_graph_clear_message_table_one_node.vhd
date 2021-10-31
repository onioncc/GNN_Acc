-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
-- Version: 2020.2.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity GIN_compute_one_graph_clear_message_table_one_node is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    message_tb_address1 : OUT STD_LOGIC_VECTOR (14 downto 0);
    message_tb_ce1 : OUT STD_LOGIC;
    message_tb_we1 : OUT STD_LOGIC;
    message_tb_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    message_tb_offset : IN STD_LOGIC_VECTOR (4 downto 0) );
end;


architecture behav of GIN_compute_one_graph_clear_message_table_one_node is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv12_64 : STD_LOGIC_VECTOR (11 downto 0) := "000001100100";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv7_64 : STD_LOGIC_VECTOR (6 downto 0) := "1100100";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal mul_ln219_fu_81_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal mul_ln219_reg_113 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln218_fu_87_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal dim_reg_66 : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln218_fu_93_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln219_2_fu_108_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal mul_ln219_fu_81_p0 : STD_LOGIC_VECTOR (4 downto 0);
    signal mul_ln219_fu_81_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln219_1_fu_99_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln219_fu_103_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal mul_ln219_fu_81_p00 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component GIN_compute_one_graph_mul_5ns_8ns_12_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (4 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        dout : OUT STD_LOGIC_VECTOR (11 downto 0) );
    end component;



begin
    mul_5ns_8ns_12_1_1_U11 : component GIN_compute_one_graph_mul_5ns_8ns_12_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 5,
        din1_WIDTH => 8,
        dout_WIDTH => 12)
    port map (
        din0 => mul_ln219_fu_81_p0,
        din1 => mul_ln219_fu_81_p1,
        dout => mul_ln219_fu_81_p2);





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


    dim_reg_66_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln218_fu_93_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                dim_reg_66 <= add_ln218_fu_87_p2;
            elsif (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                dim_reg_66 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                mul_ln219_reg_113 <= mul_ln219_fu_81_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln218_fu_93_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln218_fu_93_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln218_fu_87_p2 <= std_logic_vector(unsigned(dim_reg_66) + unsigned(ap_const_lv7_1));
    add_ln219_fu_103_p2 <= std_logic_vector(unsigned(mul_ln219_reg_113) + unsigned(zext_ln219_1_fu_99_p1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state3)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln218_fu_93_p2 <= "1" when (dim_reg_66 = ap_const_lv7_64) else "0";
    message_tb_address1 <= zext_ln219_2_fu_108_p1(15 - 1 downto 0);

    message_tb_ce1_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            message_tb_ce1 <= ap_const_logic_1;
        else 
            message_tb_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    message_tb_d1 <= ap_const_lv32_0;

    message_tb_we1_assign_proc : process(ap_CS_fsm_state2, icmp_ln218_fu_93_p2)
    begin
        if (((icmp_ln218_fu_93_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            message_tb_we1 <= ap_const_logic_1;
        else 
            message_tb_we1 <= ap_const_logic_0;
        end if; 
    end process;

    mul_ln219_fu_81_p0 <= mul_ln219_fu_81_p00(5 - 1 downto 0);
    mul_ln219_fu_81_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(message_tb_offset),12));
    mul_ln219_fu_81_p1 <= ap_const_lv12_64(8 - 1 downto 0);
    zext_ln219_1_fu_99_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(dim_reg_66),12));
    zext_ln219_2_fu_108_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln219_fu_103_p2),64));
end behav;
