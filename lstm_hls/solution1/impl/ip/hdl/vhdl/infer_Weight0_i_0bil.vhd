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

entity infer_Weight0_i_0bil_rom is 
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


architecture rtl of infer_Weight0_i_0bil_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111100100010001001001110111000", 
    1 => "10111110001100011101110111100011", 
    2 => "10111100101111100100100010100110", 
    3 => "10111111000100001101000000110101", 
    4 => "10111111001010011011111010110010", 
    5 => "10111111011100010111011110000101", 
    6 => "00111101100100110011011111101011", 
    7 => "10111111010010101111111111000001", 
    8 => "10111101100110010010011111010100", 
    9 => "00111111010101010111000011100111", 
    10 => "00111111000000110011000001100010", 
    11 => "10111101100101101110100010110000", 
    12 => "00111110101011000101110001010111", 
    13 => "00111101001110000100100001111100", 
    14 => "10111111100000101000110011011111", 
    15 => "10111111101011111010011010000011", 
    16 => "10111111000110001100000010111110", 
    17 => "00111111001001010100101001001101", 
    18 => "00111110000100110110100010101101", 
    19 => "00111111000111001110101100110101", 
    20 => "10111110101000110111011110011111", 
    21 => "10111111000111101011101111011100", 
    22 => "00111101101000010010011110110011", 
    23 => "10111110010000011000001100110000", 
    24 => "10111111010101101010000000110100", 
    25 => "00111111001101101110000001011101", 
    26 => "00111110011011110101000110101101", 
    27 => "10111111000100001110000010101000", 
    28 => "10111110111010010010111001000001", 
    29 => "00111110000001100000000101111001", 
    30 => "10111101110101100101001101000011", 
    31 => "10111110100100111111110000100010" );

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

entity infer_Weight0_i_0bil is
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

architecture arch of infer_Weight0_i_0bil is
    component infer_Weight0_i_0bil_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0bil_rom_U :  component infer_Weight0_i_0bil_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


