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

entity infer_Weight0_i_0bom_rom is 
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


architecture rtl of infer_Weight0_i_0bom_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100110100100100011111001011", 
    1 => "00111101101110101011111010101101", 
    2 => "10111110001110001000111010111101", 
    3 => "00111110001110111110010101010100", 
    4 => "10111101001111010111011111111011", 
    5 => "10111110111111010100000111011001", 
    6 => "00111111011111001010100011100011", 
    7 => "00111110101101000111000000100010", 
    8 => "00111101100001001011111101001101", 
    9 => "00111110010100010000110011110110", 
    10 => "10111111011010000001110001110001", 
    11 => "00111111011100110000001011100110", 
    12 => "10111110111000010111001001000111", 
    13 => "00111111001010100011111101111001", 
    14 => "00111100101100010000101110100110", 
    15 => "10111110101010110000110001000110", 
    16 => "10111111000010101001001101001011", 
    17 => "10111101110011101010010110110101", 
    18 => "00111110011111101010111001011100", 
    19 => "00111111010010110100110101001001", 
    20 => "00111101110101001110100001110101", 
    21 => "00111110101000000101101101011011", 
    22 => "00111101010100001000010111110101", 
    23 => "00111100100110110110011011111001", 
    24 => "10111110100101001000101101000100", 
    25 => "10111110100110110111111101111100", 
    26 => "00111100101011100011000111010111", 
    27 => "00111110111110011001001011001001", 
    28 => "10111111000011000011111101100000", 
    29 => "00111110001000101101011100110000", 
    30 => "10111110011111111011011101100011", 
    31 => "00111110011001000011000010110001" );

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

entity infer_Weight0_i_0bom is
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

architecture arch of infer_Weight0_i_0bom is
    component infer_Weight0_i_0bom_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0bom_rom_U :  component infer_Weight0_i_0bom_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


