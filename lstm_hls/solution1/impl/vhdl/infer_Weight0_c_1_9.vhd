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

entity infer_Weight0_c_1_9_rom is 
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


architecture rtl of infer_Weight0_c_1_9_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110001100000001011001001000", 
    1 => "10111111010010001111011010101101", 
    2 => "00111100100010010000101101000001", 
    3 => "00111111001111000001001110001000", 
    4 => "00111110100101010000011000010100", 
    5 => "10111110110100011011101010100001", 
    6 => "00111111000101011111010110111110", 
    7 => "10111110100101110110001110100010", 
    8 => "10111101001110011010000001101010", 
    9 => "10111101001101100100100111010100", 
    10 => "10111110011000011000000010010001", 
    11 => "00111110101011000011011110100100", 
    12 => "00111110111000100111110011100001", 
    13 => "10111100101010001111000110010001", 
    14 => "10111101111011100000001000100001", 
    15 => "00111110110111100111110000000111", 
    16 => "10111101100011101111001111010100", 
    17 => "10111110011100110111110110100110", 
    18 => "00111110100011010000001101010011", 
    19 => "10111110100101011010101111000001", 
    20 => "10111110101011110010101000010111", 
    21 => "10111111011110111100011010111001", 
    22 => "10111110000111110011011100110011", 
    23 => "10111110101110101101001110000100", 
    24 => "00111101001010100111000101011000", 
    25 => "10111110100100011101000100001011", 
    26 => "00111111011101000101101100101001", 
    27 => "10111110101010011011111000001010", 
    28 => "10111110011001101100011000010101", 
    29 => "00111101010000001000001000000110", 
    30 => "00111011111010001010111110000001", 
    31 => "10111101110110010100100001010110" );

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

entity infer_Weight0_c_1_9 is
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

architecture arch of infer_Weight0_c_1_9 is
    component infer_Weight0_c_1_9_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_1_9_rom_U :  component infer_Weight0_c_1_9_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


