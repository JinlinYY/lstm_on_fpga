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

entity infer_Weight0_f_1bhl_rom is 
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


architecture rtl of infer_Weight0_f_1bhl_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110111001111110011101111101", 
    1 => "00111110001010000000001111001101", 
    2 => "10111110110010110101111100011100", 
    3 => "00111110101100101111010110011001", 
    4 => "10111110000000011110100010100011", 
    5 => "10111111000100111000101101101001", 
    6 => "00111111001111001010010100110111", 
    7 => "00111110111000011010011100011010", 
    8 => "00111101111011110000111100010111", 
    9 => "10111111001000111011011100100000", 
    10 => "00111110010110100111111111000011", 
    11 => "00111100110110100011010111010110", 
    12 => "00111101011011000001010011000110", 
    13 => "10111111011000010011110010101100", 
    14 => "00111110110000000000000000000000", 
    15 => "00111101010110111100000000011010", 
    16 => "10111100100011011111001101110011", 
    17 => "00111110001101111000000001111000", 
    18 => "10111111010010001100110001111001", 
    19 => "00111110001000000011101100111111", 
    20 => "10111111100001110000110000010011", 
    21 => "10111110101100010010101111000011", 
    22 => "10111111011011010000111101100010", 
    23 => "10111011100011111110101011000100", 
    24 => "10111110101000001000010100101011", 
    25 => "10111111001100111110011111010001", 
    26 => "00111110001001001000011011110000", 
    27 => "10111111000101001010101011101011", 
    28 => "10111111000001000100001011011001", 
    29 => "10111111100011100001001110111010", 
    30 => "00111111000001110101110011000000", 
    31 => "10111110101001001100000001111011" );

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

entity infer_Weight0_f_1bhl is
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

architecture arch of infer_Weight0_f_1bhl is
    component infer_Weight0_f_1bhl_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1bhl_rom_U :  component infer_Weight0_f_1bhl_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


