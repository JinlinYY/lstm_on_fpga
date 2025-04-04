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

entity infer_Weight0_i_1bzo_rom is 
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


architecture rtl of infer_Weight0_i_1bzo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111000100000000000010111001", 
    1 => "10111101110100100011000111000110", 
    2 => "00111001100110010001011110010100", 
    3 => "10111111001101101010110111010110", 
    4 => "00111101111100101000100101010101", 
    5 => "10111111100011000010001011111111", 
    6 => "00111111010101010000110011110110", 
    7 => "10111100110011001011000110001001", 
    8 => "00111111000111000101100100110010", 
    9 => "00111110101011011111001100110000", 
    10 => "10111110011000101101010010010001", 
    11 => "00111111000000100110010001011110", 
    12 => "10111110100000011111101101100001", 
    13 => "00111110100110011001000001101101", 
    14 => "00111110010001000000110100001011", 
    15 => "00111111001001111101110110011000", 
    16 => "00111111001000000010000011010101", 
    17 => "00111100111010011001011000110001", 
    18 => "10111111000100001011111010000011", 
    19 => "10111110100101010110101111101100", 
    20 => "00111111100010001110001111011110", 
    21 => "10111110111011000001101010001011", 
    22 => "10111111000101010000101010111011", 
    23 => "10111110110100101100101011011110", 
    24 => "00111101101101111100001001000100", 
    25 => "00111110100011011101000101011111", 
    26 => "10111101100101001010101010010111", 
    27 => "10111101100111000100101100001010", 
    28 => "00111111011111001010000100010110", 
    29 => "00111111011111011001001010111000", 
    30 => "10111110010000001111001010111111", 
    31 => "00111111000111111001101010011110" );

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

entity infer_Weight0_i_1bzo is
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

architecture arch of infer_Weight0_i_1bzo is
    component infer_Weight0_i_1bzo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1bzo_rom_U :  component infer_Weight0_i_1bzo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


