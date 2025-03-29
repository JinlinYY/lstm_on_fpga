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

entity infer_Weight0_i_1bvn_rom is 
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


architecture rtl of infer_Weight0_i_1bvn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111001010100110111110110101", 
    1 => "00111111000011011110110110101111", 
    2 => "10111111100001101100011011101111", 
    3 => "10111111000000110001101011010010", 
    4 => "00111110111110101111000101100111", 
    5 => "10111111100011010000010111000000", 
    6 => "00111110001101000010010010100010", 
    7 => "10111110001101001011001000110001", 
    8 => "10111111010100011100001101101001", 
    9 => "10111110000011110111101001001110", 
    10 => "00111110100001100011000111010111", 
    11 => "10111110011110111111101101011001", 
    12 => "00111111000011001011100010111111", 
    13 => "00111110000110100110101100001110", 
    14 => "00111110000001010011010100000001", 
    15 => "10111101110111111110001010100100", 
    16 => "10111110001100100001010100110011", 
    17 => "00111110111100010010000100000100", 
    18 => "10111110100000010100000110000101", 
    19 => "10111110010010100110001011101101", 
    20 => "10111110000010101010010101000000", 
    21 => "00111110000111010100000100110001", 
    22 => "00111111010110010110111100010001", 
    23 => "00111110111011000110101000011010", 
    24 => "10111110001110010101101101111001", 
    25 => "10111100100000010001110100110110", 
    26 => "10111110100101001111111010111101", 
    27 => "00111111010011001100010101110110", 
    28 => "00111110101110011010110110000110", 
    29 => "00111110110100011001110100100100", 
    30 => "00111110110110100101001001001000", 
    31 => "10111110111000010111001110111000" );

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

entity infer_Weight0_i_1bvn is
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

architecture arch of infer_Weight0_i_1bvn is
    component infer_Weight0_i_1bvn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1bvn_rom_U :  component infer_Weight0_i_1bvn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


