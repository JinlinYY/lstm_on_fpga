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

entity infer_Weight0_i_0_7_rom is 
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


architecture rtl of infer_Weight0_i_0_7_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110011110001001001011101111", 
    1 => "10111111010100100011011011000001", 
    2 => "00111101001101001001100111010000", 
    3 => "00111101110010000110011010100001", 
    4 => "10111111000000101011111100000001", 
    5 => "10111110011110000010000000011101", 
    6 => "10111111001010011000001100110000", 
    7 => "10111101111101000110110101000000", 
    8 => "10111110101011110010110110100001", 
    9 => "10111111001100010110011110011001", 
    10 => "00111011110100101010101001011100", 
    11 => "10111110101111100101010101011100", 
    12 => "10111101001001000011010001011101", 
    13 => "00111110101011011101000000001111", 
    14 => "00111011000001101000101110100000", 
    15 => "00111101110001100010111011010011", 
    16 => "00111101110000110110100001101010", 
    17 => "10111111000001010110001101000101", 
    18 => "00111100111000101111100111001010", 
    19 => "10111111010010010110011010101110", 
    20 => "10111110101000001111011000000110", 
    21 => "00111101111111110011001110000111", 
    22 => "00111101011110100000100101000110", 
    23 => "10111110101111010111111010001001", 
    24 => "00111110101001000001100100111011", 
    25 => "10111111010011101100000110010000", 
    26 => "10111110110101010101011011110011", 
    27 => "10111101110011011110010111010010", 
    28 => "10111110010010100110001010101010", 
    29 => "10111111001001100110100001101110", 
    30 => "10111111001011010101100010010111", 
    31 => "10111110111101100111110010101111" );

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

entity infer_Weight0_i_0_7 is
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

architecture arch of infer_Weight0_i_0_7 is
    component infer_Weight0_i_0_7_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0_7_rom_U :  component infer_Weight0_i_0_7_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


