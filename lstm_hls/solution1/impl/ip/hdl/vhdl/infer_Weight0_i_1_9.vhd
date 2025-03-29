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

entity infer_Weight0_i_1_9_rom is 
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


architecture rtl of infer_Weight0_i_1_9_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101001000111101000111001100", 
    1 => "00111110000100001000101000100110", 
    2 => "10111101100001100111110011110010", 
    3 => "10111110111101100011100000100010", 
    4 => "10111101000000110110110010011100", 
    5 => "00111110101001001011000100100101", 
    6 => "10111111001101101000111100101010", 
    7 => "00111111100001011100011010110000", 
    8 => "00111101000001000010110010000000", 
    9 => "00111101100001011111010000011011", 
    10 => "00111110111110101010111111011110", 
    11 => "00111110100100111000001011100100", 
    12 => "10111111010000011010001110010000", 
    13 => "00111111100001011011111011110101", 
    14 => "00111110101001001000110001110010", 
    15 => "10111110110111010110100100001010", 
    16 => "10111111000011000011111001010011", 
    17 => "00111101101110110111011010110100", 
    18 => "00111101100010100001010010001100", 
    19 => "00111110000010101010110011011010", 
    20 => "10111110011001100001111010010011", 
    21 => "10111101000110001111011000000110", 
    22 => "00111110100110110011100101111110", 
    23 => "10111110101100000011011110110101", 
    24 => "10111111100001001001010101011011", 
    25 => "10111111010011110010100100111101", 
    26 => "00111110100111010011011001010000", 
    27 => "00111111000110011011001111010000", 
    28 => "10111110100111011000011101110010", 
    29 => "10111110001001000111100001000010", 
    30 => "00111111100011110101011010001111", 
    31 => "10111110000001001000100101001100" );

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

entity infer_Weight0_i_1_9 is
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

architecture arch of infer_Weight0_i_1_9 is
    component infer_Weight0_i_1_9_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1_9_rom_U :  component infer_Weight0_i_1_9_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


