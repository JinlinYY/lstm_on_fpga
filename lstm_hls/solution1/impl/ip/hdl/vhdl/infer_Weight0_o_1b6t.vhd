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

entity infer_Weight0_o_1b6t_rom is 
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


architecture rtl of infer_Weight0_o_1b6t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111100101000110111011011011", 
    1 => "00111110100010100001000001111011", 
    2 => "00111110011111100101111001101000", 
    3 => "00111110001011101001000101000011", 
    4 => "10111111000001101101011010001000", 
    5 => "00111110001101011111111101100001", 
    6 => "10111110000000010000101001010111", 
    7 => "10111101100110111001011000101001", 
    8 => "10111101101011101101000100111001", 
    9 => "00111101110100010010000100100101", 
    10 => "00111110100110011111101111100111", 
    11 => "10111111010010010100001101101100", 
    12 => "00111101100000111011011110010101", 
    13 => "00111110000000100001111111110011", 
    14 => "10111111001011011001000001001011", 
    15 => "00111110010001001001011101110100", 
    16 => "10111011111110000010111101010001", 
    17 => "00111101000010011000011011111101", 
    18 => "00111110111111110000010111101010", 
    19 => "10111110010100011011100110110110", 
    20 => "10111101111010001110000011001010", 
    21 => "00111110101110000101011000011101", 
    22 => "00111101111001110111010001101001", 
    23 => "10111100100010100111110001011011", 
    24 => "10111110000011100101001001011001", 
    25 => "00111110100010110001111011000001", 
    26 => "10111110000111111000010010001000", 
    27 => "10111100010111001011010101111000", 
    28 => "00111110110000110001100010011000", 
    29 => "00111111001000010001010100111000", 
    30 => "00111110100111010101101110001010", 
    31 => "10111110100111101111100100010010" );

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

entity infer_Weight0_o_1b6t is
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

architecture arch of infer_Weight0_o_1b6t is
    component infer_Weight0_o_1b6t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1b6t_rom_U :  component infer_Weight0_o_1b6t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


