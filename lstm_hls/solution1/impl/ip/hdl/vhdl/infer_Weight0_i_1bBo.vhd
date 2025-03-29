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

entity infer_Weight0_i_1bBo_rom is 
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


architecture rtl of infer_Weight0_i_1bBo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111000001100111011011101010", 
    1 => "00111111001110001010000000101100", 
    2 => "00111101010011111101010111001011", 
    3 => "00111111000100110101110111011101", 
    4 => "00111111000001100001101111000001", 
    5 => "00111111100100001111111010101100", 
    6 => "10111110111011010010110001111100", 
    7 => "00111111100011000100010110001001", 
    8 => "10111110001000111001011110011010", 
    9 => "00111110110100100011010001000100", 
    10 => "00111110101100000001101111101011", 
    11 => "00111101110011100110001100100000", 
    12 => "00111111000100000100011100111101", 
    13 => "10111101100000011011111110111110", 
    14 => "00111111001001100101100110011111", 
    15 => "00111111011101010111101111111010", 
    16 => "00111110110001000110101011100100", 
    17 => "00111111010011110101001110100100", 
    18 => "00111111000110010000001000110110", 
    19 => "10111101100000010111101010001001", 
    20 => "00111011101001000010101011101101", 
    21 => "00111111000101111101101110110001", 
    22 => "00111110100110101111111110001111", 
    23 => "10111110101000001110000001100101", 
    24 => "00111110101010000101101010010010", 
    25 => "10111100111010010110010111110101", 
    26 => "10111100010001100101110001110000", 
    27 => "10111110111010000100100010111111", 
    28 => "10111110010010111011110110111110", 
    29 => "10111111000010100110111100001101", 
    30 => "00111101011001000100010100100100", 
    31 => "10111110001000010010001000110010" );

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

entity infer_Weight0_i_1bBo is
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

architecture arch of infer_Weight0_i_1bBo is
    component infer_Weight0_i_1bBo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1bBo_rom_U :  component infer_Weight0_i_1bBo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


