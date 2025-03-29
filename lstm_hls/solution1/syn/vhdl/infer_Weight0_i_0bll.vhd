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

entity infer_Weight0_i_0bll_rom is 
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


architecture rtl of infer_Weight0_i_0bll_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110100111001010011111010110", 
    1 => "10111111011001001010001010101001", 
    2 => "10111110000101101100111101000010", 
    3 => "10111110111001010011000100010010", 
    4 => "00111101110100101000110110000110", 
    5 => "00111110010001001100001100111011", 
    6 => "10111110100100110001011011100011", 
    7 => "10111101110100111101100101100110", 
    8 => "00111110111011110011100100001000", 
    9 => "00111111001101110111010101010011", 
    10 => "00111101101001111110001110001111", 
    11 => "10111011011100111011101001110111", 
    12 => "00111110000100100100111001011001", 
    13 => "10111110111101101001101011110110", 
    14 => "10111111010101011001100010111111", 
    15 => "00111111100000001111101001100001", 
    16 => "10111101011011110000000001101001", 
    17 => "10111111010100100101010011100111", 
    18 => "10111111100101010001001011000010", 
    19 => "00111111001001001010110101011000", 
    20 => "10111110101111000001001101110111", 
    21 => "00111111010000000010111011111101", 
    22 => "00111101101111100000001101110001", 
    23 => "10111011100101100001001111010011", 
    24 => "10111111011001001000100111110100", 
    25 => "00111110100000100100100001110011", 
    26 => "10111111011100010011000001101010", 
    27 => "10111110110110010001010110111110", 
    28 => "10111111010011000111010111110111", 
    29 => "10111111000111001011110100010010", 
    30 => "10111110111100111110101000001100", 
    31 => "00111110111010110011011111101011" );

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

entity infer_Weight0_i_0bll is
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

architecture arch of infer_Weight0_i_0bll is
    component infer_Weight0_i_0bll_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_0bll_rom_U :  component infer_Weight0_i_0bll_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


