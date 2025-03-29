-- ==============================================================
-- File generated on Fri Mar 28 13:00:20 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_i_0_4_rom is 
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


architecture rtl of infer_Weight0_i_0_4_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110011111011000111011001001", 
    1 => "00111111000001011101100101001101", 
    2 => "10111110101011010101001111101111", 
    3 => "10111110111011110101001111000101", 
    4 => "00111101011111000101000101010101", 
    5 => "10111110000011010101001110001011", 
    6 => "10111111000001111011100010000000", 
    7 => "10111111000111101010010110110101", 
    8 => "10111110001101011110001111011010", 
    9 => "10111110100011110010000101001111", 
    10 => "00111110100101000101011001010000", 
    11 => "00111101101000110100100101111011", 
    12 => "00111110100000110000101001110000", 
    13 => "00111111010111100011011000111011", 
    14 => "00111111001010111101111010010100", 
    15 => "10111110100101110100011010101010", 
    16 => "00111111000011100000011001110101", 
    17 => "00111111010110011111101011101100", 
    18 => "00111110000110111010011000100110", 
    19 => "10111111001001111101011100101100", 
    20 => "10111110000001010010101011000111", 
    21 => "00111110100101101101010010100010", 
    22 => "00111111010100110111000011101111", 
    23 => "10111110010101001110100011111011", 
    24 => "00111110111011011111011001110111", 
    25 => "10111111101110011111100100100111", 
    26 => "00111110100010010111100101111101", 
    27 => "10111110110000011100000001000100", 
    28 => "00111101101100001100111111100001", 
    29 => "00111110100100000101101101011011", 
    30 => "00111101110000101111110101110110", 
    31 => "10111110111101001010001001010101" );

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

entity infer_Weight0_i_0_4 is
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

architecture arch of infer_Weight0_i_0_4 is
    component infer_Weight0_i_0_4_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0_4_rom_U :  component infer_Weight0_i_0_4_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


