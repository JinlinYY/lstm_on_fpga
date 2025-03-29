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

entity infer_Weight0_i_0_5_rom is 
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


architecture rtl of infer_Weight0_i_0_5_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111000110100100011000000110", 
    1 => "00111111011001111010101000010101", 
    2 => "00111101100111110011000011101000", 
    3 => "00111110010110011000010010100001", 
    4 => "10111110001011001010001100011110", 
    5 => "00111111011100101100111100010000", 
    6 => "00111110001001011010001111100100", 
    7 => "10111110100011011100111101101000", 
    8 => "10111101110101101101001110110111", 
    9 => "10111110111010100101000101011101", 
    10 => "00111110010100101111101011010111", 
    11 => "10111110101011000001110111010010", 
    12 => "00111110111100000001110101111110", 
    13 => "10111110101011001101010111011000", 
    14 => "10111110110011011101110110010000", 
    15 => "00111110100011001001110000001011", 
    16 => "10111110101001010010011001110100", 
    17 => "00111101111111001100000001111011", 
    18 => "00111110001110001110010010111000", 
    19 => "00111111011011011011000000000011", 
    20 => "00111110101010101110100010011111", 
    21 => "10111111011010010101101101101000", 
    22 => "00111101100000111000001000011011", 
    23 => "10111101010110101111000110001000", 
    24 => "01000000000010010001000100110000", 
    25 => "00111111011110011011101101001001", 
    26 => "00111100000101000000101110111011", 
    27 => "10111101010100111000011010010000", 
    28 => "00111110100010000011111001000010", 
    29 => "10111101000100111101100001011010", 
    30 => "10111110000101110010010110000001", 
    31 => "00111110100011001010011101110010" );

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

entity infer_Weight0_i_0_5 is
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

architecture arch of infer_Weight0_i_0_5 is
    component infer_Weight0_i_0_5_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0_5_rom_U :  component infer_Weight0_i_0_5_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


