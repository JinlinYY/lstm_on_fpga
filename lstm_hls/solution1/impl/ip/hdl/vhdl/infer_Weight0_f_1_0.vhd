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

entity infer_Weight0_f_1_0_rom is 
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


architecture rtl of infer_Weight0_f_1_0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110100000001001010100000111", 
    1 => "00111110110110000001010111100100", 
    2 => "10111101001111111111111011110100", 
    3 => "10111101010000101010100010000111", 
    4 => "10111101100110100010001101111101", 
    5 => "00111110111001000110100011101100", 
    6 => "00111110000011111110001010100100", 
    7 => "00111111000101010010101110110010", 
    8 => "00111111010001100100001000111001", 
    9 => "00111111101011000100010111101101", 
    10 => "10111110001010100111010101000111", 
    11 => "00111110110110101010111000001000", 
    12 => "10111101011100101011000000100001", 
    13 => "00111110110111011001101011011000", 
    14 => "10111110100001010011101000011101", 
    15 => "00111110111101011111101101110010", 
    16 => "10111111000010011100011100000100", 
    17 => "00111101111000111001110001010010", 
    18 => "00111110110100111101011010100110", 
    19 => "10111110100110011010011101111110", 
    20 => "00111111000001111011000000101101", 
    21 => "00111110000001101011011111101101", 
    22 => "00111111000001100001001101011110", 
    23 => "00111100110111101101000001110000", 
    24 => "00111110101100101100100011000101", 
    25 => "00111111010100001111010100101100", 
    26 => "00111110100001001100001110100000", 
    27 => "10111110001110101001010000110110", 
    28 => "00111101100011101010000001110111", 
    29 => "10111100101111110011000101101110", 
    30 => "10111110001111001010000011000011", 
    31 => "00111111100011111111110011111100" );

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

entity infer_Weight0_f_1_0 is
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

architecture arch of infer_Weight0_f_1_0 is
    component infer_Weight0_f_1_0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1_0_rom_U :  component infer_Weight0_f_1_0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


