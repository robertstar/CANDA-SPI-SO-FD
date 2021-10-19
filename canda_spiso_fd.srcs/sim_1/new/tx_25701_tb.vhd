----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.05.2021 18:39:32
-- Design Name: 
-- Module Name: tx_25701_tb - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tx_25701_tb is
--  Port ( );
end tx_25701_tb;

architecture Behavioral of tx_25701_tb is

    constant  DEV_IP            : std_logic_vector(31 downto 0)  := x"C0_A8_05_02";
    constant  DEV_MAC           : std_logic_vector(47 downto 0)  := x"1A_CF_FC_1D_67_03";
    constant  DST_IP            : std_logic_vector(31 downto 0)  := x"C0_A8_05_01";
    
    signal    DST_MAC           : std_logic_vector(47 downto 0)  := x"FF_FF_FF_FF_FF_FF"; --Broadcast MAC Adress


    constant clk_period         : time := 8 ns;
    signal   clk_125Mhz         : std_logic := '0';
    
    signal IM_DONE              : std_logic := '0';
    signal IM_DATA              : STD_LOGIC_VECTOR (255 downto 0) := (others => '0');
    
    signal FIFO_25701_WR_EN     : std_logic := '0';
    signal FIFO_25701_WR_DATA   : std_logic_vector(9 downto 0) := (others => '0');

    ---------------------------------------------------------------------------------------
    component imitator_16ch
    port (
        CLK                     : in STD_LOGIC;
        IM_DONE                 : out STD_LOGIC;
        IM_DATA                 : out STD_LOGIC_VECTOR (255 downto 0)
    );
    end component;

    ---------------------------------------------------------------------------------------
    component tx_pkt_25701
    port (
        CLK                     : in STD_LOGIC;
        
        DEV_IP                  : in STD_LOGIC_VECTOR (31 downto 0);
        DEV_MAC                 : in STD_LOGIC_VECTOR (47 downto 0);
        
        DST_IP                  : in std_logic_vector (31 downto 0);
        DST_MAC                 : in std_logic_vector (47 downto 0);
        
        ADC_DONE                : in  std_logic;
        ADC_DATA                : in  STD_LOGIC_VECTOR (255 downto 0);
        
        --Write TX packet to FIFO 
        FIFO_25701_WR_EN        : out STD_LOGIC := '0';
        FIFO_25701_WR_DATA      : out STD_LOGIC_VECTOR (9 downto 0) := (others => '0')       
    );
    end component;
    
begin

    ---------------------------------------------------------------------------------------
    clock_process :process
	begin
		clk_125Mhz <= '0';
		wait for clk_period/2;
		clk_125Mhz <= '1';
		wait for clk_period/2;
	end process;
	
	---------------------------------------------------------------------------------------
    im16ch: imitator_16ch
    port map(    
        CLK                     => clk_125Mhz, 
        IM_DONE                 => IM_DONE,
        IM_DATA                 => IM_DATA
    );
    
    ---------------------------------------------------------------------------------------
    tx_25701: tx_pkt_25701
    port map(    
        CLK                     => clk_125Mhz,
        
        DEV_IP                  => DEV_IP,       
        DEV_MAC                 => DEV_MAC,
        
        DST_IP                  => DST_IP,
        DST_MAC                 => DST_MAC,
        
        ADC_DONE                => IM_DONE,
        ADC_DATA                => IM_DATA,
        
        --Write TX packet to FIFO 
        FIFO_25701_WR_EN        => FIFO_25701_WR_EN,
        FIFO_25701_WR_DATA      => FIFO_25701_WR_DATA   
    );    
	

end Behavioral;