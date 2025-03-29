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

entity infer_Weight0_c_1_2_rom is 
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


architecture rtl of infer_Weight0_c_1_2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111010110001010001001110111", 
    1 => "00111101001110101110011110010010", 
    2 => "00111101111000011011001010100010", 
    3 => "00111110011010011100100110010011", 
    4 => "10111101101110000010000110101111", 
    5 => "10111110100010011000011001110111", 
    6 => "10111110001011000011110000011001", 
    7 => "10111110000000110011010111010010", 
    8 => "10111101000110111011100011000011", 
    9 => "00111101011010101011001001011011", 
    10 => "10111110101001000001110000111111", 
    11 => "10111101110011000010101111011000", 
    12 => "10111110101101001011111011101000", 
    13 => "00111110101100100110101000000001", 
    14 => "10111100010100001111101001011001", 
    15 => "00111110110110111001010000010000", 
    16 => "10111111000000001110001001111110", 
    17 => "10111110100110000110001100010111", 
    18 => "00111110000001001000000001100011", 
    19 => "00111111101110100100000111011101", 
    20 => "00111101100010011110101110100111", 
    21 => "00111110110111100111010110011011", 
    22 => "00111101101011001001111100110000", 
    23 => "10111110110101101010110101110001", 
    24 => "10111101111010111001110100111101", 
    25 => "00111111101000011010111011001101", 
    26 => "10111110111110110001011110001011", 
    27 => "10111100100111110011101001011000", 
    28 => "10111110110110111011100000011011", 
    29 => "10111110010110001111111110111001", 
    30 => "10111101100100110100001011101110", 
    31 => "10111110011000101000111001010000" );

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

entity infer_Weight0_c_1_2 is
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

architecture arch of infer_Weight0_c_1_2 is
    component infer_Weight0_c_1_2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_1_2_rom_U :  component infer_Weight0_c_1_2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


