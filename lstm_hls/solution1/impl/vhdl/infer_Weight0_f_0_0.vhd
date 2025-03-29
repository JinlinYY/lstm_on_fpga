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

entity infer_Weight0_f_0_0_rom is 
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


architecture rtl of infer_Weight0_f_0_0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100101010111010000101101110", 
    1 => "10111110110101101001100110100110", 
    2 => "10111111001000000001100100001001", 
    3 => "00111110000110011011011100111001", 
    4 => "00111011011011100110101110000011", 
    5 => "00111110011101000000011001111101", 
    6 => "10111100000101111111101001011101", 
    7 => "10111110010111101011011000111001", 
    8 => "00111110011111111110100110111000", 
    9 => "00111110100110100100001100110101", 
    10 => "00111110010100010011111000111110", 
    11 => "10111101000001011111100111011111", 
    12 => "10111101000010011010111011010101", 
    13 => "10111100101110110001100011011011", 
    14 => "10111100100010110111001111010010", 
    15 => "00111110011101011000011100001110", 
    16 => "00111110000011010001011110000011", 
    17 => "00111101100110011001000110111100", 
    18 => "00111110110000011000111000010001", 
    19 => "10111101101111110101101111100110", 
    20 => "00111110000011000111101101000110", 
    21 => "10111010001110111111010100001110", 
    22 => "00111101100111010101111001001010", 
    23 => "10111101110010000011100100000100", 
    24 => "00111110000100111101000000111001", 
    25 => "10111101001001110011010011111000", 
    26 => "10111100000110101000010001111011", 
    27 => "00111101101000111010001100100011", 
    28 => "10111101110011010101000101110010", 
    29 => "00111110100110101000111011010110", 
    30 => "00111101111100100100001000000111", 
    31 => "00111011111110100100100000110000" );

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

entity infer_Weight0_f_0_0 is
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

architecture arch of infer_Weight0_f_0_0 is
    component infer_Weight0_f_0_0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_0_0_rom_U :  component infer_Weight0_f_0_0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


