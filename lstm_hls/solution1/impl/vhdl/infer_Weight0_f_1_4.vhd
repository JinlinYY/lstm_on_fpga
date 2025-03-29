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

entity infer_Weight0_f_1_4_rom is 
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


architecture rtl of infer_Weight0_f_1_4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110001001001011111001000000", 
    1 => "00111110110110100110000010110011", 
    2 => "00111110100101110100000110101111", 
    3 => "00111111010000111010000110010000", 
    4 => "00111110100011010010110100100011", 
    5 => "00111110000111100100010001110100", 
    6 => "00111111001010000101010110010111", 
    7 => "00111110110100110011011101000011", 
    8 => "00111110110010011100111000000111", 
    9 => "00111111011111000101100111101010", 
    10 => "00111101001110101010100110110101", 
    11 => "00111110101010111110101010110011", 
    12 => "00111101011111111100111010111000", 
    13 => "00111110010011001000001000010111", 
    14 => "00111101101011010110011101110111", 
    15 => "10111101101110100101111111001000", 
    16 => "10111100001101101100001101110110", 
    17 => "00111110010110100110110001011101", 
    18 => "00111110101110111001011111011101", 
    19 => "00111100101111101111101011101000", 
    20 => "00111111001011010111100000111110", 
    21 => "00111111000000111100000110101101", 
    22 => "00111111100010101011010101100111", 
    23 => "00111110111100111011001110100111", 
    24 => "00111101110011001100110001000111", 
    25 => "00111111100111000000001111001101", 
    26 => "10111101101001001000011100110011", 
    27 => "00111101100100101101110000101011", 
    28 => "10111110011010110111011010110100", 
    29 => "00111110001011010010100000000111", 
    30 => "00111110111001111100011111100111", 
    31 => "00111110110101101110100010110000" );

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

entity infer_Weight0_f_1_4 is
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

architecture arch of infer_Weight0_f_1_4 is
    component infer_Weight0_f_1_4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1_4_rom_U :  component infer_Weight0_f_1_4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


