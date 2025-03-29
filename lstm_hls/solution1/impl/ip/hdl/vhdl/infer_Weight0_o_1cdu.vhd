-- ==============================================================
-- File generated on Fri Mar 28 13:00:23 +0800 2025
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity infer_Weight0_o_1cdu_rom is 
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


architecture rtl of infer_Weight0_o_1cdu_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111000011111111111010100000", 
    1 => "00111111000000110100001011101110", 
    2 => "00111110000010001001101000000010", 
    3 => "10111011101000111110011111010001", 
    4 => "00111110010011101111101000011110", 
    5 => "00111110111110000011110111111111", 
    6 => "00111110111101100011111011010001", 
    7 => "00111110011110011010001100001010", 
    8 => "10111111001010110100111111111000", 
    9 => "10111100100000001110100011001001", 
    10 => "10111111110101110100111001011101", 
    11 => "10111111100000000000110111111110", 
    12 => "00111111000101000110010000010011", 
    13 => "00111110001001101101100010110010", 
    14 => "10111110001011101001011100000111", 
    15 => "00111110110001011100100001110101", 
    16 => "00111111010011000110000110110111", 
    17 => "00111110110001000011111110000001", 
    18 => "10111110001111011101011100100011", 
    19 => "10111110010011010000100011010101", 
    20 => "10111100010010101000010111001011", 
    21 => "00111111100011100000111111110101", 
    22 => "00111110100110111100111110010010", 
    23 => "00111111011000100001001100011011", 
    24 => "00111111011101001110110011011001", 
    25 => "10111111000001000111001000101010", 
    26 => "10111110101101101111101110001111", 
    27 => "10111101110011010101011100110110", 
    28 => "00111110000001011010101010110100", 
    29 => "10111111010010100110010010000000", 
    30 => "10111110010001001010011100101111", 
    31 => "00111111100011101010000011100100" );

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

entity infer_Weight0_o_1cdu is
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

architecture arch of infer_Weight0_o_1cdu is
    component infer_Weight0_o_1cdu_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1cdu_rom_U :  component infer_Weight0_o_1cdu_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


