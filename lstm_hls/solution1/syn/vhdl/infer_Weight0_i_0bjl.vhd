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

entity infer_Weight0_i_0bjl_rom is 
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


architecture rtl of infer_Weight0_i_0bjl_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110101110111001000011001001", 
    1 => "10111110011011101010010011101100", 
    2 => "10111111100011101100101010001010", 
    3 => "10111110101000100000101111000100", 
    4 => "10111110011111100111011100001100", 
    5 => "00111100000111100000101001000010", 
    6 => "00111111000111011101100001100010", 
    7 => "10111110001100101001101100101000", 
    8 => "00111101000110001000110000011110", 
    9 => "10111101100011100111011010000110", 
    10 => "00111101000110100101101110010110", 
    11 => "00111101011111001011000011000000", 
    12 => "10111110101001011110011010011011", 
    13 => "10111110111000110111111011110110", 
    14 => "10111111000000101000100101000100", 
    15 => "10111110000010111100111011001000", 
    16 => "00111110001000001001111101100010", 
    17 => "10111110111101100101110000001100", 
    18 => "00111101010111101001110100001111", 
    19 => "10111101100000000001101000110111", 
    20 => "00111111011011000000011100010100", 
    21 => "00111111001100000001111111001001", 
    22 => "00111110110111011011010100001111", 
    23 => "10111111001010000110001010100010", 
    24 => "00111011101010001011000010001110", 
    25 => "01000000000101100111101000011100", 
    26 => "10111111010111100110011000110100", 
    27 => "10111110100011111001110111010100", 
    28 => "00111110010000000110101011110100", 
    29 => "00111111000010110110010101100111", 
    30 => "00111111010110000010010000111110", 
    31 => "00111111000111100101100010000010" );

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

entity infer_Weight0_i_0bjl is
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

architecture arch of infer_Weight0_i_0bjl is
    component infer_Weight0_i_0bjl_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0bjl_rom_U :  component infer_Weight0_i_0bjl_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


