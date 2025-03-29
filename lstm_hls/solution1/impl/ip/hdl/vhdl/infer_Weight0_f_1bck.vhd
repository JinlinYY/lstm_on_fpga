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

entity infer_Weight0_f_1bck_rom is 
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


architecture rtl of infer_Weight0_f_1bck_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110010010111011001110000101", 
    1 => "10111110100010101001101011000011", 
    2 => "00111110101011110101010000101010", 
    3 => "10111101010100010010001000110010", 
    4 => "00111110100010011111110110011100", 
    5 => "10111111100010110111000011101111", 
    6 => "10111100100111001001101101000001", 
    7 => "00111110110110110011010010100100", 
    8 => "10111110001111101110110011000000", 
    9 => "10111111010011111010010100111100", 
    10 => "10111101001101000101001110001111", 
    11 => "10111101001111110100001101000010", 
    12 => "10111110110101100110001001111000", 
    13 => "00111101100100011110010111000001", 
    14 => "10111111001110101101101100001110", 
    15 => "00111110110110010011011101001100", 
    16 => "10111110101110001001100101011011", 
    17 => "00111101111010100111100000101001", 
    18 => "10111111000001111100101111100110", 
    19 => "00111110000100100111100001001011", 
    20 => "10111111100100001101000001001110", 
    21 => "00111110110110001101000000000011", 
    22 => "10111110110100110001101000101010", 
    23 => "10111110110010000111100110100011", 
    24 => "00111111100101111011101111000111", 
    25 => "10111111000111001011010101100111", 
    26 => "00111100011110000001000111110101", 
    27 => "10111110011011101110011011111011", 
    28 => "10111101011100111001101100000010", 
    29 => "10111110100110111000000111111001", 
    30 => "00111110111001001111100010110110", 
    31 => "10111111100001110010110001011010" );

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

entity infer_Weight0_f_1bck is
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

architecture arch of infer_Weight0_f_1bck is
    component infer_Weight0_f_1bck_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1bck_rom_U :  component infer_Weight0_f_1bck_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


