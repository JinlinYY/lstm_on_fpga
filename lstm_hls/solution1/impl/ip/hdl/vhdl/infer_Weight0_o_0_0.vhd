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

entity infer_Weight0_o_0_0_rom is 
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


architecture rtl of infer_Weight0_o_0_0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101111001110110110110011000", 
    1 => "10111101110100100000010110111100", 
    2 => "00111110010101100101100000111111", 
    3 => "10111100110010111110101001001111", 
    4 => "00111111000100010100001100011000", 
    5 => "00111100110101110001000010001000", 
    6 => "10111101111001100111000011100011", 
    7 => "10111101110011010101101101101000", 
    8 => "10111101101100010000001101000011", 
    9 => "00111101110100001110101010011110", 
    10 => "10111110100010000000101001111100", 
    11 => "10111101100011111010001111111101", 
    12 => "00111101110001111110001110001111", 
    13 => "00111101101000111000101001111110", 
    14 => "10111110000000000001111101110101", 
    15 => "10111101110010010111100001001111", 
    16 => "00111110010100111100100001011100", 
    17 => "10111101010100000010011010001001", 
    18 => "00111100100100100001011010000011", 
    19 => "00111101110100101111100001111011", 
    20 => "00111100100000111000001110101110", 
    21 => "00111110101101110110011011000111", 
    22 => "00111101101011100100101001111011", 
    23 => "10111011101011110100011010101010", 
    24 => "10111110001110110011010000011110", 
    25 => "10111101100100001011111110100001", 
    26 => "01000000001100000011010000010001", 
    27 => "10111110000000010100011111110001", 
    28 => "00111101100011100110011011001011", 
    29 => "10111100010111000001011000010110", 
    30 => "10111101000110000010100110001101", 
    31 => "00111100000010010101000001110110" );

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

entity infer_Weight0_o_0_0 is
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

architecture arch of infer_Weight0_o_0_0 is
    component infer_Weight0_o_0_0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0_0_rom_U :  component infer_Weight0_o_0_0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


