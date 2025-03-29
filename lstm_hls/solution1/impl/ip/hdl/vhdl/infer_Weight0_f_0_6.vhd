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

entity infer_Weight0_f_0_6_rom is 
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


architecture rtl of infer_Weight0_f_0_6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101111100011000101000000001", 
    1 => "10111101000111011101000010010110", 
    2 => "10111110111110010000101010111011", 
    3 => "10111111011110011111101001000100", 
    4 => "10111110100101011000000011100101", 
    5 => "10111111100001010101111101111000", 
    6 => "00111110010011110011100000111111", 
    7 => "00111101111000001011010101100111", 
    8 => "00111110011100000000100001100011", 
    9 => "10111111010111001110101111001100", 
    10 => "10111111100101001010101111100111", 
    11 => "10111110000010010100100011011100", 
    12 => "10111110000010100110010100000110", 
    13 => "10111110000111101010110000000000", 
    14 => "10111110010111011001011110110011", 
    15 => "00111111011101001010101100011101", 
    16 => "10111110010111111001100111000100", 
    17 => "00111111001110101110111101110000", 
    18 => "10111101001001111011000111000000", 
    19 => "00111110110010101100001010011100", 
    20 => "10111110100001110000001011100110", 
    21 => "00111110010110011010101001100001", 
    22 => "00111111000001101001001001110001", 
    23 => "00111111001001001101110100001110", 
    24 => "10111111100100101010000110000011", 
    25 => "10111111011111011100001110101101", 
    26 => "10111101010111010100001100000111", 
    27 => "00111111001110000111110110100010", 
    28 => "00111011111001111111011011110101", 
    29 => "10111111000011101001100010111011", 
    30 => "10111111000001001110010111110111", 
    31 => "10111110101001100011010010011000" );

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

entity infer_Weight0_f_0_6 is
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

architecture arch of infer_Weight0_f_0_6 is
    component infer_Weight0_f_0_6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_0_6_rom_U :  component infer_Weight0_f_0_6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


