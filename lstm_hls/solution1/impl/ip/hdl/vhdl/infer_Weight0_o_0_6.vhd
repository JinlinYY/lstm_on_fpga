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

entity infer_Weight0_o_0_6_rom is 
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


architecture rtl of infer_Weight0_o_0_6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110111100111000011111011111", 
    1 => "00111100111011001010101010111001", 
    2 => "10111110101010010111010001100000", 
    3 => "00111110010010111101010100010011", 
    4 => "10111111001101011101111110000111", 
    5 => "10111110110101111011100111100000", 
    6 => "10111110100000000001001110001000", 
    7 => "00111110100100101001000101010011", 
    8 => "10111110011110010001011001000100", 
    9 => "10111111010100011101000000001111", 
    10 => "10111110000010111101100100000010", 
    11 => "00111111010101111000000110110110", 
    12 => "10111110010000101010100011001010", 
    13 => "00111110100110110100001001101000", 
    14 => "10111110100101110100001111001000", 
    15 => "10111100001011011111001011101101", 
    16 => "00111101011001111011111101100010", 
    17 => "00111101100101000110010101100010", 
    18 => "00111110010100011011101000111101", 
    19 => "00111111000010001110101111101110", 
    20 => "00111110110000011101010001110100", 
    21 => "10111101100100101000010010011101", 
    22 => "10111110001100101001010111101010", 
    23 => "00111111101110110001000011101101", 
    24 => "10111110011010011111111111010110", 
    25 => "00111011101000000010101110000100", 
    26 => "10111110100100010101110010000101", 
    27 => "10111110100010001010111001110101", 
    28 => "10111100011010100110011111101000", 
    29 => "10111101111001100101000011100111", 
    30 => "10111110101001010111011110111000", 
    31 => "10111110011111111110010111001001" );

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

entity infer_Weight0_o_0_6 is
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

architecture arch of infer_Weight0_o_0_6 is
    component infer_Weight0_o_0_6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0_6_rom_U :  component infer_Weight0_o_0_6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


