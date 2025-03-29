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

entity infer_Weight0_f_0Yie_rom is 
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


architecture rtl of infer_Weight0_f_0Yie_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111011101000100001100001011", 
    1 => "00111101111100100101111001010111", 
    2 => "10111111010110001001011111011001", 
    3 => "00111111010011000100000011010001", 
    4 => "10111101001001001111010101001101", 
    5 => "10111101110101010011110101100100", 
    6 => "10111111000001110111100010111100", 
    7 => "10111101000001001001010101011011", 
    8 => "10111101000011000110111101111010", 
    9 => "10111110101111110100001101100011", 
    10 => "10111110100111001110001000001001", 
    11 => "10111101101111101111110001111010", 
    12 => "00111101110011001100101010110100", 
    13 => "00111110111001101000111100101010", 
    14 => "10111110101011011101000110100010", 
    15 => "00111111010100001100000000100111", 
    16 => "10111111011010110010101010101110", 
    17 => "10111111011011111111101100010110", 
    18 => "10111111000011101101101000110100", 
    19 => "00111111010001100011010100111111", 
    20 => "10111111001110010001010000011010", 
    21 => "00111110110101010011110101000011", 
    22 => "00111111000010100000101000100000", 
    23 => "00111110111110101101100111001111", 
    24 => "10111111100010011010010011010111", 
    25 => "10111111010111001111010101001101", 
    26 => "00111111001010001011110101010101", 
    27 => "10111100011111000001000101011110", 
    28 => "10111110110101111110010101100100", 
    29 => "10111110010001110100110101011001", 
    30 => "00111110100000111001100010000101", 
    31 => "00111110100000010001000101001001" );

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

entity infer_Weight0_f_0Yie is
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

architecture arch of infer_Weight0_f_0Yie is
    component infer_Weight0_f_0Yie_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_0Yie_rom_U :  component infer_Weight0_f_0Yie_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


