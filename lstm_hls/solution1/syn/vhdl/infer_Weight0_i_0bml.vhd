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

entity infer_Weight0_i_0bml_rom is 
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


architecture rtl of infer_Weight0_i_0bml_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111000110010100010010111011", 
    1 => "10111111001100110100101100110000", 
    2 => "10111100100100000111001100010101", 
    3 => "00111111010011010011101100111010", 
    4 => "00111110111111101111010110101001", 
    5 => "00111101111101001111001011110001", 
    6 => "00111110110010011000001101110011", 
    7 => "00111110100001010010000101010111", 
    8 => "10111110010110000011000110101101", 
    9 => "10111110000010010110000010110111", 
    10 => "10111110101100110101001110010011", 
    11 => "00111110101100110101000001001100", 
    12 => "00111110000011001111010101101111", 
    13 => "10111110110111110001100100001101", 
    14 => "00111110101111011010000110001000", 
    15 => "00111110011000101011000001100100", 
    16 => "10111110101110101010110001110101", 
    17 => "00111111000000101100011100000000", 
    18 => "10111110001010000010110100111000", 
    19 => "00111111010110010110111111101011", 
    20 => "00111110111100000001110011111000", 
    21 => "00111110100001001011010010001101", 
    22 => "00111110111110101011001100100101", 
    23 => "10111111010100100111100110111100", 
    24 => "00111110000111111001010101001111", 
    25 => "10111110000110100111111011111010", 
    26 => "00111110101100100100100110100001", 
    27 => "00111111001001111101110001101010", 
    28 => "00111111100110000001100010010011", 
    29 => "00111110000001101001110100110000", 
    30 => "10111110100000101010000011101100", 
    31 => "00111101111001100010100100001111" );

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

entity infer_Weight0_i_0bml is
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

architecture arch of infer_Weight0_i_0bml is
    component infer_Weight0_i_0bml_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0bml_rom_U :  component infer_Weight0_i_0bml_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


