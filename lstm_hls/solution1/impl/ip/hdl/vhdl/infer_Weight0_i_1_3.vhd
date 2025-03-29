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

entity infer_Weight0_i_1_3_rom is 
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


architecture rtl of infer_Weight0_i_1_3_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101110010000001001010111110", 
    1 => "10111111000110011111011110110110", 
    2 => "00111110111111000010010111110010", 
    3 => "00111110100111010010111010110110", 
    4 => "10111110100001111011011110000100", 
    5 => "00111111001001011111001011101101", 
    6 => "00111110001101111001111011100000", 
    7 => "00111101101110101011100101101111", 
    8 => "10111110011010100010010111011001", 
    9 => "00111110011100001010101011101011", 
    10 => "10111111001101001011111101001101", 
    11 => "00111111010010011100011000001001", 
    12 => "10111111000000100000010111111111", 
    13 => "00111110000100111010111000100101", 
    14 => "10111101101000001001111111101000", 
    15 => "00111110011011011011010110010101", 
    16 => "00111101101100111110110101010010", 
    17 => "10111110110010011100010000010001", 
    18 => "10111111001100011111100110011100", 
    19 => "00111111001000000100010101100111", 
    20 => "10111101101101010000111111000111", 
    21 => "10111101111000100110111111100111", 
    22 => "00111110000111001111001111011100", 
    23 => "00111110110001110011101000110110", 
    24 => "10111110011100001001101110110111", 
    25 => "10111111000011111111101110101101", 
    26 => "00111110101001111110111110011110", 
    27 => "00111111000011000110001110011101", 
    28 => "00111111001110101111010100110100", 
    29 => "00111100010111011000001011111101", 
    30 => "10111111010010000101010111001001", 
    31 => "00111110101011100001010101100110" );

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

entity infer_Weight0_i_1_3 is
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

architecture arch of infer_Weight0_i_1_3 is
    component infer_Weight0_i_1_3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1_3_rom_U :  component infer_Weight0_i_1_3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


