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

entity infer_Weight0_o_0_1_rom is 
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


architecture rtl of infer_Weight0_o_0_1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110101100011100000011001010", 
    1 => "10111110111111001011000000111010", 
    2 => "00111111011100011101100001010001", 
    3 => "00111110011001111001000110000010", 
    4 => "00111110011111001111000011111010", 
    5 => "00111110110100011010010110000111", 
    6 => "10111110000110000010001011111111", 
    7 => "10111011111010100001100000110111", 
    8 => "10111101110011000010100010110011", 
    9 => "10111110001010111101001011111010", 
    10 => "00111110001010001101000100001111", 
    11 => "10111101000001100100011001101011", 
    12 => "10111111000101111001111110101001", 
    13 => "00111111010001110010100111100101", 
    14 => "00111100101100001111001001111100", 
    15 => "00111111000001100110010111110001", 
    16 => "00111110110011011000100011100011", 
    17 => "10111110011111010100000100110001", 
    18 => "00111101001001001100001011111000", 
    19 => "00111110101100001000100000001110", 
    20 => "10111101101100001111010100011011", 
    21 => "10111100010010100010010101010011", 
    22 => "00111111010011010001001010111010", 
    23 => "10111111101110110000101010001001", 
    24 => "10111110100110101100010001110010", 
    25 => "00111110101111011001010011110010", 
    26 => "10111101111011010100000010101011", 
    27 => "10111101110101000001101001101001", 
    28 => "10111110111100101100001111001010", 
    29 => "00111110000010000011011101110010", 
    30 => "10111111101100000110100010110010", 
    31 => "00111110100111010110110111000010" );

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

entity infer_Weight0_o_0_1 is
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

architecture arch of infer_Weight0_o_0_1 is
    component infer_Weight0_o_0_1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0_1_rom_U :  component infer_Weight0_o_0_1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


