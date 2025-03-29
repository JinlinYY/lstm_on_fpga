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

entity infer_Weight0_i_0bnm_rom is 
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


architecture rtl of infer_Weight0_i_0bnm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111001111001101111101001000", 
    1 => "00111111010010101100111011011101", 
    2 => "00111111011100001100000011110000", 
    3 => "00111110011011110101001011111100", 
    4 => "10111101000101111010101010101100", 
    5 => "10111111001100001001010100000111", 
    6 => "00111110010101101011110101101111", 
    7 => "10111110100111011110001101010100", 
    8 => "00111110000100001100100011001101", 
    9 => "00111101001001001110100010111000", 
    10 => "00111100110111101100000111000010", 
    11 => "10111111011010010010011111110110", 
    12 => "10111110111110001111101011011111", 
    13 => "00111101110101111100110011000000", 
    14 => "10111110100000100000000110001010", 
    15 => "00111111100110100000001001000011", 
    16 => "00111110010110111100101000010000", 
    17 => "10111111000010101001000110111000", 
    18 => "10111110100110111110100000010100", 
    19 => "00111110101001010101001001011101", 
    20 => "00111101000101000111010110100011", 
    21 => "00111111001001010010111111110101", 
    22 => "00111110110110101010101111001101", 
    23 => "00111101101101110110010001101011", 
    24 => "10111110110010111101001011011000", 
    25 => "10111111000100111010111001011000", 
    26 => "10111100111011100100010111000011", 
    27 => "10111111001101111101011011101001", 
    28 => "00111110010001000010110011000011", 
    29 => "00111110100101100000110000010111", 
    30 => "10111111110001000101101010110100", 
    31 => "00111101100010001110100100101101" );

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

entity infer_Weight0_i_0bnm is
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

architecture arch of infer_Weight0_i_0bnm is
    component infer_Weight0_i_0bnm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0bnm_rom_U :  component infer_Weight0_i_0bnm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


