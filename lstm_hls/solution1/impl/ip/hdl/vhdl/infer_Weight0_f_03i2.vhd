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

entity infer_Weight0_f_03i2_rom is 
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


architecture rtl of infer_Weight0_f_03i2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111010110000010010001110000", 
    1 => "00111111001110000111110000100000", 
    2 => "10111111011100101000000111011100", 
    3 => "00111110001100011100110100011100", 
    4 => "10111110000111001110111000011000", 
    5 => "00111111100100010101101111101110", 
    6 => "00111111010001100111011101001111", 
    7 => "00111110100000100001111111110011", 
    8 => "10111101001010010001110110011011", 
    9 => "10111111011100001011110000000110", 
    10 => "00111111000100111110001111010010", 
    11 => "10111111001000000101000101010101", 
    12 => "00111110000111101110110001111101", 
    13 => "00111111010001101101100000001010", 
    14 => "00111111010000001101001010100010", 
    15 => "10111101110011100111011110010010", 
    16 => "10111100111000010111110000011100", 
    17 => "10111100110010111010000011101000", 
    18 => "10111101001000110011011110101000", 
    19 => "10111101011000001100000001101010", 
    20 => "10111110000011100101001101100101", 
    21 => "00111110101000101101100001011110", 
    22 => "00111111101101011100011011111100", 
    23 => "00111111100100001101011011010100", 
    24 => "10111110100111111111011010010000", 
    25 => "00111100011110000111001001101101", 
    26 => "00111110111010110010111100000001", 
    27 => "00111110101110010001011110110101", 
    28 => "10111101000101101100101001000111", 
    29 => "00111100100101000010111101100010", 
    30 => "10111110001100110101110000011000", 
    31 => "00111110111100100101100110011111" );

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

entity infer_Weight0_f_03i2 is
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

architecture arch of infer_Weight0_f_03i2 is
    component infer_Weight0_f_03i2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_03i2_rom_U :  component infer_Weight0_f_03i2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


