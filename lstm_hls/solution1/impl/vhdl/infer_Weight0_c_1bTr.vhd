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

entity infer_Weight0_c_1bTr_rom is 
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


architecture rtl of infer_Weight0_c_1bTr_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111011100001111100001000000001", 
    1 => "00111110011001111110001111010010", 
    2 => "10111101011101011101011110001000", 
    3 => "10111110100011100010000100110010", 
    4 => "00111101111011101001111111110001", 
    5 => "00111111001011000101000110011000", 
    6 => "10111110001100011100111000101001", 
    7 => "00111111011010011000000011100101", 
    8 => "00111110111001101111000010101110", 
    9 => "00111110011000011101000010000101", 
    10 => "10111101101110000001001001111011", 
    11 => "00111111000011111100001010011000", 
    12 => "10111110001101000010001001000110", 
    13 => "10111110000111000111101110001001", 
    14 => "00111110101011111101111110100000", 
    15 => "10111110100111011101001001101011", 
    16 => "10111101110010100010011101101011", 
    17 => "10111101011001110100110000001010", 
    18 => "10111111000101010011110110100111", 
    19 => "00111110101010100110111000110011", 
    20 => "00111110100010010000010010010010", 
    21 => "10111101111000110110011001010001", 
    22 => "10111101100010010110011001111011", 
    23 => "00111110001001110111101011110110", 
    24 => "00111110100011010010000001001011", 
    25 => "10111101110001101001011100101001", 
    26 => "10111110101011000011100000001001", 
    27 => "00111110001011011011001101111101", 
    28 => "00111110101110011010010011011111", 
    29 => "00111110110100010101101100010100", 
    30 => "10111110100010110010001110011010", 
    31 => "00111101000101111001000001110101" );

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

entity infer_Weight0_c_1bTr is
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

architecture arch of infer_Weight0_c_1bTr is
    component infer_Weight0_c_1bTr_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_1bTr_rom_U :  component infer_Weight0_c_1bTr_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


