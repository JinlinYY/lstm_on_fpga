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

entity infer_Weight0_o_1_9_rom is 
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


architecture rtl of infer_Weight0_o_1_9_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110101111100001000111011100", 
    1 => "10111101100101011010001000001110", 
    2 => "00111110111110111100110000101001", 
    3 => "00111111100011101011110001011010", 
    4 => "10111110100000001111010011011000", 
    5 => "10111110101000101010010001110110", 
    6 => "00111111000111000101100010111100", 
    7 => "00111110010000101101100101001001", 
    8 => "10111110001010010101001100010101", 
    9 => "10111101000010010010100110101010", 
    10 => "00111110100110001001000111100010", 
    11 => "00111111000000100000110101000101", 
    12 => "10111111110001001001111000111101", 
    13 => "10111100110110011000011111000110", 
    14 => "00111111000000110101101101100000", 
    15 => "00111110001010110000101101111100", 
    16 => "00111110110001110101001101100001", 
    17 => "00111111000111010011111111100010", 
    18 => "00111111010100101000011111000010", 
    19 => "00111111001101001001010100000111", 
    20 => "00111111001001000111111111011100", 
    21 => "00111110100101000001000100011011", 
    22 => "10111111000000010001000101011010", 
    23 => "00111111001110011000101110110101", 
    24 => "10111111000111100100101000010111", 
    25 => "10111110001110110101100001001011", 
    26 => "10111110011100111111000101000001", 
    27 => "00111110101000010111010011100110", 
    28 => "10111110111011111010110000111111", 
    29 => "00111110111001010000111001010110", 
    30 => "00111111010000110000011001110000", 
    31 => "00111110110000010101001100010101" );

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

entity infer_Weight0_o_1_9 is
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

architecture arch of infer_Weight0_o_1_9 is
    component infer_Weight0_o_1_9_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1_9_rom_U :  component infer_Weight0_o_1_9_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


