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

entity infer_Weight0_f_1_1_rom is 
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


architecture rtl of infer_Weight0_f_1_1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110011100011101000101001110", 
    1 => "10111111000101110000100011101110", 
    2 => "10111111011100110011100110011111", 
    3 => "00111111111011101011101110110010", 
    4 => "00111111000011001010100001111110", 
    5 => "00111111011100111001001011100010", 
    6 => "10111111000100011011010110000101", 
    7 => "00111110100001101111110010011100", 
    8 => "00111101010000010111010000111111", 
    9 => "00111111000010101001001101101100", 
    10 => "00111110111011001011101111000011", 
    11 => "00111111010010000100010010111111", 
    12 => "10111111111000001110111000111001", 
    13 => "10111110101101100011110110100011", 
    14 => "00111111001100000001011101100101", 
    15 => "00111111001011100010111011100100", 
    16 => "10111110100011000111100100101101", 
    17 => "00111111101001101101010101011010", 
    18 => "10111101110100010101101101010111", 
    19 => "10111111110010110110001010101110", 
    20 => "00111110100111100010001000111110", 
    21 => "10111110000101010011101101001011", 
    22 => "10111111000101100000101000001111", 
    23 => "10111111100001100111000000100010", 
    24 => "00111110100011010011110001011000", 
    25 => "10111111011000000001010101111111", 
    26 => "10111110101111111011000001001111", 
    27 => "10111111010000110010110111010011", 
    28 => "10111110110010001010101111110111", 
    29 => "10111111001001100101010001100001", 
    30 => "00111110111010111000010111101000", 
    31 => "00111110100011110111100111101010" );

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

entity infer_Weight0_f_1_1 is
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

architecture arch of infer_Weight0_f_1_1 is
    component infer_Weight0_f_1_1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1_1_rom_U :  component infer_Weight0_f_1_1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


