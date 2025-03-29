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

entity infer_Weight0_i_1btn_rom is 
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


architecture rtl of infer_Weight0_i_1btn_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111001000100100000001000010", 
    1 => "10111110001011100110100101101010", 
    2 => "10111101111001010100001101101100", 
    3 => "00111100010001101101111001110110", 
    4 => "00111110111111010110000111110110", 
    5 => "00111111000100100000111001010010", 
    6 => "00111110111010111111010111011000", 
    7 => "00111100101001010100111001101110", 
    8 => "00111111011010100011010110000011", 
    9 => "00111111101001101111010001011010", 
    10 => "00111110000111111011011111101001", 
    11 => "00111100000101000011100111011110", 
    12 => "10111101100111110000000010101100", 
    13 => "10111110111101101101011111101001", 
    14 => "00111001100101101111111010110101", 
    15 => "10111101000011001101001100010111", 
    16 => "00111110000100010010011100101101", 
    17 => "00111101011111001101100110100101", 
    18 => "00111110100011010001010101001000", 
    19 => "10111110010001011111001111011000", 
    20 => "00111110101000110001101101011000", 
    21 => "10111110100110011011110000010010", 
    22 => "00111110100100101000000101110111", 
    23 => "00111110011001000011101000100001", 
    24 => "00111111010010100001100111001010", 
    25 => "10111110111011010010000001001011", 
    26 => "10111110001110010101111110101011", 
    27 => "00111110110110001001101100001111", 
    28 => "00111110010101111011100111100000", 
    29 => "00111111001110111011010100000111", 
    30 => "10111111001111011100110101001111", 
    31 => "10111101100001100011000011101100" );

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

entity infer_Weight0_i_1btn is
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

architecture arch of infer_Weight0_i_1btn is
    component infer_Weight0_i_1btn_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_i_1btn_rom_U :  component infer_Weight0_i_1btn_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


