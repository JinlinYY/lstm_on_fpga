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

entity infer_Weight0_c_0_8_rom is 
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


architecture rtl of infer_Weight0_c_0_8_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110100010100010000101000010", 
    1 => "10111101100110011011010101100011", 
    2 => "00111101000100001000010011101000", 
    3 => "10111110111010010100110000100011", 
    4 => "10111101110011111110110001010111", 
    5 => "10111100110001011110111101100011", 
    6 => "00111111010000111111011111001111", 
    7 => "00111110001110010000011101010011", 
    8 => "00111101011111001000101100000000", 
    9 => "00111110010010111001110001110011", 
    10 => "00111110011100001110100010000110", 
    11 => "00111110000000110110000111011101", 
    12 => "10111101000000001100001100001001", 
    13 => "10111110000110011000011011111101", 
    14 => "00111101100100111011101110000100", 
    15 => "00111110111010011010110111101011", 
    16 => "10111101110101110011100111110011", 
    17 => "00111100110000011110001101100101", 
    18 => "00111101101001100010111001001101", 
    19 => "10111110000111110010100001000001", 
    20 => "00111100000111101101011111000111", 
    21 => "00111101011000010010101001010010", 
    22 => "00111110001101011010100000010101", 
    23 => "10111110001100110000100000110101", 
    24 => "00111111001010010000000100001000", 
    25 => "00111100110111001000101110000111", 
    26 => "00111110100111110010000011101010", 
    27 => "10111110100011111101101011000111", 
    28 => "00111110000110000110001011110110", 
    29 => "00111101011010101010001010100001", 
    30 => "10111110011111101010001100010110", 
    31 => "10111111000010010100011111100000" );

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

entity infer_Weight0_c_0_8 is
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

architecture arch of infer_Weight0_c_0_8 is
    component infer_Weight0_c_0_8_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0_8_rom_U :  component infer_Weight0_c_0_8_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


