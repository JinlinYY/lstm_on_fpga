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

entity infer_Weight0_c_0bHp_rom is 
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


architecture rtl of infer_Weight0_c_0bHp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111000101010011000000000110", 
    1 => "10111110000100011001110010011101", 
    2 => "10111110001101100010110011111110", 
    3 => "00111110000100100101000000101111", 
    4 => "10111110001011111111001010100001", 
    5 => "10111101100000011111100101101010", 
    6 => "10111101110100101110011010100111", 
    7 => "00111110111000010001111101110001", 
    8 => "10111101000101010001101001000011", 
    9 => "00111011000101011000110110011011", 
    10 => "10111110101100011100100110110100", 
    11 => "10111110101101111011100001001110", 
    12 => "00111110101011011101011111101101", 
    13 => "00111101110010100000011001100100", 
    14 => "10111111011000111100100010001110", 
    15 => "10111110010111100111100100100101", 
    16 => "00111110000100001101101101101010", 
    17 => "00111101001001100101101011011110", 
    18 => "10111111000010011000000011000011", 
    19 => "10111110000111000100011100011011", 
    20 => "10111110010101101000100010111110", 
    21 => "00111101101100000101100101100100", 
    22 => "00111110011011110101011111110111", 
    23 => "00111110110110011010111010010010", 
    24 => "10111110100100100101101001101000", 
    25 => "10111101110110001000010011000111", 
    26 => "00111101000111000010111101000000", 
    27 => "00111101101010101011001101101000", 
    28 => "10111101010010101011101101000101", 
    29 => "10111110000101110010100010100110", 
    30 => "10111110100110010101010110110100", 
    31 => "10111101111101100101001111001010" );

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

entity infer_Weight0_c_0bHp is
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

architecture arch of infer_Weight0_c_0bHp is
    component infer_Weight0_c_0bHp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0bHp_rom_U :  component infer_Weight0_c_0bHp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


