-- ==============================================================
-- File generated on Fri Mar 28 13:00:21 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_c_0_0_rom is 
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


architecture rtl of infer_Weight0_c_0_0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100110110111110010111011010", 
    1 => "00111011011101001001010010010010", 
    2 => "00111101100100111010000101001101", 
    3 => "10111100001111001101011110001100", 
    4 => "00111101000000110100010011000011", 
    5 => "00111101101010111011101000010011", 
    6 => "10111100101101111010111001011000", 
    7 => "00111101100010111000010100011111", 
    8 => "00111101000010101101001001010110", 
    9 => "00111101001101101100101111011010", 
    10 => "00111101100111001011110111011100", 
    11 => "10111101110100011101000011001000", 
    12 => "00111100110000100111101001100011", 
    13 => "00111101001110011101000110110011", 
    14 => "10111100100000010100110101110010", 
    15 => "00111101111101010110000010000101", 
    16 => "01000000000010101101000001010011", 
    17 => "00111100101110001001011100100000", 
    18 => "10111101011100011011010110000101", 
    19 => "10111100011101001100011011100111", 
    20 => "10111101010101101111001000011111", 
    21 => "10111101001101001000011111111101", 
    22 => "10111101000001000000110100001011", 
    23 => "00111101010011111110000001001000", 
    24 => "00111101101001011001101001110100", 
    25 => "10111101000001111000111010011111", 
    26 => "00111101100010001101000100001111", 
    27 => "00111011110101100111011101110000", 
    28 => "00111100100111110010001101000110", 
    29 => "10111101110011111111011101011001", 
    30 => "00111110000101001010010110011100", 
    31 => "10111101001001100000010011100010" );

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

entity infer_Weight0_c_0_0 is
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

architecture arch of infer_Weight0_c_0_0 is
    component infer_Weight0_c_0_0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0_0_rom_U :  component infer_Weight0_c_0_0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


