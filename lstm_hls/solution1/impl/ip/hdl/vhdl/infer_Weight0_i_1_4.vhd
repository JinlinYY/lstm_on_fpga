-- ==============================================================
-- File generated on Fri Mar 28 13:00:21 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_i_1_4_rom is 
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


architecture rtl of infer_Weight0_i_1_4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110001011000001100010110101", 
    1 => "10111101010110010111100000001100", 
    2 => "00111101111111000110011101011010", 
    3 => "10111110011101000101000000100111", 
    4 => "10111101000001001111001110111010", 
    5 => "10111111001001010101100011011010", 
    6 => "00111110010010010101100100011101", 
    7 => "00111111010110011011010000100100", 
    8 => "00111110000001011111001101010010", 
    9 => "10111010110001010000000001010000", 
    10 => "00111110111101111101101001100010", 
    11 => "00111101100000010000110001101111", 
    12 => "10111110100101000111101001011011", 
    13 => "00111110101000100110011110100101", 
    14 => "00111110101111111001100011111010", 
    15 => "10111110101111101101010100000110", 
    16 => "10111110000110100001011100101011", 
    17 => "00111110001111001101011110001100", 
    18 => "00111110010000101010011010110001", 
    19 => "10111110001000101110100000111010", 
    20 => "10111111001001100011101111001101", 
    21 => "00111111001011000010100100000111", 
    22 => "10111101110101101101011001010110", 
    23 => "00111111001011011110100010100011", 
    24 => "10111110101110100001010101110111", 
    25 => "00111100000110111000100010000111", 
    26 => "00111110001010110111001011000101", 
    27 => "00111110100101100100100110110010", 
    28 => "00111110100101000011111000010000", 
    29 => "10111111001101000101100111001001", 
    30 => "10111110101010100011111110001010", 
    31 => "10111110001001000110100001000101" );

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

entity infer_Weight0_i_1_4 is
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

architecture arch of infer_Weight0_i_1_4 is
    component infer_Weight0_i_1_4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1_4_rom_U :  component infer_Weight0_i_1_4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


