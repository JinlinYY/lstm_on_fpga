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

entity infer_Weight0_c_1bNq_rom is 
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


architecture rtl of infer_Weight0_c_1bNq_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110000101010101100000100001", 
    1 => "00111101010011111011010101001010", 
    2 => "00111110000010101001001110101111", 
    3 => "00111101100001000000001010001110", 
    4 => "10111101101111111011011110100110", 
    5 => "00111110011111110010001110001001", 
    6 => "00111110000100011100000000000001", 
    7 => "00111011101100101101100100000110", 
    8 => "10111110111011000000111111001011", 
    9 => "00111110100101001110101011010001", 
    10 => "10111101101000001100010100100010", 
    11 => "10111101100101100001111011010110", 
    12 => "00111011100111110001111100010101", 
    13 => "10111110100011101100100011010110", 
    14 => "00111101000001101100111010111100", 
    15 => "00111111000011010101101101010111", 
    16 => "10111110111110001111001111101101", 
    17 => "00111110011101111110011011110111", 
    18 => "00111101111111100111001000010001", 
    19 => "00111110000101011110110111010000", 
    20 => "10111110110111011110100100011000", 
    21 => "10111101101101010010100011110010", 
    22 => "10111011110101110000111001101111", 
    23 => "10111101111111000001110011100111", 
    24 => "00111110010101101010001100111000", 
    25 => "00111110001000001110110011111010", 
    26 => "10111101101111011100010000000000", 
    27 => "00111101011000100111111000001111", 
    28 => "10111110011011110010110100111100", 
    29 => "10111110100110101110010110111101", 
    30 => "10111101101111001001011000000011", 
    31 => "00111110110011110101000111001110" );

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

entity infer_Weight0_c_1bNq is
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

architecture arch of infer_Weight0_c_1bNq is
    component infer_Weight0_c_1bNq_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_1bNq_rom_U :  component infer_Weight0_c_1bNq_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


