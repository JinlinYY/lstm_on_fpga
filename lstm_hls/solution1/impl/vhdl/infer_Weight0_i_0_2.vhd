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

entity infer_Weight0_i_0_2_rom is 
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


architecture rtl of infer_Weight0_i_0_2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110010110001001101100001111", 
    1 => "10111101110000000111000100111111", 
    2 => "00111110011011000011111000110010", 
    3 => "10111101000111111011000011010101", 
    4 => "00111101000011010011101011100111", 
    5 => "10111111011101101010100001000100", 
    6 => "10111101110100110111110010011010", 
    7 => "00111110001111011111101000000001", 
    8 => "10111101101011111100000001001101", 
    9 => "00111101011111111111101111001110", 
    10 => "00111110010000111010101100000000", 
    11 => "00111110010000111011111011101100", 
    12 => "10111100100001110010100011101001", 
    13 => "10111011101101010011110101100100", 
    14 => "00111110011110010110110011000110", 
    15 => "00111101111010001101100111111001", 
    16 => "00111101100000010110100000110000", 
    17 => "00111100111110101011001100100101", 
    18 => "10111101101111000011011000010001", 
    19 => "10111110011011010100011001101111", 
    20 => "10111101110001011111010100100111", 
    21 => "00111101000001010100110011011011", 
    22 => "00111110110100011110100001100000", 
    23 => "00111110001110000111010100001100", 
    24 => "00111110011111011110110101101100", 
    25 => "00111110111011001100000000111000", 
    26 => "10111011111101010110011001001001", 
    27 => "00111101110011000000010010000110", 
    28 => "00111100100011111001011011100001", 
    29 => "00111101111011001100110011001101", 
    30 => "10111101111001000101011101111110", 
    31 => "10111101110011100011001101101010" );

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

entity infer_Weight0_i_0_2 is
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

architecture arch of infer_Weight0_i_0_2 is
    component infer_Weight0_i_0_2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0_2_rom_U :  component infer_Weight0_i_0_2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


