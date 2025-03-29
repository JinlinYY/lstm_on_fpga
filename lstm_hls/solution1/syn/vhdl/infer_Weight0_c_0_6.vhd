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

entity infer_Weight0_c_0_6_rom is 
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


architecture rtl of infer_Weight0_c_0_6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110001100111111100010011000", 
    1 => "10111110000111010100110000110100", 
    2 => "00111110101101110100001000010100", 
    3 => "00111110101110010001110001001100", 
    4 => "00111110101111010110001010011110", 
    5 => "10111100100100101011010111100101", 
    6 => "10111110110111000111101110001001", 
    7 => "10111101011101011101010101101111", 
    8 => "00111101010011100100001000011000", 
    9 => "10111110101011011101011101100111", 
    10 => "10111101110100111111011011000010", 
    11 => "00111110000010011101101000010110", 
    12 => "10111101110110001001110001011110", 
    13 => "00111101111010010100101010110010", 
    14 => "00111111001101101010011101111010", 
    15 => "10111110001110011011001000111110", 
    16 => "10111111011000000100010101100111", 
    17 => "00111110100110010100110010001000", 
    18 => "10111110111011001010000110001100", 
    19 => "10111101101110010110111110101000", 
    20 => "00111101111111011000010100010110", 
    21 => "10111110001101010100010101000001", 
    22 => "10111011100011010101010000010001", 
    23 => "10111101101001000100101101101111", 
    24 => "00111111000000001000000001000001", 
    25 => "00111100000000101001000001101001", 
    26 => "00111110101010111111000011111110", 
    27 => "00111110100100001101111101011001", 
    28 => "00111110011111010011010010011100", 
    29 => "00111101010100110110111101111110", 
    30 => "10111101000000101010100110010011", 
    31 => "00111111000110100111110100110101" );

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

entity infer_Weight0_c_0_6 is
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

architecture arch of infer_Weight0_c_0_6 is
    component infer_Weight0_c_0_6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0_6_rom_U :  component infer_Weight0_c_0_6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


