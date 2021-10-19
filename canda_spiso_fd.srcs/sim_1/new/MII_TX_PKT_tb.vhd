----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/19/2021 07:43:59 AM
-- Design Name: 
-- Module Name: MII_TX_PKT_tb - Behavioral
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

entity MII_TX_PKT_tb is
--  Port ( );
end MII_TX_PKT_tb;

architecture Behavioral of MII_TX_PKT_tb is
    
    constant  DEV_IP            : std_logic_vector(31 downto 0)  := x"C0_A8_05_02";
    constant  DEV_MAC           : std_logic_vector(47 downto 0)  := x"2c_56_dc_94_ea_77";
    constant  DST_IP            : std_logic_vector(31 downto 0)  := x"C0_A8_05_01";
    
    signal    DST_MAC           : std_logic_vector(47 downto 0)  := x"FF_FF_FF_FF_FF_FF"; --Broadcast MAC Adress


--    constant clk_period         : time := 8 ns;
--    signal   clk_125Mhz         : std_logic := '0';
    
    
    constant clk_period2        : time := 20 ns;
    signal   clk_50Mhz          : std_logic := '0';
    
    constant clk_period         : time := 40 ns;
    signal   clk_25Mhz          : std_logic := '0';
    
    signal IM_DONE              : std_logic := '0';
    signal IM_DATA              : STD_LOGIC_VECTOR (255 downto 0) := (others => '0');
    
    signal MII_TX_EN            : std_logic := '0';
    signal MII_TX_DATA          : std_logic_vector(3 downto 0) := (others => '0');
    
    
    signal ADC_SER1            : STD_LOGIC;
    signal ADC_SER2            : STD_LOGIC;
    signal ADC_SER3            : STD_LOGIC;
    signal ADC_SER4            : STD_LOGIC;
    signal ADC_RST             : STD_LOGIC;
    signal ADC_CS              : STD_LOGIC;
    signal ADC_CONV            : STD_LOGIC;
    signal ADC_SCLK            : STD_LOGIC;
    
    ---------------------------------------------------------------------------------------
    --DDS
    signal DDS_RST             : STD_LOGIC;
    signal DDS_MCLK            : STD_LOGIC;
    signal DDS_SCLK            : STD_LOGIC;
    signal DDS_FSYNC           : STD_LOGIC;
    signal DDS_SDATA           : STD_LOGIC;
    signal DDS_SLEEP           : STD_LOGIC;
    
    ---------------------------------------------------------------------------------------
    --ETHERNET1
    signal PHY1_MDC            : STD_LOGIC:= '1';
    signal PHY1_MDIO           : STD_LOGIC:= '1';
    signal PHY1_COMA           : STD_LOGIC;
    signal PHY1_RESET_N        : STD_LOGIC;
    signal PHY1_GTXC           : STD_LOGIC;
    signal PHY1_RXC            : STD_LOGIC:= '0';
    signal PHY1_RXER           : STD_LOGIC:= '0';
    signal PHY1_RXDV           : STD_LOGIC:= '0';
    signal PHY1_RXD            : STD_LOGIC_VECTOR (7 downto 0):= (others => '0');
    signal PHY1_TXC            : STD_LOGIC;
    signal PHY1_TXEN           : STD_LOGIC;
    signal PHY1_TXER           : STD_LOGIC;
    signal PHY1_TXD            : STD_LOGIC_VECTOR (7 downto 0);
    
    ---------------------------------------------------------------------------------------
    --ETHERNET2
    signal PHY2_MDC            : STD_LOGIC;
    signal PHY2_MDIO           : STD_LOGIC;
    signal PHY2_COMA           : STD_LOGIC;
    signal PHY2_RESET_N        : STD_LOGIC;
    signal PHY2_GTXC           : STD_LOGIC;
    signal PHY2_RXC            : STD_LOGIC;
    signal PHY2_RXER           : STD_LOGIC;
    signal PHY2_RXDV           : STD_LOGIC;
    signal PHY2_RXD            : STD_LOGIC_VECTOR (7 downto 0);
    signal PHY2_TXC            : STD_LOGIC;
    signal PHY2_TXEN           : STD_LOGIC;
    signal PHY2_TXER           : STD_LOGIC;
    signal PHY2_TXD            : STD_LOGIC_VECTOR (7 downto 0);
    

    ---------------------------------------------------------------------------------------
    component imitator_16ch
    port (
        CLK                     : in STD_LOGIC;
        IM_DONE                 : out STD_LOGIC;
        IM_DATA                 : out STD_LOGIC_VECTOR (255 downto 0)
    );
    end component;

    ---------------------------------------------------------------------------------------
    component MII_TX_PKT
    port (
        CLK                     : in STD_LOGIC;
        
        DEV_IP                  : in STD_LOGIC_VECTOR (31 downto 0);
        DEV_MAC                 : in STD_LOGIC_VECTOR (47 downto 0);
        
        DST_IP                  : in std_logic_vector (31 downto 0);
        DST_MAC                 : in std_logic_vector (47 downto 0);
        
        ADC_DONE                : in  std_logic;
        ADC_DATA                : in  STD_LOGIC_VECTOR (255 downto 0);
        
        MII_TX_EN               : out STD_LOGIC := '0';
        MII_TX_DATA             : out STD_LOGIC_VECTOR (3 downto 0) := (others => '0')     
    );
    end component;
    
    ---------------------------------------------------------------------------------------
    component canda
    port (
        sys_clk             : in STD_LOGIC;
        
        --            --ADDRESS OF MODULE
        --            ADDR_0              : in STD_LOGIC;
        --            ADDR_1              : in STD_LOGIC;
        --            ADDR_2              : in STD_LOGIC;
        --            ADDR_3              : in STD_LOGIC;
        --            ADDR_4              : in STD_LOGIC;
        
        --            --IO
        --            IO_1                : in STD_LOGIC;
        --            IO_2                : in STD_LOGIC;
        --            IO_CLK1             : in STD_LOGIC;
        --            IO_CLK2             : in STD_LOGIC;
        
        --            --AT45DB FLASH
        --            AT45DB_CS           : out STD_LOGIC;
        --            AT45DB_SCK          : out STD_LOGIC;
        --            AT45DB_SI           : in STD_LOGIC;
        --            AT45DB_SO           : out STD_LOGIC;
        --            AT45DB_RST          : out STD_LOGIC;
        --            AT45DB_WP           : out STD_LOGIC;
        
        ---------------------------------------------------------------------------------------
        --ADC
        ADC_SER1            : in STD_LOGIC;
        ADC_SER2            : in STD_LOGIC;
        ADC_SER3            : in STD_LOGIC;
        ADC_SER4            : in STD_LOGIC;
        ADC_RST             : out STD_LOGIC;
        ADC_CS              : out STD_LOGIC;
        ADC_CONV            : out STD_LOGIC;
        ADC_SCLK            : out STD_LOGIC;
        
        ---------------------------------------------------------------------------------------
        --DDS
        DDS_RST             : out STD_LOGIC;
        DDS_MCLK            : out STD_LOGIC;
        DDS_SCLK            : out STD_LOGIC;
        DDS_FSYNC           : out STD_LOGIC;
        DDS_SDATA           : out STD_LOGIC;
        DDS_SLEEP           : out STD_LOGIC;
        
        ---------------------------------------------------------------------------------------
        --ETHERNET1
        PHY1_MDC            : out STD_LOGIC;
        PHY1_MDIO           : inout STD_LOGIC;
        PHY1_COMA           : out STD_LOGIC;
        PHY1_RESET_N        : out STD_LOGIC;
        PHY1_GTXC           : out STD_LOGIC;
        PHY1_RXC            : in STD_LOGIC;
        PHY1_RXER           : in STD_LOGIC;
        PHY1_RXDV           : in STD_LOGIC;
        PHY1_RXD            : in STD_LOGIC_VECTOR (7 downto 0);
        PHY1_TXC            : in STD_LOGIC;
        PHY1_TXEN           : out STD_LOGIC;
        PHY1_TXER           : out STD_LOGIC;
        PHY1_TXD            : out STD_LOGIC_VECTOR (7 downto 0);
        
        ---------------------------------------------------------------------------------------
        --ETHERNET2
        PHY2_MDC            : out STD_LOGIC;
        PHY2_MDIO           : inout STD_LOGIC;
        PHY2_COMA           : out STD_LOGIC;
        PHY2_RESET_N        : out STD_LOGIC;
        PHY2_GTXC           : out STD_LOGIC;
        PHY2_RXC            : in STD_LOGIC;
        PHY2_RXER           : in STD_LOGIC;
        PHY2_RXDV           : in STD_LOGIC;
        PHY2_RXD            : in STD_LOGIC_VECTOR (7 downto 0);
        PHY2_TXC            : in STD_LOGIC;
        PHY2_TXEN           : out STD_LOGIC;
        PHY2_TXER           : out STD_LOGIC;
        PHY2_TXD            : out STD_LOGIC_VECTOR (7 downto 0)
    );
    end component;
    
begin

    ---------------------------------------------------------------------------------------
    clock_process :process
	begin
		clk_25Mhz <= '0';
		wait for clk_period/2;
		clk_25Mhz <= '1';
		wait for clk_period/2;
	end process;
	
	---------------------------------------------------------------------------------------
    clock_process2 :process
	begin
		clk_50Mhz <= '0';
		wait for clk_period2/2;
		clk_50Mhz <= '1';
		wait for clk_period2/2;
	end process;
	
	---------------------------------------------------------------------------------------
    im16ch: imitator_16ch
    port map(    
        CLK                     => clk_25Mhz, 
        IM_DONE                 => IM_DONE,
        IM_DATA                 => IM_DATA
    );
    
    ---------------------------------------------------------------------------------------
    tx_25701: MII_TX_PKT
    port map(    
        CLK                     => clk_25Mhz,
        
        DEV_IP                  => DEV_IP,       
        DEV_MAC                 => DEV_MAC,
        
        DST_IP                  => DST_IP,
        DST_MAC                 => DST_MAC,
        
        ADC_DONE                => IM_DONE,
        ADC_DATA                => IM_DATA,
        
        MII_TX_EN               => MII_TX_EN,
        MII_TX_DATA             => MII_TX_DATA 
    ); 
    
    
    PHY1_RXC  <= clk_25Mhz;
    PHY1_RXD  <= b"0000" & MII_TX_DATA;
    PHY1_RXDV <= MII_TX_EN;
    
    canda1: canda
    port map(   
        sys_clk                 => clk_50Mhz,
        
        --ADC
        ADC_SER1                => ADC_SER1,
        ADC_SER2                => ADC_SER2,
        ADC_SER3                => ADC_SER3,
        ADC_SER4                => ADC_SER4,
        ADC_RST                 => ADC_RST,
        ADC_CS                  => ADC_CS,
        ADC_CONV                => ADC_CONV,
        ADC_SCLK                => ADC_SCLK,
        
        ---------------------------------------------------------------------------------------
        --DDS
        DDS_RST                 => DDS_RST,
        DDS_MCLK                => DDS_MCLK,
        DDS_SCLK                => DDS_SCLK,
        DDS_FSYNC               => DDS_FSYNC,
        DDS_SDATA               => DDS_SDATA,
        DDS_SLEEP               => DDS_SLEEP,
        
        ---------------------------------------------------------------------------------------
        --ETHERNET1
        PHY1_MDC                => PHY1_MDC,
        PHY1_MDIO               => PHY1_MDIO,
        PHY1_COMA               => PHY1_COMA,
        PHY1_RESET_N            => PHY1_RESET_N,
        PHY1_GTXC               => PHY1_GTXC,
        PHY1_RXC                => PHY1_RXC,
        PHY1_RXER               => PHY1_RXER,
        PHY1_RXDV               => PHY1_RXDV,
        PHY1_RXD                => PHY1_RXD,
        PHY1_TXC                => PHY1_TXC,
        PHY1_TXEN               => PHY1_TXEN,
        PHY1_TXER               => PHY1_TXER,
        PHY1_TXD                => PHY1_TXD,
        
        ---------------------------------------------------------------------------------------
        --ETHERNET2
        PHY2_MDC                => PHY2_MDC,
        PHY2_MDIO               => PHY2_MDIO,
        PHY2_COMA               => PHY2_COMA,
        PHY2_RESET_N            => PHY2_RESET_N,
        PHY2_GTXC               => PHY2_GTXC,
        PHY2_RXC                => PHY2_RXC,
        PHY2_RXER               => PHY2_RXER,
        PHY2_RXDV               => PHY2_RXDV,
        PHY2_RXD                => PHY2_RXD,
        PHY2_TXC                => PHY2_TXC,
        PHY2_TXEN               => PHY2_TXEN,
        PHY2_TXER               => PHY2_TXER,
        PHY2_TXD                => PHY2_TXD
    );
    
    
       
end Behavioral;
