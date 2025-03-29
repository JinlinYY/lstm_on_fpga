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

entity infer_Weight0_c_1_6_rom is 
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


architecture rtl of infer_Weight0_c_1_6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110101011001000011000100111", 
    1 => "00111110100100100000110100110101", 
    2 => "10111110101100011101110000001110", 
    3 => "10111101000011110001110000110010", 
    4 => "10111110100001101101001101110100", 
    5 => "10111011111111000111101000111010", 
    6 => "10111110101010111000001110001100", 
    7 => "10111110000100111001111010101110", 
    8 => "10111110010010100101111010111011", 
    9 => "00111101010001111101000110111011", 
    10 => "00111110110001011110011100100001", 
    11 => "00111111000101111000011001101110", 
    12 => "10111101101010001001010000111110", 
    13 => "10111110001011111111011000001010", 
    14 => "10111110110010001111100100001001", 
    15 => "10111110110001001110000111000110", 
    16 => "10111110011100110011101010001010", 
    17 => "00111110101011010100011100010111", 
    18 => "00111110010000011010100100110011", 
    19 => "10111111010010001000100010110101", 
    20 => "00111110101110010010100010111111", 
    21 => "10111110110010000110111111101111", 
    22 => "10111101011101110100111011101100", 
    23 => "00111101110010011100100110010011", 
    24 => "00111110101000000111101000101001", 
    25 => "10111110001011000100001111110110", 
    26 => "10111100000001000000000110000010", 
    27 => "00111100010101100101111001000110", 
    28 => "00111101001010011001110110001000", 
    29 => "10111101111101001111011010011101", 
    30 => "00111101110101100010001110001110", 
    31 => "00111101101011110010100111010100" );

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

entity infer_Weight0_c_1_6 is
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

architecture arch of infer_Weight0_c_1_6 is
    component infer_Weight0_c_1_6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_1_6_rom_U :  component infer_Weight0_c_1_6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


