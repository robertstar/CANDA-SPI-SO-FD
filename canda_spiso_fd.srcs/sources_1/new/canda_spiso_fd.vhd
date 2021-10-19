----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/10/2021 07:44:27 AM
-- Design Name: 
-- Module Name: canda - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:hhh
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.math_real.all;


-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity canda_spiso_fd is
Port ( 
            ---------------------------------------------------------------------------------------
            sys_clk             : in STD_LOGIC;
            
            ---------------------------------------------------------------------------------------
            --FD
            FD                  : in STD_LOGIC;
            
            ---------------------------------------------------------------------------------------
            --ADDRESS OF MODULE
            ADDR_DEV            : in STD_LOGIC_VECTOR (4 downto 0);
            
            ---------------------------------------------------------------------------------------
--            --IO
--            IO_1                : in STD_LOGIC;
--            IO_2                : in STD_LOGIC;
--            IO_CLK1             : in STD_LOGIC;
--            IO_CLK2             : in STD_LOGIC;

            ---------------------------------------------------------------------------------------  
--            --AT45DB FLASH
--            AT45DB_CS           : out STD_LOGIC;
--            AT45DB_SCK          : out STD_LOGIC;
--            AT45DB_SI           : in STD_LOGIC;
--            AT45DB_SO           : out STD_LOGIC;
--            AT45DB_RST          : out STD_LOGIC;
--            AT45DB_WP           : out STD_LOGIC;


            ---------------------------------------------------------------------------------------
            --Modules RS485 CO1
            SERIAL1_RX          : in  STD_LOGIC; --DDS_FSYNC
            SERIAL1_TX          : out STD_LOGIC; --DDS_RST
            SERIAL1_RE          : out STD_LOGIC; --DDS_SLEEP
            SERIAL1_DE          : out STD_LOGIC; --DDS_MCLK
            
            ---------------------------------------------------------------------------------------
            --Modules RS485 CO2
            SERIAL2_RX          : in  STD_LOGIC; --ADC_SER1
            SERIAL2_TX          : out STD_LOGIC; --DDS_SDATA
            SERIAL2_RE          : out STD_LOGIC; --ADC_SER3
            SERIAL2_DE          : out STD_LOGIC; --ADC_SER2
            
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
end canda_spiso_fd;

architecture Behavioral of canda_spiso_fd is

    --CONFIG BOARD
    constant  DST_IP                        : std_logic_vector(31 downto 0)  := x"C0_A8_05_01";

    signal DEV_IP                           : std_logic_vector(31 downto 0)  := (others => '0');
    signal DEV_MAC                          : std_logic_vector(47 downto 0)  := (others => '0');
    signal DST_MAC                          : std_logic_vector(47 downto 0)  := x"FF_FF_FF_FF_FF_FF"; --Broadcast MAC Adress

    signal clk_50Mhz                        : std_logic := '0';
    signal clk_25Mhz                        : std_logic := '0';
    signal clk_10Mhz                        : std_logic := '0';
    
    signal arb_dout                         : std_logic_vector (4 downto 0) := (others => '0');
    signal phy1_done                        : std_logic := '0';
    signal phy2_done                        : std_logic := '0';
    
    signal reset1_n                         : std_logic := '0';
    signal reset2_n                         : std_logic := '0';
    
    signal fifo_1k_eth1_to_eth2_wr_clk      : std_logic := '0';
    signal fifo_1k_eth1_to_eth2_wr_en       : std_logic := '0';
    signal fifo_1k_eth1_to_eth2_prog_full   : std_logic := '0';
    signal fifo_1k_eth1_to_eth2_prog_empty  : std_logic := '0';
    signal fifo_1k_eth1_to_eth2_rd_clk      : std_logic := '0';
    signal fifo_1k_eth1_to_eth2_rd_en       : std_logic := '0';
    signal fifo_1k_eth1_to_eth2_wr_din      : std_logic_vector (9 downto 0) := (others => '0');
    signal fifo_1k_eth1_to_eth2_wr_full     : std_logic := '0';
    signal fifo_1k_eth1_to_eth2_rd_dout     : std_logic_vector (4 downto 0) := (others => '0');
    signal fifo_1k_eth1_to_eth2_rd_empty    : std_logic := '0';

    signal dilator_t                        : std_logic := '0';
    signal dilator_st                       : std_logic := '0';
    
    signal PHY1_MDC_t                       : std_logic := '0';
    signal PHY1_MDIO_t                      : std_logic := '0';
    
    signal PHY2_MDC_t                       : std_logic := '0';
    signal PHY2_MDIO_t                      : std_logic := '0';
    
    signal PKT_APO_CLR                      : std_logic := '0';
    signal PKT_APO_DONE                     : std_logic := '0';
    signal PKT_APO_COMM                     : std_logic_vector(143 downto 0):= (others => '0'); 
    
    signal PKT_ARP_IP                       : std_logic_vector (31 downto 0):= (others => '0');
    signal PKT_ARP_MAC                      : std_logic_vector (47 downto 0):= (others => '0');
    signal PKT_ARP_CLR                      : std_logic := '0';
    signal PKT_ARP_DONE                     : std_logic := '0';
    
    signal set_arp_done                     : std_logic := '0';
    signal clr_arp_done                     : std_logic := '0';
    signal set_arp_done_t                   : std_logic := '0';
    signal clr_arp_done_t                   : std_logic := '0';
    
    signal set_arp2_done                    : std_logic := '0';
    signal clr_arp2_done                    : std_logic := '0';
    signal set_arp2_done_t                  : std_logic := '0';
    signal clr_arp2_done_t                  : std_logic := '0';
    
    signal set_apo_done                     : std_logic := '0';
    signal clr_apo_done                     : std_logic := '0';
    signal set_apo_done_t                   : std_logic := '0';
    signal clr_apo_done_t                   : std_logic := '0';
    
    signal arp_fifo_wr_clk                  : std_logic := '0';
    signal arp_fifo_wr_en                   : std_logic := '0';
    signal arp_fifo_wr_data                 : std_logic_vector (9 downto 0) := (others => '0');
    
    signal arp_fifo_dout                    : std_logic_vector (4 downto 0) := (others => '0');
    signal arp_fifo_rd_dcount               : std_logic_vector (12 downto 0) := (others => '0');
    signal arp_fifo_rd_en                   : std_logic := '0';


    signal ARP2_FIFO_WR_CLK                 : std_logic := '0';  
    signal ARP2_FIFO_WR_EN                  : std_logic := '0';
    signal ARP2_FIFO_WR_DATA                : std_logic_vector (9 downto 0) := (others => '0');
    signal ARP2_FIFO_RD_DOUT                : std_logic_vector (4 downto 0) := (others => '0');
    signal ARP2_FIFO_RD_DCNT                : std_logic_vector (12 downto 0):= (others => '0');
    signal ARP2_FIFO_RD_EN                  : std_logic := '0';
    
    
    signal PKT2_25701_FIFO_RD_EN            : std_logic := '0'; 
    signal PKT2_25701_FIFO_RD_DCNT          : std_logic_vector (12 downto 0):= (others => '0');
    signal PKT2_25701_FIFO_RD_DOUT          : std_logic_vector (4 downto 0) := (others => '0');

    
    signal icmp_fifo_wr_clk                  : std_logic := '0';
    signal icmp_fifo_wr_en                   : std_logic := '0';
    signal icmp_fifo_wr_data                 : std_logic_vector (9 downto 0) := (others => '0');
    
    signal icmp_fifo_dout                   : std_logic_vector (4 downto 0)  := (others => '0');
    signal icmp_fifo_rd_dcount              : std_logic_vector (12 downto 0) := (others => '0');
    signal icmp_fifo_rd_en                  : std_logic := '0';
    signal icmp_fifo_wr_dcount              : std_logic_vector (12 downto 0) := (others => '0');
    
    signal PKT_ICMP_CLR                     : std_logic := '0';
    signal PKT_ICMP_DONE                    : std_logic := '0';
    signal PKT_ICMP_DATA                    : std_logic_vector(511 downto 0) := (others => '0');
    
    signal PKT_SRC_IP                       : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal PKT_SRC_MAC                      : STD_LOGIC_VECTOR (47 downto 0) := (others => '0');
    signal PKT_DST_IP                       : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal PKT_DST_MAC                      : STD_LOGIC_VECTOR (47 downto 0) := (others => '0');
    signal PKT_TYPE                         : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    signal PKT_UDP_CRC                      : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    
    signal FIFO_ICMP_WR_EN                  : std_logic := '0';
    signal FIFO_ICMP_WR_DATA                : std_logic_vector(9 downto 0) := (others => '0');
    
    signal IM_DONE                          : std_logic := '0';
    signal IM_DATA                          : STD_LOGIC_VECTOR (255 downto 0) := (others => '0');
    
--    signal FIFO_25701_WR_EN                 : std_logic := '0';
--    signal FIFO_25701_WR_DATA               : std_logic_vector(9 downto 0) := (others => '0');
    
--    signal FIFO_25701_RD_DOUT               : std_logic_vector (4 downto 0);
--    signal FIFO_25701_RD_DCOUNT             : std_logic_vector (12 downto 0);
--    signal FIFO_25701_RD_EN                 : std_logic;
    
    
    signal pkt25701_fifo_wr_clk             : std_logic:= '0';
    signal pkt25701_fifo_wr_en              : std_logic:= '0';
    signal pkt25701_fifo_wr_data            : std_logic_vector (9 downto 0):= (others => '0');   
    
    signal pkt25701_fifo_dout               : std_logic_vector (4 downto 0);
    signal pkt25701_fifo_rd_dcount          : std_logic_vector (12 downto 0);
    signal pkt25701_fifo_rd_en              : std_logic := '0';
    
    
    signal FD_CLK                           : std_logic := '0';
    signal div_cnt                          : integer range 0 to 500  := 0; 
    
    
    signal MDIO1_REG0                       : std_logic_vector(15 downto 0) := (others => '0');
    signal MDIO1_REG27_1                    : std_logic_vector(15 downto 0) := (others => '0');
    signal MDIO1_REG27_2                    : std_logic_vector(15 downto 0) := (others => '0');

    signal MDIO2_REG0                       : std_logic_vector(15 downto 0) := (others => '0');
    signal MDIO2_REG22                      : std_logic_vector(15 downto 0) := (others => '0');
    signal MDIO2_REG27                      : std_logic_vector(15 downto 0) := (others => '0');
    

    signal mac1_rx_clk                      : std_logic:= '0';
    signal mac1_rx_tdata                    : std_logic_vector(7 downto 0):= (others => '0');
    signal mac1_rx_tvalid                   : std_logic:= '0';
    signal mac1_rx_tlast                    : std_logic:= '0';
    
    signal mac1_tx_clk                      : std_logic:= '0';
    signal mac1_tx_en                       : std_logic:= '0';
    signal mac1_tx_err                      : std_logic:= '0';
    signal mac1_txd                         : std_logic_vector(3 downto 0):= (others => '0');

    signal mac2_rx_clk                      : std_logic:= '0';
    signal mac2_rx_tdata                    : std_logic_vector(7 downto 0):= (others => '0');
    signal mac2_rx_tvalid                   : std_logic:= '0';
    signal mac2_rx_tlast                    : std_logic:= '0';
    
    signal mac2_tx_clk                      : std_logic:= '0';
    signal mac2_tx_en                       : std_logic:= '0';
    signal mac2_tx_err                      : std_logic:= '0';
    signal mac2_txd                         : std_logic_vector(3 downto 0):= (others => '0');

    signal sync1                            : std_logic := '0';
    signal sync2                            : std_logic := '0';
    signal sync3                            : std_logic := '0';
    
    signal timeout_100ms                    : std_logic_vector (31 downto 0) := (others => '0'); 
    signal rst_fifo                         : std_logic := '0';
    
    signal tx_25701_rst                     : std_logic := '0';
    
    
    signal ETH2_RX_ARP_CLR              : std_logic := '0';
    signal ETH2_RX_ARP_DONE             : std_logic := '0';
    signal ETH2_RX_ARP_DST_MAC          : std_logic_vector (47 downto 0)    := (others => '0');
    signal ETH2_RX_ARP_SRC_MAC          : std_logic_vector (47 downto 0)    := (others => '0');
    signal ETH2_RX_ARP_HDR              : std_logic_vector (223 downto 0)   := (others => '0');
    
    signal ETH2_RX_25701_WR_CLK         : std_logic := '0';
    signal ETH2_RX_25701_WR_EN          : std_logic := '0';
    signal ETH2_RX_25701_WR_DATA        : std_logic_vector (7 downto 0)     := (others => '0'); 
    
    signal FIFO_ETH2_RX_25701_RD_EN     : std_logic := '0';
    signal FIFO_ETH2_RX_25701_RD_DCNT   : std_logic_vector (11 downto 0)    := (others => '0'); 
    signal FIFO_ETH2_RX_25701_RD_DOUT   : std_logic_vector (7 downto 0)     := (others => '0'); 
    
    signal FIFO_PKT2_25701_WR_CLK       : std_logic := '0';
    signal FIFO_PKT2_25701_WR_EN        : std_logic := '0';
    signal FIFO_PKT2_25701_WR_DOUT      : std_logic_vector (9 downto 0)     := (others => '0');  

    signal ETH2_RX_25701_SRC_MAC        : std_logic_vector (47 downto 0)    := (others => '0'); 
    signal ETH2_RX_25701_SRC_IP         : std_logic_vector (31 downto 0)    := (others => '0'); 
    
    signal ETH2_RX_25701_DST_MAC        : std_logic_vector (47 downto 0)    := (others => '0'); 
    signal ETH2_RX_25701_DST_IP         : std_logic_vector (31 downto 0)    := (others => '0'); 
    signal ETH2_RX_25701_UDP_SP         : std_logic_vector (15 downto 0)    := (others => '0'); 
    signal ETH2_RX_25701_UDP_DP         : std_logic_vector (15 downto 0)    := (others => '0'); 
    signal ETH2_RX_25701_UDP_CRC        : std_logic_vector (15 downto 0)    := (others => '0'); 
    
    signal ETH2_RX_25701_CLR            : std_logic := '0';
    signal ETH2_RX_25701_DONE           : std_logic := '0';
    
    signal set_pkt25701_done            : std_logic := '0';
    signal clr_pkt25701_done            : std_logic := '0';
    signal set_pkt25701_done_t          : std_logic := '0';
    signal clr_pkt25701_done_t          : std_logic := '0';
    
    
    signal pkt25702_fifo_wr_clk             : std_logic:= '0';
    signal pkt25702_fifo_wr_en              : std_logic:= '0';
    signal pkt25702_fifo_wr_data            : std_logic_vector (9 downto 0):= (others => '0');   
    
    signal pkt25702_fifo_dout               : std_logic_vector (4 downto 0);
    signal pkt25702_fifo_rd_dcount          : std_logic_vector (12 downto 0);
    signal pkt25702_fifo_rd_en              : std_logic := '0';

    signal RAM_SO1_DONE                     : std_logic := '0';
    signal RAM_SO1_RD_EN                    : std_logic := '0';
    signal RAM_SO1_RD_ADDR                  : std_logic_vector(10 downto 0):= (others => '0'); 
    signal RAM_SO1_RD_DATA                  : std_logic_vector(7 downto 0):= (others => '0');
    
    signal RAM_SO2_DONE                     : std_logic := '0';
    signal RAM_SO2_RD_EN                    : std_logic := '0';
    signal RAM_SO2_RD_ADDR                  : std_logic_vector(10 downto 0):= (others => '0'); 
    signal RAM_SO2_RD_DATA                  : std_logic_vector(7 downto 0):= (others => '0');

    signal PKT_25702_DONE                   : std_logic := '0';
    signal FIFO_25702_WR_EN                 : std_logic := '0';
    signal FIFO_25702_WR_DATA               : std_logic_vector(9 downto 0) := (others => '0');
    
    signal FIFO_25702_RD_DOUT               : std_logic_vector (9 downto 0):= (others => '0');
    signal FIFO_25702_RD_DCOUNT             : std_logic_vector (11 downto 0):= (others => '0');
    signal FIFO_25702_RD_EN                 : std_logic := '0';
    
    signal FD_ON                            : std_logic := '0';
    
    ---------------------------------------------------------------------------------------
    component pll
    port (
        clk_in1                 : in  std_logic;
        clk_out1                : out std_logic;
        clk_out2                : out std_logic;
        clk_out3                : out std_logic
    );
    end component;
    
    ---------------------------------------------------------------------------------------
    component mdio_cfg
    port (
        clk                     : in    std_logic;
        mdc                     : out   std_logic;
        mdio                    : inout std_logic;
        done                    : out   std_logic;
        eth_rst_n               : out   std_logic;
        
        PHY_REG0_dbg1           : out   std_logic_vector(15 downto 0);
        PHY_REG27_dbg1          : out   std_logic_vector(15 downto 0);
        PHY_REG27_dbg2          : out   std_logic_vector(15 downto 0)
    );
    end component;

    ---------------------------------------------------------------------------------------
    component rx_packets
    port (
        rx_clk                  : in STD_LOGIC;
        rx_dv                   : in STD_LOGIC;
        rx_err                  : in STD_LOGIC;
        rx_data                 : in STD_LOGIC_VECTOR (7 downto 0);
       
        -- system signals
        DEV_MAC                 : in STD_LOGIC_VECTOR (47 downto 0);
        DEV_IP 	                : in STD_LOGIC_VECTOR (31 downto 0);
       
        PKT_APO_CLR             : in STD_LOGIC;
        PKT_APO_DONE            : out STD_LOGIC :='0';
        PKT_APO_COMM            : out std_logic_vector(143 downto 0) := (others => '0');
        
        PKT_ICMP_CLR            : in STD_LOGIC;
        PKT_ICMP_DONE           : out STD_LOGIC :='0';
        PKT_ICMP_DATA           : out std_logic_vector(511 downto 0)  := (others => '0');
        
        PKT_SRC_IP              : out STD_LOGIC_VECTOR (31 downto 0)  := (others => '0');
        PKT_SRC_MAC             : out STD_LOGIC_VECTOR (47 downto 0)  := (others => '0');
        PKT_DST_IP              : out STD_LOGIC_VECTOR (31 downto 0)  := (others => '0');
        PKT_DST_MAC             : out STD_LOGIC_VECTOR (47 downto 0)  := (others => '0');
        PKT_TYPE                : out STD_LOGIC_VECTOR (15 downto 0)  := (others => '0');
        PKT_UDP_CRC             : out STD_LOGIC_VECTOR (15 downto 0)  := (others => '0');

        PKT_ARP_CLR             : in STD_LOGIC;
        PKT_ARP_DONE            : out STD_LOGIC :='0';
        PKT_ARP_IP              : out STD_LOGIC_VECTOR (31 downto 0);
        PKT_ARP_MAC             : out STD_LOGIC_VECTOR (47 downto 0)
    );
    end component;

    ---------------------------------------------------------------------------------------
    component MII_RX2_PKT
    port (
        clk                     : in STD_LOGIC;
        
        rx_clk                  : in STD_LOGIC;
        rx_dv                   : in STD_LOGIC;
        rx_err                  : in STD_LOGIC;
        rx_data                 : in STD_LOGIC_VECTOR (7 downto 0);
        rx_tlast                : in STD_LOGIC;
        
        --ARP
        PKT_ARP_CLR             : in STD_LOGIC;
        PKT_ARP_DONE            : out STD_LOGIC :='0';
        PKT_ARP_DST_MAC         : out STD_LOGIC_VECTOR (47 downto 0)    := (others => '0');
        PKT_ARP_SRC_MAC         : out STD_LOGIC_VECTOR (47 downto 0)    := (others => '0');
        PKT_ARP_HDR             : out STD_LOGIC_VECTOR (223 downto 0)   := (others => '0');
        
        --UDP
        PKT_25701_FIFO_WR_CLK   : out std_logic;
        PKT_25701_FIFO_WR_EN    : out std_logic;
        PKT_25701_FIFO_WR_DATA  : out std_logic_vector (7 downto 0);	
        
        PKT_25701_SRC_MAC       : out STD_LOGIC_VECTOR (47 downto 0);
        PKT_25701_SRC_IP        : out STD_LOGIC_VECTOR (31 downto 0); 
        
        PKT_25701_DST_MAC       : out STD_LOGIC_VECTOR (47 downto 0);
        PKT_25701_DST_IP        : out STD_LOGIC_VECTOR (31 downto 0);
        PKT_25701_UDP_SP        : out STD_LOGIC_VECTOR (15 downto 0);
        PKT_25701_UDP_DP        : out STD_LOGIC_VECTOR (15 downto 0);
        PKT_25701_UDP_CRC       : out STD_LOGIC_VECTOR (15 downto 0);
        
        PKT_25701_CLR           : in  STD_LOGIC;
        PKT_25701_DONE          : out STD_LOGIC :='0'
    );
    end component;
    
    ---------------------------------------------------------------------------------------
    component tx_pkt_arp2
    port (
        tx_clk                  : in  std_logic;
        
        PKT_ARP_DONE            : in  std_logic;
        PKT_DST_MAC             : in  std_logic_vector (47 downto 0);
        PKT_SRC_MAC             : in  std_logic_vector (47 downto 0);
        PKT_ARP_HDR             : in  std_logic_vector (223 downto 0);
        
        PKT_ARP_FIFO_WR_CLK     : out std_logic;  
        PKT_ARP_FIFO_WR_EN      : out std_logic;  
        PKT_ARP_FIFO_WR_DATA    : out std_logic_vector (9 downto 0)
    );
    end component;
    
    ---------------------------------------------------------------------------------------
    component tx_pkt_arp
    port (
        tx_clk                  : in  std_logic;
        DEV_MAC                 : in  std_logic_vector (47 downto 0);
        DEV_IP                  : in  std_logic_vector (31 downto 0);
        arp_request_ok          : in  std_logic;
        arp_request_ip          : in  std_logic_vector (31 downto 0);
        arp_request_mac         : in  std_logic_vector (47 downto 0);
        arp_fifo_wr_clk         : out std_logic;
        arp_fifo_wr_en          : out std_logic;
        arp_fifo_wr_data        : out std_logic_vector (9 downto 0)
    );
    end component;
    
    ---------------------------------------------------------------------------------------
    component tx_pkt_icmp
    port (
        CLK                     : in STD_LOGIC;
        
        DEV_IP                  : in STD_LOGIC_VECTOR (31 downto 0);
        DEV_MAC                 : in STD_LOGIC_VECTOR (47 downto 0);
        
        DST_IP                  : in std_logic_vector (31 downto 0);
        DST_MAC                 : in std_logic_vector (47 downto 0);
        
        --Receive request packet ICMP
        PKT_ICMP_CLR            : out std_logic := '0';
        PKT_ICMP_DONE           : in  std_logic;
        PKT_ICMP_DATA           : in  std_logic_vector(511 downto 0);
        
        icmp_fifo_wr_clk        : out std_logic;
        icmp_fifo_wr_en         : out std_logic;
        icmp_fifo_wr_data       : out std_logic_vector (9 downto 0)  
    );
    end component;
    
    ---------------------------------------------------------------------------------------
--    component tx_pkt_25701
--    port (
--        CLK                     : in STD_LOGIC;
--        RST                     : in STD_LOGIC;

--        DEV_IP                  : in STD_LOGIC_VECTOR (31 downto 0);
--        DEV_MAC                 : in STD_LOGIC_VECTOR (47 downto 0);
        
--        DST_IP                  : in std_logic_vector (31 downto 0);
--        DST_MAC                 : in std_logic_vector (47 downto 0);
        
--        ADC_DONE                : in  std_logic;
--        ADC_DATA                : in  STD_LOGIC_VECTOR (255 downto 0);
        
--        --Write TX packet to FIFO 
--        pkt25701_fifo_wr_clk    : out std_logic;
--        pkt25701_fifo_wr_en     : out std_logic;
--        pkt25701_fifo_wr_data   : out std_logic_vector (9 downto 0)        
--    );
--    end component;
    
    --------------------------------------------------------------------------------------
    component tx_pkt2_25701
    port (
        CLK                             : in  std_logic;
        RST                             : in  std_logic;

        PKT2_25701_DONE                 : in  std_logic;
        PKT2_25701_SRC_MAC              : in  std_logic_vector (47 downto 0);
        PKT2_25701_SRC_IP               : in  std_logic_vector (31 downto 0);
        PKT2_25701_DST_MAC              : in  std_logic_vector (47 downto 0);
        PKT2_25701_DST_IP               : in  std_logic_vector (31 downto 0);
        PKT2_25701_UDP_SP               : in  std_logic_vector (15 downto 0);
        PKT2_25701_UDP_DP               : in  std_logic_vector (15 downto 0);
        PKT2_25701_UDP_CRC              : in  std_logic_vector (15 downto 0);
        
        --Read from fifo
        PKT2_25701_UDP_RD_EN            : out std_logic := '0';
        PKT2_25701_UDP_RD_DCNT          : in  std_logic_vector (11 downto 0);
        PKT2_25701_UDP_RD_DOUT          : in  std_logic_vector (7 downto 0);
        
        --Write to fifo
        FIFO_PKT2_25701_WR_CLK          : out std_logic := '0';
        FIFO_PKT2_25701_WR_EN           : out std_logic := '0';
        FIFO_pkt2_25701_WR_DOUT         : out std_logic_vector (9 downto 0)  
    );
    end component;
    
    
    
    ---------------------------------------------------------------------------------------
    component fifo_1k
    port (
        --rst                     : IN STD_LOGIC;
        wr_clk                  : IN STD_LOGIC;
        rd_clk                  : IN STD_LOGIC;
        din                     : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        wr_en                   : IN STD_LOGIC;
        rd_en                   : IN STD_LOGIC;
        dout                    : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        full                    : OUT STD_LOGIC;
        empty                   : OUT STD_LOGIC;
        prog_full               : OUT STD_LOGIC;
        prog_empty              : OUT STD_LOGIC
    );
    end component;
    
    ---------------------------------------------------------------------------------------
    component fifo_4k
    port (
        rst                     : IN STD_LOGIC;
        wr_clk                  : IN STD_LOGIC;
        rd_clk                  : IN STD_LOGIC;
        din                     : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
        wr_en                   : IN STD_LOGIC;
        rd_en                   : IN STD_LOGIC;
        dout                    : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        full                    : OUT STD_LOGIC;
        empty                   : OUT STD_LOGIC;
        rd_data_count           : OUT STD_LOGIC_VECTOR(12 DOWNTO 0)
    );
    end component;
    
    ---------------------------------------------------------------------------------------
    component fifo2_4k
    port (
        rst                     : IN STD_LOGIC;
        wr_clk                  : IN STD_LOGIC;
        rd_clk                  : IN STD_LOGIC;
        din                     : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        wr_en                   : IN STD_LOGIC;
        rd_en                   : IN STD_LOGIC;
        dout                    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        full                    : OUT STD_LOGIC;
        empty                   : OUT STD_LOGIC;
        rd_data_count           : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
        --wr_rst_busy             : OUT STD_LOGIC;
        --rd_rst_busy             : OUT STD_LOGIC
    );
    end component;
    
    ---------------------------------------------------------------------------------------
    component arbiter is
    port (
       clk                      : in STD_LOGIC;

       s1_din                   : in STD_LOGIC_VECTOR (4 downto 0);
       s1_dcount                : in STD_LOGIC_VECTOR (12 downto 0);
       s1_rd                    : out STD_LOGIC;
       
       s2_din                   : in STD_LOGIC_VECTOR (4 downto 0);
       s2_dcount                : in STD_LOGIC_VECTOR (12 downto 0);
       s2_rd                    : out STD_LOGIC;
       
       s3_din                   : in STD_LOGIC_VECTOR (4 downto 0);
       s3_dcount                : in STD_LOGIC_VECTOR (12 downto 0);
       s3_rd                    : out STD_LOGIC;
       
       s4_din                   : in STD_LOGIC_VECTOR (4 downto 0);
       s4_dcount                : in STD_LOGIC_VECTOR (12 downto 0);
       s4_rd                    : out STD_LOGIC;
       
       s5_din                   : in STD_LOGIC_VECTOR (4 downto 0);
       s5_dcount                : in STD_LOGIC_VECTOR (12 downto 0);
       s5_rd                    : out STD_LOGIC;
       
       y_dout                   : out STD_LOGIC_VECTOR (4 downto 0)
    );
    end component;
    
    ---------------------------------------------------------------------------------------
    component ila_1 
    port (
        clk                     : in  std_logic;
        probe0                  : in  std_logic_vector (0 DOWNTO 0);
        probe1                  : in  std_logic_vector (0 DOWNTO 0);
        probe2                  : in  std_logic_vector (7 DOWNTO 0);  
        probe3                  : in  std_logic_vector (0 DOWNTO 0);
        probe4                  : in  std_logic_vector (0 DOWNTO 0);
        probe5                  : in  std_logic_vector (7 DOWNTO 0);
        probe6                  : in  std_logic_vector (0 DOWNTO 0);
        
        probe7                  : in  std_logic_vector (0 DOWNTO 0);
        probe8                  : in  std_logic_vector (0 DOWNTO 0);
        probe9                  : in  std_logic_vector (7 DOWNTO 0);
        
        probe10                 : in  std_logic_vector (0  DOWNTO 0);
        probe11                 : in  std_logic_vector (11 DOWNTO 0);
        probe12                 : in  std_logic_vector (7  DOWNTO 0);
        
        probe13                 : in  std_logic_vector (0  DOWNTO 0);
        probe14                 : in  std_logic_vector (0  DOWNTO 0);
        probe15                 : in  std_logic_vector (9  DOWNTO 0);
        probe16                 : in  std_logic_vector (15 DOWNTO 0);
        
        probe17                 : in  std_logic_vector (0 DOWNTO 0);
        probe18                 : in  std_logic_vector (0 DOWNTO 0);
        probe19                 : in  std_logic_vector (15 DOWNTO 0)
        
        
--        probe16                 : in  std_logic_vector (47  DOWNTO 0);
--        probe17                 : in  std_logic_vector (47  DOWNTO 0);
--        probe18                 : in  std_logic_vector (63  DOWNTO 0);
        
        
--        probe19                 : in  std_logic_vector (0 DOWNTO 0);
--        probe20                 : in  std_logic_vector (0 DOWNTO 0);
--        probe21                 : in  std_logic_vector (9 DOWNTO 0);
        
--        probe22                 : in  std_logic_vector (4  DOWNTO 0);
--        probe23                 : in  std_logic_vector (12 DOWNTO 0);
--        probe24                 : in  std_logic_vector (0  DOWNTO 0)
    );
    end component;
    
    ---------------------------------------------------------------------------------------
    component MII_RX
    port (
        mii_rx_clk              : in  std_logic;
        mii_rx_dv               : in  std_logic;
        mii_rx_er               : in  std_logic;
        mii_rxd                 : in  std_logic_vector(3 downto 0);
        
        rx_mac_clk              : out std_logic;
        rx_mac_tdata            : out std_logic_vector(7 downto 0);
        rx_mac_tvalid           : out std_logic;
        rx_mac_tlast            : out std_logic	
    );
    end component;

begin


    ------------------------------------------------------------------------------------------------------------------------
    --DEBUG
    ila2_inst: ila_1
    port map(    
        clk             => clk_50Mhz, 
          
        probe0(0)       => clk_25Mhz, 
        probe1(0)       => mac1_rx_tvalid,
        probe2          => mac1_rx_tdata,
        probe3(0)       => mac1_rx_tlast,
        
        probe4(0)       => mac2_rx_tvalid,
        probe5          => mac2_rx_tdata,
        probe6(0)       => mac2_rx_tlast,
        
        --UDP
        probe7(0)       => ETH2_RX_25701_WR_CLK,
        probe8(0)       => ETH2_RX_25701_WR_EN,
        probe9          => ETH2_RX_25701_WR_DATA,
        
        probe10(0)      => FIFO_ETH2_RX_25701_RD_EN,    
        probe11         => FIFO_ETH2_RX_25701_RD_DCNT,  
        probe12         => FIFO_ETH2_RX_25701_RD_DOUT,  
        
        probe13(0)      => FIFO_PKT2_25701_WR_CLK,
        probe14(0)      => FIFO_PKT2_25701_WR_EN,
        probe15         => FIFO_PKT2_25701_WR_DOUT, 
        
        probe16         => ETH2_RX_25701_UDP_CRC,
        
        probe17(0)      => PKT_APO_CLR,
        probe18(0)      => PKT_APO_DONE,
        probe19         => PKT_APO_COMM(15 downto 0)
        

         
--        probe10         => MII_RX2_PKT_25701_SRC_MAC,
--        probe11         => MII_RX2_PKT_25701_SRC_IP,
        
--        probe12(0)      => MII_RX2_PKT_25701_CLR,
--        probe13(0)      => MII_RX2_PKT_25701_DONE,
        
--        --ARP
--        probe14(0)      => MII_RX2_PKT_ARP_CLR,
--        probe15(0)      => MII_RX2_PKT_ARP_DONE,
--        probe16         => MII_RX2_PKT_ARP_DST_MAC,
--        probe17         => MII_RX2_PKT_ARP_SRC_MAC,
--        probe18         => MII_RX2_PKT_ARP_HDR(63 downto 0),
        
--        probe19(0)      => ARP2_FIFO_WR_CLK,
--        probe20(0)      => ARP2_FIFO_WR_EN,
--        probe21         => ARP2_FIFO_WR_DATA,
        
--        probe22         => ARP2_FIFO_RD_DOUT,
--        probe23         => ARP2_FIFO_RD_DCNT,
--        probe24(0)      => ARP2_FIFO_RD_EN 

    );
    
    --------------------------------------------------------------------------------------------------------
    --Assign 
    
    --Check IP address set/unset jumpers
	DEV_IP  <= x"C0_A8_05_64"        WHEN (NOT ADDR_DEV = b"00000" ) else x"C0_A8_05"       & b"000" & NOT ADDR_DEV;
	DEV_MAC <= x"1A_CF_FC_1D_67_03"  WHEN (NOT ADDR_DEV = b"00000" ) else x"1A_CF_FC_1D_67" & b"000" & NOT ADDR_DEV;
	DST_MAC <= PKT_SRC_MAC           WHEN (PKT_SRC_IP = DST_IP); --Latch ARP MAC table
	
	--MAC1
    mac1_tx_clk          <= PHY1_TXC;
    mac1_txd             <= arb_dout(3 downto 0);
    mac1_tx_en           <= arb_dout(4);
    mac1_tx_err          <= '0';
    
    PHY1_MDC             <= PHY1_MDC_t;
    PHY1_MDIO            <= PHY1_MDIO_t;
    PHY1_RESET_N         <= reset1_n;
    PHY1_COMA            <= '0';
    PHY1_TXD(7 downto 4) <= "0000";
    PHY1_TXD(3 downto 0) <= mac1_txd;
    PHY1_TXEN            <= mac1_tx_en;
    PHY1_TXER            <= mac1_tx_err;
    PHY1_GTXC            <= '0';
    
    
    --MAC1 to MAC2
    fifo_1k_eth1_to_eth2_wr_clk             <= mac1_rx_clk;
    fifo_1k_eth1_to_eth2_wr_en              <= not fifo_1k_eth1_to_eth2_prog_full or mac1_rx_tvalid;
    fifo_1k_eth1_to_eth2_wr_din(9)          <= mac1_rx_tvalid;
    fifo_1k_eth1_to_eth2_wr_din(4)          <= mac1_rx_tvalid;
    fifo_1k_eth1_to_eth2_wr_din(3 downto 0) <= mac1_rx_tdata(7 downto 4);
    fifo_1k_eth1_to_eth2_wr_din(8 downto 5) <= mac1_rx_tdata(3 downto 0); 
    fifo_1k_eth1_to_eth2_rd_en              <= not fifo_1k_eth1_to_eth2_prog_empty or fifo_1k_eth1_to_eth2_rd_dout(4);
    fifo_1k_eth1_to_eth2_rd_clk             <= mac2_tx_clk;

    mac2_tx_clk                             <= PHY2_TXC;
    mac2_txd                                <= fifo_1k_eth1_to_eth2_rd_dout(3 downto 0);
    mac2_tx_en                              <= fifo_1k_eth1_to_eth2_rd_dout(4);
    mac2_tx_err                             <= '0';

    PHY2_MDC                                <= PHY2_MDC_t;
    PHY2_MDIO                               <= PHY2_MDIO_t;
    PHY2_RESET_N                            <= reset2_n;
    PHY2_COMA                               <= '0';
    PHY2_TXD(7 downto 4)                    <= "0000";
    PHY2_TXD(3 downto 0)                    <= mac2_txd;
    PHY2_TXEN                               <= mac2_tx_en;
    PHY2_TXER                               <= mac2_tx_err;
    PHY2_GTXC                               <= '0';
    

    ---------------------------------------------------------------------------------------
    pll_inst: pll
    port map(    
        clk_in1                 => sys_clk,        
        clk_out1                => clk_50Mhz, 
        clk_out2                => clk_25Mhz, 
        clk_out3                => clk_10Mhz          
    ); 
    
    ---------------------------------------------------------------------------------------
    mdio1: mdio_cfg
    port map(    
        clk                     => clk_10Mhz,        
        mdc                     => PHY1_MDC_t,        
        mdio                    => PHY1_MDIO_t,       
        done                    => phy1_done,
        eth_rst_n               => reset1_n, --PHY1_RESET_N     
        
        PHY_REG0_dbg1           => MDIO1_REG0,
        PHY_REG27_dbg1          => MDIO1_REG27_1,
        PHY_REG27_dbg2          => MDIO1_REG27_2
    ); 
    
    ---------------------------------------------------------------------------------------
    mdio2: mdio_cfg
    port map(    
        clk                     => clk_10Mhz,        
        mdc                     => PHY2_MDC_t,        
        mdio                    => PHY2_MDIO_t,       
        done                    => phy2_done,
        eth_rst_n               => reset2_n, --PHY2_RESET_N     
        
        PHY_REG0_dbg1           => MDIO2_REG0,
        PHY_REG27_dbg1          => MDIO2_REG22,
        PHY_REG27_dbg2          => MDIO2_REG27
    ); 
    
    ---------------------------------------------------------------------------------------
    rx1_proto: MII_RX
    port map(  
		mii_rx_clk              => PHY1_RXC,             --: in  std_logic;
		mii_rx_dv               => PHY1_RXDV,            --: in  std_logic;
        mii_rx_er               => PHY1_RXER ,           --: in  std_logic;
		mii_rxd                 => PHY1_RXD(3 downto 0), --: in  std_logic_vector(3 downto 0);
        
        rx_mac_clk              => mac1_rx_clk,          --: out std_logic;
        rx_mac_tdata            => mac1_rx_tdata,        --: out std_logic_vector(7 downto 0);
        rx_mac_tvalid           => mac1_rx_tvalid,       --: out std_logic;
        rx_mac_tlast            => mac1_rx_tlast         --: out std_logic	
    );

    ---------------------------------------------------------------------------------------
    rx1_pkt: rx_packets 
    port map(    
        rx_clk                  => mac1_rx_clk, 
        rx_dv                   => mac1_rx_tvalid,      
        rx_err                  => '0',    
        rx_data                 => mac1_rx_tdata,    
        
        DEV_IP                  => DEV_IP,       
        DEV_MAC                 => DEV_MAC,
        
        PKT_ARP_CLR             => PKT_ARP_CLR,
        PKT_ARP_DONE            => PKT_ARP_DONE, 
        PKT_ARP_IP              => PKT_ARP_IP,
        PKT_ARP_MAC             => PKT_ARP_MAC,

        PKT_APO_CLR             => PKT_APO_CLR,
        PKT_APO_DONE            => PKT_APO_DONE,
        PKT_APO_COMM            => PKT_APO_COMM,
        
        PKT_ICMP_CLR            => PKT_ICMP_CLR,
        PKT_ICMP_DONE           => PKT_ICMP_DONE,
        PKT_ICMP_DATA           => PKT_ICMP_DATA,

        PKT_SRC_IP              => PKT_SRC_IP,
        PKT_SRC_MAC             => PKT_SRC_MAC,
        PKT_DST_IP              => PKT_DST_IP,
        PKT_DST_MAC             => PKT_DST_MAC,
        PKT_TYPE                => PKT_TYPE,
        PKT_UDP_CRC             => PKT_UDP_CRC
    );
    
    ---------------------------------------------------------------------------------------
    rx2_proto: MII_RX
    port map(  
		mii_rx_clk              => PHY2_RXC,             --: in  std_logic;
		mii_rx_dv               => PHY2_RXDV,            --: in  std_logic;
        mii_rx_er               => PHY2_RXER ,           --: in  std_logic;
		mii_rxd                 => PHY2_RXD(3 downto 0), --: in  std_logic_vector(3 downto 0);
        
        rx_mac_clk              => mac2_rx_clk,          --: out std_logic;
        rx_mac_tdata            => mac2_rx_tdata,        --: out std_logic_vector(7 downto 0);
        rx_mac_tvalid           => mac2_rx_tvalid,       --: out std_logic;
        rx_mac_tlast            => mac2_rx_tlast         --: out std_logic	
    );
    
    ---------------------------------------------------------------------------------------
    ETH2_RX: MII_RX2_PKT
    port map(  
        clk                     => clk_50Mhz,
        
        rx_clk                  => mac2_rx_clk,
        rx_dv                   => mac2_rx_tvalid,
        rx_err                  => '0',
        rx_data                 => mac2_rx_tdata,
        rx_tlast                => mac2_rx_tlast,
        
        PKT_ARP_CLR             => ETH2_RX_ARP_CLR,
        PKT_ARP_DONE            => ETH2_RX_ARP_DONE,
        PKT_ARP_DST_MAC         => ETH2_RX_ARP_DST_MAC,
        PKT_ARP_SRC_MAC         => ETH2_RX_ARP_SRC_MAC,
        PKT_ARP_HDR             => ETH2_RX_ARP_HDR,
        
        PKT_25701_FIFO_WR_CLK   => ETH2_RX_25701_WR_CLK,
        PKT_25701_FIFO_WR_EN    => ETH2_RX_25701_WR_EN,
        PKT_25701_FIFO_WR_DATA  => ETH2_RX_25701_WR_DATA,	
         
        PKT_25701_SRC_MAC       => ETH2_RX_25701_SRC_MAC,
        PKT_25701_SRC_IP        => ETH2_RX_25701_SRC_IP,
        
        PKT_25701_DST_MAC       => ETH2_RX_25701_DST_MAC,
        PKT_25701_DST_IP        => ETH2_RX_25701_DST_IP,
        PKT_25701_UDP_SP        => ETH2_RX_25701_UDP_SP,
        PKT_25701_UDP_DP        => ETH2_RX_25701_UDP_DP,
        PKT_25701_UDP_CRC       => ETH2_RX_25701_UDP_CRC,
        
        PKT_25701_CLR           => ETH2_RX_25701_CLR,
        PKT_25701_DONE          => ETH2_RX_25701_DONE
    );
    
    ---------------------------------------------------------------------------------------
    FIFO_ETH2_RX_25701: fifo2_4k 
    port map(  
        rst                     => '0',
        wr_clk                  => ETH2_RX_25701_WR_CLK,
        wr_en                   => ETH2_RX_25701_WR_EN,
        din                     => ETH2_RX_25701_WR_DATA,
        
        rd_clk                  => mac1_tx_clk,
        rd_en                   => FIFO_ETH2_RX_25701_RD_EN,
        rd_data_count           => FIFO_ETH2_RX_25701_RD_DCNT,
        dout                    => FIFO_ETH2_RX_25701_RD_DOUT
    ); 
    
    ---------------------------------------------------------------------------------------
    PKT2_25701: tx_pkt2_25701
    port map( 
        CLK                         => mac1_tx_clk,                     
        RST                         => '0',                             

        PKT2_25701_DONE             => ETH2_RX_25701_DONE,          
        PKT2_25701_SRC_MAC          => ETH2_RX_25701_SRC_MAC,       
        PKT2_25701_SRC_IP           => ETH2_RX_25701_SRC_IP,        
        PKT2_25701_DST_MAC          => ETH2_RX_25701_DST_MAC,       
        PKT2_25701_DST_IP           => ETH2_RX_25701_DST_IP,  
        PKT2_25701_UDP_SP           => ETH2_RX_25701_UDP_SP,  
        PKT2_25701_UDP_DP           => ETH2_RX_25701_UDP_DP,    
        PKT2_25701_UDP_CRC          => ETH2_RX_25701_UDP_CRC, 
              
        --Read from fifo
        PKT2_25701_UDP_RD_EN        => FIFO_ETH2_RX_25701_RD_EN,    
        PKT2_25701_UDP_RD_DCNT      => FIFO_ETH2_RX_25701_RD_DCNT,  
        PKT2_25701_UDP_RD_DOUT      => FIFO_ETH2_RX_25701_RD_DOUT,  
        
        --Write to fifo
        FIFO_PKT2_25701_WR_CLK      => FIFO_PKT2_25701_WR_CLK,
        FIFO_PKT2_25701_WR_EN       => FIFO_PKT2_25701_WR_EN,
        FIFO_PKT2_25701_WR_DOUT     => FIFO_PKT2_25701_WR_DOUT 
    );
    
    ---------------------------------------------------------------------------------------
    FIFO_PKT2_25701: fifo_4k 
    port map(  
        rst                     => rst_fifo,
        wr_clk                  => FIFO_PKT2_25701_WR_CLK,
        wr_en                   => FIFO_PKT2_25701_WR_EN,
        din                     => FIFO_PKT2_25701_WR_DOUT,
        
        rd_clk                  => mac1_tx_clk,
        rd_en                   => PKT2_25701_FIFO_RD_EN,
        rd_data_count           => PKT2_25701_FIFO_RD_DCNT,
        dout                    => PKT2_25701_FIFO_RD_DOUT
    ); 
        
    ---------------------------------------------------------------------------------------
    tx_arp2: tx_pkt_arp2
    port map(  
        tx_clk                  => mac2_rx_clk,
        
        PKT_ARP_DONE            => ETH2_RX_ARP_DONE,
        PKT_DST_MAC             => ETH2_RX_ARP_DST_MAC,
        PKT_SRC_MAC             => ETH2_RX_ARP_SRC_MAC,
        PKT_ARP_HDR             => ETH2_RX_ARP_HDR,
        
        PKT_ARP_FIFO_WR_CLK     => ARP2_FIFO_WR_CLK,
        PKT_ARP_FIFO_WR_EN      => ARP2_FIFO_WR_EN,
        PKT_ARP_FIFO_WR_DATA    => ARP2_FIFO_WR_DATA
    );
    
    ---------------------------------------------------------------------------------------
    fifo_arp2: fifo_4k 
    port map(  
        rst                     => '0',
        wr_clk                  => ARP2_FIFO_WR_CLK,
        wr_en                   => ARP2_FIFO_WR_EN,
        din                     => ARP2_FIFO_WR_DATA,
        
        rd_clk                  => mac1_tx_clk,
        rd_en                   => ARP2_FIFO_RD_EN,
        rd_data_count           => ARP2_FIFO_RD_DCNT,
        dout                    => ARP2_FIFO_RD_DOUT
    ); 
    
    ---------------------------------------------------------------------------------------
    tx_arp: tx_pkt_arp 
    port map(  
        tx_clk                  => mac1_rx_clk, 
        
        DEV_IP                  => DEV_IP,       
        DEV_MAC                 => DEV_MAC,
         
        arp_request_ok          => PKT_ARP_DONE,
        arp_request_ip          => PKT_ARP_IP,
        arp_request_mac         => PKT_ARP_MAC,
        
        arp_fifo_wr_clk         => arp_fifo_wr_clk,
        arp_fifo_wr_en          => arp_fifo_wr_en,
        arp_fifo_wr_data        => arp_fifo_wr_data
    );
    
    ---------------------------------------------------------------------------------------
    tx_icmp: tx_pkt_icmp
    port map( 
        CLK                     => mac1_rx_clk,
        
        DEV_IP                  => DEV_IP,
        DEV_MAC                 => DEV_MAC,
        
        DST_IP                  => PKT_SRC_IP,
        DST_MAC                 => PKT_SRC_MAC,
        
        --Receive request packet ICMP
        PKT_ICMP_CLR            => PKT_ICMP_CLR,
        PKT_ICMP_DONE           => PKT_ICMP_DONE,
        PKT_ICMP_DATA           => PKT_ICMP_DATA,
        
        --Write TX packet to FIFO 
        icmp_fifo_wr_clk        => icmp_fifo_wr_clk,
        icmp_fifo_wr_en         => icmp_fifo_wr_en,
        icmp_fifo_wr_data       => icmp_fifo_wr_data
    );
    

    
    ---------------------------------------------------------------------------------------
--    fifo_pkt25702: fifo_4k 
--    port map(  
--        rst                     => rst_fifo,
--        wr_clk                  => pkt25702_fifo_wr_clk,
--        wr_en                   => pkt25702_fifo_wr_en,
--        din                     => pkt25702_fifo_wr_data,
        
--        rd_clk                  => mac1_tx_clk,
--        rd_en                   => pkt25702_fifo_rd_en,
--        rd_data_count           => pkt25702_fifo_rd_dcount,
--        dout                    => pkt25702_fifo_dout
--    ); 

    ---------------------------------------------------------------------------------------
    fifo_1k_eth2: fifo_1k
    port map( 
        wr_clk                  => fifo_1k_eth1_to_eth2_wr_clk,
        wr_en                   => fifo_1k_eth1_to_eth2_wr_en,
        din                     => fifo_1k_eth1_to_eth2_wr_din,
        full                    => fifo_1k_eth1_to_eth2_wr_full,
        
        rd_clk                  => fifo_1k_eth1_to_eth2_rd_clk,
        rd_en                   => fifo_1k_eth1_to_eth2_rd_en,
        dout                    => fifo_1k_eth1_to_eth2_rd_dout,
        empty                   => fifo_1k_eth1_to_eth2_rd_empty,
        
        prog_full               => fifo_1k_eth1_to_eth2_prog_full,
        prog_empty              => fifo_1k_eth1_to_eth2_prog_empty
    );
    
    ---------------------------------------------------------------------------------------
    fifo_arp: fifo_4k 
    port map(  
        rst                     => '0',
        wr_clk                  => arp_fifo_wr_clk,
        wr_en                   => arp_fifo_wr_en,
        din                     => arp_fifo_wr_data,
        
        rd_clk                  => mac1_tx_clk,
        rd_en                   => arp_fifo_rd_en,
        rd_data_count           => arp_fifo_rd_dcount,
        dout                    => arp_fifo_dout
    ); 
    
    ---------------------------------------------------------------------------------------
    fifo_icmp: fifo_4k 
    port map(  
        rst                     => '0',
        wr_clk                  => icmp_fifo_wr_clk,
        wr_en                   => icmp_fifo_wr_en,
        din                     => icmp_fifo_wr_data,
        
        rd_clk                  => mac1_tx_clk,
        rd_en                   => icmp_fifo_rd_en,
        rd_data_count           => icmp_fifo_rd_dcount,
        dout                    => icmp_fifo_dout
    ); 
    
    ---------------------------------------------------------------------------------------
--    fifo_pkt25701: fifo_4k 
--    port map(  
--        rst                     => rst_fifo,
--        wr_clk                  => pkt25701_fifo_wr_clk,
--        wr_en                   => pkt25701_fifo_wr_en,
--        din                     => pkt25701_fifo_wr_data,
        
--        rd_clk                  => mac1_tx_clk,
--        rd_en                   => pkt25701_fifo_rd_en,
--        rd_data_count           => pkt25701_fifo_rd_dcount,
--        dout                    => pkt25701_fifo_dout
--    ); 

    ---------------------------------------------------------------------------------------
    arb_inst: arbiter 
    port map( 
        clk                     => mac1_tx_clk,
        
        --TX packet 25702
        s1_din                  => pkt25702_fifo_dout,         
        s1_dcount               => pkt25702_fifo_rd_dcount,     
        s1_rd                   => pkt25702_fifo_rd_en,         
        
        --TX packet ARP
        s2_din                  => arp_fifo_dout,
        s2_dcount               => arp_fifo_rd_dcount,
        s2_rd                   => arp_fifo_rd_en,
        
        --TX packet ICMP
        s3_din                  => icmp_fifo_dout,
        s3_dcount               => icmp_fifo_rd_dcount,
        s3_rd                   => icmp_fifo_rd_en,
        
        --ARP2 from ETH2
        s4_din                  => ARP2_FIFO_RD_DOUT,
        s4_dcount               => ARP2_FIFO_RD_DCNT,
        s4_rd                   => ARP2_FIFO_RD_EN,
        
        --PKT2 from ETH2
        s5_din                  => PKT2_25701_FIFO_RD_DOUT,
        s5_dcount               => PKT2_25701_FIFO_RD_DCNT,
        s5_rd                   => PKT2_25701_FIFO_RD_EN,
        
        --out
        y_dout                  => arb_dout
    ); 
    
    ------------------------------------------------------------------------------------------------------------------------
    done_comb: process (
                            PKT_ARP_DONE, 
                            PKT_APO_DONE, 
                            set_arp_done, 
                            clr_arp_done, 
                            set_apo_done, 
                            clr_apo_done, 
                            set_pkt25701_done, 
                            clr_pkt25701_done,
                            ETH2_RX_ARP_DONE,
                            ETH2_RX_25701_DONE
                        ) begin 
        if(PKT_ARP_DONE = '1')       then set_arp_done_t <= '1'; elsif (PKT_ARP_DONE = '0') then clr_arp_done_t <= '1'; end if; 
        if(set_arp_done = '1')       then set_arp_done_t <= '0'; end if; 
        if(clr_arp_done = '1')       then clr_arp_done_t <= '0'; end if;  
        
        if(PKT_APO_DONE = '1')       then set_apo_done_t <= '1'; elsif (PKT_APO_DONE = '0') then clr_apo_done_t <= '1'; end if; 
        if(set_apo_done = '1')       then set_apo_done_t <= '0'; end if; 
        if(clr_apo_done = '1')       then clr_apo_done_t <= '0'; end if;  

        if(ETH2_RX_25701_DONE = '1') then set_pkt25701_done_t <= '1'; elsif (ETH2_RX_25701_DONE = '0') then clr_pkt25701_done_t <= '1'; end if; 
        if(set_pkt25701_done = '1')  then set_pkt25701_done_t <= '0'; end if; 
        if(clr_pkt25701_done = '1')  then clr_pkt25701_done_t <= '0'; end if;
        
        if(ETH2_RX_ARP_DONE = '1')   then set_arp2_done_t <= '1'; elsif (ETH2_RX_ARP_DONE = '0') then clr_arp2_done_t <= '1'; end if; 
        if(set_arp2_done = '1')      then set_arp2_done_t <= '0'; end if; 
        if(clr_arp2_done = '1')      then clr_arp2_done_t <= '0'; end if;  
        
    end process done_comb; 

    ------------------------------------------------------------------------------------------------------------------------
    done_sequential : process (mac1_rx_clk)
    begin
        if rising_edge(mac1_rx_clk) then
            if(set_arp_done_t = '1') then set_arp_done <= '1'; PKT_ARP_CLR <= '1'; else set_arp_done <= '0'; end if;
            if(clr_arp_done_t = '1') then clr_arp_done <= '1'; PKT_ARP_CLR <= '0'; else clr_arp_done <= '0'; end if;
            
            --Receive APO COMMAND
            if(set_apo_done_t = '1') then 
                set_apo_done <= '1'; 
                PKT_APO_CLR  <= '1'; 
                FD_ON        <= '1' when PKT_APO_COMM(7 downto 0) = X"FF" else '0';
            else 
                set_apo_done <= '0'; 
            end if;
            if(clr_apo_done_t = '1') then clr_apo_done <= '1'; PKT_APO_CLR <= '0'; else clr_apo_done <= '0'; end if;

            if(set_pkt25701_done_t = '1') then set_pkt25701_done <= '1'; ETH2_RX_25701_CLR <= '1'; else set_pkt25701_done <= '0'; end if;
            if(clr_pkt25701_done_t = '1') then clr_pkt25701_done <= '1'; ETH2_RX_25701_CLR <= '0'; else clr_pkt25701_done <= '0'; end if;
        end if;
    end process done_sequential;
    
    ------------------------------------------------------------------------------------------------------------------------
    done_sequential2 : process (mac2_rx_clk)
    begin
        if rising_edge(mac2_rx_clk) then
            if(set_arp2_done_t = '1') then set_arp2_done <= '1'; ETH2_RX_ARP_CLR <= '1'; else set_arp2_done <= '0'; end if;
            if(clr_arp2_done_t = '1') then clr_arp2_done <= '1'; ETH2_RX_ARP_CLR <= '0'; else clr_arp2_done <= '0'; end if;
        end if;
    end process done_sequential2;
    
    ------------------------------------------------------------------------------------------------------------------------
    rst_fifos : process (clk_25Mhz)
    begin
        if rising_edge(clk_25Mhz) then
            --sync adc fd clock
            sync1 <= FD;
            sync2 <= sync1;
            sync3 <= sync2;
            
            if (sync2 = '1' and sync3 = '0') then
                timeout_100ms <= (others => '0'); 
            else
                if(timeout_100ms < X"00_26_25_A0") then  --2500000 = 100 ms
                    timeout_100ms <= timeout_100ms + 1;
                    rst_fifo <= '0';
                else
                    rst_fifo <= '1';
                end if;
            end if;
            
        end if;
    end process rst_fifos;
    
    ------------------------------------------------------------------------------------------------------------------------
    div_sequential : process (clk_10Mhz)
    begin
        if rising_edge(clk_10Mhz) then
            case div_cnt is        
                when 499 =>
                --when 249 =>
                    FD_CLK <= not FD_CLK; -- 10kHz FD imitation
                    div_cnt <= 0;
                when others => div_cnt <= div_cnt + 1;
            end case;
        end if;
    end process div_sequential;
    
    ------------------------------------------------------------------------------------------------------------------------
    --ASSIGN 
    SERIAL2_TX  <= FD_CLK when FD_ON = '1' else '0';
    SERIAL2_RE  <= '0';
    SERIAL2_DE  <= FD_ON;
    
    
end Behavioral;















--    fifo_1k_eth1_to_eth2_wr_clk <= PHY1_RXC;
--    fifo_1k_eth1_to_eth2_wr_en  <= not fifo_1k_eth1_to_eth2_prog_full or PHY1_RXDV;
--    fifo_1k_eth1_to_eth2_wr_din <= PHY1_RXDV & PHY1_RXER & PHY1_RXD(7 downto 0);
    
--    fifo_1k_eth1_to_eth2_rd_en  <= not fifo_1k_eth1_to_eth2_prog_empty or fifo_1k_eth1_to_eth2_rd_dout(9);
--    fifo_1k_eth1_to_eth2_rd_clk <= gclk;










--    ---------------------------------------------------------------------------------------
--    component ila_0 
--    port (
--        clk                     : in  std_logic;
--        probe0                  : in  std_logic_vector (0  DOWNTO 0);
--        probe1                  : in  std_logic_vector (0  DOWNTO 0);
--        probe2                  : in  std_logic_vector (7  DOWNTO 0); 
--        probe3                  : in  std_logic_vector (0  DOWNTO 0);
--        probe4                  : in  std_logic_vector (0  DOWNTO 0);
--        probe5                  : in  std_logic_vector (0  DOWNTO 0);
--        probe6                  : in  std_logic_vector (31 DOWNTO 0);
--        probe7                  : in  std_logic_vector (47 DOWNTO 0);
--        probe8                  : in  std_logic_vector (0  DOWNTO 0);
--        probe9                  : in  std_logic_vector (0  DOWNTO 0);
        
--        probe10                 : in  std_logic_vector (3 DOWNTO 0);
--        probe11                 : in  std_logic_vector (0 DOWNTO 0);
--        probe12                 : in  std_logic_vector (0 DOWNTO 0);
        
--        probe13                 : in  std_logic_vector (0 DOWNTO 0);
--        probe14                 : in  std_logic_vector (0 DOWNTO 0);
--        probe15                 : in  std_logic_vector (0 DOWNTO 0);
--        probe16                 : in  std_logic_vector (7 DOWNTO 0);
        
--        probe17                 : in  std_logic_vector (0 DOWNTO 0);
--        probe18                 : in  std_logic_vector (0 DOWNTO 0);
--        probe19                 : in  std_logic_vector (0 DOWNTO 0);
--        probe20                 : in  std_logic_vector (7 DOWNTO 0);
        
--        probe21                 : in  std_logic_vector (12 DOWNTO 0);
--        probe22                 : in  std_logic_vector (0 DOWNTO 0);
--        probe23                 : in  std_logic_vector (9 DOWNTO 0)
--    );
--    end component;

 -----------------------------------------------------------------------------------
--    ila0_inst: ila_0
--    port map(    
--        clk                     => gclk,   

--        probe0(0)               => rx_mac_aclk,
--        probe1(0)               => rx_reset,
--        probe2                  => sync_tdata2,     --rx_axis_mac_tdata,
--        probe3(0)               => sync_tvalid2,    --rx_axis_mac_tvalid,
--        probe4(0)               => sync_tlast2,     --rx_axis_mac_tlast,
--        probe5(0)               => sync_rxdv,       --rx_axis_mac_tuser
        
--        probe6                  => PKT_ARP_IP,
--        probe7                  => PKT_ARP_MAC,
--        probe8(0)               => PKT_ARP_CLR,
--        probe9(0)               => PKT_ARP_DONE,
        
--        probe10                 => mac_txd(3 downto 0),
--        probe11(0)              => mac_tx_en,
--        probe12(0)              => mac_tx_err,
        
--        probe13(0)              => tx_enable,
--        probe14(0)              => tx_axis_mac_tvalid,
--        probe15(0)              => tx_axis_mac_tlast,
--        probe16                 => tx_axis_mac_tdata,
        
--        probe17(0)              => arp_fifo_wr_en,
--        probe18(0)              => arp_fifo_wr_data(9),
--        probe19(0)              => arp_fifo_wr_data(8),
--        probe20                 => arp_fifo_wr_data(7 downto 0),
        
--        probe21                 => arp_fifo_rd_dcount,
--        probe22(0)              => arp_fifo_rd_en,
--        probe23                 => arp_fifo_dout
                
----        probe10(0)              => PHY1_RXDV,                                  --1            
----        probe11                 => PHY1_RXD(7 downto 0)                        --8
        
--        --FIFO 4k     
--        --probe0(0)               => arb_dout(9),                                 --1            
--        --probe1(0)               => arb_dout(8),                                 --1
--        --probe2                  => arb_dout(7 downto 0),                        --8
--        --probe3(0)               => fifo_4k_eth2_to_eth1_rd_en,                  --1
--        --probe4                  => fifo_4k_eth2_to_eth1_rd_dcount              --13
       
--        --FIFO 1k 
----        probe5(0)               => fifo_1k_eth1_to_eth2_rd_en,                  --1
----        probe6(0)               => fifo_1k_eth1_to_eth2_rd_dout(9),             --1
----        probe7(0)               => fifo_1k_eth1_to_eth2_rd_dout(8),             --1
----        probe8                  => fifo_1k_eth1_to_eth2_rd_dout(7 downto 0),    --8
        
----        probe9(0)               => fifo_1k_eth1_to_eth2_prog_full,              --1
----        probe10(0)              => fifo_1k_eth1_to_eth2_prog_empty,             --1
        
----        probe11(0)              => arp_fifo_rd_en,                              --1
----        probe12(0)              => arp_fifo_dout(9),                            --1
----        probe13(0)              => arp_fifo_dout(8),                            --1
----        probe14                 => arp_fifo_dout(7 downto 0),                   --8
----        probe15                 => arp_fifo_rd_dcount                           --12   
        
----        probe11(0)              => icmp_fifo_rd_en,                              --1
----        probe12(0)              => icmp_fifo_dout(9),                            --1
----        probe13(0)              => icmp_fifo_dout(8),                            --1
----        probe14                 => icmp_fifo_dout(7 downto 0),                   --8
----        probe15                 => icmp_fifo_rd_dcount                           --12  
--    );
    
    
    -------------------------------------------------------------------------------------
--    ila2_inst: ila_1
--    port map(    
--        clk             => clk_50Mhz,       
--        probe0(0)       => clk_25Mhz,                  
--        probe1(0)       => mac_tx_clk,          
--        probe2(0)       => mac_tx_en,
--        probe3(0)       => mac_tx_err,           
--        probe4          => mac_txd(3 downto 0) 
--    );

    
--    component receiver is
--    port (
        
--        clk:				in std_logic;
--        clr:				in std_logic;
        
--        -- from MII
--        rxdata_4:		    in std_logic_vector(3 downto 0);
--        rxdv_4:				in std_logic;
        
--        -- to output
--        rxdata_8:		    out std_logic_vector(7 downto 0);
--        rxdv_8:				out std_logic
--    );
--    end component receiver;



--    ------------------------------------------------------------------------------------------------------------------------
--    mac :tri_mode_ethernet_mac_0
--    port map(
--        -- asynchronous reset
--        glbl_rstn                  => glbl_rstn,            --: in  std_logic;
--        rx_axi_rstn                => rx_axi_rstn,          --: in  std_logic;
--        tx_axi_rstn                => tx_axi_rstn,          --: in  std_logic;
        
        
--        -- Receiver Interface
--        ----------------------------
--        rx_enable                  => rx_enable,            --: out std_logic;
        
--        rx_statistics_vector       => rx_statistics_vector, --: out std_logic_vector(27 downto 0);
--        rx_statistics_valid        => rx_statistics_valid,  --: out std_logic;
        
--        rx_mac_aclk                => rx_mac_aclk,          --: out std_logic;
--        rx_reset                   => rx_reset,             --: out std_logic;
--        rx_axis_mac_tdata          => rx_axis_mac_tdata,    --: out std_logic_vector(7 downto 0);
--        rx_axis_mac_tvalid         => rx_axis_mac_tvalid,   --: out std_logic;
--        rx_axis_mac_tlast          => rx_axis_mac_tlast,    --: out std_logic;
--        rx_axis_mac_tuser          => rx_axis_mac_tuser,    --: out std_logic;
        
        
--        -- Transmitter Interface
--        -------------------------------
--        tx_enable                  => tx_enable,            --: out std_logic;
        
--        tx_ifg_delay               => tx_ifg_delay,         --: in  std_logic_vector(7 downto 0);
--        tx_statistics_vector       => tx_statistics_vector, --: out std_logic_vector(31 downto 0);
--        tx_statistics_valid        => tx_statistics_valid,  --: out std_logic;
        
--        tx_mac_aclk                => tx_mac_aclk,          --: out std_logic;
--        tx_reset                   => tx_reset,             --: out std_logic;
--        tx_axis_mac_tdata          => tx_axis_mac_tdata,    --: in  std_logic_vector(7 downto 0);
--        tx_axis_mac_tvalid         => tx_axis_mac_tvalid,   --: in  std_logic;
--        tx_axis_mac_tlast          => tx_axis_mac_tlast,    --: in  std_logic;
--        tx_axis_mac_tuser          => tx_axis_mac_tuser,    --: in  std_logic_vector(0 downto 0);
--        tx_axis_mac_tready         => tx_axis_mac_tready,   --: out std_logic;
        
        
--        -- MAC Control Interface
--        ------------------------
--        pause_req                  => pause_req,            --: in  std_logic;
--        pause_val                  => pause_val,            --: in  std_logic_vector(15 downto 0);
        
--        speedis100                 => speedis100,           --: out std_logic;
--        speedis10100               => speedis10100,         --: out std_logic;
       
--        -- MII Interface
--        -----------------
--        mii_tx_clk                 => clk_25Mhz,--gclk,         --PHY1_TXC,             --: in  std_logic;
--        mii_txd                    => open,--mac_txd,      --PHY1_TXD(3 downto 0), --: out std_logic_vector(3 downto 0);
--        mii_tx_en                  => open,--mac_tx_en,    --PHY1_TXEN,            --: out std_logic;
--        mii_tx_er                  => open,--mac_tx_err,   --PHY1_TXER,            --: out std_logic;
        
--        mii_rx_clk                 => PHY1_RXC,             --: in  std_logic;
--        mii_rxd                    => PHY1_RXD(3 downto 0), --: in  std_logic_vector(3 downto 0);
--        mii_rx_dv                  => PHY1_RXDV,            --: in  std_logic;
--        mii_rx_er                  => PHY1_RXER,            --: in  std_logic;
        

--        -- Configuration Vector
--        -----------------------
--        rx_configuration_vector    => rx_configuration_vector,  --: in  std_logic_vector(79 downto 0);
--        tx_configuration_vector    => tx_configuration_vector   --: in  std_logic_vector(79 downto 0)
--    );
    
--    rx_configuration_vector <= std_logic_vector(to_unsigned(0, 64)) & b"0001_1000_0001_1010";
--    tx_configuration_vector <= std_logic_vector(to_unsigned(0, 64)) & b"0001_0000_0001_1010";
    

--    ------------------------------------------------------------------------------------------------------------------------
--    rxdv : process (rx_mac_aclk)
--    begin
--        if rising_edge(rx_mac_aclk) then
        
--            rx_mac_aclk_div2 <= not rx_mac_aclk_div2;
            
--            sync_tdata1 <= rx_axis_mac_tdata;
--            sync_tdata2 <= sync_tdata1;

--            sync_tvalid1 <= rx_axis_mac_tvalid;
--            sync_tvalid2 <= sync_tvalid1;
            
--            sync_tlast1 <= rx_axis_mac_tlast;
--            sync_tlast2 <= sync_tlast1;
            
--            sync_tuser1 <= rx_axis_mac_tuser;
--            sync_tuser2 <= sync_tuser1;
            
--            --sync_rxdv
--            case sync_cnt is        
--                when 0 =>
--                    if(sync_tvalid1 = '1' and sync_tvalid2 = '0')then
--                        sync_rxdv <= '1';
--                        sync_cnt  <= sync_cnt + 1;
--                    end if;
                
--                when 1 =>
--                    if(sync_tvalid1 = '0' and sync_tvalid2 = '1' and sync_tlast1 = '0' and sync_tlast2 = '1')then
--                        sync_rxdv <= '0';
--                        sync_cnt  <= 0;
--                    end if;
                
--                when others => sync_cnt <= 0;
--            end case;
            
--        end if;
--    end process rxdv;




--PHY1_RXC
--    recv: receiver
--        port map(
    
--            -- clock
--            clk         => PHY1_RXC,
    
--            -- 4 bit nibbles for MII
--            rxdv_4      => PHY1_RXDV,
--            rxdata_4    => PHY1_RXD(3 downto 0),
    
--            -- clear if 'clear' is asserted
--            clr         => clear,
    
--            -- 8 bytes out
--            rxdv_8      => byte_vld,
--            rxdata_8    => byte_data
--        );







    
        ------------------------------------------------------------------------------------------------------------------------
--    rx_sequential : process (PHY1_RXC)
--    begin
--        if rising_edge(PHY1_RXC) then
        
--            rx_mac_aclk_div2 <= not rx_mac_aclk_div2;
           
--            sync_tvalid1 <= PHY1_RXDV;
--            sync_tvalid2 <= sync_tvalid1;
--            sync_tvalid3 <= sync_tvalid2;
--            sync_tvalid4 <= sync_tvalid3;
--            sync_tvalid5 <= sync_tvalid4;
            
--            sync_tdata1 <= PHY1_RXD;
--            sync_tdata2 <= sync_tdata1;
--            sync_tdata3 <= sync_tdata2;

--            sync_tlast4 <= sync_tlast3;
--            sync_tlast5 <= sync_tlast4;

--            if ( sync_tvalid1 = '0' and sync_tvalid2 = '1' ) then
--                sync_tlast3 <= '1';
--            else
--                sync_tlast3 <= '0';
--            end if;
    
    
--            case state is
--				when low =>
--                    if sync_tvalid3 = '1' then
--                        byte_data(3 downto 0) <= sync_tdata3(3 downto 0);
--                        state    <= high;
--                        byte_vld <= '0';
--                    else
--                        byte_vld   <= '0';
--                    end if;
                    
--                    if sync_tvalid4 = '0' then
--                        byte_data2 <= X"00";
--                    end if;
                        
--                when high =>
--                    if sync_tvalid3 = '1' then
--                        byte_data(7  downto 4) <= sync_tdata3(3 downto 0);
--                        byte_data2(7 downto 4) <= sync_tdata3(3 downto 0);
--                        byte_data2(3 downto 0) <= byte_data(3 downto 0);
--                        state    <= low;
--                        byte_vld <= '1';
--                    end if;
--			end case;
 
--        end if;
--    end process rx_sequential;
    
    
    
    
    
--    DDR_1 : ODDR
--    generic map(
--        DDR_CLK_EDGE => "OPPOSITE_EDGE",    -- "OPPOSITE_EDGE" or "SAME_EDGE"
--        INIT => '0',                        -- Initial value for Q port ('1' or '0')
--        SRTYPE => "SYNC")                   -- Reset Type ("ASYNC" or "SYNC")
--    port map (
--        Q   => PHY1_TXD(0),      -- 1-bit DDR output
--        C   => mac_tx_clk,      -- 1-bit clock input
--        CE  => '1',             -- 1-bit clock enable input
--        D1  => arb_dout(0),     -- 1-bit data input (positive edge)
--        D2  => arb_dout(4),     -- 1-bit data input (negative edge)
--        R   => '0',             -- 1-bit reset input
--        S   => '0'              -- 1-bit set input
--    );
    
--    DDR_2 : ODDR
--    generic map(
--        DDR_CLK_EDGE => "OPPOSITE_EDGE",    -- "OPPOSITE_EDGE" or "SAME_EDGE"
--        INIT => '0',                        -- Initial value for Q port ('1' or '0')
--        SRTYPE => "SYNC")                   -- Reset Type ("ASYNC" or "SYNC")
--    port map (
--        Q   => PHY1_TXD(1),      -- 1-bit DDR output
--        C   => mac_tx_clk,      -- 1-bit clock input
--        CE  => '1',             -- 1-bit clock enable input
--        D1  => arb_dout(1),     -- 1-bit data input (positive edge)
--        D2  => arb_dout(5),     -- 1-bit data input (negative edge)
--        R   => '0',             -- 1-bit reset input
--        S   => '0'              -- 1-bit set input
--    );
    
--    DDR_3 : ODDR
--    generic map(
--        DDR_CLK_EDGE => "OPPOSITE_EDGE",    -- "OPPOSITE_EDGE" or "SAME_EDGE"
--        INIT => '0',                        -- Initial value for Q port ('1' or '0')
--        SRTYPE => "SYNC")                   -- Reset Type ("ASYNC" or "SYNC")
--    port map (
--        Q   => PHY1_TXD(2),      -- 1-bit DDR output
--        C   => mac_tx_clk,      -- 1-bit clock input
--        CE  => '1',             -- 1-bit clock enable input
--        D1  => arb_dout(2),     -- 1-bit data input (positive edge)
--        D2  => arb_dout(6),     -- 1-bit data input (negative edge)
--        R   => '0',             -- 1-bit reset input
--        S   => '0'              -- 1-bit set input
--    );
    
--    DDR_4 : ODDR
--    generic map(
--        DDR_CLK_EDGE => "OPPOSITE_EDGE",    -- "OPPOSITE_EDGE" or "SAME_EDGE"
--        INIT => '0',                        -- Initial value for Q port ('1' or '0')
--        SRTYPE => "SYNC")                   -- Reset Type ("ASYNC" or "SYNC")
--    port map (
--        Q   => PHY1_TXD(3),      -- 1-bit DDR output
--        C   => mac_tx_clk,      -- 1-bit clock input
--        CE  => '1',             -- 1-bit clock enable input
--        D1  => arb_dout(3),     -- 1-bit data input (positive edge)
--        D2  => arb_dout(7),     -- 1-bit data input (negative edge)
--        R   => '0',             -- 1-bit reset input
--        S   => '0'              -- 1-bit set input
--    );





  --------------------------------------------------------------------------------------------------------
--    eth1_rx_rise : process (clk_50Mhz)
--    begin
--        if falling_edge(clk_50Mhz) then
            
--            sync_rxc1 <= PHY1_RXC;
--            sync_rxc2 <= sync_rxc1;

--            sync_rx_dv1 <= PHY1_RXDV;
--            sync_rx_dv2 <= sync_rx_dv1;
--            --sync_rx_dv3 <= sync_rx_dv2;
            
--            sync_rx_data_p1 <= PHY1_RXD(3 downto 0);
--            sync_rx_data_p2 <= sync_rx_data_p1;
--            --sync_rx_data_p3 <= sync_rx_data_p2;
            
--            if(sync_rx_dv2 = '1')then
--                --eth1_rx_data_msb <= sync_rx_data_p3;
                
                
--                if(sync_rxc2 = '1')then
--                    eth1_rx_data_msb <= sync_rx_data_p2;
--                else
--                    eth1_rx_data_lsb <= sync_rx_data_p2;
--                end if;
                
--            else
--                eth1_rx_data_msb <= (others => '0');
--                eth1_rx_data_lsb <= (others => '0');
--            end if;
--        end if;
--    end process eth1_rx_rise;
    
    
    --------------------------------------------------------------------------------------------------------
--    eth1_rx_fall : process (clk_25Mhz)
--    begin
--        if falling_edge(clk_25Mhz) then
--            sync_rx_data_n1 <= PHY1_RXD(3 downto 0);
--            sync_rx_data_n2 <= sync_rx_data_n1;
--            --sync_rx_data_n3 <= sync_rx_data_n2;
        
--            if(sync_rx_dv3 = '1')then
--                eth1_rx_data_lsb <= sync_rx_data_n3;
--            else
--                eth1_rx_data_lsb <= (others => '0');
--            end if;
--        end if;
--    end process eth1_rx_fall;

    --eth1_rx_data <= eth1_rx_data_msb & eth1_rx_data_lsb;
    
    
    
    
    
    
--    --4bit->byte
--    --------------------------------------------------------------------------------------------------------
--    eth1_rx_4bit_p1 : process (PHY1_RXC)
--    begin
--        if rising_edge(PHY1_RXC) then
            
----            sync_rx_dv1 <= PHY1_RXDV;
----            sync_rx_dv2 <= sync_rx_dv1;
----            sync_rx_dv3 <= sync_rx_dv2;
            
----            sync_rx_data_p1 <= PHY1_RXD(3 downto 0);
----            sync_rx_data_p2 <= sync_rx_data_p1;
----            sync_rx_data_p3 <= sync_rx_data_p2;
            
--            if(PHY1_RXDV = '1')then
--               mybyte <= PHY1_RXD(3 downto 0) & mybyte(7 downto 4);
--			   sig    <= not sig;
--            else
--                --eth1_rx_data_msb <= (others => '0');
--                mybyte <= mybyte;
--		        sig    <= '0';
--            end if;
--        end if;
--    end process eth1_rx_4bit_p1;

--    --4bit->byte
--    eth1_rx_4bit_p2 : process (PHY1_RXC)
--    begin
--        if rising_edge(PHY1_RXC) then

--            if(PHY1_RXDV = '1' and sig = '1')then
--               byte_data <= PHY1_RXD(3 downto 0) & mybyte(7 downto 4);
--            else
--               byte_data <= (others => '0');
--            end if;
--        end if;
--    end process eth1_rx_4bit_p2;
    
--    --generate byte rxdv signal
--    eth1_rx_4bit_p3 : process (PHY1_RXC)
--    begin
--        if rising_edge(PHY1_RXC) then
--            byte_sig_t  <= sig;
--            byte_sig    <= byte_sig_t;
            
--            byte_rxdv_t <= PHY1_RXDV;
--            byte_rxdv   <= byte_rxdv_t;
--        end if;
--    end process eth1_rx_4bit_p3;

--    byte_vld <= byte_rxdv and not byte_sig; 
    
    
--    recv: receiver
--        port map(
    
--            -- clock
--            clk         => PHY1_RXC,
    
--            -- 4 bit nibbles for MII
--            rxdv_4      => PHY1_RXDV,
--            rxdata_4    => PHY1_RXD(3 downto 0),
    
--            -- clear if 'clear' is asserted
--            clr         => clear,
    
--            -- 8 bytes out
--            rxdv_8      => byte_vld,
--            rxdata_8    => byte_data
--        );
--    -------------------------------------------------------------------------------------
--    ila1_inst: ila_1
--    port map(    
----        clk                     => fifo_1k_eth1_to_eth2_wr_clk,   
        
----        --FIFO 1k     
----        probe0(0)               => fifo_1k_eth1_to_eth2_wr_en,              --1            
----        probe1(0)               => fifo_1k_eth1_to_eth2_wr_din(9),          --1
----        probe2(0)               => fifo_1k_eth1_to_eth2_wr_din(8),          --1
----        probe3                  => fifo_1k_eth1_to_eth2_wr_din(7 downto 0), --8
----        probe4(0)               => fifo_1k_eth1_to_eth2_wr_full             --1

--        clk                     => clk_125Mhz,   
        
--        --FIFO 1k     
--        probe0(0)               => FIFO_ICMP_WR_EN,              --1            
--        probe1(0)               => FIFO_ICMP_WR_DATA(9),          --1
--        probe2(0)               => FIFO_ICMP_WR_DATA(8),          --1
--        probe3                  => FIFO_ICMP_WR_DATA(7 downto 0), --8
--        probe4                  => icmp_fifo_wr_dcount             --12
--    );
    
--    -------------------------------------------------------------------------------------
--    ila2_inst: ila_1
--    port map(    
--        clk                     => fifo_4k_eth2_to_eth1_wr_clk,   
        
--        --FIFO 1k     
--        probe0(0)               => fifo_4k_eth2_to_eth1_wr_en,              --1            
--        probe1(0)               => fifo_4k_eth2_to_eth1_wr_din(9),          --1
--        probe2(0)               => fifo_4k_eth2_to_eth1_wr_din(8),          --1
--        probe3                  => fifo_4k_eth2_to_eth1_wr_din(7 downto 0), --8
--        probe4(0)               => fifo_4k_eth2_to_eth1_wr_full             --1
--    );
    
    
    --    ---------------------------------------------------------------------------------------
--    component ila_1 
--    port (
--        clk                     : in  std_logic;
--        probe0                  : in  std_logic_vector (0  DOWNTO 0);
--        probe1                  : in  std_logic_vector (0  DOWNTO 0);
--        probe2                  : in  std_logic_vector (0  DOWNTO 0);  
--        probe3                  : in  std_logic_vector (7  DOWNTO 0);
--        probe4                  : in  std_logic_vector (11  DOWNTO 0)
--    );
--    end component;


--    component receiver is
--        port (
            
--            clk:				in std_logic;
--            clr:				in std_logic;
            
--            -- from MII
--            rxdata_4:		    in std_logic_vector(3 downto 0);
--            rxdv_4:				in std_logic;
            
--            -- to output
--            rxdata_8:		    out std_logic_vector(7 downto 0);
--            rxdv_8:				out std_logic
--        );
--    end component receiver;
    
    
  ---------------------------------------------------------------------------------------
--    component tri_mode_ethernet_mac_0 is
--    port(
--      -- asynchronous reset
--      glbl_rstn                  : in  std_logic;
--      rx_axi_rstn                : in  std_logic;
--      tx_axi_rstn                : in  std_logic;
    
--      -- Receiver Interface
--      ----------------------------
--      rx_enable                  : out std_logic;
    
--      rx_statistics_vector       : out std_logic_vector(27 downto 0);
--      rx_statistics_valid        : out std_logic;
    
--      rx_mac_aclk                : out std_logic;
--      rx_reset                   : out std_logic;
--      rx_axis_mac_tdata          : out std_logic_vector(7 downto 0);
--      rx_axis_mac_tvalid         : out std_logic;
--      rx_axis_mac_tlast          : out std_logic;
--      rx_axis_mac_tuser          : out std_logic;
    
--      -- Transmitter Interface
--      -------------------------------
--      tx_enable                  : out std_logic;
    
--      tx_ifg_delay               : in  std_logic_vector(7 downto 0);
--      tx_statistics_vector       : out std_logic_vector(31 downto 0);
--      tx_statistics_valid        : out std_logic;
    
--      tx_mac_aclk                : out std_logic;
--      tx_reset                   : out std_logic;
--      tx_axis_mac_tdata          : in  std_logic_vector(7 downto 0);
--      tx_axis_mac_tvalid         : in  std_logic;
--      tx_axis_mac_tlast          : in  std_logic;
--      tx_axis_mac_tuser          : in  std_logic_vector(0 downto 0);
--      tx_axis_mac_tready         : out std_logic;
--      -- MAC Control Interface
--      ------------------------
--      pause_req                  : in  std_logic;
--      pause_val                  : in  std_logic_vector(15 downto 0);
    
--      speedis100                 : out std_logic;
--      speedis10100               : out std_logic;
--      -- MII Interface
--      -----------------
--      mii_txd                    : out std_logic_vector(3 downto 0);
--      mii_tx_en                  : out std_logic;
--      mii_tx_er                  : out std_logic;
--      mii_rxd                    : in  std_logic_vector(3 downto 0);
--      mii_rx_dv                  : in  std_logic;
--      mii_rx_er                  : in  std_logic;
--      mii_rx_clk                 : in  std_logic;
--      mii_tx_clk                 : in  std_logic;
    
--      -- Configuration Vector
--      -----------------------
--      rx_configuration_vector    : in  std_logic_vector(79 downto 0);
--      tx_configuration_vector    : in  std_logic_vector(79 downto 0)
--    );
--    end component tri_mode_ethernet_mac_0;
