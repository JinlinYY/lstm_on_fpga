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

entity infer_Weight0_i_0brm_rom is 
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


architecture rtl of infer_Weight0_i_0brm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101001101011100010110110101", 
    1 => "00111110101100000100101011011000", 
    2 => "10111100100111001101000111001000", 
    3 => "00111100111000101011010010010110", 
    4 => "10111111000101100000001000100001", 
    5 => "10111101101010011101000001100011", 
    6 => "00111110110100100101010000011110", 
    7 => "00111110100011000011101011001001", 
    8 => "10111111000101001110111001101100", 
    9 => "10111111001111111000000010101010", 
    10 => "10111110000010110000100011011101", 
    11 => "00111101101010001011101100001010", 
    12 => "10111110110111011111000101011010", 
    13 => "10111101110011000001011111101100", 
    14 => "10111110011000011000011101100010", 
    15 => "10111111000001000010100001011111", 
    16 => "00111101101111000110001110101110", 
    17 => "10111110111100101100101010111100", 
    18 => "10111111001011110011101010111101", 
    19 => "00111111000000000110011111110001", 
    20 => "00111101111000101100010111100011", 
    21 => "10111011000110110000111011100101", 
    22 => "10111111011111011000011100101111", 
    23 => "10111110110111100110100001011110", 
    24 => "10111110100000110110000011110010", 
    25 => "00111111101000110101101001010011", 
    26 => "00111111001011110000000000110111", 
    27 => "00111101010111101111110110000111", 
    28 => "00111111010000010000110000011100", 
    29 => "10111111100001001010000000110100", 
    30 => "10111111000100101000101100101010", 
    31 => "00111110000101100010111001001101" );

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

entity infer_Weight0_i_0brm is
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

architecture arch of infer_Weight0_i_0brm is
    component infer_Weight0_i_0brm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0brm_rom_U :  component infer_Weight0_i_0brm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


