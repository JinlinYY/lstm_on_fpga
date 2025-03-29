-- ==============================================================
-- File generated on Fri Mar 28 13:00:23 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_o_1b7t_rom is 
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


architecture rtl of infer_Weight0_o_1b7t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111000110011100101100110110", 
    1 => "10111101000101000100011110000000", 
    2 => "10111110011001101101000100011000", 
    3 => "10111100010000110000000010011011", 
    4 => "10111100101010011000011001110111", 
    5 => "10111101100011110100000111110010", 
    6 => "00111110010101111100111000010000", 
    7 => "10111101000001001011001010110111", 
    8 => "00111111011011011100101000111010", 
    9 => "10111111100001001111101110011000", 
    10 => "10111101001100111110111111110010", 
    11 => "10111110110101000010000010110100", 
    12 => "10111110101001101110010001111110", 
    13 => "00111101111000101011000111110111", 
    14 => "00111110111011100100000010000101", 
    15 => "10111110010101101111011001010001", 
    16 => "10111100011110010001000111001111", 
    17 => "00111110011011010011001010000011", 
    18 => "10111110100101000110011100010111", 
    19 => "00111110100001101100111100100000", 
    20 => "10111101100101010011000011001111", 
    21 => "10111110010100111011100101101011", 
    22 => "10111110100001100011000100101111", 
    23 => "00111111000101001111001100000010", 
    24 => "00111111001111000100001111100101", 
    25 => "10111100110011000010100100111001", 
    26 => "10111101100110001010101010000110", 
    27 => "10111111000100001000010100101011", 
    28 => "10111110101101011100011111101111", 
    29 => "10111110100110111101000011100001", 
    30 => "10111111000110100010110100001110", 
    31 => "10111110111101111110100111011001" );

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

entity infer_Weight0_o_1b7t is
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

architecture arch of infer_Weight0_o_1b7t is
    component infer_Weight0_o_1b7t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1b7t_rom_U :  component infer_Weight0_o_1b7t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


