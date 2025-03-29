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

entity infer_Weight0_o_1ccu_rom is 
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


architecture rtl of infer_Weight0_o_1ccu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111110100011110111101100011", 
    1 => "10111111001101100111111110000000", 
    2 => "10111111100100000010000011011110", 
    3 => "00111110100100110100000000001100", 
    4 => "00111110100010010011000100000001", 
    5 => "10111110110100010110011101100110", 
    6 => "10111101101000101000001101001101", 
    7 => "10111110001110001100011011010110", 
    8 => "10111111000010100101001010001011", 
    9 => "10111111001010010101010100111111", 
    10 => "10111111110110000111010001011100", 
    11 => "10111110110100000110110010000111", 
    12 => "10111101111110001111011110011000", 
    13 => "10111110010011001110101000101001", 
    14 => "00111101100001000101000100110011", 
    15 => "00111101010101101110101111010101", 
    16 => "00111101100101000011001010000111", 
    17 => "10111110011010011011100010001000", 
    18 => "10111110100000001110011101011000", 
    19 => "10111101101000101011101001011010", 
    20 => "10111111010111010001101010101000", 
    21 => "00111110001100110110010101000101", 
    22 => "00111110110010110110101101001100", 
    23 => "10111110001111011111000100010111", 
    24 => "00111110100011011010100100100010", 
    25 => "10111111000111000111010101100000", 
    26 => "10111101100111110101010110011011", 
    27 => "10111110100111110111100011011101", 
    28 => "10111110100100010011010010101101", 
    29 => "10111111001100010001000110111110", 
    30 => "10111110100010111000101000111011", 
    31 => "10111110010011100101100101101101" );

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

entity infer_Weight0_o_1ccu is
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

architecture arch of infer_Weight0_o_1ccu is
    component infer_Weight0_o_1ccu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1ccu_rom_U :  component infer_Weight0_o_1ccu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


