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

entity infer_Weight0_c_1_8_rom is 
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


architecture rtl of infer_Weight0_c_1_8_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110011111011001000001011100", 
    1 => "00111110110000100100110010100101", 
    2 => "00111100110011100110110000001001", 
    3 => "10111101000100101101011101110011", 
    4 => "10111110100011101111111101111110", 
    5 => "10111110011001001100000011011111", 
    6 => "00111101111100111100100010011111", 
    7 => "00111110100111001010001011111101", 
    8 => "10111101110010000111000000010001", 
    9 => "10111101001101010101111111111110", 
    10 => "10111100010110010001101010111001", 
    11 => "00111100111101010011110001011000", 
    12 => "00111100101101110000100010101011", 
    13 => "10111110001111100111011101001111", 
    14 => "10111110001100101110110110111011", 
    15 => "10111110110010001001110010100010", 
    16 => "10111111000011101010000001010101", 
    17 => "10111110011001101110110110101011", 
    18 => "00111110000000110101111001110100", 
    19 => "00111110011111010001000110111110", 
    20 => "10111110011011000011011111100111", 
    21 => "10111110000000101000000000101000", 
    22 => "10111101100111010010011100111101", 
    23 => "00111101011001100000101000100000", 
    24 => "00111110001110001001010101001010", 
    25 => "10111110100100100000011101110000", 
    26 => "00111100100010001100111001110000", 
    27 => "00111010010101010110001010011110", 
    28 => "10111101101100011100001110101101", 
    29 => "00111101000101100011001101001000", 
    30 => "10111101101001100001010110101001", 
    31 => "10111110001100100110110110001011" );

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

entity infer_Weight0_c_1_8 is
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

architecture arch of infer_Weight0_c_1_8 is
    component infer_Weight0_c_1_8_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_1_8_rom_U :  component infer_Weight0_c_1_8_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


