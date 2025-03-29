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

entity infer_Weight0_c_0_1_rom is 
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


architecture rtl of infer_Weight0_c_0_1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110000011001001101110000100", 
    1 => "10111111010101001000101010011100", 
    2 => "00111111101110100111000110101100", 
    3 => "00111110001001011100101000101010", 
    4 => "10111110100001111110011101111101", 
    5 => "10111110100111101110001011101011", 
    6 => "00111110110000011100111010001110", 
    7 => "00111110111010010001000110101110", 
    8 => "10111110011011000100111011111001", 
    9 => "00111101101101101011100001110011", 
    10 => "10111111100110110010111010111110", 
    11 => "10111110111111101101110001111111", 
    12 => "00111111000011110011000000101111", 
    13 => "00111110011010111101000101100111", 
    14 => "00111110001010111000111111011110", 
    15 => "00111110110111001000110110100000", 
    16 => "10111110011000000011110111011110", 
    17 => "00111101100110101101010000101100", 
    18 => "10111101110110111110100110000101", 
    19 => "00111101000011100011011110011011", 
    20 => "10111110110011110011010101111110", 
    21 => "10111110001000011011010101000010", 
    22 => "00111111000001010111001111101011", 
    23 => "00111111000001100010001000001100", 
    24 => "00111011101100010101011100100110", 
    25 => "10111111010111010101001011010010", 
    26 => "00111110101110011000101101110010", 
    27 => "10111010100111111100011011011010", 
    28 => "10111110010001110010011110011010", 
    29 => "10111110010110111001100010000101", 
    30 => "00111110100000011111010001101111", 
    31 => "00111110001010110000010100110010" );

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

entity infer_Weight0_c_0_1 is
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

architecture arch of infer_Weight0_c_0_1 is
    component infer_Weight0_c_0_1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0_1_rom_U :  component infer_Weight0_c_0_1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


