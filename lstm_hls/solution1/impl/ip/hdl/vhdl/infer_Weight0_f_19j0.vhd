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

entity infer_Weight0_f_19j0_rom is 
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


architecture rtl of infer_Weight0_f_19j0_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111010100000010011110010101100", 
    1 => "10111110111111111010000110100001", 
    2 => "10111110111001101001110100110000", 
    3 => "10111110001111101011100011011000", 
    4 => "10111110000110111110101110011110", 
    5 => "10111111001100010110110110100000", 
    6 => "10111110100010111111011100000110", 
    7 => "10111110111110011011100111011000", 
    8 => "00111110000000000111111011100001", 
    9 => "10111111101101100010100101011010", 
    10 => "10111110111100110011100001110001", 
    11 => "10111110011010001000110101101101", 
    12 => "00111101111001101101101111010111", 
    13 => "10111110101010101011110011011000", 
    14 => "00111110100100001011110001111011", 
    15 => "00111101001000000001100010100100", 
    16 => "10111110101011100010010001111001", 
    17 => "10111110111110001011101110010000", 
    18 => "10111111000101000110110101100001", 
    19 => "00111111000110010111001101000011", 
    20 => "10111111101111101100011100101010", 
    21 => "10111101101000110111001001100000", 
    22 => "10111111100010100110010000010011", 
    23 => "00111100100010101000001010100101", 
    24 => "10111110010101000001100100011010", 
    25 => "10111111000010011100101011010001", 
    26 => "10111101101111001110010000100001", 
    27 => "10111101101101100010011010110011", 
    28 => "10111110110111101001001010010010", 
    29 => "10111110010000111110010001101001", 
    30 => "10111111010010111011001001111001", 
    31 => "10111100010001101100100101111110" );

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

entity infer_Weight0_f_19j0 is
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

architecture arch of infer_Weight0_f_19j0 is
    component infer_Weight0_f_19j0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_19j0_rom_U :  component infer_Weight0_f_19j0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


