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

entity infer_Weight0_f_1bgk_rom is 
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


architecture rtl of infer_Weight0_f_1bgk_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110110101100111101101011111", 
    1 => "10111111001101111100000011100100", 
    2 => "00111111000001001100011011111000", 
    3 => "00111100000100100011010111111000", 
    4 => "00111111010001011110111100001111", 
    5 => "00111111000111100101111111001000", 
    6 => "10111111001000000001010001100010", 
    7 => "10111111001001100100011001011010", 
    8 => "00111110100100001101101110101101", 
    9 => "00111110000101010100110100011111", 
    10 => "10111101100110000100111101001100", 
    11 => "00111111000101111001000010000110", 
    12 => "10111101100000100101001110010111", 
    13 => "10111110100010111000011010110001", 
    14 => "00111110001001101001000010011011", 
    15 => "00111111001101011111011101010001", 
    16 => "10111101000000010000101101100011", 
    17 => "00111110100010001000110001100001", 
    18 => "10111111001000111110100000010100", 
    19 => "10111110011100101110011110110100", 
    20 => "00111101110010100100010011001000", 
    21 => "10111110100101011000000100000110", 
    22 => "00111111000000011000100001001100", 
    23 => "00111110000001001000100101001100", 
    24 => "00111111001101011000110010001111", 
    25 => "10111111000111000000001101000111", 
    26 => "10111110010100110100111010111010", 
    27 => "00111101010001111101100100010010", 
    28 => "10111111010011101011101010001100", 
    29 => "00111110000001000101000001101010", 
    30 => "00111100101100001001101001100111", 
    31 => "10111111000011001000110111110011" );

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

entity infer_Weight0_f_1bgk is
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

architecture arch of infer_Weight0_f_1bgk is
    component infer_Weight0_f_1bgk_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1bgk_rom_U :  component infer_Weight0_f_1bgk_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


