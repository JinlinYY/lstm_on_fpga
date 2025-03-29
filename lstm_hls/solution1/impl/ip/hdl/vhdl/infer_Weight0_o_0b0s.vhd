-- ==============================================================
-- File generated on Fri Mar 28 13:00:23 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_o_0b0s_rom is 
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


architecture rtl of infer_Weight0_o_0b0s_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111000010101011110000011111", 
    1 => "10111110011101100001100110011000", 
    2 => "00111110001101000110100001000101", 
    3 => "00111100100110101001011101011011", 
    4 => "00111111101000011110110010000001", 
    5 => "10111110100011001111101010101101", 
    6 => "00111111001110101101111000000001", 
    7 => "10111101011001100111000111101111", 
    8 => "10111111000001110001001001111111", 
    9 => "00111110100001110000001110110000", 
    10 => "00111110111010011011001101101100", 
    11 => "10111111001001010111111101110011", 
    12 => "00111111101100101001110110101110", 
    13 => "00111110011010100110011100011111", 
    14 => "00111101111010011110010001010000", 
    15 => "10111101100010101001000011001101", 
    16 => "00111110101000000110100000110100", 
    17 => "10111110101111011000010101111011", 
    18 => "00111110001100101000010101100110", 
    19 => "10111110000110010000010000101110", 
    20 => "00111110011100000110000110000100", 
    21 => "10111110001010101011011001001010", 
    22 => "00111111011000100011110110100011", 
    23 => "00111110000110001100010001111010", 
    24 => "10111100101001100110110110111101", 
    25 => "10111110000011101001011010000001", 
    26 => "10111110001011100111100011100010", 
    27 => "00111111010010111110001000101110", 
    28 => "10111101110000100010110101010001", 
    29 => "00111110011000000010001101100100", 
    30 => "00111110001010101101100001011110", 
    31 => "10111110110101100001100001001000" );

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

entity infer_Weight0_o_0b0s is
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

architecture arch of infer_Weight0_o_0b0s is
    component infer_Weight0_o_0b0s_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0b0s_rom_U :  component infer_Weight0_o_0b0s_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


