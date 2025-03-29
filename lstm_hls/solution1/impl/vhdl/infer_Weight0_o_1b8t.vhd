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

entity infer_Weight0_o_1b8t_rom is 
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


architecture rtl of infer_Weight0_o_1b8t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101000111010100111110011100", 
    1 => "00111110010110010001100100100110", 
    2 => "10111111010001100010101100000110", 
    3 => "00111110010111011110110100101001", 
    4 => "10111101100000100001011011000110", 
    5 => "00111111000110100011000101100010", 
    6 => "10111111001100100110110111001110", 
    7 => "00111101110101001110100001110101", 
    8 => "10111110100010111111110111111000", 
    9 => "00111110110111101000100101000100", 
    10 => "10111111010010010010100010001101", 
    11 => "00111111010101111110011010110100", 
    12 => "10111111101110101010000100100111", 
    13 => "10111101000110010101011110001010", 
    14 => "00111101110100100100110110010000", 
    15 => "00111110001101001110010100001100", 
    16 => "00111110010110011111111010000111", 
    17 => "10111110110000010101010110110100", 
    18 => "10111110001111001111010100101100", 
    19 => "00111110011010111000010101100010", 
    20 => "10111101010001100111010010001110", 
    21 => "00111110111011010111100000111110", 
    22 => "00111111000110100111000001001100", 
    23 => "00111110101001110010100001100011", 
    24 => "00111111011010011110100001100000", 
    25 => "10111110100100111001010000010000", 
    26 => "10111110110000010010010000101001", 
    27 => "10111110100001010100001110101111", 
    28 => "00111111001001111001111011100000", 
    29 => "00111110100000011100001000111011", 
    30 => "10111110100101011011101011010100", 
    31 => "10111110110110001111011111111101" );

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

entity infer_Weight0_o_1b8t is
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

architecture arch of infer_Weight0_o_1b8t is
    component infer_Weight0_o_1b8t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1b8t_rom_U :  component infer_Weight0_o_1b8t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


