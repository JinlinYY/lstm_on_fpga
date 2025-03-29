-- ==============================================================
-- File generated on Fri Mar 28 13:00:23 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_o_1_7_rom is 
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


architecture rtl of infer_Weight0_o_1_7_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110100011010110011010101110", 
    1 => "00111110101111011011011100000111", 
    2 => "10111110101010110110010101100111", 
    3 => "10111110010010100000000000011001", 
    4 => "00111110100000100100111101000100", 
    5 => "00111110101100011110111011001100", 
    6 => "00111101010000011101000110010001", 
    7 => "10111110110101111011010011000100", 
    8 => "00111111010000010111010100101001", 
    9 => "10111111100010010101111000001111", 
    10 => "10111111000000101010000000010010", 
    11 => "10111110010110111010100101001100", 
    12 => "10111110100110001111000010000100", 
    13 => "00111101111001010011111100111010", 
    14 => "10111101111110111100001000110011", 
    15 => "10111110111111011000101110000010", 
    16 => "10111101011011100000010111001101", 
    17 => "10111100100001000110100001000101", 
    18 => "10111101010001000011011011111100", 
    19 => "10111110101110110000000100000000", 
    20 => "00111110001101011000000010000000", 
    21 => "00111110001001101011101101010110", 
    22 => "10111110010001010011010001111010", 
    23 => "00111100100100101010001100000101", 
    24 => "00111110010011110111110101110100", 
    25 => "10111110110000001000011001011001", 
    26 => "00111101010011000100100010101110", 
    27 => "10111111000101111010111101000010", 
    28 => "10111111000000100010100010101010", 
    29 => "00111101100100111100011110010011", 
    30 => "10111101110110110011001000000101", 
    31 => "10111111001111011101110110110001" );

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

entity infer_Weight0_o_1_7 is
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

architecture arch of infer_Weight0_o_1_7 is
    component infer_Weight0_o_1_7_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1_7_rom_U :  component infer_Weight0_o_1_7_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


