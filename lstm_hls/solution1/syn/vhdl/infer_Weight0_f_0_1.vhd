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

entity infer_Weight0_f_0_1_rom is 
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


architecture rtl of infer_Weight0_f_0_1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110101000100010011100101000", 
    1 => "10111100111011010011100101010100", 
    2 => "00111110100110001110110000110001", 
    3 => "10111110100011111101011000110000", 
    4 => "10111111001111011011101110011101", 
    5 => "10111110101000111101010100010011", 
    6 => "10111110110011110100111001100110", 
    7 => "10111110110110110111111000001011", 
    8 => "10111110011000100101110110001101", 
    9 => "00111111010000011101001001111100", 
    10 => "00111100100000010100111110001011", 
    11 => "00111111100100101111001011111010", 
    12 => "00111111010000001101001010010001", 
    13 => "00111111000100111110110000100101", 
    14 => "10111100000101010110110000001101", 
    15 => "10111101100011110000011000101101", 
    16 => "00111111011100100101100000001100", 
    17 => "10111110000101010000111000110100", 
    18 => "10111110111001110111110100001111", 
    19 => "00111110101000000011111110010010", 
    20 => "10111110000101111111010000010011", 
    21 => "10111110110100011101010101011110", 
    22 => "00111111011101011111011000010010", 
    23 => "10111111100000011101110001111011", 
    24 => "00111110110111001110000000110011", 
    25 => "10111110110011100011101100000100", 
    26 => "00111100101001101110000100010101", 
    27 => "00111111010000001010110000011001", 
    28 => "00111100100110101100111111111010", 
    29 => "10111110100111000110010010111011", 
    30 => "10111111110010011111001011011100", 
    31 => "10111110111111010101100000000000" );

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

entity infer_Weight0_f_0_1 is
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

architecture arch of infer_Weight0_f_0_1 is
    component infer_Weight0_f_0_1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_0_1_rom_U :  component infer_Weight0_f_0_1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


