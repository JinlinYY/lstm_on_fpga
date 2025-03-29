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

entity infer_Weight0_i_1_1_rom is 
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


architecture rtl of infer_Weight0_i_1_1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111000000111101010010111111", 
    1 => "10111111100011001000000000001111", 
    2 => "10111111010001111000010001000101", 
    3 => "00111111011100101100001101010100", 
    4 => "00111111001100101100111000110110", 
    5 => "00111110111111010000110110101110", 
    6 => "00111110111100100101011000010101", 
    7 => "10111111101100011101100001011010", 
    8 => "10111111010110111111110010101000", 
    9 => "00111100101010000110001011110110", 
    10 => "00111110001100010100010011001100", 
    11 => "00111111010001010111111100110000", 
    12 => "00111110100111100011101101000111", 
    13 => "10111110101001001000111101110101", 
    14 => "00111110010001101011010001000010", 
    15 => "00111101111000011110110111100001", 
    16 => "10111111111011001100000101110110", 
    17 => "10111101110100010111000111100011", 
    18 => "10111110101111111011011001010110", 
    19 => "10111111000101001010010101101010", 
    20 => "00111101001111100100000101001110", 
    21 => "10111111000111101111010001011010", 
    22 => "00111111100011011001001000001000", 
    23 => "00111110111001001001101010011001", 
    24 => "10111110111100110101111010110111", 
    25 => "00111111010111100000010110111100", 
    26 => "00111111000000011011000110111000", 
    27 => "10111110010100001100011101111110", 
    28 => "10111011000111011100111110001001", 
    29 => "10111111101000100100111000010110", 
    30 => "10111110101010011111011101010001", 
    31 => "10111111001100011001011110110011" );

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

entity infer_Weight0_i_1_1 is
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

architecture arch of infer_Weight0_i_1_1 is
    component infer_Weight0_i_1_1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1_1_rom_U :  component infer_Weight0_i_1_1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


