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

entity infer_Weight0_o_0bZs_rom is 
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


architecture rtl of infer_Weight0_o_0bZs_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111001001110101101010111000", 
    1 => "00111110100101110001011100110111", 
    2 => "10111111000000111001110010000100", 
    3 => "10111110011000001110111001001010", 
    4 => "00111110010110110110101111110100", 
    5 => "10111111010101101100000111100011", 
    6 => "00111111001110011011110101010001", 
    7 => "10111101110100010110101100010010", 
    8 => "00111110011100101101111111010111", 
    9 => "00111111000010011111111111010110", 
    10 => "10111111010101011011011101001010", 
    11 => "00111110100000011001011110100010", 
    12 => "10111101101111111101001001100011", 
    13 => "10111111000011100010110101100010", 
    14 => "10111110110000010101011001011100", 
    15 => "00111110000110011100000111111000", 
    16 => "00111110010110101000110110101000", 
    17 => "10111111000001000011111100011100", 
    18 => "10111110101010110010110101001101", 
    19 => "10111110010100100010110011001011", 
    20 => "10111110000110111110110101110100", 
    21 => "00111111100000000101110101001010", 
    22 => "10111111000011000011010001101110", 
    23 => "00111110011011100000101001000010", 
    24 => "10111111010100011101001001111100", 
    25 => "00111110100001000100001101110000", 
    26 => "10111101001010011001100001001010", 
    27 => "10111111010011111110011111000000", 
    28 => "10111010010011101001000111001001", 
    29 => "00111101101101100011000110110110", 
    30 => "10111110110100100111101001100011", 
    31 => "10111110001100011010000000000110" );

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

entity infer_Weight0_o_0bZs is
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

architecture arch of infer_Weight0_o_0bZs is
    component infer_Weight0_o_0bZs_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0bZs_rom_U :  component infer_Weight0_o_0bZs_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


