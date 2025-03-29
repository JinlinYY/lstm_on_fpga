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

entity infer_Weight0_c_0bGp_rom is 
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


architecture rtl of infer_Weight0_c_0bGp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101010000110111001011100111", 
    1 => "00111101111011100100100001100010", 
    2 => "10110111111100110100010100000111", 
    3 => "10111100001011001100000010111110", 
    4 => "00111110101000111001011011110010", 
    5 => "10111100110011100011001101101010", 
    6 => "10111110110001000001010011101000", 
    7 => "10111110100111000101011000001100", 
    8 => "00111101100101000110110101000000", 
    9 => "00111101010110001101011010010001", 
    10 => "10111111000100000000001000011001", 
    11 => "10111110000101110000110110100110", 
    12 => "10111110010010111100110110111100", 
    13 => "10111110101101111011010110001101", 
    14 => "00111110100110011000001111111001", 
    15 => "00111110111000000111100111000100", 
    16 => "00111101101101100011100100001101", 
    17 => "00111101000101110001001110101101", 
    18 => "10111110100111001011101000110000", 
    19 => "10111101101011000100101001000001", 
    20 => "00111110101000111100111011001000", 
    21 => "10111110011101110011100001100001", 
    22 => "10111101001010000001000100101100", 
    23 => "10111110010101100110010100010111", 
    24 => "00111101111001011010100100100010", 
    25 => "00111011001100000011100111101111", 
    26 => "10111100110100100100101111111101", 
    27 => "10111101000010000100011000100000", 
    28 => "00111110011100000100011011000111", 
    29 => "00111101110110101010001101101010", 
    30 => "00111110111100000101101010010010", 
    31 => "00111110100101111110000100010001" );

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

entity infer_Weight0_c_0bGp is
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

architecture arch of infer_Weight0_c_0bGp is
    component infer_Weight0_c_0bGp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0bGp_rom_U :  component infer_Weight0_c_0bGp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


