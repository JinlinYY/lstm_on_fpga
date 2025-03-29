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

entity infer_Weight0_f_0_9_rom is 
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


architecture rtl of infer_Weight0_f_0_9_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101111010101111000000111001", 
    1 => "10111110100110111110110010101011", 
    2 => "10111111000000111111010111000111", 
    3 => "10111110111001110101101000010000", 
    4 => "10111101011110100000111110010001", 
    5 => "10111111011000001110010010101000", 
    6 => "10111111001101111101011101011110", 
    7 => "10111110100110000011001101000000", 
    8 => "10111111011101000101001011111000", 
    9 => "10111101011011000101110000010100", 
    10 => "10111110111100111110110011101110", 
    11 => "10111110100010000010000001100000", 
    12 => "00111110111010011110110011010101", 
    13 => "00111110001111011001010101010111", 
    14 => "10111110101001011101110111010011", 
    15 => "00111100100011111110001001100001", 
    16 => "10111110101100011001010101101000", 
    17 => "10111100111000010111101000000011", 
    18 => "10111110101101001111100001110010", 
    19 => "00111110110110001011010011100001", 
    20 => "00111111001100011100101110111100", 
    21 => "10111110100010111111101010001111", 
    22 => "10111110001110001010101110010011", 
    23 => "10111111001101100111001111110111", 
    24 => "10111101000010111000010010011001", 
    25 => "00111110100111001001000100101010", 
    26 => "10111111100011010011100101000011", 
    27 => "00111111000000011010001001110011", 
    28 => "00111111100011110000100110010110", 
    29 => "00111111100100000000001100000100", 
    30 => "10111110101110011101111001001000", 
    31 => "10111111010100100011001010110001" );

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

entity infer_Weight0_f_0_9 is
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

architecture arch of infer_Weight0_f_0_9 is
    component infer_Weight0_f_0_9_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_0_9_rom_U :  component infer_Weight0_f_0_9_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


