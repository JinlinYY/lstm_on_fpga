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

entity infer_Weight0_i_1bwn_rom is 
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


architecture rtl of infer_Weight0_i_1bwn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110000111010010110000111000", 
    1 => "00111110001100001000000010110110", 
    2 => "10111010101010111011010001001110", 
    3 => "10111101100011101001000101000011", 
    4 => "10111101110000100001101011111000", 
    5 => "10111110011101001101111100000101", 
    6 => "00111110100010110111110101100011", 
    7 => "10111111001111000100010101010110", 
    8 => "00111101010000001111011101110111", 
    9 => "00111111000111111000001010100001", 
    10 => "10111101101001101010101110011011", 
    11 => "10111111001010100111001111000101", 
    12 => "10111111100011101010110010000110", 
    13 => "00111110001111110000101111110010", 
    14 => "10111110010100111011110010010000", 
    15 => "10111111111011101111111111001001", 
    16 => "00111111011101110001110101110001", 
    17 => "10111110110000011000111110100011", 
    18 => "00111101000000000010000010000001", 
    19 => "00111011000000011001000010001110", 
    20 => "00111110000010111010100101001100", 
    21 => "10111111001100001110110110110011", 
    22 => "10111100111111010001010101101010", 
    23 => "00111111000010000110010111000111", 
    24 => "00111110100110111010000011101000", 
    25 => "00111111000010110000011110001110", 
    26 => "00111110111001111100110110001010", 
    27 => "00111110110100101110000000111011", 
    28 => "00111111011111101111001001010010", 
    29 => "00111111010101010000111101110011", 
    30 => "10111110111110011111110010001111", 
    31 => "10111110011101011110011001111001" );

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

entity infer_Weight0_i_1bwn is
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

architecture arch of infer_Weight0_i_1bwn is
    component infer_Weight0_i_1bwn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1bwn_rom_U :  component infer_Weight0_i_1bwn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


