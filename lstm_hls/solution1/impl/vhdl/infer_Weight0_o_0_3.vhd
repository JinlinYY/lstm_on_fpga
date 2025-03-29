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

entity infer_Weight0_o_0_3_rom is 
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


architecture rtl of infer_Weight0_o_0_3_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101110100110100001111111010", 
    1 => "10111111010000101001010000010100", 
    2 => "10111111000001100001010001011001", 
    3 => "00111110110010011110010010110100", 
    4 => "00111110101010101101001000010011", 
    5 => "10111101100110100100111110000111", 
    6 => "00111110100111010101001111001110", 
    7 => "00111110001100110110111111000001", 
    8 => "10111110011101000110100101010001", 
    9 => "00111110000100000000010110000001", 
    10 => "00111110010000010110101011001111", 
    11 => "00111110111000010011010101110110", 
    12 => "00111110101110110001110001100101", 
    13 => "10111110000111110110001110000000", 
    14 => "10111110111000110111010100000000", 
    15 => "10111110110100111101011100101100", 
    16 => "00111110011111000011001011101100", 
    17 => "00111110100101001111011111101100", 
    18 => "10111101110001010100001001011111", 
    19 => "00111110000010100110011110100101", 
    20 => "00111011101101001000110100111011", 
    21 => "10111110100010101000110001011000", 
    22 => "00111110010111101000000100000010", 
    23 => "00111110010101001001101011011101", 
    24 => "10111110111111010010010000011000", 
    25 => "00111110001001100011000001100110", 
    26 => "00111101111110011011000010101011", 
    27 => "10111111000110101110010001001011", 
    28 => "10111111000011110011101110000110", 
    29 => "00111110111111101110001001100101", 
    30 => "00111110101001000001110000111111", 
    31 => "00111101001101111110100000000100" );

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

entity infer_Weight0_o_0_3 is
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

architecture arch of infer_Weight0_o_0_3 is
    component infer_Weight0_o_0_3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_0_3_rom_U :  component infer_Weight0_o_0_3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


