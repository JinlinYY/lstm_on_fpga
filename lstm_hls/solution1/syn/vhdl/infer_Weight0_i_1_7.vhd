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

entity infer_Weight0_i_1_7_rom is 
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


architecture rtl of infer_Weight0_i_1_7_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111001101111011101110000100", 
    1 => "00111101110011010011100001000111", 
    2 => "00111111011001101000000011010000", 
    3 => "10111110101011111100000011110100", 
    4 => "00111110010001000101000100110011", 
    5 => "00111101101011011000101000010001", 
    6 => "00111101010101001000000000011111", 
    7 => "10111110110011010001101000100010", 
    8 => "00111111000000101110100111101110", 
    9 => "00111111010100100011010001000100", 
    10 => "00111111001001110111010000010101", 
    11 => "00111110010111100110100010100001", 
    12 => "10111110101000000101011110001110", 
    13 => "10111111000001001110000001100101", 
    14 => "10111110100101111001000011011010", 
    15 => "00111111001110110010000011001001", 
    16 => "00111110001000100000111010100110", 
    17 => "00111111000000110010110011111001", 
    18 => "10111111000000010001011010101001", 
    19 => "00111110100110001101001101001010", 
    20 => "00111110111001001000111000000100", 
    21 => "00111110100100001010010000011010", 
    22 => "10111111100010111011111101001000", 
    23 => "00111110011010000001010111100100", 
    24 => "00111110111101100100101010111110", 
    25 => "00111110110111100011001110101101", 
    26 => "00111111001111001101010100110000", 
    27 => "10111111000001000101010100110010", 
    28 => "10111110011100011110010001110001", 
    29 => "00111111011011010000001101000011", 
    30 => "10111110011111110110010000000110", 
    31 => "00111110101010100010000101100100" );

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

entity infer_Weight0_i_1_7 is
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

architecture arch of infer_Weight0_i_1_7 is
    component infer_Weight0_i_1_7_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1_7_rom_U :  component infer_Weight0_i_1_7_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


