----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2021 11:43:09 AM
-- Design Name: 
-- Module Name: arbiter - Behavioral
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


entity arbiter is
Port ( 
       clk          : in STD_LOGIC;
       
       s1_din       : in STD_LOGIC_VECTOR (4 downto 0);
       s1_dcount    : in STD_LOGIC_VECTOR (12 downto 0);
       s1_rd        : out STD_LOGIC;
       
       s2_din       : in STD_LOGIC_VECTOR (4 downto 0);
       s2_dcount    : in STD_LOGIC_VECTOR (12 downto 0);
       s2_rd        : out STD_LOGIC;
       
       s3_din       : in STD_LOGIC_VECTOR (4 downto 0);
       s3_dcount    : in STD_LOGIC_VECTOR (12 downto 0);
       s3_rd        : out STD_LOGIC;
       
       s4_din       : in STD_LOGIC_VECTOR (4 downto 0);
       s4_dcount    : in STD_LOGIC_VECTOR (12 downto 0);
       s4_rd        : out STD_LOGIC;
       
       s5_din       : in STD_LOGIC_VECTOR (4 downto 0);
       s5_dcount    : in STD_LOGIC_VECTOR (12 downto 0);
       s5_rd        : out STD_LOGIC;
       
       y_dout       : out STD_LOGIC_VECTOR (4 downto 0)
);
end arbiter;

architecture Behavioral of arbiter is

    type   arb_state_t      is (IDLE, ST_S1, ST_S2, ST_S3, ST_S4, ST_S5, ST_IGP);
    signal arb_state        : arb_state_t := IDLE;
    signal next_arb_state   : arb_state_t := IDLE;
    signal set_arb_state    : std_logic := '0';
    
    signal s1_rd_t          : std_logic := '0';
    signal s2_rd_t          : std_logic := '0';
    signal s3_rd_t          : std_logic := '0';
    signal s4_rd_t          : std_logic := '0';
    signal s5_rd_t          : std_logic := '0';
    signal y_dout_t         : STD_LOGIC_VECTOR (4 downto 0) := (others => '0'); 
    
    type   count_mode_type  is (RST, INCR, HOLD);
    signal arb_count_mode   : count_mode_type := RST;  
    signal arb_count        : unsigned (7 downto 0) := to_unsigned(0, 8);  
    
    signal s1_cnt           : unsigned (12 downto 0) := to_unsigned(0, 13);
    signal s2_cnt           : unsigned (12 downto 0) := to_unsigned(0, 13);
    signal s3_cnt           : unsigned (12 downto 0) := to_unsigned(0, 13);
    signal s4_cnt           : unsigned (12 downto 0) := to_unsigned(0, 13);
    signal s5_cnt           : unsigned (12 downto 0) := to_unsigned(0, 13);
      
begin

    ---------------------------------------------------------------------------------------
    --assign
    s1_rd   <= s1_rd_t;
    s2_rd   <= s2_rd_t;-- when (mac_tready = '0') else '0';
    s3_rd   <= s3_rd_t;
    s4_rd   <= s4_rd_t;
    s5_rd   <= s5_rd_t;
    y_dout  <= y_dout_t;
    
    s1_cnt <= unsigned(s1_dcount);
    s2_cnt <= unsigned(s2_dcount);
    s3_cnt <= unsigned(s3_dcount);
    s4_cnt <= unsigned(s4_dcount);
    s5_cnt <= unsigned(s5_dcount);
    
    ---------------------------------------------------------------------------------------
    arb_sequential : process (clk)
    begin
      if falling_edge(clk) then
      --if rising_edge(clk) then  

        -- ARB FSM
        case arb_state is
            when IDLE =>
                s1_rd_t         <= '0';
                s2_rd_t         <= '0';
                s3_rd_t         <= '0';
                s4_rd_t         <= '0';
                s5_rd_t         <= '0';
                y_dout_t        <= (others => '0'); 
                
                --
                --if    ( to_integer(s1_cnt) >= 128  ) then
                --PKT1 ADC 25701
                if    ( to_integer(s1_cnt) >= 2948  ) then
                    s1_rd_t   <= '1';
                    arb_state <= ST_S1;
                    --arb_state <= IDLE;
                
                --ARP    
                --elsif ( to_integer(s2_cnt) >= 72  ) then
                elsif ( to_integer(s2_cnt) >= 144  ) then
                    s2_rd_t   <= '1';
                    arb_state <= ST_S2;
                    
                --ICMP    
                --elsif ( to_integer(s3_cnt) >= 110  ) then
                elsif ( to_integer(s3_cnt) >= 220  ) then
                    s3_rd_t   <= '1';
                    arb_state <= ST_S3;   

                --ARP2
                elsif ( to_integer(s4_cnt) >= 144  ) then
                    s4_rd_t   <= '1';
                    arb_state <= ST_S4;       

                --PKT2 ADC 25701
                elsif ( to_integer(s5_cnt) >= 2948  ) then
                    s5_rd_t   <= '1';
                    arb_state <= ST_S5;       
                end if;
            
            
            ---------------------------------------------------------------------------------------
            when ST_S1 => 
                y_dout_t <=s1_din;
                if( (s1_din(4) = '0'  and  y_dout_t(4) ='1') or (to_integer(s1_cnt) = 0) ) then 
                    arb_state <= ST_IGP;
                end if;
            
            ---------------------------------------------------------------------------------------
            when ST_S2 =>
                y_dout_t <=s2_din;
                if( (s2_din(4) = '0'  and  y_dout_t(4) ='1') or (to_integer(s2_cnt) = 0) ) then 
                    arb_state <= ST_IGP;
                end if; 
                
            ---------------------------------------------------------------------------------------    
            when ST_S3 =>
                y_dout_t <=s3_din;
                if( (s3_din(4) = '0'  and  y_dout_t(4) ='1') or (to_integer(s3_cnt) = 0) ) then 
                    arb_state <= ST_IGP;
                end if;     
            
            ---------------------------------------------------------------------------------------    
            when ST_S4 =>
                y_dout_t <=s4_din;
                if( (s4_din(4) = '0'  and  y_dout_t(4) ='1') or (to_integer(s4_cnt) = 0) ) then 
                    arb_state <= ST_IGP;
                end if;     
            
            ---------------------------------------------------------------------------------------    
            when ST_S5 =>
                y_dout_t <=s5_din;
                if( (s5_din(4) = '0'  and  y_dout_t(4) ='1') or (to_integer(s5_cnt) = 0) ) then 
                    arb_state <= ST_IGP;
                end if;   
                
            ---------------------------------------------------------------------------------------
            when ST_IGP => 
                s1_rd_t   <='0';
                s2_rd_t   <='0';
                s3_rd_t   <='0';
                s4_rd_t   <='0';
                s5_rd_t   <='0';
                y_dout_t  <=(others => '0'); 
                arb_state <= IDLE;
                
--                if (to_integer(arb_count) = 12) then              
--                      arb_state <= IDLE;
--                      arb_count <= to_unsigned(0, 8);
--                else
--                      arb_count <= arb_count + 1;
--                end if;
                
            when others => NULL;
        end case;    
 
      end if;
    end process arb_sequential;


end Behavioral;
