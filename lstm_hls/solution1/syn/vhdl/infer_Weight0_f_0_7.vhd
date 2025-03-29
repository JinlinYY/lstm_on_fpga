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

entity infer_Weight0_f_0_7_rom is 
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


architecture rtl of infer_Weight0_f_0_7_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110101010010001000110101110", 
    1 => "00111110010000010000000111110011", 
    2 => "10111110111111011001111100101100", 
    3 => "00111101100011011100011111101111", 
    4 => "10111110001000001110010110100011", 
    5 => "00111111100010000111001101100000", 
    6 => "10111100111101001010100110001011", 
    7 => "00111111101101001010101111110111", 
    8 => "00111101111000101100100100001000", 
    9 => "00111111001000111110011111110011", 
    10 => "00111101100000000101011110001110", 
    11 => "00111111011111010100001010100010", 
    12 => "00111101111001101000100110000111", 
    13 => "00111110000100001110010101100000", 
    14 => "10111110101001001000010101011110", 
    15 => "00111110111001110110011110010000", 
    16 => "00111110011111110100000101101100", 
    17 => "10111111000100111011001001010111", 
    18 => "00111111000001011111101111111000", 
    19 => "00111100111111101001101101111100", 
    20 => "00111111100001000011001010101001", 
    21 => "00111111100100000101000000011110", 
    22 => "10111110000101010110010110000000", 
    23 => "00111111000010011101011010111111", 
    24 => "00111111100000111000100111011111", 
    25 => "00111110101100110110011011011000", 
    26 => "00111110001011100111110011010000", 
    27 => "00111111100010011111100001010101", 
    28 => "00111101110110010100011111010000", 
    29 => "10111101000001111010101011101111", 
    30 => "10111110001111011110111101000001", 
    31 => "10111101011001101110011101100000" );

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

entity infer_Weight0_f_0_7 is
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

architecture arch of infer_Weight0_f_0_7 is
    component infer_Weight0_f_0_7_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_0_7_rom_U :  component infer_Weight0_f_0_7_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


