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

entity infer_Weight0_f_0_5_rom is 
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


architecture rtl of infer_Weight0_f_0_5_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110000000111011010000101101", 
    1 => "00111110111110000001001100100011", 
    2 => "00111111000001001001010111010001", 
    3 => "10111111000011011110000101001100", 
    4 => "00111101101101110011011011001110", 
    5 => "10111110101001110110111110001111", 
    6 => "00111111000110000000110010010101", 
    7 => "10111111010100111111000110110111", 
    8 => "10111100110100010111011000010100", 
    9 => "00111101000001010101101001111101", 
    10 => "00111101010001011010110101010100", 
    11 => "00111110110001001100101110011111", 
    12 => "10111110101010100010011011000100", 
    13 => "10111110101001011100001101011001", 
    14 => "10111101000010010101001110011100", 
    15 => "10111111000000101110101110110011", 
    16 => "00111111000110101110100001101100", 
    17 => "10111110100011111111101100000101", 
    18 => "10111110100111001001110001101111", 
    19 => "00111111000010000110111111101111", 
    20 => "00111011110011011000010101011001", 
    21 => "10111101110001101100010000111111", 
    22 => "10111111011101011111010010110010", 
    23 => "00111110001110010111110011000100", 
    24 => "00111110111100010001001100011111", 
    25 => "00111110010011001111011110001000", 
    26 => "00111110110011101001001000001100", 
    27 => "10111101101010110011011001111010", 
    28 => "10111111010000100001111011010110", 
    29 => "10111101000100011110111110110111", 
    30 => "10111111011100111011101001110111", 
    31 => "10111110100111010100001000111110" );

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

entity infer_Weight0_f_0_5 is
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

architecture arch of infer_Weight0_f_0_5 is
    component infer_Weight0_f_0_5_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_0_5_rom_U :  component infer_Weight0_f_0_5_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


