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

entity infer_Weight0_o_0bWr_rom is 
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


architecture rtl of infer_Weight0_o_0bWr_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110111010010011001101111111", 
    1 => "00111101000111100100000011001000", 
    2 => "00111110110010100110101010101001", 
    3 => "00111101100010100011011010100000", 
    4 => "10111111110111111000100010111001", 
    5 => "10111110110011111000110111010110", 
    6 => "10111111000010010100011010100010", 
    7 => "10111101001110101100011000000100", 
    8 => "00111111010001100100000100101101", 
    9 => "10111110100110000100011010000100", 
    10 => "10111111101011101000001000001110", 
    11 => "00111110101111101101010111110001", 
    12 => "00111110100001010010101110110010", 
    13 => "00111110100011010000001011101111", 
    14 => "00111110000011001111101111111100", 
    15 => "10111111100011111110111101111100", 
    16 => "10111111100110101100001011011111", 
    17 => "00111111000011100111001111000101", 
    18 => "10111110001010000000001001111110", 
    19 => "00111110100100010000000001100000", 
    20 => "10111111001111001111110111100011", 
    21 => "10111111010011001001001100110010", 
    22 => "00111110101110110110101100001001", 
    23 => "10111111001110011101101111001011", 
    24 => "10111110100101010000011111101010", 
    25 => "10111110111110111010001111101100", 
    26 => "10111110101100100010100110100110", 
    27 => "00111100011110100111011001010011", 
    28 => "00111110010110100001001000110000", 
    29 => "00111111000110001000111001111010", 
    30 => "10111111100011110010111110001000", 
    31 => "00111110111111110001011010010000" );

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

entity infer_Weight0_o_0bWr is
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

architecture arch of infer_Weight0_o_0bWr is
    component infer_Weight0_o_0bWr_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0bWr_rom_U :  component infer_Weight0_o_0bWr_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


