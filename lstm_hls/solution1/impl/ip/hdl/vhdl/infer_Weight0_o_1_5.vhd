-- ==============================================================
-- File generated on Fri Mar 28 13:00:23 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_o_1_5_rom is 
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


architecture rtl of infer_Weight0_o_1_5_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111100001101110000110011100", 
    1 => "00111110011010110011010000011110", 
    2 => "00111101001101110001100001100101", 
    3 => "10111101100110001011110011100000", 
    4 => "00111100010011111100100000101010", 
    5 => "00111110100111100101101000010100", 
    6 => "10111110000011010111000100101010", 
    7 => "00111101011100100000010000101001", 
    8 => "00111110111110101000111001110001", 
    9 => "00111100000111001011111011101000", 
    10 => "10111101100100111010000001000000", 
    11 => "10111110100000110000110110110111", 
    12 => "10111110100000011110001111001001", 
    13 => "00111101111010000001001000111000", 
    14 => "00111101100111000111101101000110", 
    15 => "00111101100100100011110011001001", 
    16 => "00111110001110010001100001011101", 
    17 => "00111100010010100010110110110110", 
    18 => "10111110101110011000000110011101", 
    19 => "00111110100110000111101010101111", 
    20 => "00111111000110011011001100111001", 
    21 => "00111110000100101100101011011110", 
    22 => "10111110010010010000011101010011", 
    23 => "10111101011101010001111011111011", 
    24 => "00111110011010101000011011010111", 
    25 => "00111111001111010000111110100110", 
    26 => "10111101010110111001110110000000", 
    27 => "10111110011000101101000110101111", 
    28 => "10111111001010010111010000001100", 
    29 => "10111110000001110100111111111000", 
    30 => "00111101111011111111000000000010", 
    31 => "10111111001010010101001000011010" );

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

entity infer_Weight0_o_1_5 is
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

architecture arch of infer_Weight0_o_1_5 is
    component infer_Weight0_o_1_5_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1_5_rom_U :  component infer_Weight0_o_1_5_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


