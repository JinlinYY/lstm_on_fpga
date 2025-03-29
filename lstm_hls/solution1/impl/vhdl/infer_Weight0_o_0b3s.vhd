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

entity infer_Weight0_o_0b3s_rom is 
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


architecture rtl of infer_Weight0_o_0b3s_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111100000100110100110010100", 
    1 => "00111110100000111100110111011101", 
    2 => "00111110110111111010101100010001", 
    3 => "00111111001011011111100101101010", 
    4 => "10111101110001010111010100111010", 
    5 => "00111110101110011111100101001000", 
    6 => "00111110001011010011111101011011", 
    7 => "00111101111011010000110011000011", 
    8 => "00111101100110010011000111001010", 
    9 => "10111110100011111110100010001010", 
    10 => "00111110101010001011111010110110", 
    11 => "10111111011010001101101110101101", 
    12 => "00111111010111010001000100111000", 
    13 => "10111110000001100111100100000011", 
    14 => "00111110001011100111111111110110", 
    15 => "00111101110000000011101000110010", 
    16 => "10111101101001001100101101011100", 
    17 => "00111110110011111010010111010011", 
    18 => "10111110010110111011011110110111", 
    19 => "10111111001101100110011101010001", 
    20 => "10111110001011011100111100000011", 
    21 => "10111111000010001100010100000000", 
    22 => "10111111000101111010011100100010", 
    23 => "00111110010011010111000111110011", 
    24 => "00111110111000000001110011010110", 
    25 => "10111111010011000011111101001111", 
    26 => "00111111000010111101001111000011", 
    27 => "00111110111011011100111100000011", 
    28 => "00111110111001101101110011000010", 
    29 => "00111110111100010101011100100110", 
    30 => "10111111001010110011100000111111", 
    31 => "10111101110001110101100100100101" );

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

entity infer_Weight0_o_0b3s is
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

architecture arch of infer_Weight0_o_0b3s is
    component infer_Weight0_o_0b3s_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0b3s_rom_U :  component infer_Weight0_o_0b3s_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


