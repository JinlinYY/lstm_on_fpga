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

entity infer_Weight0_f_1bak_rom is 
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


architecture rtl of infer_Weight0_f_1bak_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110110001000000010110110100", 
    1 => "10111111011101101001100111101001", 
    2 => "10111110110111111111110100111111", 
    3 => "10111111100101101000100111011011", 
    4 => "10111101000100110001000000010011", 
    5 => "10111111011100110001111100100101", 
    6 => "10111111000110100011100011101011", 
    7 => "10111110111011101010100111100111", 
    8 => "10111110000111001000001000010111", 
    9 => "00111110101010011100010100011110", 
    10 => "10111111010011001100101000001100", 
    11 => "10111101011000111100011001000011", 
    12 => "10111110110000101101011010001000", 
    13 => "10111110110101000101001110001111", 
    14 => "10111111000000010001011010011000", 
    15 => "10111111100110111010110001111001", 
    16 => "10111110010011011010000111101100", 
    17 => "10111110110100100011001101111011", 
    18 => "10111110101110101010101101101001", 
    19 => "10111101111010110101000100110111", 
    20 => "10111111001101011111100001001101", 
    21 => "00111110110111011110101000100101", 
    22 => "10111111000101000000011011010001", 
    23 => "10111101101011110100101101100010", 
    24 => "10111110100000011110000001100001", 
    25 => "10111111011101100101110011110110", 
    26 => "10111110010110011100101010011111", 
    27 => "00111101101111010010011000110001", 
    28 => "10111100111011000010111011111101", 
    29 => "10111101101111101000101100111011", 
    30 => "10111111101101000111010100010100", 
    31 => "10111110110111001101101011010011" );

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

entity infer_Weight0_f_1bak is
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

architecture arch of infer_Weight0_f_1bak is
    component infer_Weight0_f_1bak_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_1bak_rom_U :  component infer_Weight0_f_1bak_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


