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

entity infer_Weight0_o_1cau_rom is 
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


architecture rtl of infer_Weight0_o_1cau_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111100001000110100010011000", 
    1 => "00111110111010101000101010100100", 
    2 => "00111110100110110001010111111001", 
    3 => "10111110010101000001100000001101", 
    4 => "10111111001100001011010111001100", 
    5 => "00111111001101101100000011010111", 
    6 => "00111110010001010101111100110101", 
    7 => "00111110000101100011001001111111", 
    8 => "00111110001011011010000011100000", 
    9 => "10111101110101011100011000111011", 
    10 => "10111110010110011101010011011000", 
    11 => "00111111001110001011100010011101", 
    12 => "00111111000000110010011001001010", 
    13 => "10111110011000100010101001101111", 
    14 => "00111101100111101011010100101101", 
    15 => "10111110101100110001111001111110", 
    16 => "00111110000010000010011010101011", 
    17 => "00111111001001011111100110001011", 
    18 => "10111101011000001001000100111010", 
    19 => "00111101000101000110110101000000", 
    20 => "00111001011111111101101001000000", 
    21 => "10111101000110011110111010001001", 
    22 => "00111101000100011011111101111011", 
    23 => "00111111001001100000101101110000", 
    24 => "01000000000000000010101010000100", 
    25 => "10111111010100010110001000010111", 
    26 => "00111110010001011110000101111110", 
    27 => "10111110100010000110101101111011", 
    28 => "00111111001110110011010001100001", 
    29 => "10111101111111110001100001000100", 
    30 => "00111111000101011111000000011100", 
    31 => "10111110000010010111011110000101" );

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

entity infer_Weight0_o_1cau is
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

architecture arch of infer_Weight0_o_1cau is
    component infer_Weight0_o_1cau_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1cau_rom_U :  component infer_Weight0_o_1cau_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


