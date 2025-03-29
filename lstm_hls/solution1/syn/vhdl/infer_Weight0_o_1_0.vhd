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

entity infer_Weight0_o_1_0_rom is 
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


architecture rtl of infer_Weight0_o_1_0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101100110010100110010001000", 
    1 => "10111111000111101010010101000000", 
    2 => "10111110000001000101001000111111", 
    3 => "10111111001101001001000001110001", 
    4 => "00111101111110001001101001000110", 
    5 => "00111110111000010001100111110000", 
    6 => "10111111000001010100011010000000", 
    7 => "10111111010000010011000011001111", 
    8 => "00111111000010000100111010110101", 
    9 => "00111111011011101010101110111101", 
    10 => "10111101100101111100010001011101", 
    11 => "00111101110010011011111000001010", 
    12 => "00111110010001100001111010010011", 
    13 => "00111111010001010011100010111101", 
    14 => "10111111001110001101010011011100", 
    15 => "10111111010100100000000011100010", 
    16 => "10111110001000110111000101010100", 
    17 => "10111111000000010110100010110110", 
    18 => "10111111000110011101010010000100", 
    19 => "10111110101001110101110000101001", 
    20 => "10111110010011001000111010101100", 
    21 => "00111110100010010001001001010101", 
    22 => "10111110001111010101110111000100", 
    23 => "00111111000101101101101101100010", 
    24 => "10111101101101010111010001110001", 
    25 => "00111101110000001100001110001111", 
    26 => "00111110100001010100001101101100", 
    27 => "10111110111110011110010011110111", 
    28 => "10111111000010000101011011000101", 
    29 => "10111111000000101100101111101010", 
    30 => "10111111001101011010111100001000", 
    31 => "00111100110111111010011001011001" );

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

entity infer_Weight0_o_1_0 is
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

architecture arch of infer_Weight0_o_1_0 is
    component infer_Weight0_o_1_0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1_0_rom_U :  component infer_Weight0_o_1_0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


