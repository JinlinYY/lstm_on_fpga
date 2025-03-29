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

entity infer_Weight0_c_1bUr_rom is 
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


architecture rtl of infer_Weight0_c_1bUr_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110001011000001110011100111", 
    1 => "10111111001110110000100110110111", 
    2 => "00111110100001010011100111011010", 
    3 => "00111101010101011011011110001101", 
    4 => "00111100111100011010110000010101", 
    5 => "10111110101111010110111100110011", 
    6 => "00111101111110101100100100101010", 
    7 => "10111101100101110001110010010111", 
    8 => "00111110001000101010011011110100", 
    9 => "00111110010000110101000001001100", 
    10 => "00111110101000001011010000011000", 
    11 => "10111111010011111100000011010011", 
    12 => "10111110001111000001010111010011", 
    13 => "00111101101010010111110110001101", 
    14 => "10111110011001011001010000101001", 
    15 => "10111111000010010000111011101101", 
    16 => "00111110110111110010111101110111", 
    17 => "10111110101101001101100001010110", 
    18 => "10111111011111010101000100001101", 
    19 => "00111101110001000001001111011011", 
    20 => "00111110110011001000101100000000", 
    21 => "10111101101011100001100100110011", 
    22 => "00111110010010010001101010111001", 
    23 => "10111100011110101011110110100001", 
    24 => "10111110100010100100000101011111", 
    25 => "10111110000111010010010101101000", 
    26 => "10111110000010011101011011110001", 
    27 => "10111101111011001100101010110100", 
    28 => "00111110001100100111000000101010", 
    29 => "00111110100011110001000010101010", 
    30 => "00111110010101111100101101110001", 
    31 => "10111100011000001100111000001100" );

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

entity infer_Weight0_c_1bUr is
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

architecture arch of infer_Weight0_c_1bUr is
    component infer_Weight0_c_1bUr_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_1bUr_rom_U :  component infer_Weight0_c_1bUr_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


