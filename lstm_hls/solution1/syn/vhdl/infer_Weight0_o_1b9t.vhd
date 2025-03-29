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

entity infer_Weight0_o_1b9t_rom is 
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


architecture rtl of infer_Weight0_o_1b9t_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110000001110010011100010011", 
    1 => "00111110001110101011001001011011", 
    2 => "00111111001100111001101010101110", 
    3 => "10111110000011011110000111100011", 
    4 => "10111111000001001010101100101110", 
    5 => "00111110000010010110010000011111", 
    6 => "00111110010111001000000010000100", 
    7 => "10111101111100101101011011101101", 
    8 => "00111110100010010111100000101101", 
    9 => "00111110101011111100000011110100", 
    10 => "00111111010010110000100101100011", 
    11 => "00111110100011100010001111010001", 
    12 => "00111111000111001000011101100110", 
    13 => "00111111000111100101110001001111", 
    14 => "10111110011100001000110101001100", 
    15 => "00111110110010100001101101011100", 
    16 => "10111100011100001111000101101111", 
    17 => "10111110001111011010111100001000", 
    18 => "00111110101000100101011100000000", 
    19 => "00111110110011010101011001001011", 
    20 => "00111110110010101111110011110000", 
    21 => "00111110101111010101001111001110", 
    22 => "00111110011011000100100000101000", 
    23 => "00111110111000100010001101111101", 
    24 => "10111111001100100101101011001101", 
    25 => "00111110100011011101110111010011", 
    26 => "00111111100010001110011111101111", 
    27 => "00111111000111010111101011001100", 
    28 => "00111110111000010111001101010100", 
    29 => "00111110010010111110101110011110", 
    30 => "00111100000011011011000001010111", 
    31 => "00111111001001011001111111110101" );

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

entity infer_Weight0_o_1b9t is
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

architecture arch of infer_Weight0_o_1b9t is
    component infer_Weight0_o_1b9t_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_o_1b9t_rom_U :  component infer_Weight0_o_1b9t_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


