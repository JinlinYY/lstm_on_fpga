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

entity infer_Weight0_i_1byn_rom is 
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


architecture rtl of infer_Weight0_i_1byn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111001101010000110110011101", 
    1 => "00111110100110100110000110111111", 
    2 => "00111101001110101000110001011000", 
    3 => "00111101110100111100101111000101", 
    4 => "00111110111111000111000000000000", 
    5 => "10111110110011110101011110010011", 
    6 => "00111110001101101001001100111010", 
    7 => "10111110111001000101110111101010", 
    8 => "10111111100010001000101011000110", 
    9 => "10111110111001011100101101111001", 
    10 => "00111110011000110011101011001101", 
    11 => "00111111011001101010010110000011", 
    12 => "00111111010000111100100110101100", 
    13 => "10111111001100101100001110000111", 
    14 => "00111110100000101011110101011110", 
    15 => "00111111010001000011101100011101", 
    16 => "10111101011101101101111111000110", 
    17 => "00111111001110000101101110101111", 
    18 => "00111111100110110010010111010101", 
    19 => "10111111001010100000011111100110", 
    20 => "00111101001111110001100101010000", 
    21 => "00111110101011101011000111100110", 
    22 => "10111111101111010101011111000101", 
    23 => "00111111010100100110111001110110", 
    24 => "00111101011011110001100110010011", 
    25 => "10111110000011111100011010010111", 
    26 => "10111110000001111011010111110010", 
    27 => "10111110100101011101101001001001", 
    28 => "10111111001000100011111101111001", 
    29 => "00111111000111001001001001111001", 
    30 => "00111110011111010010100111011100", 
    31 => "10111110011101110001111010110000" );

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

entity infer_Weight0_i_1byn is
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

architecture arch of infer_Weight0_i_1byn is
    component infer_Weight0_i_1byn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1byn_rom_U :  component infer_Weight0_i_1byn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


