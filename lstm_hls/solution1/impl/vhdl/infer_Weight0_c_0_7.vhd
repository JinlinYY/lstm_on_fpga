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

entity infer_Weight0_c_0_7_rom is 
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


architecture rtl of infer_Weight0_c_0_7_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101101111000001110011100111", 
    1 => "00111101110101011001000011000001", 
    2 => "10111110101000010010110000101000", 
    3 => "10111110101110011111101110100100", 
    4 => "10111100101110011111100110001011", 
    5 => "00111110110000101000000011010000", 
    6 => "00111110000000010010011101110000", 
    7 => "00111110110011000001111001111001", 
    8 => "00111110100010001101100010101001", 
    9 => "00111111000011110111110011001100", 
    10 => "00111110010011100011110010010111", 
    11 => "10111110100010110001100111100111", 
    12 => "00111110111111110001100110010011", 
    13 => "00111101011110100110101111010111", 
    14 => "10111100010111110001100111010110", 
    15 => "10111111011111110010110111000011", 
    16 => "10111101101100000011010110111101", 
    17 => "00111101011101100101111111011001", 
    18 => "10111110111011011011100001111000", 
    19 => "00111101011101011111001111011000", 
    20 => "10111110110010101111101001110010", 
    21 => "00111101101001101010010111010111", 
    22 => "10111101011011000110011010010000", 
    23 => "10111111000000100000010001111101", 
    24 => "00111101000000000011111011101010", 
    25 => "10111101110100000000100110110011", 
    26 => "00111101101100101101001010111011", 
    27 => "00111101010000010111010000111111", 
    28 => "10111110010001001101000111101001", 
    29 => "00111110001000110111011010010010", 
    30 => "00111110000101111011001001000110", 
    31 => "10111110000101000001100000001101" );

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

entity infer_Weight0_c_0_7 is
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

architecture arch of infer_Weight0_c_0_7 is
    component infer_Weight0_c_0_7_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0_7_rom_U :  component infer_Weight0_c_0_7_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


