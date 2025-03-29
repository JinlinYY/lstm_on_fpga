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

entity infer_Weight0_f_01iI_rom is 
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


architecture rtl of infer_Weight0_f_01iI_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110100111101001011010000001", 
    1 => "10111111010100000100010100110101", 
    2 => "10111101110101011110001110010111", 
    3 => "10111110011101011001000101000111", 
    4 => "00111110100011100011110110000001", 
    5 => "10111110001111100101001001011001", 
    6 => "10111110010101101010010010000111", 
    7 => "10111111000001001011111101101110", 
    8 => "00111110111000000001001011100000", 
    9 => "00111111100010111100100111000101", 
    10 => "10111100100101111001101111111110", 
    11 => "10111110111101111011111111101000", 
    12 => "00111110110100101000000111111110", 
    13 => "10111101100111110110011001100010", 
    14 => "10111101000010000101001111000001", 
    15 => "00111110101000101000101111010010", 
    16 => "00111110100100101100011101110101", 
    17 => "10111110101000111110000000110111", 
    18 => "10111111000010010101110100001011", 
    19 => "10111110000111101111111100011001", 
    20 => "10111110101111111001110011000111", 
    21 => "10111101110111100000110101100111", 
    22 => "10111110000011100111010001101101", 
    23 => "00111110100101011000111111010110", 
    24 => "10111111011001101011010001000010", 
    25 => "00111101110111011100100100111111", 
    26 => "00111110100011011000001101100010", 
    27 => "10111111010000000011011011011011", 
    28 => "10111110011110100001101000001101", 
    29 => "00111101001010110111001101001011", 
    30 => "00111011001110110001101011110100", 
    31 => "00111111001010010001010000111100" );

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

entity infer_Weight0_f_01iI is
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

architecture arch of infer_Weight0_f_01iI is
    component infer_Weight0_f_01iI_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_01iI_rom_U :  component infer_Weight0_f_01iI_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


