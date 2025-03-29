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

entity infer_Weight0_o_1_3_rom is 
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


architecture rtl of infer_Weight0_o_1_3_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110001101000110001011000011", 
    1 => "00111111000010011000001010111010", 
    2 => "00111110111110100111111000001111", 
    3 => "00111111010010100010001110001110", 
    4 => "00111101111011000110001111110001", 
    5 => "00111110010010010110111001011001", 
    6 => "00111111000100101110101110010010", 
    7 => "00111110001011101010011101001000", 
    8 => "10111110001101000111001001111110", 
    9 => "10111110000110010100011101001001", 
    10 => "10111110111101111110000000100110", 
    11 => "10111111110101101101101000010010", 
    12 => "00111111001101011011111010110010", 
    13 => "10111110111100000001110111100010", 
    14 => "00111111000010101100010001010000", 
    15 => "10111101010100100010110010001000", 
    16 => "00111111001000010011010011110000", 
    17 => "10111111011111110100001110100110", 
    18 => "00111110100000010101000111000110", 
    19 => "10111111111001110101000000011010", 
    20 => "10111111000100010001111000010001", 
    21 => "00111101100100001101111010001111", 
    22 => "00111111000011011001100111001100", 
    23 => "00111110001001101110110100100100", 
    24 => "00111110101100011001100110111011", 
    25 => "00111111000100110011100001100001", 
    26 => "10111110111011101000000110001000", 
    27 => "10111111010101001010000101011010", 
    28 => "00111110100111000100000110011010", 
    29 => "10111100010000000100110010001100", 
    30 => "10111111110000111000101011001010", 
    31 => "10111110010111001101010100110000" );

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

entity infer_Weight0_o_1_3 is
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

architecture arch of infer_Weight0_o_1_3 is
    component infer_Weight0_o_1_3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1_3_rom_U :  component infer_Weight0_o_1_3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


