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

entity infer_Weight0_f_1_9_rom is 
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


architecture rtl of infer_Weight0_f_1_9_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111000000001111110001010000", 
    1 => "00111101001001110001011110011100", 
    2 => "00111111101001011111101010011000", 
    3 => "10111110000110110011001100010010", 
    4 => "10111110101110011000101010000111", 
    5 => "10111110010111100010011000001011", 
    6 => "00111111011010000000010000100001", 
    7 => "10111110110001101001100011011101", 
    8 => "00111110101111100010111011010011", 
    9 => "00111111100010001100000110110001", 
    10 => "10111100101011000000111001111100", 
    11 => "00111111010010000111000111000101", 
    12 => "10111110001100010110000110100010", 
    13 => "10111110110111100111010000001000", 
    14 => "10111110100001000101000100110011", 
    15 => "00111111000011010011001111010011", 
    16 => "10111110000111010111100000111110", 
    17 => "00111110100110011011110000110100", 
    18 => "00111110110101011011001000001100", 
    19 => "00111111000100100101001111001010", 
    20 => "00111110110001101001011110001101", 
    21 => "00111101010011001010100000011010", 
    22 => "00111110100000110011000100011010", 
    23 => "10111101101100110011000100011010", 
    24 => "00111111000111101111000010011110", 
    25 => "10111110001001011101000010110111", 
    26 => "00111101111111101011001100010100", 
    27 => "10111111000001010111010000001100", 
    28 => "10111101001101001100010011001110", 
    29 => "00111110100111010001100110111101", 
    30 => "00111011101011111001001000101001", 
    31 => "10111110101011101010111100100101" );

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

entity infer_Weight0_f_1_9 is
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

architecture arch of infer_Weight0_f_1_9 is
    component infer_Weight0_f_1_9_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1_9_rom_U :  component infer_Weight0_f_1_9_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


