-- ==============================================================
-- File generated on Fri Mar 28 13:00:23 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_o_0b4t_rom is 
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


architecture rtl of infer_Weight0_o_0b4t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110001000000000011100010100", 
    1 => "10111110110110111000010000010010", 
    2 => "10111111010001000000100100011100", 
    3 => "00111111000101100110100000111100", 
    4 => "10111111000100001101111110111101", 
    5 => "00111110011100101110101111100110", 
    6 => "10111110111101110011101111101011", 
    7 => "00111110001101010010110101100110", 
    8 => "10111111001111101111000110011001", 
    9 => "00111101111100001001001000000100", 
    10 => "00111111000000100011011101001000", 
    11 => "00111111100101000011000010101001", 
    12 => "10111101000010001000001011110001", 
    13 => "10111110000010011110001000110111", 
    14 => "10111011111101101010010100001101", 
    15 => "10111110000100111111010010101010", 
    16 => "10111110101110110110101001100010", 
    17 => "00111110101110100010001100011000", 
    18 => "00111101111010010111110100000111", 
    19 => "00111110100000010001000111001111", 
    20 => "10111110000011101110100010001110", 
    21 => "00111110110100111000100000100010", 
    22 => "00111110110001001101000111101001", 
    23 => "00111011110011100001110001011000", 
    24 => "00111100010101101001110100110000", 
    25 => "00111110100000011001000111011110", 
    26 => "00111111000010110111100100110001", 
    27 => "00111111001010110011010111000010", 
    28 => "10111111000100110000010010011011", 
    29 => "10111110110010110110100100010010", 
    30 => "00111111000010010111001101100100", 
    31 => "10111110111111010000000100011001" );

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

entity infer_Weight0_o_0b4t is
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

architecture arch of infer_Weight0_o_0b4t is
    component infer_Weight0_o_0b4t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0b4t_rom_U :  component infer_Weight0_o_0b4t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


