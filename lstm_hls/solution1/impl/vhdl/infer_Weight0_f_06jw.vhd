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

entity infer_Weight0_f_06jw_rom is 
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


architecture rtl of infer_Weight0_f_06jw_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110100111101101000010110011", 
    1 => "10111111000010100000110010001101", 
    2 => "00111110011111011010100001111010", 
    3 => "10111110100100011111010000001010", 
    4 => "10111110011100011010101000111111", 
    5 => "10111111001101110101011111010110", 
    6 => "10111101000000111011110001001101", 
    7 => "00111111011010111011001001010111", 
    8 => "00111110100101110001110110000010", 
    9 => "00111101111011000100101111010011", 
    10 => "10111110100011010010101111110101", 
    11 => "10111110110100001110011000101010", 
    12 => "00111111010111111000111100000100", 
    13 => "10111110101111111111000001100111", 
    14 => "10111110010110111000001110001100", 
    15 => "10111101000100011100011011010010", 
    16 => "00111110110000001001101100110000", 
    17 => "00111111001011111000110001000011", 
    18 => "10111110001100110000011101101100", 
    19 => "10111110110010011011001101001010", 
    20 => "10111111010100010000000000011101", 
    21 => "10111110011110111101101100011010", 
    22 => "00111111100110000010010001101000", 
    23 => "00111101010110110100001001000110", 
    24 => "10111111000000110110001000001111", 
    25 => "10111110010101011000001011011100", 
    26 => "10111110100100100011011100000100", 
    27 => "00111110100000011111100101001000", 
    28 => "00111111001011001111001111001011", 
    29 => "10111110001100111111100101100010", 
    30 => "10111101100010111111101010001111", 
    31 => "10111111001100000101010110101000" );

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

entity infer_Weight0_f_06jw is
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

architecture arch of infer_Weight0_f_06jw is
    component infer_Weight0_f_06jw_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_06jw_rom_U :  component infer_Weight0_f_06jw_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


