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

entity infer_Weight0_o_0b2s_rom is 
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


architecture rtl of infer_Weight0_o_0b2s_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110000110100110000101011011", 
    1 => "10111100011100000011000001111111", 
    2 => "00111101110100011010110000010101", 
    3 => "10111111000111010110010001000001", 
    4 => "10111101110100111010101101000011", 
    5 => "10111110011111110110000001011011", 
    6 => "10111111010111000101101111100010", 
    7 => "00111110100110000011011000100010", 
    8 => "10111111000011111010010101001100", 
    9 => "00111111011110010011111110001110", 
    10 => "00111110000010111000100111010111", 
    11 => "10111111000100011101101010101101", 
    12 => "00111110001110100000100110001001", 
    13 => "00111111010000101111101110100000", 
    14 => "00111110001101111001010011101010", 
    15 => "00111110010111010011011101111110", 
    16 => "10111101110110101011001000011000", 
    17 => "00111110001001010110010111000011", 
    18 => "10111111000100110001110011101011", 
    19 => "10111101111000100001011011000110", 
    20 => "00111110110111101111110011011111", 
    21 => "00111111001010101001010000100101", 
    22 => "10111111000111011101101111011011", 
    23 => "00111111000001011001001001000011", 
    24 => "00111110111001010010010101000110", 
    25 => "00111110001001010101001011100011", 
    26 => "10111110101101001001100000111101", 
    27 => "10111110111001111100000110011100", 
    28 => "00111101111110111001011000101001", 
    29 => "10111110010101001110010011001001", 
    30 => "00111101011110011011100010001000", 
    31 => "10111101111001011110001101010100" );

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

entity infer_Weight0_o_0b2s is
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

architecture arch of infer_Weight0_o_0b2s is
    component infer_Weight0_o_0b2s_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0b2s_rom_U :  component infer_Weight0_o_0b2s_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


