-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity window_macc_kernel_weight_11_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 5; 
             MEM_SIZE    : integer := 27
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          addr1      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(DWIDTH-1 downto 0);
          addr2      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce2       : in std_logic; 
          q2         : out std_logic_vector(DWIDTH-1 downto 0);
          addr3      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce3       : in std_logic; 
          q3         : out std_logic_vector(DWIDTH-1 downto 0);
          addr4      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce4       : in std_logic; 
          q4         : out std_logic_vector(DWIDTH-1 downto 0);
          addr5      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce5       : in std_logic; 
          q5         : out std_logic_vector(DWIDTH-1 downto 0);
          addr6      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce6       : in std_logic; 
          q6         : out std_logic_vector(DWIDTH-1 downto 0);
          addr7      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce7       : in std_logic; 
          q7         : out std_logic_vector(DWIDTH-1 downto 0);
          addr8      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce8       : in std_logic; 
          q8         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of window_macc_kernel_weight_11_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr1_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr2_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr3_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr4_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr5_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr6_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr7_tmp : std_logic_vector(AWIDTH-1 downto 0); 
signal addr8_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem0 : mem_array := (
    0 => "01000000101011000101011110011011", 
    1 => "00111011111000011110011100010000", 
    2 => "11000000101101000111111010011001", 
    3 => "01000001000100011111110010111111", 
    4 => "11000000000110001011100111101001", 
    5 => "11000000111110110000100101001100", 
    6 => "01000000110010001111011000101011", 
    7 => "10111110110010100010101010110010", 
    8 => "11000000100001110110110011111010", 
    9 => "01000000101111001011000001100100", 
    10 => "00111110100010001111011111111101", 
    11 => "11000000110000100111000110101100", 
    12 => "01000001000101100010111001011100", 
    13 => "11000000000011010111010101010011", 
    14 => "11000001000001011100111101100100", 
    15 => "01000000100110111101100000110000", 
    16 => "00111010011111111101101001000000", 
    17 => "11000000011100111110001010110000", 
    18 => "01000000011001001100000010000111", 
    19 => "00111111100000011111001110001100", 
    20 => "11000000100010011100111100000111", 
    21 => "01000000110010110111100100100101", 
    22 => "10111111001110111110100011101110", 
    23 => "11000000110010010011000110000011", 
    24 => "01000000011101111111101011000110", 
    25 => "00111111001011110000000001000111", 
    26 => "11000000011111100100110010111110" );
signal mem1 : mem_array := (
    0 => "01000000101011000101011110011011", 
    1 => "00111011111000011110011100010000", 
    2 => "11000000101101000111111010011001", 
    3 => "01000001000100011111110010111111", 
    4 => "11000000000110001011100111101001", 
    5 => "11000000111110110000100101001100", 
    6 => "01000000110010001111011000101011", 
    7 => "10111110110010100010101010110010", 
    8 => "11000000100001110110110011111010", 
    9 => "01000000101111001011000001100100", 
    10 => "00111110100010001111011111111101", 
    11 => "11000000110000100111000110101100", 
    12 => "01000001000101100010111001011100", 
    13 => "11000000000011010111010101010011", 
    14 => "11000001000001011100111101100100", 
    15 => "01000000100110111101100000110000", 
    16 => "00111010011111111101101001000000", 
    17 => "11000000011100111110001010110000", 
    18 => "01000000011001001100000010000111", 
    19 => "00111111100000011111001110001100", 
    20 => "11000000100010011100111100000111", 
    21 => "01000000110010110111100100100101", 
    22 => "10111111001110111110100011101110", 
    23 => "11000000110010010011000110000011", 
    24 => "01000000011101111111101011000110", 
    25 => "00111111001011110000000001000111", 
    26 => "11000000011111100100110010111110" );
signal mem2 : mem_array := (
    0 => "01000000101011000101011110011011", 
    1 => "00111011111000011110011100010000", 
    2 => "11000000101101000111111010011001", 
    3 => "01000001000100011111110010111111", 
    4 => "11000000000110001011100111101001", 
    5 => "11000000111110110000100101001100", 
    6 => "01000000110010001111011000101011", 
    7 => "10111110110010100010101010110010", 
    8 => "11000000100001110110110011111010", 
    9 => "01000000101111001011000001100100", 
    10 => "00111110100010001111011111111101", 
    11 => "11000000110000100111000110101100", 
    12 => "01000001000101100010111001011100", 
    13 => "11000000000011010111010101010011", 
    14 => "11000001000001011100111101100100", 
    15 => "01000000100110111101100000110000", 
    16 => "00111010011111111101101001000000", 
    17 => "11000000011100111110001010110000", 
    18 => "01000000011001001100000010000111", 
    19 => "00111111100000011111001110001100", 
    20 => "11000000100010011100111100000111", 
    21 => "01000000110010110111100100100101", 
    22 => "10111111001110111110100011101110", 
    23 => "11000000110010010011000110000011", 
    24 => "01000000011101111111101011000110", 
    25 => "00111111001011110000000001000111", 
    26 => "11000000011111100100110010111110" );
signal mem3 : mem_array := (
    0 => "01000000101011000101011110011011", 
    1 => "00111011111000011110011100010000", 
    2 => "11000000101101000111111010011001", 
    3 => "01000001000100011111110010111111", 
    4 => "11000000000110001011100111101001", 
    5 => "11000000111110110000100101001100", 
    6 => "01000000110010001111011000101011", 
    7 => "10111110110010100010101010110010", 
    8 => "11000000100001110110110011111010", 
    9 => "01000000101111001011000001100100", 
    10 => "00111110100010001111011111111101", 
    11 => "11000000110000100111000110101100", 
    12 => "01000001000101100010111001011100", 
    13 => "11000000000011010111010101010011", 
    14 => "11000001000001011100111101100100", 
    15 => "01000000100110111101100000110000", 
    16 => "00111010011111111101101001000000", 
    17 => "11000000011100111110001010110000", 
    18 => "01000000011001001100000010000111", 
    19 => "00111111100000011111001110001100", 
    20 => "11000000100010011100111100000111", 
    21 => "01000000110010110111100100100101", 
    22 => "10111111001110111110100011101110", 
    23 => "11000000110010010011000110000011", 
    24 => "01000000011101111111101011000110", 
    25 => "00111111001011110000000001000111", 
    26 => "11000000011111100100110010111110" );
signal mem4 : mem_array := (
    0 => "01000000101011000101011110011011", 
    1 => "00111011111000011110011100010000", 
    2 => "11000000101101000111111010011001", 
    3 => "01000001000100011111110010111111", 
    4 => "11000000000110001011100111101001", 
    5 => "11000000111110110000100101001100", 
    6 => "01000000110010001111011000101011", 
    7 => "10111110110010100010101010110010", 
    8 => "11000000100001110110110011111010", 
    9 => "01000000101111001011000001100100", 
    10 => "00111110100010001111011111111101", 
    11 => "11000000110000100111000110101100", 
    12 => "01000001000101100010111001011100", 
    13 => "11000000000011010111010101010011", 
    14 => "11000001000001011100111101100100", 
    15 => "01000000100110111101100000110000", 
    16 => "00111010011111111101101001000000", 
    17 => "11000000011100111110001010110000", 
    18 => "01000000011001001100000010000111", 
    19 => "00111111100000011111001110001100", 
    20 => "11000000100010011100111100000111", 
    21 => "01000000110010110111100100100101", 
    22 => "10111111001110111110100011101110", 
    23 => "11000000110010010011000110000011", 
    24 => "01000000011101111111101011000110", 
    25 => "00111111001011110000000001000111", 
    26 => "11000000011111100100110010111110" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem0 : signal is "select_rom";
attribute syn_rom_style of mem1 : signal is "select_rom";
attribute syn_rom_style of mem2 : signal is "select_rom";
attribute syn_rom_style of mem3 : signal is "select_rom";
attribute syn_rom_style of mem4 : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem0 : signal is "distributed";
attribute ROM_STYLE of mem1 : signal is "distributed";
attribute ROM_STYLE of mem2 : signal is "distributed";
attribute ROM_STYLE of mem3 : signal is "distributed";
attribute ROM_STYLE of mem4 : signal is "distributed";

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

memory_access_guard_1: process (addr1) 
begin
      addr1_tmp <= addr1;
--synthesis translate_off
      if (CONV_INTEGER(addr1) > mem_size-1) then
           addr1_tmp <= (others => '0');
      else 
           addr1_tmp <= addr1;
      end if;
--synthesis translate_on
end process;

memory_access_guard_2: process (addr2) 
begin
      addr2_tmp <= addr2;
--synthesis translate_off
      if (CONV_INTEGER(addr2) > mem_size-1) then
           addr2_tmp <= (others => '0');
      else 
           addr2_tmp <= addr2;
      end if;
--synthesis translate_on
end process;

memory_access_guard_3: process (addr3) 
begin
      addr3_tmp <= addr3;
--synthesis translate_off
      if (CONV_INTEGER(addr3) > mem_size-1) then
           addr3_tmp <= (others => '0');
      else 
           addr3_tmp <= addr3;
      end if;
--synthesis translate_on
end process;

memory_access_guard_4: process (addr4) 
begin
      addr4_tmp <= addr4;
--synthesis translate_off
      if (CONV_INTEGER(addr4) > mem_size-1) then
           addr4_tmp <= (others => '0');
      else 
           addr4_tmp <= addr4;
      end if;
--synthesis translate_on
end process;

memory_access_guard_5: process (addr5) 
begin
      addr5_tmp <= addr5;
--synthesis translate_off
      if (CONV_INTEGER(addr5) > mem_size-1) then
           addr5_tmp <= (others => '0');
      else 
           addr5_tmp <= addr5;
      end if;
--synthesis translate_on
end process;

memory_access_guard_6: process (addr6) 
begin
      addr6_tmp <= addr6;
--synthesis translate_off
      if (CONV_INTEGER(addr6) > mem_size-1) then
           addr6_tmp <= (others => '0');
      else 
           addr6_tmp <= addr6;
      end if;
--synthesis translate_on
end process;

memory_access_guard_7: process (addr7) 
begin
      addr7_tmp <= addr7;
--synthesis translate_off
      if (CONV_INTEGER(addr7) > mem_size-1) then
           addr7_tmp <= (others => '0');
      else 
           addr7_tmp <= addr7;
      end if;
--synthesis translate_on
end process;

memory_access_guard_8: process (addr8) 
begin
      addr8_tmp <= addr8;
--synthesis translate_off
      if (CONV_INTEGER(addr8) > mem_size-1) then
           addr8_tmp <= (others => '0');
      else 
           addr8_tmp <= addr8;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem0(CONV_INTEGER(addr0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem0(CONV_INTEGER(addr1_tmp)); 
        end if;
        if (ce2 = '1') then 
            q2 <= mem1(CONV_INTEGER(addr2_tmp)); 
        end if;
        if (ce3 = '1') then 
            q3 <= mem1(CONV_INTEGER(addr3_tmp)); 
        end if;
        if (ce4 = '1') then 
            q4 <= mem2(CONV_INTEGER(addr4_tmp)); 
        end if;
        if (ce5 = '1') then 
            q5 <= mem2(CONV_INTEGER(addr5_tmp)); 
        end if;
        if (ce6 = '1') then 
            q6 <= mem3(CONV_INTEGER(addr6_tmp)); 
        end if;
        if (ce7 = '1') then 
            q7 <= mem3(CONV_INTEGER(addr7_tmp)); 
        end if;
        if (ce8 = '1') then 
            q8 <= mem4(CONV_INTEGER(addr8_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity window_macc_kernel_weight_11 is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 27;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address1 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address2 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce2 : IN STD_LOGIC;
        q2 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address3 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce3 : IN STD_LOGIC;
        q3 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address4 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce4 : IN STD_LOGIC;
        q4 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address5 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce5 : IN STD_LOGIC;
        q5 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address6 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce6 : IN STD_LOGIC;
        q6 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address7 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce7 : IN STD_LOGIC;
        q7 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address8 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce8 : IN STD_LOGIC;
        q8 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of window_macc_kernel_weight_11 is
    component window_macc_kernel_weight_11_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR;
            addr1 : IN STD_LOGIC_VECTOR;
            ce1 : IN STD_LOGIC;
            q1 : OUT STD_LOGIC_VECTOR;
            addr2 : IN STD_LOGIC_VECTOR;
            ce2 : IN STD_LOGIC;
            q2 : OUT STD_LOGIC_VECTOR;
            addr3 : IN STD_LOGIC_VECTOR;
            ce3 : IN STD_LOGIC;
            q3 : OUT STD_LOGIC_VECTOR;
            addr4 : IN STD_LOGIC_VECTOR;
            ce4 : IN STD_LOGIC;
            q4 : OUT STD_LOGIC_VECTOR;
            addr5 : IN STD_LOGIC_VECTOR;
            ce5 : IN STD_LOGIC;
            q5 : OUT STD_LOGIC_VECTOR;
            addr6 : IN STD_LOGIC_VECTOR;
            ce6 : IN STD_LOGIC;
            q6 : OUT STD_LOGIC_VECTOR;
            addr7 : IN STD_LOGIC_VECTOR;
            ce7 : IN STD_LOGIC;
            q7 : OUT STD_LOGIC_VECTOR;
            addr8 : IN STD_LOGIC_VECTOR;
            ce8 : IN STD_LOGIC;
            q8 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    window_macc_kernel_weight_11_rom_U :  component window_macc_kernel_weight_11_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0,
        addr1 => address1,
        ce1 => ce1,
        q1 => q1,
        addr2 => address2,
        ce2 => ce2,
        q2 => q2,
        addr3 => address3,
        ce3 => ce3,
        q3 => q3,
        addr4 => address4,
        ce4 => ce4,
        q4 => q4,
        addr5 => address5,
        ce5 => ce5,
        q5 => q5,
        addr6 => address6,
        ce6 => ce6,
        q6 => q6,
        addr7 => address7,
        ce7 => ce7,
        q7 => q7,
        addr8 => address8,
        ce8 => ce8,
        q8 => q8);

end architecture;


