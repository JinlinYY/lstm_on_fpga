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

entity infer_Weight0_c_0bKp_rom is 
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


architecture rtl of infer_Weight0_c_0bKp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111001100000111101001101100", 
    1 => "10111111010001110101001100111111", 
    2 => "10111110000110111101011001100010", 
    3 => "00111110110111010111101011111111", 
    4 => "10111101010110110101010100100110", 
    5 => "10111110110101100101010101111110", 
    6 => "10111110011111010011111110011110", 
    7 => "00111101110000111100000001111111", 
    8 => "10111101001010101110010010110000", 
    9 => "10111110011001010001000110011101", 
    10 => "00111111001011111001110101001110", 
    11 => "10111110001101100001010101100110", 
    12 => "00111110000111111100001101110010", 
    13 => "00111101101000000010000010000001", 
    14 => "10111110100111010000111001111000", 
    15 => "00111110100100011001011100111110", 
    16 => "00111101010101101000000111101101", 
    17 => "00111110101101011110001011101111", 
    18 => "00111110101001001000011100110011", 
    19 => "00111101011100100000011101001111", 
    20 => "10111110010010110010101011110001", 
    21 => "10111111000101011100011001001100", 
    22 => "10111110011011111010010100001001", 
    23 => "00111100010001101111011110100001", 
    24 => "00111101000010110111000010101100", 
    25 => "10111110110110001101101011100100", 
    26 => "00111011010111101011000011111011", 
    27 => "10111111001010011100011000101010", 
    28 => "00111111000001000011001010011000", 
    29 => "10111110111100100000001101100000", 
    30 => "10111101100100011100110110100011", 
    31 => "00111110110001110010000100001100" );

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

entity infer_Weight0_c_0bKp is
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

architecture arch of infer_Weight0_c_0bKp is
    component infer_Weight0_c_0bKp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0bKp_rom_U :  component infer_Weight0_c_0bKp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


