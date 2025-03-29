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

entity infer_Weight0_c_1_7_rom is 
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


architecture rtl of infer_Weight0_c_1_7_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110001000000100101100111100", 
    1 => "10111110111111001001111111111001", 
    2 => "10111110000001011000101111000110", 
    3 => "00111111001100010101000010111001", 
    4 => "00111101110111000110011011010011", 
    5 => "10111100100000011010101111010010", 
    6 => "00111101100100111111000011111110", 
    7 => "00111111010100100010101001011110", 
    8 => "10111111010001001011000000111010", 
    9 => "10111101111011010111011000100101", 
    10 => "00111101101001101011100000110000", 
    11 => "00111110000001101101100100111000", 
    12 => "00111110100001011000000111001111", 
    13 => "10111111001000010000101001010111", 
    14 => "00111111000010110101010001011100", 
    15 => "10111101110000011101101100000001", 
    16 => "10111110100001011011010100001111", 
    17 => "00111110101001010110011000100111", 
    18 => "10111110110101111111111001101101", 
    19 => "10111110000010000110100111000110", 
    20 => "00111110100001101101101000000001", 
    21 => "10111110010010101110001101100001", 
    22 => "10111100101101000011001100001101", 
    23 => "10111110110101011111001101010010", 
    24 => "10111100100111010100110110000011", 
    25 => "00111101101011101100110010000001", 
    26 => "10111101001011101010110010000110", 
    27 => "00111110011000101110101001010011", 
    28 => "10111101111111011100100111000101", 
    29 => "00111110010100110110011111100100", 
    30 => "10111110011110001110100001100100", 
    31 => "00111110011000001000000100111101" );

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

entity infer_Weight0_c_1_7 is
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

architecture arch of infer_Weight0_c_1_7 is
    component infer_Weight0_c_1_7_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_1_7_rom_U :  component infer_Weight0_c_1_7_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


