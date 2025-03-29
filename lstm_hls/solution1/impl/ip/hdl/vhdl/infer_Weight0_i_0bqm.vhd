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

entity infer_Weight0_i_0bqm_rom is 
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


architecture rtl of infer_Weight0_i_0bqm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110111011001100100101000011", 
    1 => "10111111001001110101111101110000", 
    2 => "10111101100110000001111100010000", 
    3 => "10111110101110000101000110000111", 
    4 => "00111100111111001110110110010001", 
    5 => "00111111011111000110010100110000", 
    6 => "10111111000100001100110111011001", 
    7 => "00111100010100000000001011100010", 
    8 => "00111110011010011010010000010110", 
    9 => "00111110111101101110111101011111", 
    10 => "10111110101010011001110010011101", 
    11 => "00111110100101100011010110000011", 
    12 => "10111111000101000100010111011101", 
    13 => "00111100110101001111100111000010", 
    14 => "00111111101100001110010100101110", 
    15 => "10111110011111100010001111110010", 
    16 => "00111110111101110001000010101010", 
    17 => "00111110110101110000010100100001", 
    18 => "00111101000000000110001110011101", 
    19 => "10111110000111001011001110100010", 
    20 => "10111111000100000001010111000010", 
    21 => "00111110000111000111010000110010", 
    22 => "00111111000101000101100000110110", 
    23 => "10111111011000000011100100000100", 
    24 => "00111101110000000110000011111110", 
    25 => "00111111010111001010111101110001", 
    26 => "00111111010010101011010001110100", 
    27 => "00111111000010100011110110110100", 
    28 => "10111110001110111001011101111000", 
    29 => "10111111000101010001011100011110", 
    30 => "10111111000100000110000011011101", 
    31 => "10111110100010011111110000101011" );

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

entity infer_Weight0_i_0bqm is
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

architecture arch of infer_Weight0_i_0bqm is
    component infer_Weight0_i_0bqm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0bqm_rom_U :  component infer_Weight0_i_0bqm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


