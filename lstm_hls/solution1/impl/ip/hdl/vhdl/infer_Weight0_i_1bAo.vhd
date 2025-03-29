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

entity infer_Weight0_i_1bAo_rom is 
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


architecture rtl of infer_Weight0_i_1bAo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110111011110011001101000100", 
    1 => "10111110000100011011001110101111", 
    2 => "00111100000111000011010001111111", 
    3 => "10111110111101010010001010100111", 
    4 => "00111110101011111011000011010101", 
    5 => "00111101111110101011001110101011", 
    6 => "00111111000110000011101100101110", 
    7 => "10111111011011110111010111101010", 
    8 => "10111111010101111100000101001000", 
    9 => "00111111010100100001100011011111", 
    10 => "10111111000010100011100110000010", 
    11 => "10111110100110110101000001101110", 
    12 => "00111110101001001101011011100100", 
    13 => "00111110010010001100010100000000", 
    14 => "10111110100000011000001011101101", 
    15 => "00111111001010000010011011001100", 
    16 => "10111110101010111100010000001001", 
    17 => "10111100110000000000001100100101", 
    18 => "00111111000010101011111010011101", 
    19 => "00111110100110011101110011010111", 
    20 => "10111110101010001000010101001101", 
    21 => "00111111001011001000010100101011", 
    22 => "10111111000101001111110111010010", 
    23 => "10111111011001100111000110011011", 
    24 => "00111111011000011001111111110101", 
    25 => "00111110011000111001100011101001", 
    26 => "00111110111001010100100000000010", 
    27 => "00111111010101000110001101011010", 
    28 => "00111111011001001111101111011011", 
    29 => "00111111000111110110101011010111", 
    30 => "10111111000011110001011111110000", 
    31 => "10111110111000011010110111001001" );

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

entity infer_Weight0_i_1bAo is
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

architecture arch of infer_Weight0_i_1bAo is
    component infer_Weight0_i_1bAo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1bAo_rom_U :  component infer_Weight0_i_1bAo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


