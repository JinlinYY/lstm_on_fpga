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

entity infer_Weight0_c_0_2_rom is 
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


architecture rtl of infer_Weight0_c_0_2_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110111111111011000100011000", 
    1 => "00111110010100111001110011011000", 
    2 => "10111011111100011011001001011111", 
    3 => "00111110000111100010101011000011", 
    4 => "00111110101100011111011101010001", 
    5 => "10111110110101010111111001100111", 
    6 => "10111110011000010001100000111011", 
    7 => "10111010100011100011011010001111", 
    8 => "10111011100011100101100000011101", 
    9 => "10111100110110100101011101100100", 
    10 => "10111110100011111011111011111101", 
    11 => "00111101100101101111010111001011", 
    12 => "00111110011100000011111101110000", 
    13 => "10111101101011001011100111101101", 
    14 => "10111110100001010110110110100000", 
    15 => "00111101111011101101110011000010", 
    16 => "00111110111000100111110110101010", 
    17 => "10111110000000100010110011001011", 
    18 => "00111110100011001001010101111101", 
    19 => "10111110001101100001010111101100", 
    20 => "10111110011111001010001001010101", 
    21 => "10111101110011100111011110010010", 
    22 => "01000000001001000101110111111111", 
    23 => "10111100110011100010111100111000", 
    24 => "00111110101001110101010111011110", 
    25 => "10111111000000110110001001010010", 
    26 => "00111101101000011010101111010010", 
    27 => "10111101101111101001110110010101", 
    28 => "00111110001110100111001001100101", 
    29 => "00111101111110110000110111011000", 
    30 => "10111110110010111111011000111100", 
    31 => "00111101011110111000001111001111" );

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

entity infer_Weight0_c_0_2 is
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

architecture arch of infer_Weight0_c_0_2 is
    component infer_Weight0_c_0_2_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0_2_rom_U :  component infer_Weight0_c_0_2_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


