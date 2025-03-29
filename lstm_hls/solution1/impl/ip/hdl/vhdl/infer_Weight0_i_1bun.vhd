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

entity infer_Weight0_i_1bun_rom is 
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


architecture rtl of infer_Weight0_i_1bun_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110110111100010111100111000", 
    1 => "10111111000001100100001001011011", 
    2 => "10111110011111000101100111111011", 
    3 => "10111111101011010110111011110000", 
    4 => "00111110111100010110100101011110", 
    5 => "10111111000101001110100000010000", 
    6 => "10111110000100100000111101101111", 
    7 => "10111111010111001111001010011101", 
    8 => "00111110111010100110110111110000", 
    9 => "00111111010100110111100010001001", 
    10 => "00111101100011010110011001101011", 
    11 => "00111110110001010100001100101000", 
    12 => "10111110111001111101011010010101", 
    13 => "00111110110100001111101101000100", 
    14 => "00111101101111101010101100110110", 
    15 => "10111110001101011001100101100111", 
    16 => "00111110001111000100101100001010", 
    17 => "10111110111000101100011001000111", 
    18 => "10111110100011000101110101000010", 
    19 => "00111111000111110011000001100010", 
    20 => "00111110111001100010011101111100", 
    21 => "00111100101001010010101011000111", 
    22 => "00111010101011010010010101101000", 
    23 => "00111110100011111110001110110000", 
    24 => "10111110001011011111111010111001", 
    25 => "00111110001111111100110001011100", 
    26 => "00111111000011110001000110000100", 
    27 => "10111110001111100100010111000011", 
    28 => "00111111011001001000101111101011", 
    29 => "00111110000001111100011011111100", 
    30 => "10111110100110111100111101110000", 
    31 => "00111110111100001000110101101101" );

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

entity infer_Weight0_i_1bun is
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

architecture arch of infer_Weight0_i_1bun is
    component infer_Weight0_i_1bun_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1bun_rom_U :  component infer_Weight0_i_1bun_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


