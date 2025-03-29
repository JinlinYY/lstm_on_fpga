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

entity infer_Weight0_o_1cbu_rom is 
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


architecture rtl of infer_Weight0_o_1cbu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110101111110100111000100011", 
    1 => "00111110010101110001001111110000", 
    2 => "00111110110001100011101111001101", 
    3 => "10111111001110110111111000111101", 
    4 => "10111110001001100011011011110100", 
    5 => "10111111001100101001100000110101", 
    6 => "00111111000001100111001111010110", 
    7 => "00111101000001000100101111110101", 
    8 => "00111110011010011000011010111010", 
    9 => "00111110111111001111101111011011", 
    10 => "00111111100011110011100011111000", 
    11 => "00111110010011000000000110100011", 
    12 => "00111101000101011011100010011001", 
    13 => "00111110100011001100000011011111", 
    14 => "10111110010011110011111001000111", 
    15 => "00111110110100001000101110010111", 
    16 => "10111111011000110000101100101000", 
    17 => "10111111001000100100101110011001", 
    18 => "10111111001001111000010001110111", 
    19 => "00111111011001000111001100010101", 
    20 => "00111101110000000010001100100001", 
    21 => "10111101100001100000011110000001", 
    22 => "00111111101000011010111000011101", 
    23 => "00111111000100011001000101111001", 
    24 => "00111100011000010000110011110110", 
    25 => "00111110110101011101000110100010", 
    26 => "00111111001010010100011100101000", 
    27 => "00111110101111100010111001001101", 
    28 => "00111110010100001000001101010110", 
    29 => "00111110001111001000011011001111", 
    30 => "10111110001000111101011110010000", 
    31 => "00111111000111000011000001001101" );

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

entity infer_Weight0_o_1cbu is
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

architecture arch of infer_Weight0_o_1cbu is
    component infer_Weight0_o_1cbu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1cbu_rom_U :  component infer_Weight0_o_1cbu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


