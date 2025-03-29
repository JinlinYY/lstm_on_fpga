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

entity infer_Weight0_c_0bLp_rom is 
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


architecture rtl of infer_Weight0_c_0bLp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101111001101110011101100000", 
    1 => "10111110101101010101111101010111", 
    2 => "10111110000110010011010000100110", 
    3 => "10111110110001111000010100001110", 
    4 => "00111110010110101100011110010111", 
    5 => "00111110001001011101110111010011", 
    6 => "10111110011010100011100011111100", 
    7 => "10111110100101110010111100010010", 
    8 => "10111110000101111010101111111100", 
    9 => "10111101101001010001000010010000", 
    10 => "00111110011011001010100011100011", 
    11 => "00111110011100101001000001101001", 
    12 => "10111101010010001001111000110100", 
    13 => "10111101111000011000001011101101", 
    14 => "00111110100001101001001110011111", 
    15 => "10111111001010000110101100100111", 
    16 => "00111110100000011010001010100101", 
    17 => "00111110011111001011110101010101", 
    18 => "00111100100101100110010110011101", 
    19 => "10111111010110011110110011110110", 
    20 => "00111101100100101111110010101101", 
    21 => "10111110110110111111100111101000", 
    22 => "00111101011101110101101001110101", 
    23 => "00111110110100100100011000010111", 
    24 => "00111110011110101001000011001101", 
    25 => "10111101000111110000100100001111", 
    26 => "10111101111000011101001100100100", 
    27 => "00111101100101110001100011101100", 
    28 => "00111110011110011100110011111011", 
    29 => "10111110110100000000010011111011", 
    30 => "00111111000000111100101010000110", 
    31 => "00111101001011011001110011110001" );

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

entity infer_Weight0_c_0bLp is
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

architecture arch of infer_Weight0_c_0bLp is
    component infer_Weight0_c_0bLp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0bLp_rom_U :  component infer_Weight0_c_0bLp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


