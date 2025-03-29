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

entity infer_Weight0_o_0_9_rom is 
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


architecture rtl of infer_Weight0_o_0_9_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111001010001010001101000000", 
    1 => "10111110110110111000110001010100", 
    2 => "10111111100001111001111111011100", 
    3 => "10111101000011101110010010011111", 
    4 => "10111110111011111001100001010010", 
    5 => "10111111001011001001110000101100", 
    6 => "00111110110000100110101011001010", 
    7 => "10111110110000011011010101100011", 
    8 => "10111110111001001111000011111010", 
    9 => "00111110101101001111110110110001", 
    10 => "10111111100110110011000001100010", 
    11 => "00111110110011000010111001110111", 
    12 => "00111111100100001111011111010011", 
    13 => "10111101011101111011111000010010", 
    14 => "00111110110111100100011000000110", 
    15 => "00111110000011110101111101001110", 
    16 => "00111101110010101111100100100011", 
    17 => "00111110001011101111001010000100", 
    18 => "10111101010011100011001001011101", 
    19 => "00111111100101010000101001110000", 
    20 => "10111110000000000101101001110001", 
    21 => "00111101110111100100110001010001", 
    22 => "10111110110001010010101110110010", 
    23 => "00111110101011001001011011001100", 
    24 => "00111110100110010001100111001110", 
    25 => "10111110001100000011010010110001", 
    26 => "10111101111010100001110101110101", 
    27 => "00111111010000010010111100011011", 
    28 => "00111111010010011111001001111000", 
    29 => "00111111000000001100010000100110", 
    30 => "00111111000100010000111001000101", 
    31 => "10111110100100110100010100101000" );

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

entity infer_Weight0_o_0_9 is
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

architecture arch of infer_Weight0_o_0_9 is
    component infer_Weight0_o_0_9_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0_9_rom_U :  component infer_Weight0_o_0_9_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


