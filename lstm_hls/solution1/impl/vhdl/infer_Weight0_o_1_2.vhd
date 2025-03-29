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

entity infer_Weight0_o_1_2_rom is 
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


architecture rtl of infer_Weight0_o_1_2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111000100011111110001101110", 
    1 => "10111111001001101011100001000001", 
    2 => "00111111001110000010010000001011", 
    3 => "00111110101001101000110100110011", 
    4 => "00111111011010100010110111101000", 
    5 => "00111101010100110010110101101111", 
    6 => "10111110110110010001001010111010", 
    7 => "10111101100001100100100100001010", 
    8 => "10111100110101110101110000000111", 
    9 => "10111101111011001111101011110000", 
    10 => "10111101110110111000011011110100", 
    11 => "10111110011010110101100000001000", 
    12 => "00111111101001100001010111100100", 
    13 => "00111110100110110101111110000001", 
    14 => "00111110100001110011101000110110", 
    15 => "10111110101101111110110010111011", 
    16 => "00111111100011010010010101010111", 
    17 => "00111110100101010001101111010110", 
    18 => "10111110000011110111111010000000", 
    19 => "10111110001001101100111111001000", 
    20 => "00111110000011111000000110100110", 
    21 => "00111110011010001010100000101010", 
    22 => "10111110011000010100110010101001", 
    23 => "00111101110000100101000101111110", 
    24 => "10111110100101111110011101011100", 
    25 => "10111110010001110000011011010101", 
    26 => "00111110100100011101100110110010", 
    27 => "10111101100010111111111101000111", 
    28 => "10111111000010100111001011111100", 
    29 => "00111110100110010000010110011111", 
    30 => "10111111101011011000111101110001", 
    31 => "00111011100010010110110111010010" );

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

entity infer_Weight0_o_1_2 is
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

architecture arch of infer_Weight0_o_1_2 is
    component infer_Weight0_o_1_2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1_2_rom_U :  component infer_Weight0_o_1_2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


