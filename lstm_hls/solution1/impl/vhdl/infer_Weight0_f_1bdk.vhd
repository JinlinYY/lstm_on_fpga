-- ==============================================================
-- File generated on Fri Mar 28 13:00:20 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_f_1bdk_rom is 
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


architecture rtl of infer_Weight0_f_1bdk_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110110101111001010101110000", 
    1 => "00111110101100001000010010100101", 
    2 => "00111110101010111010001010111110", 
    3 => "00111110010001000110100000000001", 
    4 => "10111110100100101010100111111000", 
    5 => "00111110001111110001111001001011", 
    6 => "00111111001000011110001100010001", 
    7 => "00111101111000010000000111110011", 
    8 => "00111110000101011001110000000110", 
    9 => "00111111011011110111001000011101", 
    10 => "00111100011110101010010001110110", 
    11 => "10111110101000101100100100001000", 
    12 => "10111101101100000000000111010110", 
    13 => "00111111010001100001101011100111", 
    14 => "00111111000110001000101110111001", 
    15 => "10111110101011111110010110000110", 
    16 => "10111110110100101000101110001111", 
    17 => "00111110000001101111000011010000", 
    18 => "10111111010010001011110101110111", 
    19 => "00111111001000011100011001101101", 
    20 => "10111111000101010010000001001011", 
    21 => "00111111000101010110110000001101", 
    22 => "00111110101001101110011010010111", 
    23 => "00111101100111001101010111111010", 
    24 => "00111111011110001101000110110111", 
    25 => "00111111000001011000001111101000", 
    26 => "00111011111100011011101011000011", 
    27 => "00111110111101101010101011110011", 
    28 => "10111110000100101000111010010011", 
    29 => "10111111001100011101100101011110", 
    30 => "10111111000011111100101001000011", 
    31 => "00111111011000000010001110100111" );

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

entity infer_Weight0_f_1bdk is
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

architecture arch of infer_Weight0_f_1bdk is
    component infer_Weight0_f_1bdk_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1bdk_rom_U :  component infer_Weight0_f_1bdk_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


