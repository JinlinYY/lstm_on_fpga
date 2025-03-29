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

entity infer_Weight0_c_1bVr_rom is 
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


architecture rtl of infer_Weight0_c_1bVr_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110000001110100000100000111", 
    1 => "10111110000011110101001011111100", 
    2 => "10111110100101111000011111110000", 
    3 => "10111110100110001011001110010010", 
    4 => "10111111000011011000110100110111", 
    5 => "10111110110111011101100101111111", 
    6 => "00111110111100101000101000011110", 
    7 => "00111110111001110001110010010111", 
    8 => "00111110001110101011011110011001", 
    9 => "00111110111110001000111001011000", 
    10 => "10111110100110000000001000111010", 
    11 => "00111110101010000000111010001101", 
    12 => "00111101001101001001000101101101", 
    13 => "00111110111101010000101000100100", 
    14 => "10111111000111111010111011011110", 
    15 => "00111100110111111011100100111001", 
    16 => "00111110100101011100001001001100", 
    17 => "10111110001110010001010101111011", 
    18 => "00111101000110111001110110000000", 
    19 => "10111101000011001110111001011011", 
    20 => "10111111001011101100101111111011", 
    21 => "00111110000000100010001111100010", 
    22 => "00111110001100100111010111101111", 
    23 => "00111011100101011111001001000101", 
    24 => "10111110101110110110101001100010", 
    25 => "10111110011010011101110100111100", 
    26 => "10111101100000101000001101001101", 
    27 => "00111110110010010110001101111000", 
    28 => "10111110111000110101010101000111", 
    29 => "10111110000001010100111100110111", 
    30 => "10111110111000010110101111111101", 
    31 => "00111101101101100110010110011101" );

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

entity infer_Weight0_c_1bVr is
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

architecture arch of infer_Weight0_c_1bVr is
    component infer_Weight0_c_1bVr_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_1bVr_rom_U :  component infer_Weight0_c_1bVr_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


