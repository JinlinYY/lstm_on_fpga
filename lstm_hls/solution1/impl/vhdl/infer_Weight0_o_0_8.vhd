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

entity infer_Weight0_o_0_8_rom is 
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


architecture rtl of infer_Weight0_o_0_8_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101100100010101110001100100", 
    1 => "00111110100100010000101000010011", 
    2 => "00111110001110011110100100001000", 
    3 => "10111111010010001001111011011100", 
    4 => "00111110000101111010001100010010", 
    5 => "10111111000110111001010001100100", 
    6 => "10111101100001001010000001011110", 
    7 => "00111101100110000111110111110110", 
    8 => "10111110110100110001010000000001", 
    9 => "10111110111010111110100011111111", 
    10 => "10111111011001101011111001111011", 
    11 => "10111111000110000110110011011011", 
    12 => "10111111000011110010001101000110", 
    13 => "00111110010101111011110000111100", 
    14 => "00111110100010001101011110111111", 
    15 => "10111111000111111001110110110010", 
    16 => "10111110110000010110101110111010", 
    17 => "10111110100001110010101000010111", 
    18 => "10111101100000110100111111000110", 
    19 => "10111110110101111011001000000011", 
    20 => "00111110100101001001110010010001", 
    21 => "00111111001011010101010001010100", 
    22 => "10111111000011001111010101001101", 
    23 => "00111110101011011110111110000101", 
    24 => "10111101111100111101110100010010", 
    25 => "00111101000011111111011101011001", 
    26 => "10111111010101100000111110100001", 
    27 => "00111110110011011000001011111101", 
    28 => "10111110111101001000010010110110", 
    29 => "10111111000111110011011101010100", 
    30 => "10111111010000101101111100001101", 
    31 => "00111111001000111110011000011101" );

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

entity infer_Weight0_o_0_8 is
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

architecture arch of infer_Weight0_o_0_8 is
    component infer_Weight0_o_0_8_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0_8_rom_U :  component infer_Weight0_o_0_8_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


