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

entity infer_Weight0_o_0bXr_rom is 
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


architecture rtl of infer_Weight0_o_0bXr_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111011110000100001010110111", 
    1 => "00111110101010000010100001011111", 
    2 => "10111110000010000011101111100110", 
    3 => "00111101101101101100011110101000", 
    4 => "10111110111010000000010011011010", 
    5 => "10111110011001001100010000000101", 
    6 => "10111100011011110000111100010111", 
    7 => "00111101010110001011111001110011", 
    8 => "00111110100011000100010100100100", 
    9 => "10111111000110101100000010010100", 
    10 => "10111111011100010010100011110010", 
    11 => "10111110010001010100000111011001", 
    12 => "10111111000101011111010110011101", 
    13 => "00111110001001010001000011010100", 
    14 => "10111111001000110101000100010110", 
    15 => "00111111011101000100010110101010", 
    16 => "10111110000011000110101011000010", 
    17 => "10111101101111010100001100000111", 
    18 => "10111001011111011100000101100001", 
    19 => "00111100001000001010110110001010", 
    20 => "00111101111101001000111101010100", 
    21 => "00111111011111010110101110011000", 
    22 => "00111110100101010010100111011100", 
    23 => "00111111000001111100000001001101", 
    24 => "10111110001011101000011001000000", 
    25 => "00111110001010111011111011001011", 
    26 => "10111101101100111111111000011001", 
    27 => "10111111100001110011000001100010", 
    28 => "10111110101000000010100010100010", 
    29 => "00111110100011010010001000100001", 
    30 => "00111110111001011100110001000010", 
    31 => "10111110110111110010001101101000" );

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

entity infer_Weight0_o_0bXr is
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

architecture arch of infer_Weight0_o_0bXr is
    component infer_Weight0_o_0bXr_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0bXr_rom_U :  component infer_Weight0_o_0bXr_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


