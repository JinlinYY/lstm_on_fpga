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

entity infer_Weight0_f_07jG_rom is 
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


architecture rtl of infer_Weight0_f_07jG_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111001111000100110101000100", 
    1 => "10111111011010100011101000011001", 
    2 => "00111110100100000111111111001100", 
    3 => "10111110110101111001101001001010", 
    4 => "00111101101100110010101001001001", 
    5 => "00111111000100110111011101111101", 
    6 => "10111110110010000101111010000001", 
    7 => "10111100100010001010000001001101", 
    8 => "10111111000110010110100100111100", 
    9 => "10111110010000011110110111100001", 
    10 => "01000000000010001101011100001010", 
    11 => "00111101001111111101100100110100", 
    12 => "10111111000010010001111111100110", 
    13 => "10111110000100100100001001001010", 
    14 => "10111110010011111010101111011010", 
    15 => "00111111000101010000110101111100", 
    16 => "10111100110100000011100101101001", 
    17 => "00111110010101001101011101101011", 
    18 => "00111110100011011111100000101011", 
    19 => "10111111011010110011011100100010", 
    20 => "00111111101101101101110101001000", 
    21 => "10111110100100101000011110100000", 
    22 => "10111111010101101001101100010111", 
    23 => "00111110001111100000010011000000", 
    24 => "00111110110101100001010010111110", 
    25 => "00111111001100000001001000010111", 
    26 => "00111111010001000101000010001011", 
    27 => "00111111000110010111001100010001", 
    28 => "00111111001101000110000111011000", 
    29 => "00111111000101110000100101000010", 
    30 => "10111110100011011000010101011001", 
    31 => "10111111000101001101110111010111" );

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

entity infer_Weight0_f_07jG is
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

architecture arch of infer_Weight0_f_07jG is
    component infer_Weight0_f_07jG_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_07jG_rom_U :  component infer_Weight0_f_07jG_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


