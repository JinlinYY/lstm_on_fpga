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

entity infer_Weight0_c_1_5_rom is 
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


architecture rtl of infer_Weight0_c_1_5_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110100000001111101000110111", 
    1 => "00111110100010111010100100001001", 
    2 => "10111100111000000000011011010001", 
    3 => "00111101100011100111001101100000", 
    4 => "00111110101110101000001011000111", 
    5 => "10111100110101110001110100011101", 
    6 => "10111011101010101100100101101101", 
    7 => "10111110111001010011111100111010", 
    8 => "10111110100101000001011001011001", 
    9 => "10111110111100110110100110111010", 
    10 => "00111110000010011001010100100101", 
    11 => "10111110100010110110010101000101", 
    12 => "00111110100011000100101101101111", 
    13 => "10111110001000100111000011110100", 
    14 => "00111110110100110011110111110011", 
    15 => "00111101111111010101100100001100", 
    16 => "10111101100011011111010100000110", 
    17 => "00111110101111000110000010101010", 
    18 => "10111111000100111110001100001000", 
    19 => "00111110000000011000111001110101", 
    20 => "00111110100101000000101000000111", 
    21 => "00111101101011001000000011000111", 
    22 => "10111100111010111010110011110111", 
    23 => "10111101101011011101001001101011", 
    24 => "00111101100111101010101110111101", 
    25 => "10111110001101011110001111011010", 
    26 => "10111111000100110111010011011110", 
    27 => "00111100100001010000000101011100", 
    28 => "10111110110001011100000101000000", 
    29 => "00111110001010011011010001010111", 
    30 => "10111110011111010100100111011000", 
    31 => "00111110111111011111100101111011" );

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

entity infer_Weight0_c_1_5 is
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

architecture arch of infer_Weight0_c_1_5 is
    component infer_Weight0_c_1_5_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_1_5_rom_U :  component infer_Weight0_c_1_5_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


