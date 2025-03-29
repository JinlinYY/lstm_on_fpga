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

entity infer_Weight0_c_0_5_rom is 
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


architecture rtl of infer_Weight0_c_0_5_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110000101111011011101000001", 
    1 => "10111110111010110111000010101100", 
    2 => "00111110100101101100110110101111", 
    3 => "00111110111110011011001101001010", 
    4 => "00111101100000110101110101101000", 
    5 => "10111110101110100011010101010000", 
    6 => "10111110001011000100111111000010", 
    7 => "10111111011100011111000010100010", 
    8 => "10111110001100011100000100001101", 
    9 => "10111110101011111110100110111000", 
    10 => "00111110010001110000001000011101", 
    11 => "00111111011110100001110100100001", 
    12 => "10111110101101010111111101010010", 
    13 => "10111011111101001111000011011000", 
    14 => "10111101011001010111110010010001", 
    15 => "00111111010011010010001011111011", 
    16 => "00111101011001001011111111010011", 
    17 => "00111101100110110011101011101111", 
    18 => "00111101011100001111001001111100", 
    19 => "00111110111010001111110100011010", 
    20 => "10111110101000101110011110010010", 
    21 => "10111110000010011000010110101101", 
    22 => "10111101001100001000011110000111", 
    23 => "00111110001111111000001001101111", 
    24 => "00111110001000111011100010100010", 
    25 => "10111110100000111001100100001011", 
    26 => "00111101110101000100000000101001", 
    27 => "10111110011000001100110011111111", 
    28 => "00111110100011001010011011001010", 
    29 => "00111110000101001000100110001111", 
    30 => "10111111000010111101010010101110", 
    31 => "10111110011100010101011110101100" );

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

entity infer_Weight0_c_0_5 is
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

architecture arch of infer_Weight0_c_0_5 is
    component infer_Weight0_c_0_5_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0_5_rom_U :  component infer_Weight0_c_0_5_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


