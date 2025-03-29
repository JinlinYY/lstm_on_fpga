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

entity infer_Weight0_o_1_6_rom is 
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


architecture rtl of infer_Weight0_o_1_6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110010011001110101010101111", 
    1 => "00111101110010100110010000111101", 
    2 => "10111100110000111001100110110011", 
    3 => "00111110011001000011010110101101", 
    4 => "10111111000010111000011110101101", 
    5 => "10111110011001100100110101111111", 
    6 => "00111111100110000001101101111110", 
    7 => "00111110100011001110110110110011", 
    8 => "00111101101010001100001101101110", 
    9 => "10111101110001010010110001011010", 
    10 => "00111111000100011110100111110010", 
    11 => "10111110101100000001010111100100", 
    12 => "00111110101000001010100111011111", 
    13 => "10111110100101100100100001000001", 
    14 => "00111110000111110001001100000110", 
    15 => "00111110100111011101001010101111", 
    16 => "10111110100010111110101000101101", 
    17 => "00111110101001010100011000001011", 
    18 => "00111110101111101110011101100000", 
    19 => "00111111010101000001101101000011", 
    20 => "00111110010111010000001110010111", 
    21 => "00111111010000010101010000100010", 
    22 => "00111111011110110110110000010110", 
    23 => "00111111010110100000111010010101", 
    24 => "00111111100011101011101101110111", 
    25 => "00111101000011011100101110011011", 
    26 => "10111110111000110101011010111000", 
    27 => "00111110110000011100010101100001", 
    28 => "10111111000111101001110010111011", 
    29 => "00111111001101101010010100101111", 
    30 => "10111110001111100101010011111000", 
    31 => "10111110111010110001101001101101" );

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

entity infer_Weight0_o_1_6 is
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

architecture arch of infer_Weight0_o_1_6 is
    component infer_Weight0_o_1_6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1_6_rom_U :  component infer_Weight0_o_1_6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


