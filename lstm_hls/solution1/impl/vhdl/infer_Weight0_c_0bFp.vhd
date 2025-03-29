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

entity infer_Weight0_c_0bFp_rom is 
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


architecture rtl of infer_Weight0_c_0bFp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110010011110000101000011100", 
    1 => "10111111001011110001011010100000", 
    2 => "10111100101001001101110100101111", 
    3 => "10111101101101110010101111001011", 
    4 => "00111110101011000111000111111000", 
    5 => "00111101010111011100111001111101", 
    6 => "10111101000110011101000000100000", 
    7 => "10111110000101111010000001110011", 
    8 => "10111110010000100001110110010111", 
    9 => "10111110101001111110010100100001", 
    10 => "10111100110000001000110110001111", 
    11 => "10111101001100101001101100101000", 
    12 => "10111110011000001001111111101000", 
    13 => "10111101111001001111001010101110", 
    14 => "00111110101001110111011111010001", 
    15 => "10111110010101110101011010000110", 
    16 => "10111110010011010100101000011011", 
    17 => "00111110101010001011100111011100", 
    18 => "00111110111011001100111011000100", 
    19 => "00111110001011111000001001101111", 
    20 => "10111110010001111101111100011010", 
    21 => "10111101011111111000011101101010", 
    22 => "10111101110010000000101001011011", 
    23 => "10111011111000111011010001110000", 
    24 => "00111110011001110101110101010111", 
    25 => "00111101001000011111111000100010", 
    26 => "00111110000110011110010000001101", 
    27 => "00111110110000110110101111010011", 
    28 => "10111110101111000100110101100110", 
    29 => "10111110010101111000011001111111", 
    30 => "00111101011100101001011011110110", 
    31 => "00111110001111001001100010100010" );

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

entity infer_Weight0_c_0bFp is
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

architecture arch of infer_Weight0_c_0bFp is
    component infer_Weight0_c_0bFp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0bFp_rom_U :  component infer_Weight0_c_0bFp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


