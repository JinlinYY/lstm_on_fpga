-- ==============================================================
-- File generated on Fri Mar 28 13:00:21 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_i_1_2_rom is 
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


architecture rtl of infer_Weight0_i_1_2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111011010001010001000100010111", 
    1 => "10111110001000000011000101001000", 
    2 => "10111111000101110100110000101011", 
    3 => "10111110010101101111000101010110", 
    4 => "00111100110111000010110100101000", 
    5 => "00111110001011000110101001111111", 
    6 => "00111101111111011101010001000001", 
    7 => "00111110101001001111000110000000", 
    8 => "00111101100001010001110000011001", 
    9 => "10111110000000111111111011100011", 
    10 => "00111110100110110111111111100001", 
    11 => "10111110000011110110111111010010", 
    12 => "00111101110000101100010001010000", 
    13 => "10111101000000000010001010011010", 
    14 => "00111101101101100101110010110011", 
    15 => "00111110100000001010000011110101", 
    16 => "10111101111011010011101011100111", 
    17 => "10111101100000000010100011100101", 
    18 => "00111100010110110111001010000010", 
    19 => "00111111101101011000001001000101", 
    20 => "00111101010011000010000111100010", 
    21 => "00111110101000011110001000110111", 
    22 => "10111101110100000110101000101011", 
    23 => "10111110100001101000001111100100", 
    24 => "00111110010101110101110100010100", 
    25 => "10111101100011010101010100011101", 
    26 => "00111101001110011101010111100101", 
    27 => "00111110001101001100111011000100", 
    28 => "10111110000001011101111001011001", 
    29 => "00111110111101001100000010011100", 
    30 => "00111101100111110001000101110011", 
    31 => "10111110100001100010010101000010" );

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

entity infer_Weight0_i_1_2 is
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

architecture arch of infer_Weight0_i_1_2 is
    component infer_Weight0_i_1_2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1_2_rom_U :  component infer_Weight0_i_1_2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


