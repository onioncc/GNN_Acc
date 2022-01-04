-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
--
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity GAT_compute_one_graph_load_graph_Pipeline_VITIS_LOOP_352_3_edge_list is 
    generic(
            MEM_TYPE    : string := "block"; 
            DataWidth     : integer := 32; 
            AddressWidth     : integer := 10; 
            AddressRange    : integer := 1000
    ); 
    port (
          address1     : in std_logic_vector(AddressWidth-1 downto 0); 
          ce1       : in std_logic; 
          d1        : in std_logic_vector(DataWidth-1 downto 0); 
          we1       : in std_logic; 
          reset      : in std_logic; 
          clk        : in std_logic 
    ); 
end entity; 


architecture rtl of GAT_compute_one_graph_load_graph_Pipeline_VITIS_LOOP_352_3_edge_list is 

type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
shared variable ram : mem_array := (others=>(others=>'0'));

attribute syn_ramstyle : string; 
attribute syn_ramstyle of ram : variable is "block_ram";
attribute ram_style : string;
attribute ram_style of ram : variable is MEM_TYPE;

begin 



p_memory_access_1: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce1 = '1') then 
            if (we1 = '1') then 
                ram(CONV_INTEGER(address1)) := d1; 
            end if;
        end if;
    end if;
end process;


end rtl;

