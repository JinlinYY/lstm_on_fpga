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

entity infer_Weight0_f_18jQ_rom is 
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


architecture rtl of infer_Weight0_f_18jQ_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110101001101010110000000000", 
    1 => "10111101110110110011111010011010", 
    2 => "00111111001100011001011101110000", 
    3 => "00111110110111100010101110001100", 
    4 => "10111110100010101000000010101110", 
    5 => "00111110010010000011000111110000", 
    6 => "00111110010110000110000001010111", 
    7 => "00111111000000011101001011100001", 
    8 => "10111110110101101111001010000100", 
    9 => "10111111010110101010111100110110", 
    10 => "00111110110011100100000101001110", 
    11 => "00111111011001000110001111110001", 
    12 => "10111101101011000001111111001001", 
    13 => "10111101111110111101011010100110", 
    14 => "10111111000000101010011111110000", 
    15 => "00111110101101110010010100011100", 
    16 => "00111110010100110101100101111001", 
    17 => "10111110001100011010010111001010", 
    18 => "00111110000011010111101100100000", 
    19 => "00111111100101101110100011011001", 
    20 => "10111110100100111010010010110101", 
    21 => "10111101110100101001001011000101", 
    22 => "00111111100001111001111100101100", 
    23 => "00111100000100110011000110100001", 
    24 => "00111111001001000100100010001100", 
    25 => "00111110000011010100000010101011", 
    26 => "10111110100111111101101111110101", 
    27 => "10111111000110100110010010010001", 
    28 => "10111100111001011001010010101111", 
    29 => "00111110011101010101000100001101", 
    30 => "00111011111010011010001011000110", 
    31 => "10111010111011111011101100001110" );

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

entity infer_Weight0_f_18jQ is
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

architecture arch of infer_Weight0_f_18jQ is
    component infer_Weight0_f_18jQ_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_18jQ_rom_U :  component infer_Weight0_f_18jQ_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


