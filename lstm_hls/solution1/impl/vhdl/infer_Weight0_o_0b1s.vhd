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

entity infer_Weight0_o_0b1s_rom is 
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


architecture rtl of infer_Weight0_o_0b1s_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111000000011011101010100001", 
    1 => "00111101110111010110100111010011", 
    2 => "00111111100010000111100100110101", 
    3 => "10111110110001010011000010001100", 
    4 => "00111111100110000110011000100011", 
    5 => "00111110101110101111011101101110", 
    6 => "00111111010011011000000110101110", 
    7 => "10111110011011111111101101001000", 
    8 => "10111111001010110001100101100001", 
    9 => "10111110101011111100111100011100", 
    10 => "00111110010100100011100011011010", 
    11 => "10111111000110001101011100000110", 
    12 => "00111111011111100011000100001110", 
    13 => "10111111000100100001101000111111", 
    14 => "00111101100000010101010111010110", 
    15 => "10111101111010110111001111010010", 
    16 => "10111110100011000001110110001111", 
    17 => "00111110000001101110010011000001", 
    18 => "00111110000000000011101000110010", 
    19 => "00111111000010110001001111110000", 
    20 => "10111110101110100001101100011001", 
    21 => "00111110101000101000111000101110", 
    22 => "00111111011010101110110000000111", 
    23 => "10111111110001011011100111011000", 
    24 => "00111101101011011100111111001100", 
    25 => "10111110000001111011000001110000", 
    26 => "10111110101110110111001000011101", 
    27 => "00111110110101010000011001010111", 
    28 => "00111101111010011001110001111100", 
    29 => "00111101110111101001001110011111", 
    30 => "10111111100100001110111001110100", 
    31 => "00111101001001110011001111101100" );

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

entity infer_Weight0_o_0b1s is
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

architecture arch of infer_Weight0_o_0b1s is
    component infer_Weight0_o_0b1s_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0b1s_rom_U :  component infer_Weight0_o_0b1s_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


