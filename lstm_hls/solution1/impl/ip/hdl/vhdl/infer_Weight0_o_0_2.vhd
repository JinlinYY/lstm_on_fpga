-- ==============================================================
-- File generated on Fri Mar 28 13:00:22 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_o_0_2_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 5; 
             MEM_SIZE    : integer := 32
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of infer_Weight0_o_0_2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110101010110110001111110101", 
    1 => "00111110000000011010101111010010", 
    2 => "10111110000011011110110100101001", 
    3 => "10111101100111111011101111011000", 
    4 => "10111110001000011001110111101101", 
    5 => "10111110001001110010011110011010", 
    6 => "10111101100100111010011000000101", 
    7 => "10111110100101100111110101111000", 
    8 => "00111110001111011110110100101001", 
    9 => "10111100010110110111011010110100", 
    10 => "10111110000100100001110101010100", 
    11 => "10111101100100110000111100000110", 
    12 => "00111110101011011101110101001100", 
    13 => "10111011101010000000100011001000", 
    14 => "00111110100101111010101000100110", 
    15 => "10111110010100100111100010001110", 
    16 => "00111111011100110010001110011010", 
    17 => "00111110110111011110110100000111", 
    18 => "00111000011001101010111111001101", 
    19 => "10111101111100000001101110000110", 
    20 => "00111101100011100111011110010010", 
    21 => "10111101100100111000100000100010", 
    22 => "10111100010001100100001101000110", 
    23 => "10111110010110101110101100111110", 
    24 => "00111100010100111000110011011010", 
    25 => "10111110011101000110100100001110", 
    26 => "10111110100000001001000000001100", 
    27 => "10111011010111101100000111000010", 
    28 => "10111110110011110011000101001101", 
    29 => "10111100101110101011110010010100", 
    30 => "10111101100011011101000001010011", 
    31 => "10111100111010101010111100110110" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "block_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "block";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity infer_Weight0_o_0_2 is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 32;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of infer_Weight0_o_0_2 is
    component infer_Weight0_o_0_2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0_2_rom_U :  component infer_Weight0_o_0_2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


