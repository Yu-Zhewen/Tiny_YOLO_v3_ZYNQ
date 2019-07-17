-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity exp_16_8_s_exp_x_msb_2_m_1_tabl_rom is 
    generic(
             DWIDTH     : integer := 25; 
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


architecture rtl of exp_16_8_s_exp_x_msb_2_m_1_tabl_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "0000000000000000000000000", 1 => "0000010000001000000010101", 
    2 => "0000100000100000010101100", 3 => "0000110001001001001000111", 
    4 => "0001000010000010101101011", 5 => "0001010011001101010100000", 
    6 => "0001100100101001001101110", 7 => "0001110110010110101100010", 
    8 => "0010001000010110000001001", 9 => "0010011010100111011110010", 
    10 => "0010101101001011010110001", 11 => "0011000000000001111011010", 
    12 => "0011010011001011100000011", 13 => "0011100110101000011000101", 
    14 => "0011111010011000110111101", 15 => "0100001110011101010001000", 
    16 => "0100100010110101111001000", 17 => "0100110111100011000011110", 
    18 => "0101001100100101000110000", 19 => "0101100001111100010101000", 
    20 => "0101110111101001000101111", 21 => "0110001101101011101110011", 
    22 => "0110100100000100100100110", 23 => "0110111010110011111111001", 
    24 => "0111010001111010010100010", 25 => "0111101001010111111011100", 
    26 => "1000000001001101001100000", 27 => "1000011001011010011101111", 
    28 => "1000110010000000001001001", 29 => "1001001010111110100110011", 
    30 => "1001100100010110001110110", 31 => "1001111110000111011011101" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

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

entity exp_16_8_s_exp_x_msb_2_m_1_tabl is
    generic (
        DataWidth : INTEGER := 25;
        AddressRange : INTEGER := 32;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of exp_16_8_s_exp_x_msb_2_m_1_tabl is
    component exp_16_8_s_exp_x_msb_2_m_1_tabl_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    exp_16_8_s_exp_x_msb_2_m_1_tabl_rom_U :  component exp_16_8_s_exp_x_msb_2_m_1_tabl_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


