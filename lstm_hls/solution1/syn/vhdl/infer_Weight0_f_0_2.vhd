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

entity infer_Weight0_f_0_2_rom is 
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


architecture rtl of infer_Weight0_f_0_2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101110101101001000110100111", 
    1 => "10111110000111100011011111011111", 
    2 => "10111110011010101011010010110111", 
    3 => "00111110001100100111010100100101", 
    4 => "00111110011110110010101100110100", 
    5 => "10111110111010010001001010111010", 
    6 => "10111110011100000101101100111010", 
    7 => "10111110100110100100101100010010", 
    8 => "00111101011001100001100111011011", 
    9 => "00111100101101110000110011011101", 
    10 => "00111101100101100000101011101001", 
    11 => "00111101111001010001001100110000", 
    12 => "00111110011101101000000010011101", 
    13 => "00111110010101111011111001010101", 
    14 => "00111110111000010101011000111011", 
    15 => "10111110110101111001000110000010", 
    16 => "10111011111110000111101011010001", 
    17 => "00111110111110011011011010110011", 
    18 => "00111101101111011110110101101100", 
    19 => "10111101100110110100001001000110", 
    20 => "10111100010000100111001000000000", 
    21 => "10111101100010100110001100110000", 
    22 => "00111110100101111000101010001111", 
    23 => "00111101101101011001001001010011", 
    24 => "10111110100000110101100100010100", 
    25 => "10111110000010110001011100000101", 
    26 => "10111110010000000111101000101001", 
    27 => "00111011011011111100101111010101", 
    28 => "00111101000100101011010111100101", 
    29 => "10111101010001110011001001011001", 
    30 => "00111111000110110100101111000111", 
    31 => "00111110000101110001111101111001" );

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

entity infer_Weight0_f_0_2 is
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

architecture arch of infer_Weight0_f_0_2 is
    component infer_Weight0_f_0_2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_0_2_rom_U :  component infer_Weight0_f_0_2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


