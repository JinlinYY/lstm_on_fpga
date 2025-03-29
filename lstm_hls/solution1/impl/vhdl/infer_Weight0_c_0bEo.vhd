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

entity infer_Weight0_c_0bEo_rom is 
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


architecture rtl of infer_Weight0_c_0bEo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101010000100001010110111010", 
    1 => "00111110110010001100111100011000", 
    2 => "10111110001000001000110100001001", 
    3 => "10111111011100011010101101011100", 
    4 => "10111110001100111000110011011010", 
    5 => "10111100111111010110001100000010", 
    6 => "00111110101110100111011111100110", 
    7 => "00111110001101001000101000010110", 
    8 => "00111110110011011101100011111001", 
    9 => "00111110011010011100000111111000", 
    10 => "10111110111000111010100100101010", 
    11 => "10111110110110001101111100010110", 
    12 => "10111101110011110000011010110011", 
    13 => "10111110010011011101001001101011", 
    14 => "10111110001101111010111000010100", 
    15 => "00111110000101000000100110100010", 
    16 => "00111110110010101011101101000101", 
    17 => "10111110100010101000111011110111", 
    18 => "00111101110110101110001101100001", 
    19 => "00111110010001010010101100001010", 
    20 => "00111101110101111011100111100000", 
    21 => "00111101101101100010100101010010", 
    22 => "00111110011101110110111110110001", 
    23 => "10111111000010100010000000110110", 
    24 => "10111110110010000000011101111001", 
    25 => "00111101111011101011111001011001", 
    26 => "00111110011001011010111011100110", 
    27 => "10111110100100100010110100001110", 
    28 => "10111101000110011110011100110010", 
    29 => "00111111000001101110010100110110", 
    30 => "00111110000010110010110110010000", 
    31 => "10111101111011101011010001100011" );

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

entity infer_Weight0_c_0bEo is
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

architecture arch of infer_Weight0_c_0bEo is
    component infer_Weight0_c_0bEo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0bEo_rom_U :  component infer_Weight0_c_0bEo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


