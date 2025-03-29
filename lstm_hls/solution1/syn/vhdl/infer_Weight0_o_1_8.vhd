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

entity infer_Weight0_o_1_8_rom is 
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


architecture rtl of infer_Weight0_o_1_8_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111010011001111011001111011", 
    1 => "00111110111101111100010101101001", 
    2 => "10111110001100100110111110100100", 
    3 => "00111110010000110101111011111010", 
    4 => "10111110110110111101001100011100", 
    5 => "10111111010000101110100000111010", 
    6 => "00111101000010111101010101010110", 
    7 => "00111100101001101100101000000100", 
    8 => "00111101100111110111011100101001", 
    9 => "00111111000000010111111010001001", 
    10 => "00111110000111000101111101111100", 
    11 => "00111111001100001100001110001111", 
    12 => "00111110111011110100110010110010", 
    13 => "10111111001100001011100000111001", 
    14 => "00111110001001100101001000110111", 
    15 => "00111110011100101011001001111101", 
    16 => "10111111010000110001101110011011", 
    17 => "10111111000010010100110000100011", 
    18 => "00111110010101101000010001001001", 
    19 => "00111110101111001010000011100100", 
    20 => "10111110101110001110111010101111", 
    21 => "00111110111100001100100101110101", 
    22 => "00111110011111011111111011111100", 
    23 => "10111110010000111010111010101011", 
    24 => "00111110000111010001101010101000", 
    25 => "00111110100100001100110001111001", 
    26 => "00111111110010000011111011100010", 
    27 => "10111110000011010010000000101001", 
    28 => "10111110101110110001001110011101", 
    29 => "00111110110111001011100101000101", 
    30 => "00111101101100001000001001001001", 
    31 => "10111101101111100100010011111010" );

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

entity infer_Weight0_o_1_8 is
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

architecture arch of infer_Weight0_o_1_8 is
    component infer_Weight0_o_1_8_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1_8_rom_U :  component infer_Weight0_o_1_8_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


