-- ==============================================================
-- File generated on Fri Mar 28 13:00:22 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_c_1_3_rom is 
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


architecture rtl of infer_Weight0_c_1_3_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111100010000110111001110110", 
    1 => "00111110110111000010110010000000", 
    2 => "10111110110000000101011010000010", 
    3 => "10111111011111101101001101110100", 
    4 => "00111110100110101110101010010110", 
    5 => "00111111100000010000010100011000", 
    6 => "00111111100001101001001010110100", 
    7 => "00111110101001001000100111010010", 
    8 => "00111101111001000101111111100001", 
    9 => "10111111000100111111001001101111", 
    10 => "00111111010100001111111110000110", 
    11 => "00111101011001100010110010111010", 
    12 => "00111111110010010101100011101010", 
    13 => "10111110110000001011110110001000", 
    14 => "00111101110011101111011011111001", 
    15 => "00111110001000101010100011001010", 
    16 => "00111111011111000111001110011011", 
    17 => "00111111100000100101000011010111", 
    18 => "10111101110010111100111110010010", 
    19 => "10111111011110001001001001101000", 
    20 => "10111100100000110000111000111101", 
    21 => "10111111001100101101011001000101", 
    22 => "10111110001000111110100100100001", 
    23 => "00111111100011000111111110110010", 
    24 => "10111110000001001000000001100011", 
    25 => "01000000000001001100001000011110", 
    26 => "10111111110110001001101001100111", 
    27 => "00111111001110101001110101000001", 
    28 => "10111101000010001101000010001001", 
    29 => "10111110011011100101101110000101", 
    30 => "10111111001110001010110010001110", 
    31 => "00111110110000110110100000000110" );

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

entity infer_Weight0_c_1_3 is
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

architecture arch of infer_Weight0_c_1_3 is
    component infer_Weight0_c_1_3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_1_3_rom_U :  component infer_Weight0_c_1_3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


