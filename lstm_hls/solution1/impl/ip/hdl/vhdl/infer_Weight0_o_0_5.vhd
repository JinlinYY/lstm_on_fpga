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

entity infer_Weight0_o_0_5_rom is 
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


architecture rtl of infer_Weight0_o_0_5_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111010100011110110010000001", 
    1 => "00111111001000110011000111010011", 
    2 => "00111111001001000100110100110100", 
    3 => "10111110110000001110101110101011", 
    4 => "10111110001111000101101100001000", 
    5 => "10111111001010100011110110110100", 
    6 => "10111111010001000111010001010100", 
    7 => "00111110100101001111110010100100", 
    8 => "00111101101000100011111000011000", 
    9 => "00111100000001110000100101110100", 
    10 => "00111110110011010111110110011110", 
    11 => "10111110100010110111000010001011", 
    12 => "10111110100000011110110010010010", 
    13 => "00111101101000111100010010110001", 
    14 => "10111110001100101011001001111101", 
    15 => "00111111001110110010111000000110", 
    16 => "00111110111110110111011011110111", 
    17 => "00111110010011011111010110001100", 
    18 => "00111110100100010101101011110011", 
    19 => "00111101111101001010001010111010", 
    20 => "00111101101001111001001011010001", 
    21 => "10111110110111101010000101000000", 
    22 => "10111110011001111010111101100100", 
    23 => "00111111001100001111001011010000", 
    24 => "00111111001111011001011101110000", 
    25 => "10111110110101000011110101101000", 
    26 => "10111111000010010110000000001111", 
    27 => "00111110101010101111011111010011", 
    28 => "00111110011010011100010001010100", 
    29 => "00111110101010001011000011110010", 
    30 => "10111110001000010000110011110110", 
    31 => "10111111011010010010111111000010" );

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

entity infer_Weight0_o_0_5 is
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

architecture arch of infer_Weight0_o_0_5 is
    component infer_Weight0_o_0_5_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0_5_rom_U :  component infer_Weight0_o_0_5_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


