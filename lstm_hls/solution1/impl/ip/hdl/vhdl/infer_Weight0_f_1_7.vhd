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

entity infer_Weight0_f_1_7_rom is 
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


architecture rtl of infer_Weight0_f_1_7_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110011100011101110010010100", 
    1 => "10111111010000111000001111110001", 
    2 => "10111111000011011110010010010011", 
    3 => "10111110111011111101011000001111", 
    4 => "10111110010111011000101011011011", 
    5 => "10111110010001110111110000000011", 
    6 => "10111110100101111111001110101110", 
    7 => "10111111100001101101000011100101", 
    8 => "00111101111110000101101011010101", 
    9 => "10111111101100001111000111110101", 
    10 => "10111111000110101010000001110111", 
    11 => "10111111000011111000111100110110", 
    12 => "10111111001011001010010001001100", 
    13 => "10111110010101100011110111000101", 
    14 => "10111111000001001110110011011001", 
    15 => "10111111000110001101011001101111", 
    16 => "10111101101001011001101011111010", 
    17 => "10111111001000101001010100010000", 
    18 => "10111111000101101111011111100100", 
    19 => "10111111001101100111110100110101", 
    20 => "10111111011110000001110110001111", 
    21 => "10111110010110100010110110110110", 
    22 => "10111111010101011000111101010000", 
    23 => "10111110101010110101111000001111", 
    24 => "10111110101110001010001010101001", 
    25 => "10111110111010101001101010000000", 
    26 => "10111110100100001100100000000100", 
    27 => "10111110000110001000001111111101", 
    28 => "10111111001111010100011011110110", 
    29 => "10111110011100000110011000111100", 
    30 => "10111101101111000001000011011000", 
    31 => "00111110010000100000111100101100" );

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

entity infer_Weight0_f_1_7 is
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

architecture arch of infer_Weight0_f_1_7 is
    component infer_Weight0_f_1_7_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1_7_rom_U :  component infer_Weight0_f_1_7_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


