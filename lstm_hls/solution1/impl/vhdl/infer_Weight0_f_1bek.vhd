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

entity infer_Weight0_f_1bek_rom is 
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


architecture rtl of infer_Weight0_f_1bek_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110000110000011010100010110", 
    1 => "00111111000010110111101101111100", 
    2 => "10111111000111001110100101001111", 
    3 => "00111110110010100011001001001101", 
    4 => "00111110000000010100111110001011", 
    5 => "10111111011000100010001010110100", 
    6 => "10111101111011111010011110101000", 
    7 => "10111111000110110111100111001000", 
    8 => "10111111001001111010110100101010", 
    9 => "10111110110111110111011101001011", 
    10 => "10111111000110000100110111101100", 
    11 => "10111101111101010000101010001001", 
    12 => "00111110111001011001100110001001", 
    13 => "00111111000111000011011110100100", 
    14 => "00111110110101111010111010011011", 
    15 => "10111101100010011100101010011111", 
    16 => "10111101100001110100111000100011", 
    17 => "10111111011001101001110101000001", 
    18 => "10111110000101111000111010011111", 
    19 => "00111110110111111110011010010010", 
    20 => "00111110111010101101100001011110", 
    21 => "00111111100000000110110011011011", 
    22 => "10111110100001000000110000100000", 
    23 => "00111101100101010101101011000000", 
    24 => "10111111001010101011000001110101", 
    25 => "10111110011010010001110000001000", 
    26 => "00111110111111111110001110001111", 
    27 => "00111110001010101100111100110001", 
    28 => "00111110001011001110101100110101", 
    29 => "00111101001111001111010011101000", 
    30 => "10111101111011100001001101101110", 
    31 => "10111110011100001000100000001110" );

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

entity infer_Weight0_f_1bek is
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

architecture arch of infer_Weight0_f_1bek is
    component infer_Weight0_f_1bek_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1bek_rom_U :  component infer_Weight0_f_1bek_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


