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

entity infer_Weight0_f_0Zio_rom is 
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


architecture rtl of infer_Weight0_f_0Zio_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101000110110110010011100000", 
    1 => "10111111001101101011010011111010", 
    2 => "00111101101101110110001001010010", 
    3 => "10111111001101100011100110010011", 
    4 => "10111110110000100101011010011011", 
    5 => "10111111100000010101100110110100", 
    6 => "00111110101010100110111110100100", 
    7 => "10111111010100011010111101111101", 
    8 => "10111110010110111101100111001011", 
    9 => "10111111010000001001010001001111", 
    10 => "10111111001011101000111010110100", 
    11 => "10111110101100110000101010010001", 
    12 => "10111110010110110011000101111111", 
    13 => "10111110101010001011011111100101", 
    14 => "10111111000001010100100011101101", 
    15 => "00111110101010101001000011101111", 
    16 => "10111101101010101110111010100110", 
    17 => "10111110100100000011000011000010", 
    18 => "10111111000010000000010111000100", 
    19 => "10111110100111000000101000101000", 
    20 => "10111111001000110010101010101110", 
    21 => "10111110100111111010001001101010", 
    22 => "10111110110010011100010101100001", 
    23 => "10111111110011101010000000110100", 
    24 => "10111110111101010010100101111000", 
    25 => "10111110001101110111010100110010", 
    26 => "10111111010000111111011001101111", 
    27 => "10111110100011001000110010010011", 
    28 => "10111110110010011101111001101010", 
    29 => "10111110101100001010000010110010", 
    30 => "10111110001011110110011110110010", 
    31 => "00111100000001101100001000100111" );

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

entity infer_Weight0_f_0Zio is
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

architecture arch of infer_Weight0_f_0Zio is
    component infer_Weight0_f_0Zio_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_0Zio_rom_U :  component infer_Weight0_f_0Zio_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


