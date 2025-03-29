-- ==============================================================
-- File generated on Fri Mar 28 13:00:22 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_o_0_7_rom is 
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


architecture rtl of infer_Weight0_o_0_7_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111010111110010001111011101", 
    1 => "10111110110110011100000001000100", 
    2 => "10111110101010011101001110001001", 
    3 => "10111110100000011000000110111111", 
    4 => "00111110001001110101000100000101", 
    5 => "00111110010010011110100011000100", 
    6 => "10111110011000010100000010011010", 
    7 => "10111110011110100000010000001000", 
    8 => "10111101111000010010000011100010", 
    9 => "10111111001110110101011000110010", 
    10 => "00111110011110111101111011000110", 
    11 => "00111110110110001011111111000010", 
    12 => "10111110011000111011011001000110", 
    13 => "00111101110111101100100100011001", 
    14 => "00111110101011001001111101010001", 
    15 => "10111111010110010000010110001110", 
    16 => "00111110001101001110101000000111", 
    17 => "00111110100011010100001001011111", 
    18 => "00111101111010101110011011001001", 
    19 => "00111101000011100000100101111000", 
    20 => "00111110000111100100101010111110", 
    21 => "10111101100001110000010010111100", 
    22 => "00111101100100111010111011101111", 
    23 => "10111110110111111001100001110100", 
    24 => "00111111000111000110111101011000", 
    25 => "10111110111000011010110101000011", 
    26 => "10111110100001001001011000000011", 
    27 => "00111111100001100111010011000001", 
    28 => "00111110011111001010011010000111", 
    29 => "10111111011101100100001101000110", 
    30 => "10111111011111110101000111001110", 
    31 => "00111111001011100001110001111010" );

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

entity infer_Weight0_o_0_7 is
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

architecture arch of infer_Weight0_o_0_7 is
    component infer_Weight0_o_0_7_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0_7_rom_U :  component infer_Weight0_o_0_7_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


