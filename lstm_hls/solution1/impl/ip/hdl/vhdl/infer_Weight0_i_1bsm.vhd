-- ==============================================================
-- File generated on Fri Mar 28 13:00:21 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_i_1bsm_rom is 
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


architecture rtl of infer_Weight0_i_1bsm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100000001001111000010010101", 
    1 => "10111110000100110000010010001010", 
    2 => "10111111001111110110000010011110", 
    3 => "10111110010011111111001000011011", 
    4 => "10111110010100111110000000110111", 
    5 => "00111110000111100111100101101000", 
    6 => "00111110010110101010001001011110", 
    7 => "10111110111010110111000010001011", 
    8 => "10111110101010010110011010111110", 
    9 => "10111110100010010110111000110111", 
    10 => "10111111000011110110000011010000", 
    11 => "00111110101100101001001101001011", 
    12 => "10111110110110100111010110101011", 
    13 => "00111111001101111000111110101100", 
    14 => "10111101011000111100110110011010", 
    15 => "10111111011010010011011000011110", 
    16 => "00111101100000111011101010111010", 
    17 => "10111100101001011101001010001101", 
    18 => "00111101100110011101000100101101", 
    19 => "00111110001000011001110010011101", 
    20 => "10111101111110010000010000101110", 
    21 => "00111110101011001110001011010010", 
    22 => "10111110001111000100111000101111", 
    23 => "00111111001010010010000111011110", 
    24 => "10111101001100011011101011000011", 
    25 => "00111111010110011110101001101000", 
    26 => "10111111001010011001001001100100", 
    27 => "10111110100010011100110001110101", 
    28 => "10111110111100100101000101011101", 
    29 => "10111110101001101101111001010101", 
    30 => "10111110111010011010101100001000", 
    31 => "00111110011100001010111000010000" );

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

entity infer_Weight0_i_1bsm is
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

architecture arch of infer_Weight0_i_1bsm is
    component infer_Weight0_i_1bsm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1bsm_rom_U :  component infer_Weight0_i_1bsm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


