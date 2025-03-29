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

entity infer_Weight0_f_1_3_rom is 
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


architecture rtl of infer_Weight0_f_1_3_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111100100001000010111000010", 
    1 => "00111110011101100100110111000010", 
    2 => "10111111000100110100101111101000", 
    3 => "00111111001110100001001110010000", 
    4 => "00111100100110010000101011111110", 
    5 => "10111110100110010100101100111000", 
    6 => "00111111011001001000001001011010", 
    7 => "10111110001111100001111001110001", 
    8 => "10111101111111010001001011001011", 
    9 => "00111110110111100100001110101010", 
    10 => "10111110110000010110001110011001", 
    11 => "10111110101100000100110111111101", 
    12 => "10111110000101011010100100100010", 
    13 => "00111111100101010011011100111011", 
    14 => "10111110000001010111010101111101", 
    15 => "10111111000010001011110010001100", 
    16 => "00111111111101110010111000010111", 
    17 => "10111111001001101001000011001101", 
    18 => "10111110010100010010100101000101", 
    19 => "10111111000010000011101000110010", 
    20 => "10111111001100010111011010111100", 
    21 => "00111111110101000111110000011000", 
    22 => "10111101010001000110101001011101", 
    23 => "00111110101001111100110000111010", 
    24 => "10111110101001111000001100111000", 
    25 => "00111111010001111111111101000111", 
    26 => "10111111111001101011000000001000", 
    27 => "10111110100101100001100000000101", 
    28 => "10111110100010011010010100100010", 
    29 => "00111111001110110010001000001000", 
    30 => "11000000000110001110000000111111", 
    31 => "00111110111001011001111100001010" );

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

entity infer_Weight0_f_1_3 is
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

architecture arch of infer_Weight0_f_1_3 is
    component infer_Weight0_f_1_3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1_3_rom_U :  component infer_Weight0_f_1_3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


