-- ==============================================================
-- File generated on Fri Mar 28 13:00:20 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_f_1_5_rom is 
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


architecture rtl of infer_Weight0_f_1_5_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111001011011101000111100101", 
    1 => "00111110100000100100011011100001", 
    2 => "10111101011101101111100111111101", 
    3 => "10111110101000111011101110100101", 
    4 => "10111111000101101101101110000011", 
    5 => "10111110010110001101110001010101", 
    6 => "00111110110110110010011110001001", 
    7 => "10111110111111110010010001110100", 
    8 => "00111110110111101001111011000011", 
    9 => "10111111010011111010010101111111", 
    10 => "10111110111001001000101101100101", 
    11 => "10111100111100011110000010000011", 
    12 => "10111111000010110010110000110000", 
    13 => "10111110111011101010100010111001", 
    14 => "10111110100001000000000110100011", 
    15 => "10111111010110110010101111111110", 
    16 => "10111101100011111101001010100110", 
    17 => "10111111001101010110010111000011", 
    18 => "10111100011111110001110110000010", 
    19 => "10111110111110100010001011110111", 
    20 => "10111110110100010111101101010011", 
    21 => "00111101001000000011000011000010", 
    22 => "10111110110111001011110101010101", 
    23 => "10111110010000101111101100011010", 
    24 => "10111110011100000001110110011111", 
    25 => "10111101101110110011010010100100", 
    26 => "10111110010111101111100111011011", 
    27 => "00111110010111111001000110100011", 
    28 => "10111110111001110111011111010001", 
    29 => "10111110110100010010101011011000", 
    30 => "10111110000110010101101110111100", 
    31 => "00111101010001011100000000110011" );

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

entity infer_Weight0_f_1_5 is
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

architecture arch of infer_Weight0_f_1_5 is
    component infer_Weight0_f_1_5_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1_5_rom_U :  component infer_Weight0_f_1_5_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


