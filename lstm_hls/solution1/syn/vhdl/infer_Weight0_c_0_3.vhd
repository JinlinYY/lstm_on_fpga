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

entity infer_Weight0_c_0_3_rom is 
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


architecture rtl of infer_Weight0_c_0_3_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110110001011011000101100100", 
    1 => "00111110011111010100111101011001", 
    2 => "00111111011100010011010000000101", 
    3 => "10111101100100001111101111101100", 
    4 => "10111110010101110110100001011010", 
    5 => "00111100000111100001101100001001", 
    6 => "10111111010011001001101101000001", 
    7 => "10111110101101110010001111001101", 
    8 => "00111101010001010000100010110011", 
    9 => "10111110111101110001000101110011", 
    10 => "00111101101000000001101111001010", 
    11 => "00111110101110111100100110001010", 
    12 => "10111111110010100101110001010111", 
    13 => "10111101101011100011000111010111", 
    14 => "10111110110001101110010001011100", 
    15 => "10111011101011011011010000000011", 
    16 => "00111101110110100100110111110100", 
    17 => "10111110110111100010110111101000", 
    18 => "00111101101100111000101000111011", 
    19 => "10111111011011000010101000000010", 
    20 => "00111101101010000111101100010100", 
    21 => "10111111011010011011010101100011", 
    22 => "00111100001010100010111000111100", 
    23 => "00111110110111100111101001010011", 
    24 => "00111011110010100011011000011010", 
    25 => "10111101111000100010110001000101", 
    26 => "00111110100000000000011001001011", 
    27 => "10111110001110110100001011001100", 
    28 => "10111110101000011111111110110101", 
    29 => "10111110011111000100000101010111", 
    30 => "10111110111011110100100000011011", 
    31 => "00111101101000011110011000000100" );

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

entity infer_Weight0_c_0_3 is
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

architecture arch of infer_Weight0_c_0_3 is
    component infer_Weight0_c_0_3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0_3_rom_U :  component infer_Weight0_c_0_3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


