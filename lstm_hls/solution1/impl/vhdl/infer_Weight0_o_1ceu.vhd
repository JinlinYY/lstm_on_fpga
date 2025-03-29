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

entity infer_Weight0_o_1ceu_rom is 
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


architecture rtl of infer_Weight0_o_1ceu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111011010011001001110000001", 
    1 => "00111101110001010101001010100000", 
    2 => "00111101101010111101000000011000", 
    3 => "00111101100101101101000100011000", 
    4 => "00111110001011111010101000000100", 
    5 => "00111101000001011001110010001101", 
    6 => "10111110100110101111101110100000", 
    7 => "10111101110101000100110111001011", 
    8 => "10111110010110101000100100110011", 
    9 => "00111100100111000000101010001101", 
    10 => "10111111010111111000000000110100", 
    11 => "00111110101111111000010000100011", 
    12 => "00111110001101000101010011011110", 
    13 => "00111110100111111101111000001101", 
    14 => "10111110000011101010001000001010", 
    15 => "00111101001101100011010011011011", 
    16 => "00111110000110110100111110100101", 
    17 => "10111100101000010110111001111010", 
    18 => "00111101000110010001001001010101", 
    19 => "00111101101110110000010101110101", 
    20 => "10111101110001110111011100001000", 
    21 => "10111110110100000000110001110100", 
    22 => "10111110110010010100100001110111", 
    23 => "10111111101001100000001000110010", 
    24 => "00111111001000001110100111010101", 
    25 => "10111111101100101101001100001111", 
    26 => "10111110100100101100000000011110", 
    27 => "10111110101011011011011100000111", 
    28 => "10111110001100110000010101010011", 
    29 => "10111100010001000101010001011000", 
    30 => "10111110110000101010100001000100", 
    31 => "00111101111001010011100001101001" );

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

entity infer_Weight0_o_1ceu is
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

architecture arch of infer_Weight0_o_1ceu is
    component infer_Weight0_o_1ceu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1ceu_rom_U :  component infer_Weight0_o_1ceu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


