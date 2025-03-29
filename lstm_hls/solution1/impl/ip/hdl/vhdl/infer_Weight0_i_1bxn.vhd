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

entity infer_Weight0_i_1bxn_rom is 
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


architecture rtl of infer_Weight0_i_1bxn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110110011001010101011111100", 
    1 => "00111110100101110011101000110110", 
    2 => "00111101110010101101111011101100", 
    3 => "00111101001101000110011001101111", 
    4 => "10111110010111101010100000010001", 
    5 => "00111011100001001001010001001111", 
    6 => "00111110100010010010001110100011", 
    7 => "00111110010111100111100001011011", 
    8 => "00111111001000100100100100111101", 
    9 => "10111110001010010001111100101110", 
    10 => "10111111011111011111001000100100", 
    11 => "10111111010010011100100111010110", 
    12 => "00111101101001101011110111110101", 
    13 => "00111110000000101000001110010000", 
    14 => "00111110110010000100001101011111", 
    15 => "10111111010111100111111100011011", 
    16 => "10111110111110010000011001000110", 
    17 => "10111111001100011000010100000110", 
    18 => "00111111000001111110001001110001", 
    19 => "00111111000100001111000111100101", 
    20 => "00111101101001011110001001001000", 
    21 => "00111110110010101011010000001111", 
    22 => "00111110100010110111111001001110", 
    23 => "10111110110110111101100101000101", 
    24 => "00111110100000011011011111100001", 
    25 => "10111101010111010001110101000111", 
    26 => "10111111001100001100111010100011", 
    27 => "00111110111001011111010110101110", 
    28 => "10111110111111000111000100101110", 
    29 => "10111111101011000101011001011000", 
    30 => "10111111010110100000000110101100", 
    31 => "10111110100011000001110010100100" );

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

entity infer_Weight0_i_1bxn is
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

architecture arch of infer_Weight0_i_1bxn is
    component infer_Weight0_i_1bxn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1bxn_rom_U :  component infer_Weight0_i_1bxn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


