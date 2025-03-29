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

entity infer_Weight0_c_1bPq_rom is 
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


architecture rtl of infer_Weight0_c_1bPq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111111001100100100010110010001", 
    1 => "00111110010000001110101001011011", 
    2 => "00111110000000000111000011111100", 
    3 => "00111110001001111010111100100001", 
    4 => "10111101110111101010111111101110", 
    5 => "00111110010001010001110000011001", 
    6 => "00111101000111111000000010011001", 
    7 => "00111110100010101010111110111100", 
    8 => "00111110100001110101001011011011", 
    9 => "00111110000110110001001111100000", 
    10 => "10111110011101101111001001100011", 
    11 => "10111110100001000100001110010001", 
    12 => "10111101101100111111000001111000", 
    13 => "10111101001010100110010011000011", 
    14 => "10111111001101110010000010000110", 
    15 => "00111110101011110111101000101101", 
    16 => "00111110001100000110010001100111", 
    17 => "10111101111111110001011010110001", 
    18 => "00111110000101011110000000101111", 
    19 => "00111111001010110001100001010101", 
    20 => "10111110010000110110000101010110", 
    21 => "00111110101010100001010111111101", 
    22 => "00111100100001101111110011011111", 
    23 => "00111101010110110010101100110100", 
    24 => "10111100101111001111000010110111", 
    25 => "00111110010101001101100001110111", 
    26 => "00111110001000110000010001000111", 
    27 => "10111110100000001111101011011111", 
    28 => "00111101111100000000000011001001", 
    29 => "10111110101110001111010111100100", 
    30 => "00111110101101101011011001111100", 
    31 => "10111111001010101101010001011111" );

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

entity infer_Weight0_c_1bPq is
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

architecture arch of infer_Weight0_c_1bPq is
    component infer_Weight0_c_1bPq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_1bPq_rom_U :  component infer_Weight0_c_1bPq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


