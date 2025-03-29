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

entity infer_Weight0_i_0_6_rom is 
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


architecture rtl of infer_Weight0_i_0_6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110101111101000110110111001", 
    1 => "10111111010000100010111100000110", 
    2 => "10111110111110100101101010101011", 
    3 => "10111111111010101011101001110011", 
    4 => "10111100100000010000011000100101", 
    5 => "10111101101111111110100111111011", 
    6 => "10111111011001000101101001001111", 
    7 => "00111111001000010100000101110100", 
    8 => "10111101100011001001100001011111", 
    9 => "00111111000010001010011010101000", 
    10 => "00111110111100100001111110110000", 
    11 => "00111100001000101110011111110111", 
    12 => "10111110100011100110000111010000", 
    13 => "00111100000001110110100111101100", 
    14 => "10111100100101111110001101001100", 
    15 => "00111110101011111001010110110011", 
    16 => "10111110011011100111001110100011", 
    17 => "10111110010011110010011110111011", 
    18 => "10111110000011011111001010101010", 
    19 => "00111110111110100111100101010111", 
    20 => "00111110111110110111100110110111", 
    21 => "10111101110000110000000100100001", 
    22 => "00111101011101000100001111010100", 
    23 => "10111110010011010111110100111001", 
    24 => "10111110101100101100111000100101", 
    25 => "00111111100000001010011111100111", 
    26 => "10111111100010110111000101011100", 
    27 => "10111101001110011110000001100001", 
    28 => "00111110110111010100101001011110", 
    29 => "00111110111111111100100000001000", 
    30 => "10111111010010100010100001010110", 
    31 => "00111110000110101010111111111111" );

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

entity infer_Weight0_i_0_6 is
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

architecture arch of infer_Weight0_i_0_6 is
    component infer_Weight0_i_0_6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0_6_rom_U :  component infer_Weight0_i_0_6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


