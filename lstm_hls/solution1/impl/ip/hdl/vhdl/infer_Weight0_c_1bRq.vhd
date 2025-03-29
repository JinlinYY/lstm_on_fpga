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

entity infer_Weight0_c_1bRq_rom is 
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


architecture rtl of infer_Weight0_c_1bRq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101100011000011000110011100", 
    1 => "00111111000100110101010010001111", 
    2 => "10111110110010001000001101110111", 
    3 => "10111110001000111101101011111001", 
    4 => "10111111000000101001001010000001", 
    5 => "00111110001000100101101000100101", 
    6 => "10111101011111011000110011110100", 
    7 => "00111110110000100011110110110100", 
    8 => "10111101101110011110110011110110", 
    9 => "10111110001010111101100001111011", 
    10 => "10111100011111101101101001100110", 
    11 => "00111111101000001000100100101011", 
    12 => "10111110101010101011111100110100", 
    13 => "10111110111011010111110001001110", 
    14 => "10111111001011000100000100010100", 
    15 => "10111101000111011110010110001110", 
    16 => "00111110111111010110110000001101", 
    17 => "10111111001000110010010011101010", 
    18 => "10111110010110011000101111111000", 
    19 => "00111101000100100101101110111000", 
    20 => "10111110000111101000100000010110", 
    21 => "00111010100011100011011010001111", 
    22 => "00111110011011111010000100011011", 
    23 => "00111110100111010100010111101001", 
    24 => "00111110011100011100111011110010", 
    25 => "10111101111101100101001000110111", 
    26 => "10111011111101100110000111110010", 
    27 => "10111110000100001010110111001101", 
    28 => "00111110101110010110110011101000", 
    29 => "00111110010101111011011010111011", 
    30 => "10111111001010011011001111100001", 
    31 => "00111110100010010011110111111011" );

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

entity infer_Weight0_c_1bRq is
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

architecture arch of infer_Weight0_c_1bRq is
    component infer_Weight0_c_1bRq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_1bRq_rom_U :  component infer_Weight0_c_1bRq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


