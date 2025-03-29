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

entity infer_Weight0_c_0bDo_rom is 
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


architecture rtl of infer_Weight0_c_0bDo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110100010010111011001111001", 
    1 => "10111110110101111001000000010001", 
    2 => "00111110111101010111011011001101", 
    3 => "00111111001010001010110111001101", 
    4 => "00111101100110001011101001000001", 
    5 => "10111101111100010110110100101011", 
    6 => "10111101011101101000010010001100", 
    7 => "00111111000110011111001010101010", 
    8 => "10111101111111001010000001111111", 
    9 => "10111100101101111010010111110100", 
    10 => "00111110101011010110001101100111", 
    11 => "10111011101000100000000101000111", 
    12 => "10111101010101100010111100010110", 
    13 => "10111110111000010100001001110000", 
    14 => "00111110101101001010100100100110", 
    15 => "10111110010110100001011010100101", 
    16 => "00111110001110100001101001010000", 
    17 => "00111111000011011101001000011000", 
    18 => "10111110101010111010100010100100", 
    19 => "00111110100001010001110111001101", 
    20 => "00111110100110100110110111110000", 
    21 => "10111101110001001011010101010111", 
    22 => "10111101110000101101111010000111", 
    23 => "00111110111111001110000000010001", 
    24 => "00111111000100010101101000111010", 
    25 => "10111110010010111101101100011010", 
    26 => "10111100011000101000001001000001", 
    27 => "00111110100000001100011101011100", 
    28 => "00111100101110100110111011111100", 
    29 => "10111100111000000001011110011000", 
    30 => "00111101011011000110000001000110", 
    31 => "00111111001011111011011011101101" );

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

entity infer_Weight0_c_0bDo is
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

architecture arch of infer_Weight0_c_0bDo is
    component infer_Weight0_c_0bDo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0bDo_rom_U :  component infer_Weight0_c_0bDo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


