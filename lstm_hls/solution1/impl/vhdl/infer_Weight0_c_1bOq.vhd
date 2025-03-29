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

entity infer_Weight0_c_1bOq_rom is 
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


architecture rtl of infer_Weight0_c_1bOq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110110101100100011101111000", 
    1 => "10111110000001111011101010101010", 
    2 => "00111101100001101010011111110000", 
    3 => "00111110100000100001011110110001", 
    4 => "00111110000000000100101001110011", 
    5 => "00111110100001001000100111010010", 
    6 => "00111100100111100100011100010011", 
    7 => "00111111001001000000010001010011", 
    8 => "10111110110110010110010010000100", 
    9 => "10111110110111111111000100110000", 
    10 => "00111110111000001110000110010011", 
    11 => "00111110100000100100010010100110", 
    12 => "00111110010011000111001011100010", 
    13 => "10111110100010111101100011100000", 
    14 => "00111110010111010010111000001110", 
    15 => "10111110011101001110101110011010", 
    16 => "10111110110101111001010110110011", 
    17 => "00111111001010010100001111100001", 
    18 => "10111100010101001101110001100110", 
    19 => "00111110110001110000110001111000", 
    20 => "10111110110111001001101010111011", 
    21 => "00111110000011001010111110110100", 
    22 => "10111101101111100001011101011101", 
    23 => "00111110001001001110010101001111", 
    24 => "00111111001010000100010000101000", 
    25 => "10111110100001100100100010000100", 
    26 => "10111101001001011010000101000101", 
    27 => "00111110000000011010100011101111", 
    28 => "00111100010101000110111101011000", 
    29 => "00111101110100100010011011000100", 
    30 => "10111101110111010111101100100000", 
    31 => "00111101111101000101100101010011" );

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

entity infer_Weight0_c_1bOq is
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

architecture arch of infer_Weight0_c_1bOq is
    component infer_Weight0_c_1bOq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_1bOq_rom_U :  component infer_Weight0_c_1bOq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


