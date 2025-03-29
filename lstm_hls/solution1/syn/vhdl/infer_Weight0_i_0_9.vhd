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

entity infer_Weight0_i_0_9_rom is 
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


architecture rtl of infer_Weight0_i_0_9_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111010000111011000001001111", 
    1 => "10111110100101010001011000110011", 
    2 => "10111111011001110010000001010011", 
    3 => "10111110110000110001101001101101", 
    4 => "10111110011110011101111000000101", 
    5 => "10111110001110101011111001101010", 
    6 => "00111110110011010101101000111010", 
    7 => "10111101000111111010010101001100", 
    8 => "10111110101000011010001100101011", 
    9 => "10111111101011000000011110010010", 
    10 => "00111101111100111111110000000001", 
    11 => "10111110011101010010100010101110", 
    12 => "00111111100101001110001111011110", 
    13 => "10111111100001111100100011111100", 
    14 => "00111110101000010001010010110001", 
    15 => "00111111010000000100000100000011", 
    16 => "00111110100111101001100010011010", 
    17 => "10111110110001110101000001111111", 
    18 => "10111110000101110010001010011111", 
    19 => "00111111010100110001010000000001", 
    20 => "10111110010101111111100011001011", 
    21 => "00111111001010101110000000101010", 
    22 => "00111111000100011100110110100011", 
    23 => "10111110111100000100110010101101", 
    24 => "00111110010011111000100011111101", 
    25 => "00111111001101101100011010001011", 
    26 => "00111110000000111100110101010111", 
    27 => "10111100001011000011101010000110", 
    28 => "10111110000000011001111110000000", 
    29 => "00111110111111100011111010001110", 
    30 => "10111101011101001001010010010010", 
    31 => "10111111000010101010000111101000" );

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

entity infer_Weight0_i_0_9 is
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

architecture arch of infer_Weight0_i_0_9 is
    component infer_Weight0_i_0_9_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0_9_rom_U :  component infer_Weight0_i_0_9_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


