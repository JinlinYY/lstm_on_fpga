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

entity infer_Weight0_i_0bpm_rom is 
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


architecture rtl of infer_Weight0_i_0bpm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101010100011111100100100111", 
    1 => "10111110000101110100001011011101", 
    2 => "10111110100010111100111011001000", 
    3 => "10111110000000000001111000100110", 
    4 => "10111110101100001111011111011011", 
    5 => "00111101101100101010111110011011", 
    6 => "10111111000010110000011100000111", 
    7 => "10111111000001110001111010011111", 
    8 => "00111110000100110101011011011010", 
    9 => "00111110101010110011100110011111", 
    10 => "10111110100001110111011101101100", 
    11 => "10111111011100110001111000001000", 
    12 => "10111111000101000010111111010111", 
    13 => "00111111010100110111101101111100", 
    14 => "10111101110100011000110010100000", 
    15 => "10111101111000100111111110100010", 
    16 => "10111110100101101010101110011011", 
    17 => "10111110100000111000111111011110", 
    18 => "00111110100100101010000011001011", 
    19 => "10111110100100111100001011111100", 
    20 => "00111110101110101111111011100111", 
    21 => "00111111001000100001011011000110", 
    22 => "00111101010010110100010010100010", 
    23 => "00111110011001111111000101110011", 
    24 => "10111110001001001110001101111010", 
    25 => "10111110000101000111101011100001", 
    26 => "00111110001110011111000110101110", 
    27 => "10111110000010000010101001010110", 
    28 => "00111110101100110000111100101000", 
    29 => "00111111100010111011100001101111", 
    30 => "10111110101101000111010011011010", 
    31 => "00111111001011100001000100010010" );

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

entity infer_Weight0_i_0bpm is
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

architecture arch of infer_Weight0_i_0bpm is
    component infer_Weight0_i_0bpm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0bpm_rom_U :  component infer_Weight0_i_0bpm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


