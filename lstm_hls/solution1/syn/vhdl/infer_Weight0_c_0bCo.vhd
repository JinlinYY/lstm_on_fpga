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

entity infer_Weight0_c_0bCo_rom is 
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


architecture rtl of infer_Weight0_c_0bCo_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111101010011101101000110111111", 
    1 => "00111101001000011111111100101110", 
    2 => "00111110101101101000011011101000", 
    3 => "10111111001101110101111011011001", 
    4 => "00111101010111110000111001001110", 
    5 => "00111110111110111000010000010010", 
    6 => "10111111000010001000010001110011", 
    7 => "00111110100111110010000100001100", 
    8 => "00111101001101000101101111110010", 
    9 => "00111110110010110111100101010011", 
    10 => "00111110110111001001111100001110", 
    11 => "10111111000010110100111001000100", 
    12 => "10111110010001000011010101101001", 
    13 => "00111110110000011010000000100111", 
    14 => "00111110111110011100001111110000", 
    15 => "10111110111001111101100110011001", 
    16 => "10111111001101110010111110101001", 
    17 => "00111110100000001000011101000100", 
    18 => "10111101111010001100011010010011", 
    19 => "10111110100011010101100110010010", 
    20 => "10111111100110111101100100101011", 
    21 => "00111110111110100100111100000001", 
    22 => "00111101000111100110100010100001", 
    23 => "00111101110000001111101110101001", 
    24 => "00111110100010011010001010100101", 
    25 => "10111110101011111011100100111001", 
    26 => "10111110111011111001001000001000", 
    27 => "00111110110000111101011011101001", 
    28 => "00111100010000010100110001100110", 
    29 => "10111111001011001101010011101101", 
    30 => "00111110111001111010101101010100", 
    31 => "10111110110001011001010111111111" );

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

entity infer_Weight0_c_0bCo is
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

architecture arch of infer_Weight0_c_0bCo is
    component infer_Weight0_c_0bCo_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0bCo_rom_U :  component infer_Weight0_c_0bCo_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


