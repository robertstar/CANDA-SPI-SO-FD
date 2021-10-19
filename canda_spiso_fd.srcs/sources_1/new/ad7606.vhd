----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2021 09:34:27 AM
-- Design Name: 
-- Module Name: ad7606 - Behavioral
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

entity ad7606 is
    Port ( 
        CLK                 : in STD_LOGIC; --25Mhz
        
        FD_CLK              : in STD_LOGIC; --10kHz for test
        
        ADC_SER1            : in STD_LOGIC;
        ADC_SER2            : in STD_LOGIC;
        ADC_SER3            : in STD_LOGIC;
        ADC_SER4            : in STD_LOGIC;
        
        ADC_RST             : out STD_LOGIC := '0';
        ADC_CS              : out STD_LOGIC := '1';
        ADC_CONV            : out STD_LOGIC := '1';
        ADC_SCLK            : out STD_LOGIC := '1';
        
        ADC_DONE            : out STD_LOGIC := '0';
        ADC_DATA            : out STD_LOGIC_VECTOR (255 downto 0)  := (others => '0')
    );
end ad7606;

architecture Behavioral of ad7606 is

    signal sync1            : std_logic := '0';
    signal sync2            : std_logic := '0';
    signal sync3            : std_logic := '0';
    signal adc_state        : integer range 0 to 16   := 0;
    
    signal adc1_t           : std_logic_vector (63 downto 0) := (others => '0');	--Temp reg for ADC1_A
    signal adc2_t           : std_logic_vector (63 downto 0) := (others => '0');	--Temp reg for ADC1_B
    signal adc3_t           : std_logic_vector (63 downto 0) := (others => '0');	--Temp reg for ADC2_A
    signal adc4_t           : std_logic_vector (63 downto 0) := (others => '0');	--Temp reg for ADC2_B
    
    signal i                : integer range 0 to 100   := 0;
    signal tim_5us          : integer range 0 to 1000  := 0; 
    signal bit_cnt          : integer range 0 to 300  := 0; 
    
    signal i_addr           : unsigned (4 downto 0) := to_unsigned(0, 5);
    signal test_s1          : signed (15 downto 0)  := to_signed(0, 16);  
    type t_sin_table2 is array(0 to 31) of integer range 0 to 65535;
    constant C_SIN_TABLE2  : t_sin_table2 := (32768, 39160, 45307, 50972, 55938, 60013, 63041, 64905, 65535, 64905, 63041, 60013, 55938, 50972, 45307, 39160, 
                                              32768, 26375, 20228, 14563,  9597,  5522,  2494,   630,     0,   630,  2494,  5522,  9597, 14563, 20228, 26375);
                                            
    
begin



    --test_s1  <= to_signed(C_SIN_TABLE2(to_integer(i_addr)),16);

    ---------------------------------------------------------------------------------------
    adc_proto : process (CLK)
    begin
        --if rising_edge(CLK) then
        if falling_edge(CLK) then    
            ---------------------------------------------------------------------------------------
            --sync adc fd clock
            sync1 <= FD_CLK;
            sync2 <= sync1;
            sync3 <= sync2;
            
            
            case adc_state is
                when 0 => --IDLE
                    i		 <= 0;	
                    ADC_CS	 <= '1';
                    ADC_SCLK <= '1'; 
                    ADC_CONV <= '1';
                    
                    adc1_t   <= (others => '0');
                    adc2_t   <= (others => '0');
                    adc3_t   <= (others => '0');
                    adc4_t   <= (others => '0');
                    
                    if(sync3 = '1') then
                        --i_addr  <= i_addr + 1; 
                        ADC_RST <= '1';
                        adc_state <= adc_state + 1;
                    end if;
                    
                when 1 => --Reset
                    if(i < 20) then               
                        i <= i + 1; --80 ns
                    else		 
                        i <= 0;
                        ADC_RST <= '0';  
                        adc_state <= adc_state + 1;	
                    end if;
                      
		        when 2 =>
		            if(i < 20) then               
                        i <= i + 1; --80 ns
                    else		 
                        i <= 0;
                        adc_state <= adc_state + 1;	
                    end if;
		        
                when 3 => --CONV            
                    if(i < 50) then     
                    --if(i < 45) then               
                        i <= i + 1;
                        ADC_CONV <= '0'; 
                    else		 
                        i <= 0;
                        ADC_CONV <= '1';  
                        adc_state <= adc_state + 1;	
                    end if;
			    
			    when 4 => --BUSY & CS
                    if(tim_5us < 150) then
                    --if(tim_5us < 1000) then
                        tim_5us <= tim_5us + 1;
                        --if(tim_5us = 100) then
                        --if(tim_5us = 850) then
                            --ADC_CS <= '0';  
                        --end if;
                    else
                        tim_5us   <= 0;
                        adc_state <= adc_state + 1;	
                    end if;
                    
                    
                when 5 =>    
                   if(i < 50) then                
                        i <= i + 1;
                        ADC_CS <= '0'; 
                    else		 
                        i <= 0;
                        adc_state <= adc_state + 1;	
                    end if;   
                    
                when 6 => --READ ADC1 & ADC2 
                    if(i = 9) then	--4
                    --if(i = 40) then	--4
                        ADC_SCLK <= '1';
                        i <= 0;	
                        if(bit_cnt < 63) then	 
                            adc1_t	  <= adc1_t(62 downto 0) & ADC_SER1;
                            adc2_t	  <= adc2_t(62 downto 0) & ADC_SER2;
                            adc3_t	  <= adc3_t(62 downto 0) & ADC_SER3;
                            adc4_t	  <= adc4_t(62 downto 0) & ADC_SER4;
                            bit_cnt	  <= bit_cnt + 1;
                        else
                            adc1_t	  <= adc1_t(62 downto 0) & ADC_SER1;
                            adc2_t	  <= adc2_t(62 downto 0) & ADC_SER2;
                            adc3_t	  <= adc3_t(62 downto 0) & ADC_SER3;
                            adc4_t	  <= adc4_t(62 downto 0) & ADC_SER4;
                            bit_cnt	  <= 0;
                            adc_state <= adc_state + 1;	
                        end if;
                    else
                        i <= i + 1;
                        if(i = 4)then --2
                        --if(i = 20)then --2
                            ADC_SCLK <= '0';	
                        end if;
                    end	if;
                    
                when 7 => --SAVE DATA
                    ADC_SCLK <= '1';	 
                    ADC_CS	 <= '1';
                    
                    --ADC1
                    ADC_DATA(15  downto 0)      <= adc1_t(63 downto 48);
                    --ADC_DATA(15  downto 0)    <= X"A7_48";
                    --ADC_DATA(15  downto 0)    <= std_logic_vector( not test_s1(15) & test_s1(14 downto 0));
                    
                    ADC_DATA(31  downto 16)	    <= adc1_t(47 downto 32);
                    ADC_DATA(47  downto 32)	    <= adc1_t(31 downto 16);
                    ADC_DATA(63  downto 48)	    <= adc1_t(15 downto 0);
                    
                    ADC_DATA(79  downto 64)	    <= adc2_t(63 downto 48);
                    ADC_DATA(95  downto 80)	    <= adc2_t(47 downto 32);
                    ADC_DATA(111 downto 96)	    <= adc2_t(31 downto 16);
                    ADC_DATA(127 downto 112)	<= adc2_t(15 downto 0);
                    
                    --ADC2
                    ADC_DATA(143 downto 128)	<= adc3_t(63 downto 48);
                    ADC_DATA(159 downto 144)	<= adc3_t(47 downto 32);
                    ADC_DATA(175 downto 160)	<= adc3_t(31 downto 16);
                    ADC_DATA(191 downto 176)	<= adc3_t(15 downto 0);
                    
                    ADC_DATA(207 downto 192)	<= adc4_t(63 downto 48);
                    ADC_DATA(223 downto 208)	<= adc4_t(47 downto 32);
                    ADC_DATA(239 downto 224)	<= adc4_t(31 downto 16);
                    ADC_DATA(255 downto 240)	<= adc4_t(15 downto 0);
                    ADC_DONE	<= '1';
                    adc_state   <= adc_state + 1;	
                    i			<= 0;
                    bit_cnt	    <= 0;
                    
                when 8 =>
                    ADC_DONE	<= '0';
				    if(sync3 = '0') then
					   adc_state <= 0;
				    end if;
                
                when others => null;
            end case;
        end if;
    end process adc_proto;  
      
end Behavioral;
