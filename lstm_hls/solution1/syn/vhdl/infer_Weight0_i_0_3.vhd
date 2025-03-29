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

entity infer_Weight0_i_0_3_rom is 
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


architecture rtl of infer_Weight0_i_0_3_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110100010100001010100110011", 
    1 => "00111110110110111100000010100000", 
    2 => "00111110100010111100111010000101", 
    3 => "00111101111111010000111110100110", 
    4 => "10111100000010011010100010001011", 
    5 => "10111110000011011011001100111001", 
    6 => "10111111000110011110001111011010", 
    7 => "00111110111010011101110111100011", 
    8 => "10111101011011101001110011001011", 
    9 => "00111101010011100010011111100001", 
    10 => "00111101100010100110111010111001", 
    11 => "10111101111101101011100001110011", 
    12 => "10111110010101011011101010110010", 
    13 => "00111110001100011100110100011100", 
    14 => "00111101100100001000010011101000", 
    15 => "00111101101101100100101001011010", 
    16 => "10111110100110101110011000000000", 
    17 => "00111110100001010101011000101010", 
    18 => "10111101000010000111011101101000", 
    19 => "10111110001101001010101111100111", 
    20 => "00111101001001001110010010000110", 
    21 => "10111110101000011011011101011010", 
    22 => "10111101010001101110011011011010", 
    23 => "00111110101000011111001000110100", 
    24 => "00111110000111110001001110001100", 
    25 => "00111101000001100110101100011110", 
    26 => "00111110000010100101010011000101", 
    27 => "10111110011011010110101001011001", 
    28 => "10111101001111101100011110000110", 
    29 => "01000000001101011101101101101010", 
    30 => "00111110010011100000011111100110", 
    31 => "00111101100011101110010110101100" );

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

entity infer_Weight0_i_0_3 is
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

architecture arch of infer_Weight0_i_0_3 is
    component infer_Weight0_i_0_3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0_3_rom_U :  component infer_Weight0_i_0_3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


