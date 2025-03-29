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

entity infer_Weight0_o_1_4_rom is 
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


architecture rtl of infer_Weight0_o_1_4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110000000000111010010100111", 
    1 => "10111101111011010100011011110110", 
    2 => "00111101101000111111100110100101", 
    3 => "10111101000011110110111100001001", 
    4 => "10111110101010110010100101011111", 
    5 => "00111100100100011111001011011100", 
    6 => "00111110101001100101010011010110", 
    7 => "10111110011111001110000000110011", 
    8 => "10111110010100110111010101000011", 
    9 => "00111111001101110000001010000010", 
    10 => "10111101101010010011011000111111", 
    11 => "10111110100000001101011101011010", 
    12 => "00111110010001000101110001111001", 
    13 => "00111110101001110000010101100100", 
    14 => "10111101100001100001010010011100", 
    15 => "10111111001011010001011000010010", 
    16 => "10111110110100111101111110001111", 
    17 => "00111100001101000001011111001010", 
    18 => "00111101011010001101101001111111", 
    19 => "10111101101000001011111001010001", 
    20 => "10111101110111010011000010101101", 
    21 => "00111110100101110000110011111110", 
    22 => "00111111000001000010011101110100", 
    23 => "10111110001100110000001011110111", 
    24 => "00111110100000111000001010100001", 
    25 => "00111111000011011111010110111110", 
    26 => "10111110011110111100111011001000", 
    27 => "10111110000011000011000101011001", 
    28 => "00111110001001010111011011001101", 
    29 => "10111110111001010010000110011011", 
    30 => "00111111010000001101110000000001", 
    31 => "00111110001110001011000111011101" );

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

entity infer_Weight0_o_1_4 is
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

architecture arch of infer_Weight0_o_1_4 is
    component infer_Weight0_o_1_4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1_4_rom_U :  component infer_Weight0_o_1_4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


