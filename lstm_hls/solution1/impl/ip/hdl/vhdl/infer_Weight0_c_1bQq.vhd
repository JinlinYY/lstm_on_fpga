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

entity infer_Weight0_c_1bQq_rom is 
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


architecture rtl of infer_Weight0_c_1bQq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110000110101011010110000000", 
    1 => "00111110101010001011101001100010", 
    2 => "00111101110111101101101001100110", 
    3 => "10111110000001001110110110110011", 
    4 => "00111110100011010001111001110101", 
    5 => "00111111001111101101110001001101", 
    6 => "10111101110011111101101100001010", 
    7 => "00111110111101101100101000000100", 
    8 => "00111110011011011111110010100000", 
    9 => "10111101100010000100010010001101", 
    10 => "10111110101000111111100111000110", 
    11 => "00111110101001010001111101100000", 
    12 => "00111101010011011011010010001001", 
    13 => "00111101101011101011001111011101", 
    14 => "10111110000011111000101110011100", 
    15 => "10111110111101000010000011110111", 
    16 => "00111110000101000011000100111000", 
    17 => "00111110101111111001111100100011", 
    18 => "10111110100111110100101001010110", 
    19 => "10111110011100001110000100101111", 
    20 => "10111111001001111011000010000001", 
    21 => "00111101101110011111011001100110", 
    22 => "10111110000001101010111101000111", 
    23 => "00111110101000111001100000100000", 
    24 => "00111101100111000110100101110011", 
    25 => "00111110001101110011010010110101", 
    26 => "00111110101000010100100001110111", 
    27 => "00111101111001100101011010101100", 
    28 => "00111110010100001110111000000111", 
    29 => "10111101110111100111101110000001", 
    30 => "10111110000100000100011011000111", 
    31 => "10111110100100110110101100101011" );

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

entity infer_Weight0_c_1bQq is
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

architecture arch of infer_Weight0_c_1bQq is
    component infer_Weight0_c_1bQq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_1bQq_rom_U :  component infer_Weight0_c_1bQq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


