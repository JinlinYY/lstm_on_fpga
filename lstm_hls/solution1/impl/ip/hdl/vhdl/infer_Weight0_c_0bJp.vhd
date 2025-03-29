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

entity infer_Weight0_c_0bJp_rom is 
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


architecture rtl of infer_Weight0_c_0bJp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110101011010001101101110001", 
    1 => "10111111011010000011100100110111", 
    2 => "10111110000011010001011111000110", 
    3 => "00111110011000011010010110000111", 
    4 => "00111110111010111101010101010110", 
    5 => "10111101111000111000001100100111", 
    6 => "10111111011110100101000101011101", 
    7 => "10111110000101110101001011011011", 
    8 => "10111101100000010011010011001110", 
    9 => "10111110000111111000110001100101", 
    10 => "10111110011010000101001111000001", 
    11 => "10111100110100001001011111001000", 
    12 => "00111110011100100100101011110001", 
    13 => "00111110001010011001111000001110", 
    14 => "10111101111110110001001010010000", 
    15 => "10111110001101001101010100001111", 
    16 => "10111111011000111011101001110111", 
    17 => "10111110001001000000111100100100", 
    18 => "00111110000100011000000100010111", 
    19 => "00111110011100111100010100110111", 
    20 => "10111110111001010100001010000001", 
    21 => "00111110011100001100100001000111", 
    22 => "00111100100011100000101010000101", 
    23 => "00111110100001001001101110100110", 
    24 => "00111101111100011111100000011010", 
    25 => "00111101101111101110010001011100", 
    26 => "10111110101000001101100101110011", 
    27 => "00111100111111100000101011001000", 
    28 => "10111101101000111001001111101110", 
    29 => "00111111010101100011101110101100", 
    30 => "10111110111011001000010100111100", 
    31 => "10111101111011011010100110000110" );

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

entity infer_Weight0_c_0bJp is
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

architecture arch of infer_Weight0_c_0bJp is
    component infer_Weight0_c_0bJp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0bJp_rom_U :  component infer_Weight0_c_0bJp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


