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

entity infer_Weight0_f_1bbk_rom is 
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


architecture rtl of infer_Weight0_f_1bbk_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111000010010111000100111011", 
    1 => "00111111010000000011110010110000", 
    2 => "00111111100100111011111010001000", 
    3 => "00111111010111010001001011001011", 
    4 => "00111101110001001000011110111010", 
    5 => "10111110010001001101011010100001", 
    6 => "00111111000010101110000011010010", 
    7 => "00111111110100001010001101010001", 
    8 => "00111110111000101110011010000110", 
    9 => "00111111011010011100110111000100", 
    10 => "00111101101000101100011111111100", 
    11 => "10111110100111001101010101110011", 
    12 => "00111110000000001110001000111011", 
    13 => "00111110010000111111001101011010", 
    14 => "00111111001010100000001001000011", 
    15 => "00111111001100000111010110100011", 
    16 => "00111110001101001111011011100000", 
    17 => "00111110010011000010001101110100", 
    18 => "00111110111110110011001101010101", 
    19 => "00111110101010001101001111110010", 
    20 => "00111111010011011110011100110010", 
    21 => "00111110000111100101111001101000", 
    22 => "00111111100110010001101100011110", 
    23 => "00111111100100000011011100001101", 
    24 => "00111101000100010001101011011010", 
    25 => "00111111110010100000111110001000", 
    26 => "00111110100100010111100010110011", 
    27 => "00111101110100111110001011010110", 
    28 => "00111110000110100100000110100010", 
    29 => "00111100101111100000001101110001", 
    30 => "10111110000101010000101111011000", 
    31 => "00111110011101111101110100000001" );

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

entity infer_Weight0_f_1bbk is
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

architecture arch of infer_Weight0_f_1bbk is
    component infer_Weight0_f_1bbk_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1bbk_rom_U :  component infer_Weight0_f_1bbk_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


