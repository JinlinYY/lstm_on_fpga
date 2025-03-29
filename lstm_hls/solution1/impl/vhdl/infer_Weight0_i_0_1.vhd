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

entity infer_Weight0_i_0_1_rom is 
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


architecture rtl of infer_Weight0_i_0_1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110101100100110100011010011", 
    1 => "10111110110010111011111100101111", 
    2 => "00111110101000011001011000110001", 
    3 => "00111110011100110000000100100001", 
    4 => "10111111101000001110011011111011", 
    5 => "10111110000111100101010000101110", 
    6 => "10111111100100011011011001000110", 
    7 => "10111111100010110110001000100000", 
    8 => "00111101111011111110011010010010", 
    9 => "00111110001000010010000010011111", 
    10 => "00111111010011110110110011001110", 
    11 => "00111101100100111101111010100100", 
    12 => "10111101000010001011010101000110", 
    13 => "10111011110111011111000000001011", 
    14 => "00111110111000110000011011100110", 
    15 => "00111110111111000100000111111111", 
    16 => "00111110100111100000100110111011", 
    17 => "00111110010101000011110000111010", 
    18 => "10111111000000011111101110010100", 
    19 => "00111111100010101101000000000011", 
    20 => "10111111011010010001110010110000", 
    21 => "00111111001011011001010011110010", 
    22 => "01000000100110001100100100101100", 
    23 => "00111101101000111101101100111100", 
    24 => "00111101011110001010011111100111", 
    25 => "00111110100110011110110000101101", 
    26 => "10111110111000010000001011011110", 
    27 => "00111101111100011010001010100101", 
    28 => "10111111000101010010100001011011", 
    29 => "00111011101100011111011010001000", 
    30 => "10111110000110110110111100011010", 
    31 => "00111110010100100110111101100001" );

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

entity infer_Weight0_i_0_1 is
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

architecture arch of infer_Weight0_i_0_1 is
    component infer_Weight0_i_0_1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0_1_rom_U :  component infer_Weight0_i_0_1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


