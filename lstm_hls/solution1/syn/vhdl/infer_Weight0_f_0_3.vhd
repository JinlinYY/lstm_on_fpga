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

entity infer_Weight0_f_0_3_rom is 
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


architecture rtl of infer_Weight0_f_0_3_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111001011100100000010100111", 
    1 => "10111111000000111110110001000110", 
    2 => "10111110011001011001110100010011", 
    3 => "00111100100001100110111001000100", 
    4 => "00111111110000011110100010100011", 
    5 => "00111100100101110001000110010100", 
    6 => "00111110101010110101000100010110", 
    7 => "00111101011000001011000010101111", 
    8 => "10111100000111011110000001010000", 
    9 => "00111101011001000000100101011111", 
    10 => "10111101100110100111101100001011", 
    11 => "10111110100001000100000001101100", 
    12 => "00111111011110101000000100110100", 
    13 => "00111110001100010001011010101001", 
    14 => "10111110100100011111000000111101", 
    15 => "00111110000110010000011010001010", 
    16 => "00111111000000010111000010100100", 
    17 => "00111110101101111110000110010111", 
    18 => "10111101111111110111001001110001", 
    19 => "10111110011101000010110101001001", 
    20 => "00111101111000100001111010100011", 
    21 => "00111110100010000011100111101111", 
    22 => "10111110010001011110000101111110", 
    23 => "00111100000001101010100011111100", 
    24 => "00111101000010001000101101010100", 
    25 => "00111111000100111111111001101101", 
    26 => "10111111000111011010101111010010", 
    27 => "10111110110110010011001101011101", 
    28 => "00111110100010110111001100001000", 
    29 => "00111101110101101110110001011011", 
    30 => "00111111101100000010011101000010", 
    31 => "10111100011100110110011010010101" );

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

entity infer_Weight0_f_0_3 is
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

architecture arch of infer_Weight0_f_0_3 is
    component infer_Weight0_f_0_3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_0_3_rom_U :  component infer_Weight0_f_0_3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


