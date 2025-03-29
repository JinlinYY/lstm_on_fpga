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

entity infer_Weight0_f_04jc_rom is 
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


architecture rtl of infer_Weight0_f_04jc_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110001110110000000101000011", 
    1 => "10111111000111000001000111100100", 
    2 => "00111111001001011110110101101100", 
    3 => "00111111010010001111101100110011", 
    4 => "10111110101110001010101100001101", 
    5 => "00111110110111111111110101100001", 
    6 => "10111111000010101110010001101101", 
    7 => "00111110110011000110100011001011", 
    8 => "00111110111101111000111000011001", 
    9 => "00111111110111000101101110000101", 
    10 => "00111110111111111001010100101101", 
    11 => "00111110100000101110000001011101", 
    12 => "00111110011101100001000011110001", 
    13 => "10111101001110100010101011010100", 
    14 => "00111101011100110111111010110011", 
    15 => "00111101100111110000101000011100", 
    16 => "10111111001010000010101111101001", 
    17 => "00111111010110001110110100001011", 
    18 => "00111101111010001001111000110100", 
    19 => "00111101100111110010100100001011", 
    20 => "00111110000100000010110001001101", 
    21 => "00111101111001010111100111110010", 
    22 => "00111111010010001101101000001010", 
    23 => "00111110100111011001111110010000", 
    24 => "00111110001101011100101000101010", 
    25 => "00111110111010011111011010101001", 
    26 => "00111111000000101111000110011001", 
    27 => "00111110101011100011111110011010", 
    28 => "10111110101010001110111101111000", 
    29 => "00111100110010100001101011010110", 
    30 => "00111110011011110111011101101100", 
    31 => "00111110100101101101111001110110" );

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

entity infer_Weight0_f_04jc is
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

architecture arch of infer_Weight0_f_04jc is
    component infer_Weight0_f_04jc_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_f_04jc_rom_U :  component infer_Weight0_f_04jc_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


