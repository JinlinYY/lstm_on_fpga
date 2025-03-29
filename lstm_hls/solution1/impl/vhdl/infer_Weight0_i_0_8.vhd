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

entity infer_Weight0_i_0_8_rom is 
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


architecture rtl of infer_Weight0_i_0_8_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101100010011011101111110001", 
    1 => "00111111100110001001101000011100", 
    2 => "10111110000100000000110011011000", 
    3 => "00111111000011011100010000010001", 
    4 => "10111101111000000101000111001010", 
    5 => "10111111100101101100001101011101", 
    6 => "10111110111011100001101110001111", 
    7 => "00111101111000001111001000111001", 
    8 => "10111101100010010111100111100001", 
    9 => "00111100110010101111001011011000", 
    10 => "00111110000011110100101100011111", 
    11 => "10111110111000010100010101110100", 
    12 => "10111111101001000111101000111010", 
    13 => "10111110110111010111111010001001", 
    14 => "00111110100110111100111101001111", 
    15 => "10111111001010100010000001101000", 
    16 => "00111110010000110010101110011001", 
    17 => "10111111001000110111111010000000", 
    18 => "10111111011111000001001001101010", 
    19 => "10111110011000000101010001101001", 
    20 => "00111110111111100000100110111011", 
    21 => "10111110111010010100011000111101", 
    22 => "00111110100101000010011001111000", 
    23 => "00111111001110011010001100101011", 
    24 => "00111101010111001101000111001000", 
    25 => "10111111000011101000111100111011", 
    26 => "10111101110101010111100000011100", 
    27 => "00111110100001010111100100101001", 
    28 => "10111110100101011101101100010010", 
    29 => "10111110011011001011010110111011", 
    30 => "10111110010110000111000111100111", 
    31 => "10111111010001000010100101001010" );

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

entity infer_Weight0_i_0_8 is
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

architecture arch of infer_Weight0_i_0_8 is
    component infer_Weight0_i_0_8_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0_8_rom_U :  component infer_Weight0_i_0_8_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


