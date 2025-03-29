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

entity infer_Weight0_i_0_0_rom is 
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


architecture rtl of infer_Weight0_i_0_0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111100100100000111100101011111", 
    1 => "00111110100010000101010101110101", 
    2 => "00111110000011010011000111111101", 
    3 => "10111110010110000001010011010111", 
    4 => "10111101100100101100111110010110", 
    5 => "10111101100011010000000111000001", 
    6 => "00111110011000010111010100001000", 
    7 => "00111110111001000010110101101011", 
    8 => "10111101001100000000000101010000", 
    9 => "00111100100000010011011001100001", 
    10 => "00111101001100001010000110111110", 
    11 => "00111110001010111011011100110001", 
    12 => "10111110000110100001001011111001", 
    13 => "00111101111010010100001111100001", 
    14 => "10111101110010100010000000010100", 
    15 => "10111101111000110010000110100011", 
    16 => "10111110010101101110000011010010", 
    17 => "00111111000110111001011000111010", 
    18 => "10111100101001000011011110000010", 
    19 => "00111101100100111000011100010110", 
    20 => "10111101111110010111101110110111", 
    21 => "10111110011000010111001101110101", 
    22 => "10111101011001101111011000001110", 
    23 => "10111101100011001001010100111010", 
    24 => "10111110100100100111111011011000", 
    25 => "00111100100111011110001001101001", 
    26 => "10111110010000000100110010001100", 
    27 => "00111101110100000110100010011000", 
    28 => "00111100011101010101110111100110", 
    29 => "10111110100011101011100110100001", 
    30 => "10111110110001110101100100100101", 
    31 => "10111101010010001100010100000000" );

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

entity infer_Weight0_i_0_0 is
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

architecture arch of infer_Weight0_i_0_0 is
    component infer_Weight0_i_0_0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0_0_rom_U :  component infer_Weight0_i_0_0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


