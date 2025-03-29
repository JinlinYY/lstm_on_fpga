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

entity infer_Weight0_c_0bIp_rom is 
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


architecture rtl of infer_Weight0_c_0bIp_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110101111000000010011101010", 
    1 => "00111110010100001000001001001001", 
    2 => "00111101011111110010101000010111", 
    3 => "00111110011011001110110100001011", 
    4 => "00111111000100001111111110000110", 
    5 => "10111111001010100000001011001001", 
    6 => "10111101110100000101110110010110", 
    7 => "10111100000011101000011001000000", 
    8 => "10111100111000000101111011100101", 
    9 => "10111111001001110101101101100000", 
    10 => "00111110100000000000001011100010", 
    11 => "00111110100001010000001000100101", 
    12 => "10111101110111011101110110110001", 
    13 => "00111101111010010011010000100110", 
    14 => "10111111001001001010011111111000", 
    15 => "10111110100011001100111100000111", 
    16 => "00111110110010000000010010111000", 
    17 => "00111101101110010111100010010010", 
    18 => "10111101100110011010000111111101", 
    19 => "00111110000010110110010101100111", 
    20 => "00111101110111001110010100101110", 
    21 => "00111110011010111011011111111010", 
    22 => "00111101100101001110101010001110", 
    23 => "10111110111010000001111010101100", 
    24 => "00111110001100011001011001010011", 
    25 => "10111110011100100000001010010111", 
    26 => "10111110111101001011101000110000", 
    27 => "10111110010100010000111111011000", 
    28 => "10111110000010001110100000100001", 
    29 => "00111111000100001010110110101100", 
    30 => "00111110100011110111011101101100", 
    31 => "00111110110001100101011111111011" );

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

entity infer_Weight0_c_0bIp is
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

architecture arch of infer_Weight0_c_0bIp is
    component infer_Weight0_c_0bIp_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    infer_Weight0_c_0bIp_rom_U :  component infer_Weight0_c_0bIp_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


