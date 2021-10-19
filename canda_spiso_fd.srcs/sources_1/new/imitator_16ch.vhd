----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/12/2021 01:30:26 PM
-- Design Name: 
-- Module Name: imitator_16ch - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity imitator_16ch is
    Port ( 
        CLK         : in STD_LOGIC;
        IM_DONE     : out STD_LOGIC := '0';
        IM_DATA     : out STD_LOGIC_VECTOR (255 downto 0)  := (others => '0')
    );
end imitator_16ch;

architecture Behavioral of imitator_16ch is

 type t_sin_table2 is array(0 to 31) of integer range 0 to 65535;
 constant C_SIN_TABLE2  : t_sin_table2 := (32768, 39160, 45307, 50972, 55938, 60013, 63041, 64905, 65535, 64905, 63041, 60013, 55938, 50972, 45307, 39160, 
                                           32768, 26375, 20228, 14563,  9597,  5522,  2494,   630,     0,   630,  2494,  5522,  9597, 14563, 20228, 26375);

 signal test_s1 : signed (15 downto 0)      := to_signed(0, 16);  
 signal fd_cnt  : integer range 0 to 3125   := 0;
 signal i_addr  : unsigned (4 downto 0)     := to_unsigned(0, 5);
 
 signal test_cnt  : integer range 0 to 44   := 0;
 
begin


    --IM_DONE <= adc_ok;
    test_s1 <= to_signed(C_SIN_TABLE2(to_integer(i_addr)),16);
    --test_s1 <= X"A5_82";
    --test_s1 <= X"F7_E9";
    
    ---------------------------------------------------------------------------------------
    adc_proto : process (CLK)
    begin
      if rising_edge(CLK) then
        case fd_cnt is

            --********************************************************************
            -- 1 - 8 ch
            when 34     => IM_DATA(15  downto 0)   <= X"A7_48"; fd_cnt <= fd_cnt + 1;   --std_logic_vector( not test_s1(15) & test_s1(14 downto 0)); fd_cnt <= fd_cnt + 1; 
            when 67     => IM_DATA(31  downto 16)  <= X"DE_56"; fd_cnt <= fd_cnt + 1;   --std_logic_vector( not test_s1(15) & test_s1(14 downto 0)); fd_cnt <= fd_cnt + 1; 
            when 100    => IM_DATA(47  downto 32)  <= std_logic_vector( not test_s1(15) & test_s1(14 downto 0)); fd_cnt <= fd_cnt + 1; 
            when 133    => IM_DATA(63  downto 48)  <= std_logic_vector( not test_s1(15) & test_s1(14 downto 0)); fd_cnt <= fd_cnt + 1; 
            when 166    => IM_DATA(79  downto 64)  <= std_logic_vector( not test_s1(15) & test_s1(14 downto 0)); fd_cnt <= fd_cnt + 1;  
            when 199    => IM_DATA(95  downto 80)  <= std_logic_vector( not test_s1(15) & test_s1(14 downto 0)); fd_cnt <= fd_cnt + 1; 
            when 232    => IM_DATA(111 downto 96)  <= std_logic_vector( not test_s1(15) & test_s1(14 downto 0)); fd_cnt <= fd_cnt + 1; 
            when 265    => IM_DATA(127 downto 112) <= std_logic_vector( not test_s1(15) & test_s1(14 downto 0)); fd_cnt <= fd_cnt + 1; 
            
            --********************************************************************
            --9 - 16 ch
            when 298    => IM_DATA(143 downto 128) <= std_logic_vector( not test_s1(15) & test_s1(14 downto 0)); fd_cnt <= fd_cnt + 1; 
            when 331    => IM_DATA(159 downto 144) <= std_logic_vector( not test_s1(15) & test_s1(14 downto 0)); fd_cnt <= fd_cnt + 1; 
            when 364    => IM_DATA(175 downto 160) <= std_logic_vector( not test_s1(15) & test_s1(14 downto 0)); fd_cnt <= fd_cnt + 1; 
            when 397    => IM_DATA(191 downto 176) <= std_logic_vector( not test_s1(15) & test_s1(14 downto 0)); fd_cnt <= fd_cnt + 1; 
            when 430    => IM_DATA(207 downto 192) <= std_logic_vector( not test_s1(15) & test_s1(14 downto 0)); fd_cnt <= fd_cnt + 1; 
            when 463    => IM_DATA(223 downto 208) <= std_logic_vector( not test_s1(15) & test_s1(14 downto 0)); fd_cnt <= fd_cnt + 1; 
            when 496    => IM_DATA(239 downto 224) <= std_logic_vector( not test_s1(15) & test_s1(14 downto 0)); fd_cnt <= fd_cnt + 1; 
            when 529    => IM_DATA(255 downto 240) <= std_logic_vector( not test_s1(15) & test_s1(14 downto 0)); fd_cnt <= fd_cnt + 1; 
            
            when 530    => IM_DONE <= '1'; fd_cnt <= fd_cnt + 1; 
            when 532    => IM_DONE <= '0'; fd_cnt <= fd_cnt + 1; --test_cnt <= test_cnt + 1; --test_s1 <= test_s1 + X"00_01";
            
            when 3124   => i_addr <= i_addr + 1; fd_cnt <= 0;
            when others => fd_cnt <= fd_cnt + 1;
            
        end case;
        
--        case test_cnt is
--            --when 0      => test_s1 <= X"00_00";--77E9
--            when 44     => test_s1 <= test_s1 + X"01_01"; test_cnt <= 0;
--            when others => test_s1 <= test_s1;
--        end case;
        
        
      end if;
    end process adc_proto;

end Behavioral;