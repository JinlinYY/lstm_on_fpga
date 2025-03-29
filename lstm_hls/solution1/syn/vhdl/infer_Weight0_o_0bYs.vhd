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

entity infer_Weight0_o_0bYs_rom is 
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


architecture rtl of infer_Weight0_o_0bYs_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110100111010010010011100001", 
    1 => "10111110101001111100110011000000", 
    2 => "00111010111110010110111000010110", 
    3 => "10111110111010100101110010000001", 
    4 => "00111110110000100110010000011011", 
    5 => "10111110100101000001101011001110", 
    6 => "00111110101101110110101001110010", 
    7 => "10111110100111101010000010011001", 
    8 => "00111110000100010100110001100110", 
    9 => "10111110011100001110011111111111", 
    10 => "00111111010010000100110000000110", 
    11 => "10111110111010000110111010100000", 
    12 => "00111111010111110011110100101001", 
    13 => "00111101000001101001101001001110", 
    14 => "00111110010101011000000100000110", 
    15 => "10111111010110000111110001110100", 
    16 => "00111110110100010101010111111000", 
    17 => "10111110001011101110111001010010", 
    18 => "10111110010010100110101101010001", 
    19 => "00111101100101010011101111010001", 
    20 => "10111100110000111110011101001011", 
    21 => "00111111001001101100110011000100", 
    22 => "00111101110101100100100001000001", 
    23 => "10111111000110100110000011110110", 
    24 => "00111110010011101101100011010011", 
    25 => "00111110100111100111100010011110", 
    26 => "10111110011111101110010011100010", 
    27 => "00111110110000000001010100011010", 
    28 => "10111101110100111110110011001100", 
    29 => "10111110000101001000110111000001", 
    30 => "10111101101001111111000110110111", 
    31 => "00111110100000000101011011100111" );

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

entity infer_Weight0_o_0bYs is
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

architecture arch of infer_Weight0_o_0bYs is
    component infer_Weight0_o_0bYs_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0bYs_rom_U :  component infer_Weight0_o_0bYs_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


