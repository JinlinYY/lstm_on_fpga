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

entity infer_Weight0_i_1_6_rom is 
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


architecture rtl of infer_Weight0_i_1_6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101111101011000010110111110", 
    1 => "00111111101010110000001101001011", 
    2 => "10111111010000001000110100001001", 
    3 => "10111101110010110000000100000000", 
    4 => "00111110111000001111110111000001", 
    5 => "10111101101100010111110101101011", 
    6 => "00111111001100010100100010111011", 
    7 => "10111101111101100010011100111001", 
    8 => "10111110111000011100111111011101", 
    9 => "10111110000010011100011110111101", 
    10 => "10111110101000010110010101101111", 
    11 => "10111110100101101010111001011100", 
    12 => "10111110100011000101101110101111", 
    13 => "00111110110101111001100100011100", 
    14 => "00111110001111011110000010010011", 
    15 => "10111110110101100001011000001110", 
    16 => "00111101110000101100000110110001", 
    17 => "00111110010101110001110001010100", 
    18 => "10111111100000101011010010110111", 
    19 => "00111110110001101110110000011000", 
    20 => "10111110000010010001010000101011", 
    21 => "10111111010111110001100111000110", 
    22 => "10111110010100001111000110110010", 
    23 => "00111110100100111010010010110101", 
    24 => "00111110000111100111110011010000", 
    25 => "10111110110001110011001111001010", 
    26 => "00111110110111011000000101001001", 
    27 => "00111110001100111001001111101110", 
    28 => "10111101110100110101000000001001", 
    29 => "10111110111100010000010001001111", 
    30 => "00111111000000000000000011011010", 
    31 => "00111110011100011011000001000111" );

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

entity infer_Weight0_i_1_6 is
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

architecture arch of infer_Weight0_i_1_6 is
    component infer_Weight0_i_1_6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1_6_rom_U :  component infer_Weight0_i_1_6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


