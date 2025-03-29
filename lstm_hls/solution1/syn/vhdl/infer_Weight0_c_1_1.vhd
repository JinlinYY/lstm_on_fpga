-- ==============================================================
-- File generated on Fri Mar 28 13:00:22 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_c_1_1_rom is 
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


architecture rtl of infer_Weight0_c_1_1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110001000110110110101100101", 
    1 => "00111111001100010101101010101111", 
    2 => "10111110011010010100010111111010", 
    3 => "00111101000100100100010110110011", 
    4 => "10111110110100011000000100111000", 
    5 => "10111100100010111000001010000000", 
    6 => "10111101110110110001111000011001", 
    7 => "10111101100000111000000110010101", 
    8 => "00111110001100111010011100010001", 
    9 => "00111100100011100011101011000001", 
    10 => "10111111100111001100011011001110", 
    11 => "00111111100111001101111101001000", 
    12 => "00111111100000111000110110101100", 
    13 => "10111110001110001100011110011111", 
    14 => "10111111010011110010110010100101", 
    15 => "00111100111000111111001101011010", 
    16 => "00111111001100011100011010110000", 
    17 => "10111110110110000010001101100100", 
    18 => "10111101111010011011011100111001", 
    19 => "10111101101110111101100000111000", 
    20 => "10111111000101100010010101000010", 
    21 => "10111110001101110111001110011111", 
    22 => "00111111010101101001000110010111", 
    23 => "10111111000011001010000111110001", 
    24 => "10111111101001100001110011010110", 
    25 => "10111111101100000110010111000111", 
    26 => "10111101111101011010111110110000", 
    27 => "00111110110101111000100110000011", 
    28 => "10111110011111000110000000000011", 
    29 => "00111110010010000100111001000000", 
    30 => "10111111100111010100011011110110", 
    31 => "10111101100000100001001110100001" );

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

entity infer_Weight0_c_1_1 is
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

architecture arch of infer_Weight0_c_1_1 is
    component infer_Weight0_c_1_1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_1_1_rom_U :  component infer_Weight0_c_1_1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


