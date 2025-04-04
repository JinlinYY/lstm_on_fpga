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

entity infer_Weight0_f_0_8_rom is 
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


architecture rtl of infer_Weight0_f_0_8_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110111111000111000010101000", 
    1 => "00111110100101011001100100000011", 
    2 => "10111110111101101111100101010101", 
    3 => "00111101101101100011111111011101", 
    4 => "00111110100110100101000011010111", 
    5 => "10111101001111111111110011011011", 
    6 => "10111110111010111100000101001000", 
    7 => "00111100101100001011100111011100", 
    8 => "10111110111101011010010110111001", 
    9 => "00111111000101111111110101010000", 
    10 => "10111110100000001111010010110110", 
    11 => "00111111001101011100101101101000", 
    12 => "00111100010110110010101100110100", 
    13 => "10111101111111011000011010101001", 
    14 => "00111100010100001010011001110110", 
    15 => "00111101100000111111110101010000", 
    16 => "10111110011101010111100101101100", 
    17 => "10111111000000110101010111011110", 
    18 => "00111101100110000100010101010110", 
    19 => "10111101111110101111011111010011", 
    20 => "00111111001010011010111100111010", 
    21 => "10111111001100100000010100100101", 
    22 => "00111111000010000100110010001100", 
    23 => "00111110110000011000100000001001", 
    24 => "10111110001100001001010000011101", 
    25 => "00111111010100110001001101111011", 
    26 => "10111111010111000101010010001011", 
    27 => "10111110110001010000000111100010", 
    28 => "10111111010000101010011100000101", 
    29 => "00111111000010111100100001001011", 
    30 => "10111101010100001101111100010110", 
    31 => "10111100000111001011101010110110" );

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

entity infer_Weight0_f_0_8 is
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

architecture arch of infer_Weight0_f_0_8 is
    component infer_Weight0_f_0_8_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_0_8_rom_U :  component infer_Weight0_f_0_8_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


