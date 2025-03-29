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

entity infer_Weight0_f_1_2_rom is 
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


architecture rtl of infer_Weight0_f_1_2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111000001101011001111111111", 
    1 => "00111110000001100011100111010110", 
    2 => "00111100100001101110110000011000", 
    3 => "10111111000000000000001011110011", 
    4 => "00111111101001011110000111011010", 
    5 => "00111110101010110111001011000101", 
    6 => "00111110101000001100000111111101", 
    7 => "00111101000110111100000000011010", 
    8 => "00111101001111101011111100100011", 
    9 => "10111101100000000011011110010011", 
    10 => "10111110001101101110000001001100", 
    11 => "10111110100100111111111111101111", 
    12 => "00111110010000110100010000111101", 
    13 => "10111110100000010101110111010101", 
    14 => "00111110100110001100100010001010", 
    15 => "00111110011100100000000111001101", 
    16 => "10111110110001011010011110001111", 
    17 => "00111110100100000000011101111001", 
    18 => "00111110001110101100101110000110", 
    19 => "00111110100111111001000100111111", 
    20 => "00111110000000111101100100100011", 
    21 => "10111110000110001111100011101000", 
    22 => "10111101000110001011011100011100", 
    23 => "10111110100001000010110000011011", 
    24 => "00111110101011000011111100011100", 
    25 => "10111110011101100111001011111100", 
    26 => "00111111000001111100001101010000", 
    27 => "00111101101101101010000101100010", 
    28 => "10111101110100001001011101000010", 
    29 => "10111101010000010010001110000001", 
    30 => "10111110011101000100000100110101", 
    31 => "10111110011100100001100000010110" );

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

entity infer_Weight0_f_1_2 is
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

architecture arch of infer_Weight0_f_1_2 is
    component infer_Weight0_f_1_2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1_2_rom_U :  component infer_Weight0_f_1_2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


