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

entity infer_Weight0_o_0_4_rom is 
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


architecture rtl of infer_Weight0_o_0_4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110111110110101011001110101", 
    1 => "00111110001110011001110101000101", 
    2 => "10111110110111000001010110110001", 
    3 => "00111101111010111110010110010111", 
    4 => "10111111100101101010100100110111", 
    5 => "00111111001000100111101111100101", 
    6 => "00111110100110111100011000100010", 
    7 => "10111101110010011011001110001101", 
    8 => "00111101111001110011011000000101", 
    9 => "10111110111101100010110111000111", 
    10 => "10111110111010110100111000010010", 
    11 => "00111111011010110000101001001110", 
    12 => "10111110100110010011010101010100", 
    13 => "00111110100000110010101111011100", 
    14 => "00111111001011000000000000010001", 
    15 => "10111101100011100110111100101111", 
    16 => "00111111000111101111110100000000", 
    17 => "10111101111001010100001111110010", 
    18 => "00111110010010010101011011000001", 
    19 => "10111110011101101110001100101110", 
    20 => "10111110101111100110001101000001", 
    21 => "00111110100111100100001110101010", 
    22 => "10111101011110111001000001100100", 
    23 => "00111101101010111001001101000111", 
    24 => "00111110100011010011010010011100", 
    25 => "00111110000110011100111101010111", 
    26 => "10111110110110000000010000010000", 
    27 => "10111101110011001111111110101000", 
    28 => "10111110100001110001011001001100", 
    29 => "10111111000010011100100110100011", 
    30 => "10111110100111101011111100100011", 
    31 => "10111111001001100100000100101101" );

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

entity infer_Weight0_o_0_4 is
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

architecture arch of infer_Weight0_o_0_4 is
    component infer_Weight0_o_0_4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0_4_rom_U :  component infer_Weight0_o_0_4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


