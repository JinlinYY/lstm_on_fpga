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

entity infer_Weight0_i_1_5_rom is 
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


architecture rtl of infer_Weight0_i_1_5_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111100100011101101000001110", 
    1 => "10111110101100111011110001101111", 
    2 => "00111110000011111101101100001010", 
    3 => "10111110100110110010000010111000", 
    4 => "00111110110101101001001011010101", 
    5 => "00111110100011110111100001010111", 
    6 => "00111101111110001001111001110111", 
    7 => "00111110100101010010000001001011", 
    8 => "00111110010111101110111000001111", 
    9 => "00111111101111100000101001010010", 
    10 => "00111111000001001000010010110110", 
    11 => "00111111010011101101100110001100", 
    12 => "10111111000001100000100110101011", 
    13 => "10111111001011000101101101011011", 
    14 => "00111100100100011101101111001011", 
    15 => "10111101100010110001001101011001", 
    16 => "10111101110100100101011100000000", 
    17 => "10111101101011011110011011011110", 
    18 => "10111110011111101111011111000010", 
    19 => "00111110101101011101000111100101", 
    20 => "00111111010110110100101000010010", 
    21 => "00111111000000111001110101101111", 
    22 => "00111111001110100000101011011001", 
    23 => "00111110010000100011100001010100", 
    24 => "00111101100001100110011111111001", 
    25 => "00111111000100000110100000000001", 
    26 => "00111111100111101101110011001010", 
    27 => "10111101111110010000010111000000", 
    28 => "10111101011100100000010000101001", 
    29 => "00111111001010001101100001110111", 
    30 => "10111110011011100001010111001010", 
    31 => "00111110011001110010011111011101" );

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

entity infer_Weight0_i_1_5 is
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

architecture arch of infer_Weight0_i_1_5 is
    component infer_Weight0_i_1_5_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1_5_rom_U :  component infer_Weight0_i_1_5_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


