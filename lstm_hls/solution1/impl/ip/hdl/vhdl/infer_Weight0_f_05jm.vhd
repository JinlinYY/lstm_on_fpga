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

entity infer_Weight0_f_05jm_rom is 
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


architecture rtl of infer_Weight0_f_05jm_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110110011110000111110011101", 
    1 => "10111110101001111110110000110101", 
    2 => "00111110111011100001100100110011", 
    3 => "10111110100100011100111111011101", 
    4 => "10111101100100100110111110100100", 
    5 => "10111111000001000100110011110000", 
    6 => "00111110001101100000010001011100", 
    7 => "00111111001010010001010100010110", 
    8 => "10111110100110101000010010111110", 
    9 => "10111111000011110000000110000110", 
    10 => "10111111010101001001010000111110", 
    11 => "10111110101011110111010001000111", 
    12 => "10111110011000111110100001010111", 
    13 => "10111110101011010100100001100111", 
    14 => "10111101100001100001101011100111", 
    15 => "10111110001010100111000101011000", 
    16 => "10111111010100101100001010011100", 
    17 => "00111111000001011110011111111011", 
    18 => "10111110100110110000101001001110", 
    19 => "10111110111011100111110111011101", 
    20 => "10111110110101000001001000100111", 
    21 => "10111110110110111101011001000001", 
    22 => "00111101100011010011111000001100", 
    23 => "00111110100100100100000010111000", 
    24 => "00111110111011111110001000111111", 
    25 => "10111111100100101101010001011111", 
    26 => "00111101100011010101001110001011", 
    27 => "10111110110010111111110011001010", 
    28 => "00111111001101011001000110011011", 
    29 => "10111111001111100010001101011011", 
    30 => "00111111000110000101100100100001", 
    31 => "10111111010110000111011010011111" );

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

entity infer_Weight0_f_05jm is
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

architecture arch of infer_Weight0_f_05jm is
    component infer_Weight0_f_05jm_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_05jm_rom_U :  component infer_Weight0_f_05jm_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


