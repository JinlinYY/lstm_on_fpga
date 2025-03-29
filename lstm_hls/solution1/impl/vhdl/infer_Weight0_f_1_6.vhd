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

entity infer_Weight0_f_1_6_rom is 
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


architecture rtl of infer_Weight0_f_1_6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111010101011101000100101101", 
    1 => "10111101100111110101001001110110", 
    2 => "00111110100011011111110001111110", 
    3 => "00111100101011101001011010000001", 
    4 => "00111100001000011100111011110010", 
    5 => "00111110110001100110000111010000", 
    6 => "00111110110011110011001011011111", 
    7 => "10111110011101100111101100011100", 
    8 => "00111111001001100000010000011001", 
    9 => "10111110110101100110110001101110", 
    10 => "00111111010100101111101000101111", 
    11 => "00111110010101011110100111100010", 
    12 => "10111111000010010101101111101110", 
    13 => "10111110000100101110110101111000", 
    14 => "00111111000011101110111100001011", 
    15 => "00111110000110110101111110100010", 
    16 => "10111110000100111001101001111100", 
    17 => "00111110100010111111101000001001", 
    18 => "00111111000010001111000001110100", 
    19 => "00111111000010001111010011101000", 
    20 => "00111110100011101101111001110110", 
    21 => "00111111011000010011110001101000", 
    22 => "00111110000101010000000110011111", 
    23 => "10111111000110111100100010110000", 
    24 => "00111111010001000110010001110111", 
    25 => "00111110100010111010001101000100", 
    26 => "10111110001001111111000100110000", 
    27 => "00111110101011110000010010011011", 
    28 => "00111101111101011110001000000100", 
    29 => "00111111001111100010100101010010", 
    30 => "00111101110110111000101000011010", 
    31 => "00111111100100111101101101101110" );

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

entity infer_Weight0_f_1_6 is
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

architecture arch of infer_Weight0_f_1_6 is
    component infer_Weight0_f_1_6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1_6_rom_U :  component infer_Weight0_f_1_6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


