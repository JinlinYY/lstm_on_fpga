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

entity infer_Weight0_c_0_9_rom is 
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


architecture rtl of infer_Weight0_c_0_9_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111000100001000110101001100", 
    1 => "10111110101001110001011101011001", 
    2 => "10111110001001010100011110011101", 
    3 => "00111101101011000010011000010100", 
    4 => "00111110100011110010111101010101", 
    5 => "10111111000110011011000010001010", 
    6 => "10111110111001001110010001100101", 
    7 => "10111111000010101011001100000011", 
    8 => "10111110010100100001100101100101", 
    9 => "10111111000110010110011100100011", 
    10 => "00111110000000011101001100100100", 
    11 => "10111011010010011110101010011010", 
    12 => "10111110011111010010001001000010", 
    13 => "10111110000110001111011011001111", 
    14 => "00111111010111011000000110111111", 
    15 => "10111110110101011101111011011111", 
    16 => "10111110011001100010011000101101", 
    17 => "00111111001000010110000110110011", 
    18 => "00111100101101110110101100111100", 
    19 => "10111111000110111101000001101100", 
    20 => "10111111001100110010111000100111", 
    21 => "00111110010000110010000110100011", 
    22 => "10111110001010100110010000111101", 
    23 => "10111111011010111101100001001001", 
    24 => "00111110100111010110011010001100", 
    25 => "10111110100000100111100000101001", 
    26 => "10111101100011101111010011100000", 
    27 => "10111100111010001011111000101111", 
    28 => "00111101101101100101001000110111", 
    29 => "00111110101011011100100010111000", 
    30 => "10111110111110110110110100000001", 
    31 => "10111011111100111000100000100010" );

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

entity infer_Weight0_c_0_9 is
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

architecture arch of infer_Weight0_c_0_9 is
    component infer_Weight0_c_0_9_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0_9_rom_U :  component infer_Weight0_c_0_9_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


