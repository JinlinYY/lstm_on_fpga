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

entity infer_Weight0_f_1_8_rom is 
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


architecture rtl of infer_Weight0_f_1_8_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110001100101110110100110101", 
    1 => "00111110111001001001000011000101", 
    2 => "10111110011111011010011000011110", 
    3 => "00111110010111010001101011101011", 
    4 => "10111101001001111111101100100110", 
    5 => "00111110110001010010000100010100", 
    6 => "10111110101100100001110100110010", 
    7 => "00111111010001101101100100010111", 
    8 => "00111110001100010100010011001100", 
    9 => "10111100010110101111000001111100", 
    10 => "00111110001010101000110111101011", 
    11 => "00111111000101011100010011011011", 
    12 => "00111110010010000010110001101111", 
    13 => "00111110110000110000100000110101", 
    14 => "00111110000001011001100000011000", 
    15 => "00111110000000101011100111010100", 
    16 => "10111111000001000001000001100010", 
    17 => "10111110001110001011010000111001", 
    18 => "00111111000010001100111110011110", 
    19 => "10111110011100011111011001000101", 
    20 => "10111111000000100110000110011110", 
    21 => "00111101001000011001101110010001", 
    22 => "10111101111010000110000111101001", 
    23 => "10111110101110010011110111011001", 
    24 => "00111110110100111100010011110100", 
    25 => "10111101111111111101000001001010", 
    26 => "10111110011000110010001010101111", 
    27 => "10111111001001100110111101010000", 
    28 => "00111110100111010001000010010000", 
    29 => "00111110001100010010001100111110", 
    30 => "00111111001011010010111000110000", 
    31 => "10111110100010001010001101010001" );

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

entity infer_Weight0_f_1_8 is
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

architecture arch of infer_Weight0_f_1_8 is
    component infer_Weight0_f_1_8_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1_8_rom_U :  component infer_Weight0_f_1_8_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


