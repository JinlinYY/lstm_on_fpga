-- ==============================================================
-- File generated on Fri Mar 28 13:00:20 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_f_0_4_rom is 
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


architecture rtl of infer_Weight0_f_0_4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110100001010011101011000101", 
    1 => "10111110001001011011111010100001", 
    2 => "00111101100011011011000111101010", 
    3 => "10111101000010001000111001111010", 
    4 => "00111101110001101001010010001010", 
    5 => "10111100111000101000010001011010", 
    6 => "10111110110001010010111111000010", 
    7 => "10111110100001101111010101100110", 
    8 => "10111111000100001100101010010010", 
    9 => "10111111001110100010000000100101", 
    10 => "10111110101011101000110101110110", 
    11 => "10111101000011000011101100001100", 
    12 => "10111101100100011010100101110110", 
    13 => "00111110001010001101111000101011", 
    14 => "00111110111011110011101110000110", 
    15 => "00111101100100100100100001010010", 
    16 => "00111111000011000010011000010100", 
    17 => "10111101000111000111111011110001", 
    18 => "00111110100111011001111011101001", 
    19 => "00111101111110110100101110110110", 
    20 => "10111111000101111110011100001000", 
    21 => "10111110000101001010110010110000", 
    22 => "10111111001101101111000010001101", 
    23 => "10111111011101010001000001001101", 
    24 => "10111111001010100100110111110100", 
    25 => "10111110001000111110110100001111", 
    26 => "00111110111111110111110111111010", 
    27 => "10111110011000100001001000001110", 
    28 => "00111110011010011000011111000110", 
    29 => "00111110011101110100110110011100", 
    30 => "10111110110100000010110010010001", 
    31 => "00111101110011100011110011011010" );

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

entity infer_Weight0_f_0_4 is
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

architecture arch of infer_Weight0_f_0_4 is
    component infer_Weight0_f_0_4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_0_4_rom_U :  component infer_Weight0_f_0_4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


