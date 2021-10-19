----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/20/2021 10:05:37 AM
-- Design Name: 
-- Module Name: tx_pkt_25702 - Behavioral
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

entity tx_pkt_25702 is
Port ( 
        CLK                     : in STD_LOGIC;
        RST                     : in STD_LOGIC;
        
        DEV_IP                  : in  STD_LOGIC_VECTOR (31 downto 0);
        DEV_MAC                 : in  STD_LOGIC_VECTOR (47 downto 0);
        
        DST_IP                  : in  std_logic_vector (31 downto 0);
        DST_MAC                 : in  std_logic_vector (47 downto 0);
        
        -----------------------------------------------------------------------------------------------------------
        FD_CLK                  : in  STD_LOGIC; --10kHz for test
        
        RAM_SO1_WR_DATA_DONE    : in  STD_LOGIC := '0';
        RAM_SO1_RD_EN           : out std_logic := '0';                                 -- Read enable   
        RAM_SO1_RD_ADDR         : out std_logic_vector(10 downto 0):= (others => '0');  -- Address to read RAM
        RAM_SO1_RD_DATA         : in  std_logic_vector(7 downto 0);                     -- Data output of RAM
        
        RAM_SO2_WR_DATA_DONE    : in  STD_LOGIC := '0';
        RAM_SO2_RD_EN           : out std_logic := '0';                                 -- Read enable     
        RAM_SO2_RD_ADDR         : out std_logic_vector(10 downto 0):= (others => '0');  -- Address to read RAM
        RAM_SO2_RD_DATA         : in  std_logic_vector(7 downto 0);                     -- Data output of RAM

        PKT_25702_DONE          : out STD_LOGIC;                                        -- Packet 25702 TX done
        
        -----------------------------------------------------------------------------------------------------------
        --Write TX packet to FIFO 
        pkt25702_fifo_wr_clk    : out std_logic;
        pkt25702_fifo_wr_en     : out std_logic;
        pkt25702_fifo_wr_data   : out std_logic_vector (9 downto 0)
);
end tx_pkt_25702;

--        RAM_25702_WR_DATA_DONE  : in  STD_LOGIC := '0';
--        RAM_25702_RD_EN         : out std_logic;                        -- Write enable 
--        RAM_25702_RD_ADDR       : out std_logic_vector(10 downto 0);    -- Address to read RAM
--        RAM_25702_RD_DATA       : in  std_logic_vector(7 downto 0);     -- Data output of RAM
--        PKT_25702_DONE          : out STD_LOGIC;                        -- Packet 25702 TX done

architecture Behavioral of tx_pkt_25702 is

    constant  UDP_PROTO     : std_logic_vector(15 downto 0)  := x"00_11";
    
    constant  IP4_VHL       : std_logic_vector(7 downto 0)  := x"45";
    constant  IP4_DSCP      : std_logic_vector(7 downto 0)  := x"00";
    --constant  IP4_TL        : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(1390, 16)); -- 20 + 8 + 1362
    constant  IP4_TL        : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(1448, 16)); -- 20 + 8 + 1420
    
    constant  IPv4_FL       : std_logic_vector(15 downto 0) := x"40_00";
    constant  IP4_TTL       : std_logic_vector(7 downto 0)  := x"40";
    constant  IP4_TYPE      : std_logic_vector(7 downto 0)  := x"11";

    constant  UDP_SP        : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(25702, 16));
    constant  UDP_DP        : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(25702, 16));
    --constant  UDP_LEN       : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(1370, 16));  --8 + 1362
    constant  UDP_LEN       : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(1428, 16));  --8 + 1420
    constant  UDP_CRC       : std_logic_vector(15 downto 0) := x"00_00";
    
    type t_State            is (IDLE, SYNC, UDP_CRC16, WRITE_HDR, WAIT_DATA, WRITE_DATA, WRITE_FCS, END_TX);
    signal State            : t_State;
    
    signal sync1_so1        : std_logic := '0';
    signal sync2_so1        : std_logic := '0';
    signal latch_so1        : std_logic := '0';
    
    signal sync1_so2        : std_logic := '0';
    signal sync2_so2        : std_logic := '0';
    signal latch_so2        : std_logic := '0';
    
    signal din              : std_logic_vector(7 downto 0)  := x"00";
    signal temp_t           : std_logic_vector(7 downto 0)  := x"00";
    
    signal pkt_cnt          : std_logic_vector (31 downto 0) := x"00_00_00_00";
    signal IPv4_ID          : std_logic_vector (15 downto 0) := x"00_00";
    signal sel              : integer range 0 to 1500 := 0;
    
    signal wait_cnt         : integer range 0 to 255 := 0;
    signal pkt_d            : std_logic_vector (7 downto 0) := x"00";
    
    signal fcs_en           : std_logic := '0';
    signal fcs_rst          : std_logic := '1';
    signal fcs_crc          : std_logic_vector(31 downto 0)  := x"00_00_00_00";
    signal fcs_crcnext      : std_logic_vector(31 downto 0)  := x"00_00_00_00";
    
    signal IP4_CRC          : std_logic_vector(31 downto 0)  := x"00_00_00_00";
    
    signal fcs_t2           : std_logic_vector(7 downto 0)  := x"00";
    signal fcs_t3           : std_logic_vector(7 downto 0)  := x"00";
    signal fcs_t4           : std_logic_vector(7 downto 0)  := x"00";
    
    signal tx_en            : std_logic := '0';
    signal adc_data_t       : std_logic_vector (255 downto 0) := std_logic_vector(to_unsigned(0, 256));
    
    signal y1               : unsigned(15 downto 0) := unsigned(IP4_VHL & IP4_DSCP);
    signal y2               : unsigned(15 downto 0) := unsigned(IP4_TL);
    signal y3               : unsigned(15 downto 0) := unsigned(IPv4_FL);
    signal y4               : unsigned(15 downto 0) := unsigned(IP4_TTL & IP4_TYPE);
    
    signal y5               : unsigned(15 downto 0) := unsigned(DST_IP(31 downto 16));
    signal y6               : unsigned(15 downto 0) := unsigned(DST_IP(15 downto 0));
    
    signal y7               : unsigned(15 downto 0) := unsigned(DEV_IP    (31 downto 16));
    signal y8               : unsigned(15 downto 0) := unsigned(DEV_IP    (15 downto 0));
    
    signal y9               : unsigned(15 downto 0) := to_unsigned(0, 16);
    signal ip4_crc_t1       : unsigned(31 downto 0) := to_unsigned(0, 32);
    signal ip4_crc_t2       : unsigned(16 downto 0) := to_unsigned(0, 17);
    
    signal dst_mac_t        : std_logic_vector(47 downto 0)  := x"00_00_00_00_00_00";
    signal index            : integer range 0 to 256 := 0;
    signal cnt_get_pkt      : std_logic_vector (31 downto 0) := x"00_00_00_00";
    
    signal ram_udp_wr_en    : std_logic := '0';
    signal ram_udp_wr_addr  : std_logic_vector (9 downto 0)  := (others => '0');
    signal ram_udp_wr_data  : std_logic_vector (15 downto 0) := (others => '0');
    
    signal ram_udp_rd_en1    : std_logic := '0';
    signal ram_udp_rd_addr1  : std_logic_vector (10 downto 0)  := (others => '0');
    signal ram_udp_dout1     : std_logic_vector (15 downto 0) := (others => '0');
    
    signal ram_udp_rd_en2    : std_logic := '0';
    signal ram_udp_rd_addr2  : std_logic_vector (10 downto 0)  := (others => '0');
    signal ram_udp_dout2     : std_logic_vector (15 downto 0) := (others => '0');
    
    signal sync_cnt         : integer range 0 to 44 := 0;
    signal ram_st           : integer range 0 to 16 := 0;
    
    signal step_crc         : integer range 0 to 800 := 0;
    signal udp_crc_t1       : unsigned(31 downto 0) := to_unsigned(0, 32);
    signal udp_crc_t2       : unsigned(16 downto 0) := to_unsigned(0, 17);
    
    signal udp_crc_din      : unsigned(31 downto 0) := to_unsigned(0, 32);
    
    signal byte_st          : std_logic := '0';
    signal CRC16            : std_logic_vector(16 downto 0)  := (others => '0');
    
    
    --signal crc32_dbg        : unsigned(31 downto 0) := to_unsigned(0, 32);
    signal step_crc_dbg     : unsigned(9 downto 0)  := to_unsigned(0, 10);
    
    signal pkt25702_tx_data : std_logic_vector (7 downto 0) := (others => '0');
    
    ---------------------------------------------------------------------------------------
    component crc
    port (
        Clk                 : in  std_logic;
        Reset               : in  std_logic;
        Data_in             : in  std_logic_vector (7 downto 0);
        Enable              : in  std_logic;
        Crc                 : out std_logic_vector (31 downto 0);
        CrcNext             : out std_logic_vector (31 downto 0)
    );
    end component;
    
    
    ---------------------------------------------------------------------------------------
--    component ila_4 
--    port (
--        clk                 : in  std_logic;
--        probe0              : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
--        probe1              : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
--        probe2              : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe3              : IN STD_LOGIC_VECTOR(10 DOWNTO 0);
--        probe4              : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
--        probe5              : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
--        probe6              : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
--        probe7              : IN STD_LOGIC_VECTOR(15 DOWNTO 0) --IPv4_ID
--    );  
--    end component;
    
begin

    ---------------------------------------------------------------------------------------
    --Assign
--    FIFO_25702_WR_DATA(7 downto 0) <= din;
--    FIFO_25702_WR_DATA(8)          <= '0';
--    FIFO_25702_WR_DATA(9)          <= tx_en;


    pkt25702_tx_data                  <= din;
    pkt25702_fifo_wr_clk              <= CLK;
    pkt25702_fifo_wr_data(9)          <= tx_en;
    pkt25702_fifo_wr_data(4)          <= tx_en;
    pkt25702_fifo_wr_data(3 downto 0) <= pkt25702_tx_data(7 downto 4);
    pkt25702_fifo_wr_data(8 downto 5) <= pkt25702_tx_data(3 downto 0); 

    
    --RAM_25702_RD_ADDR                 <= ram_udp_rd_addr;
    --RAM_25702_RD_EN                   <= ram_udp_rd_en;
    RAM_SO1_RD_EN   <= ram_udp_rd_en1;
    RAM_SO2_RD_EN   <= ram_udp_rd_en2;
    
    RAM_SO1_RD_ADDR <= ram_udp_rd_addr1;
    RAM_SO2_RD_ADDR <= ram_udp_rd_addr2;
     
    
    
    
    y1 <= unsigned(IP4_VHL & IP4_DSCP);
    y2 <= unsigned(IP4_TL);
    y3 <= unsigned(IPv4_FL);
    y4 <= unsigned(IP4_TTL & IP4_TYPE);
    y5 <= unsigned(DST_IP(31 downto 16));
    y6 <= unsigned(DST_IP(15 downto 0));
    y7 <= unsigned(DEV_IP(31 downto 16));
    y8 <= unsigned(DEV_IP(15 downto 0));
    
    CRC16 <= not std_logic_vector(udp_crc_t2); 
    
    --crc32_dbg    <= to_unsigned(step_crc,10);
    step_crc_dbg <= to_unsigned(step_crc,10);
    
    ---------------------------------------------------------------------------------------
    crc_inst: crc
    port map(    
        Clk                 => CLK,        
        Reset               => fcs_rst,        
        Data_in             => din,       
        Enable              => fcs_en,    
        Crc                 => fcs_crc,
        CrcNext             => fcs_crcnext
    );

    -------------------------------------------------------------------------------------
--    ila4_inst: ila_4
--    port map(    
--        clk                 => CLK,   
  
--        probe0              => std_logic_vector(step_crc_dbg),      --10            
--        probe1              => std_logic_vector(udp_crc_t1),        --32
--        probe2(0)           => ram_udp_rd_en,                       --1
--        probe3              => std_logic_vector(ram_udp_rd_addr),   --11
--        probe4              => std_logic_vector(udp_crc_t2),        --17
--        probe5              => std_logic_vector(CRC16),             --17
--        probe6              => RAM_25702_RD_DATA,                   --8
--        probe7              => IPv4_ID                              --16
--    );
    
    
    ---------------------------------------------------------------------------------------
    --SEND UDP PACKET
    send_udp : process(CLK)
    begin
        if rising_edge(CLK) then
         
            ---------------------------------------------------------------------------------------
            --sync adc fd clock
--            sync1_so1 <= RAM_SO1_WR_DATA_DONE;--RAM_25702_WR_DATA_DONE;
--            sync2_so1 <= sync1_so1;
--            if (sync1_so1 = '1' and sync2_so1 = '0') then
--                latch_so1 <= '1';
--            end if;
            
--            sync1_so2 <= RAM_SO2_WR_DATA_DONE;
--            sync2_so2 <= sync1_so2;
--            if (sync1_so2 = '1' and sync2_so2 = '0') then
--                latch_so2 <= '1';
--            end if;



            if (RST = '1') then
                pkt_cnt <= x"00_00_00_00";
                State   <= IDLE;
            end if;
            
            ---------------------------------------------------------------------------------------
            --FSM
            case State is
            
                when IDLE =>

                    sync1_so1 <= RAM_SO1_WR_DATA_DONE;--RAM_25702_WR_DATA_DONE;
                    sync2_so1 <= sync1_so1;
                    if (sync1_so1 = '1' and sync2_so1 = '0') then
                        latch_so1 <= '1';
                    end if;
                    
                    sync1_so2 <= RAM_SO2_WR_DATA_DONE;
                    sync2_so2 <= sync1_so2;
                    if (sync1_so2 = '1' and sync2_so2 = '0') then
                        latch_so2 <= '1';
                    end if;
                    
                    if (latch_so1 = '1' and latch_so2 = '1') then
                        State <= WRITE_HDR;
                    end if;
                    
                 --Calculate CRC16 of UDP packet        
--                when UDP_CRC16 =>
--                    case step_crc is
--                        when 0 =>                     
--                            udp_crc_t1      <=  to_unsigned(0, 32);
--                            step_crc        <= step_crc + 1;
                       
--                        --Calculate UDP crc with Little Endian 
--                        --UDP HEADER    
--                        when 1 =>  
--                            udp_crc_t1      <= udp_crc_t1 + (resize(unsigned(UDP_SP(7 downto 0) & UDP_SP(15 downto 8)       ),32)); 
--                            step_crc        <= step_crc + 1;   
--                        when 2 =>   
--                            udp_crc_t1      <= udp_crc_t1 + (resize(unsigned(UDP_DP(7 downto 0) & UDP_DP(15 downto 8)       ),32));  
--                            step_crc        <= step_crc + 1; 
--                        when 3 =>    
--                            udp_crc_t1      <= udp_crc_t1 + (resize(unsigned(UDP_LEN(7 downto 0) & UDP_LEN(15 downto 8)     ),32)); 
--                            step_crc        <= step_crc + 1; 
--                        when 4 => 
--                            --udp_crc_din     <= (resize(unsigned(    UDP_CRC),32));    
--                            udp_crc_t1      <= udp_crc_t1 + (resize(unsigned(UDP_CRC),32)); 
--                            step_crc        <= step_crc + 1;
                        
--                        --UDP DATA
--                        when 5 =>    
--                            udp_crc_t1      <= udp_crc_t1 + (resize(unsigned(pkt_cnt(15 downto 0) ),32)); 
--                            step_crc        <= step_crc + 1;     
--                        when 6 =>    
--                            udp_crc_t1      <= udp_crc_t1 + (resize(unsigned(pkt_cnt(31 downto 16) ),32)); 
--                            step_crc        <= step_crc + 1;
--                            ram_udp_rd_en   <= '1';
--                            ram_udp_rd_addr <= b"00000000001";

--                        --UDP DATA from RAM
--                        when 7 =>    
--                            case ram_st is
--                                when 0 => ram_udp_dout(7  downto 0) <= RAM_25702_RD_DATA; ram_udp_rd_addr <= ram_udp_rd_addr + 1;   ram_st <= ram_st + 1;
--                                when 1 => ram_udp_dout(15 downto 8) <= RAM_25702_RD_DATA; ram_udp_rd_addr <= ram_udp_rd_addr + 1;   ram_st <= ram_st + 1;

----                                when 0 => ram_udp_dout(15 downto 8) <= RAM_25702_RD_DATA; ram_udp_rd_addr <= ram_udp_rd_addr + 1;   ram_st <= ram_st + 1;
----                                when 1 => ram_udp_dout(7  downto 0) <= RAM_25702_RD_DATA; ram_udp_rd_addr <= ram_udp_rd_addr + 1;   ram_st <= ram_st + 1;
                                
--                                when 2 => udp_crc_t1 <= udp_crc_t1 + (resize(unsigned(ram_udp_dout),32)); step_crc <= step_crc + 1; ram_st <= 0;
--                                when others => null;
--                            end case;

--                        when 683 =>    
--                            ram_udp_rd_en   <= '0';
--                            ram_udp_rd_addr <= b"00000000000";
--                            step_crc        <= step_crc + 1; 

--                        --Calculate UDP crc with Little Endian 
--                        when 683+1 =>    
--                            udp_crc_t1      <= udp_crc_t1 + (resize(unsigned(   DEV_IP(7 downto 0) & DEV_IP(15 downto 8)        ),32)); --udp_crc_t1 + (resize(unsigned(DEV_IP(7 downto 0) & DEV_IP(15 downto 8) ),32)); 
--                            step_crc        <= step_crc + 1;  
--                        when 684+1 =>    
--                            udp_crc_t1      <= udp_crc_t1 + (resize(unsigned(   DEV_IP(23 downto 16) & DEV_IP(31 downto 24)     ),32)); --(resize(unsigned(DEV_IP(23 downto 16) & DEV_IP(31 downto 24) ),32)); 
--                            step_crc        <= step_crc + 1;  
--                        when 685+1 =>    
--                            udp_crc_t1      <= udp_crc_t1 + (resize(unsigned(   DST_IP(7 downto 0) & DST_IP(15 downto 8)        ),32)); 
--                            step_crc        <= step_crc + 1;  
--                        when 686+1 =>    
--                            udp_crc_t1      <= udp_crc_t1 + (resize(unsigned(   DST_IP(23 downto 16) & DST_IP(31 downto 24)     ),32)); 
--                            step_crc        <= step_crc + 1;   
--                        when 687+1 =>    
--                            udp_crc_t1      <= udp_crc_t1 + (resize(unsigned(   UDP_PROTO(7 downto 0) & UDP_PROTO(15 downto 8)  ),32)); --UDP PROTO
--                            step_crc        <= step_crc + 1; 
--                        when 688+1 =>    
--                            udp_crc_t1      <= udp_crc_t1 + (resize(unsigned(   UDP_LEN(7 downto 0) & UDP_LEN(15 downto 8)      ),32));
--                            step_crc        <= step_crc + 1; 
--                        when 689+1 =>
--                            udp_crc_t2      <= "0" & udp_crc_t1(31 downto 16) + udp_crc_t1(15 downto 0);
--                            step_crc        <= 0;
--                            State           <= WRITE_HDR;    
                                    
--                        when others =>
--                            case ram_st is
--                                when 0 => ram_udp_dout(7  downto 0) <= RAM_25702_RD_DATA; ram_udp_rd_addr <= ram_udp_rd_addr + 1;   ram_st <= ram_st + 1;
--                                when 1 => ram_udp_dout(15 downto 8) <= RAM_25702_RD_DATA; ram_udp_rd_addr <= ram_udp_rd_addr + 1;   ram_st <= ram_st + 1;
                                
----                                when 0 => ram_udp_dout(15 downto 8) <= RAM_25702_RD_DATA; ram_udp_rd_addr <= ram_udp_rd_addr + 1;   ram_st <= ram_st + 1;
----                                when 1 => ram_udp_dout(7  downto 0) <= RAM_25702_RD_DATA; ram_udp_rd_addr <= ram_udp_rd_addr + 1;   ram_st <= ram_st + 1;
                                
--                                when 2 => udp_crc_t1 <= udp_crc_t1 + (resize(unsigned(ram_udp_dout),32)); step_crc <= step_crc + 1; ram_st <= 0;
--                                when others => null;
--                            end case;      
--                    end case;     
                
                when WRITE_HDR =>
                    case sel is
                        --Ethenet preambule
                        when 0 => din <= x"55"; IPv4_ID <=IPv4_ID + 1; wait_cnt <=0; pkt_d <= x"00"; tx_en <= '1'; pkt25702_fifo_wr_en <= '1'; sel <=sel+1;
                        when 1 => din <= x"55"; sel <=sel+1;
                        when 2 => din <= x"55"; sel <=sel+1;
                        when 3 => din <= x"55"; sel <=sel+1;
                        when 4 => din <= x"55"; sel <=sel+1;
                        when 5 => din <= x"55"; sel <=sel+1;
                        when 6 => din <= x"55"; sel <=sel+1;
                        when 7 => din <= x"D5"; sel <=sel+1;
                        
                        --Ethenet header    
                        when 8 => din     <= DST_MAC(47 downto 40); 
                                  sel     <=sel+1; 
                                  fcs_en  <='1';  	          --Enable module FCS
                                  fcs_rst <='0'; 	          --Set value FCS 
                                    
                        when 9 =>  din <= DST_MAC(39 downto 32); sel <=sel+1;
                        when 10 => din <= DST_MAC(31 downto 24); sel <=sel+1;
                        when 11 => din <= DST_MAC(23 downto 16); sel <=sel+1;
                        when 12 => din <= DST_MAC(15 downto 8);  sel <=sel+1;
                        when 13 => din <= DST_MAC(7  downto 0);  sel <=sel+1;
                        
                        --SRC MAC
                        when 14 => din <= DEV_MAC(47 downto 40); sel <=sel+1;   
                        when 15 => din <= DEV_MAC(39 downto 32); sel <=sel+1; 
                        when 16 => din <= DEV_MAC(31 downto 24); sel <=sel+1; 
                        when 17 => din <= DEV_MAC(23 downto 16); sel <=sel+1; 
                        when 18 => din <= DEV_MAC(15 downto 8);  sel <=sel+1; 
                        when 19 => din <= DEV_MAC(7  downto 0);  sel <=sel+1; 
                        
                        --TYPE
                        when 20 => din <= x"08"; sel <=sel+1; 
                        when 21 => din <= x"00"; sel <=sel+1; y9 <= unsigned(IPv4_ID);  
                        
                        --IPv4 header
                        when 22 => din <=IP4_VHL; 
                                   sel <=sel+1;
                                   ip4_crc_t1 <= (resize(y1,32)) + (resize(y2,32)) + (resize(y3,32)) + (resize(y4,32)) + (resize(y5,32)) + (resize(y6,32)) + (resize(y7,32)) + (resize(y8,32)) + (resize(y9,32));
                        when 23 => din <=IP4_DSCP;
                                   sel <=sel+1; 
                                   ip4_crc_t2 <= "0" & ip4_crc_t1(31 downto 16) + ip4_crc_t1(15 downto 0);
                        when 24 => din <=IP4_TL(15 downto 8);       sel <=sel+1;   
                        when 25 => din <=IP4_TL(7 downto 0);        sel <=sel+1; 
                        when 26 => din <=IPv4_ID(15 downto 8);      sel <=sel+1; 
                        when 27 => din <=IPv4_ID(7 downto 0);       sel <=sel+1; 
                        when 28 => din <=IPv4_FL(15 downto 8);      sel <=sel+1;   
                        when 29 => din <=IPv4_FL(7 downto 0);       sel <=sel+1; 
                        when 30 => din <=IP4_TTL;                   sel <=sel+1; 
                        when 31 => din <=IP4_TYPE;                  sel <=sel+1;   
                        when 32 => din <= not std_logic_vector(ip4_crc_t2(15 downto 8)); 
                                   sel <=sel+1;                   
                        when 33 => 
                            if(ip4_crc_t2(16) = '1') then  --overflow carry 
                                din <= not std_logic_vector(ip4_crc_t2(7 downto 0)) - '1';
                            else
                                din <= not std_logic_vector(ip4_crc_t2(7 downto 0)); 
                            end if;
                            sel <=sel+1;
                            
                        when 34 => din <=DEV_IP(31 downto 24);      sel <=sel+1; 
                        when 35 => din <=DEV_IP(23 downto 16);      sel <=sel+1; 
                        when 36 => din <=DEV_IP(15 downto 8);       sel <=sel+1; 
                        when 37 => din <=DEV_IP(7 downto 0);        sel <=sel+1; 
                        
                        when 38 => din <=DST_IP(31 downto 24);      sel <=sel+1; 
                        when 39 => din <=DST_IP(23 downto 16);      sel <=sel+1; 
                        when 40 => din <=DST_IP(15 downto 8);       sel <=sel+1; 
                        when 41 => din <=DST_IP(7 downto 0);        sel <=sel+1; 
                        
                        --UDP header
                        when 42 => din <=UDP_SP(15 downto 8);       sel <=sel+1;
                        when 43 => din <=UDP_SP(7 downto 0);        sel <=sel+1;
                        
                        when 44 => din <=UDP_DP(15 downto 8);       sel <=sel+1;
                        when 45 => din <=UDP_DP(7 downto 0);        sel <=sel+1;
                        
                        when 46 => din <=UDP_LEN(15 downto 8);      sel <=sel+1;
                        when 47 => din <=UDP_LEN(7 downto 0);       sel <=sel+1;  
                        
                        when 48 => --CHECKSUM
--                            if(udp_crc_t2(16) = '1') then  --overflow carry 
--                                din <= not std_logic_vector(udp_crc_t2(7 downto 0)) - '1';
--                            else
--                                din <= not std_logic_vector(udp_crc_t2(7 downto 0)); 
--                            end if;
                            
                            din <= X"00";
                            sel <= sel + 1; 
 
                        when 49 => --CHECKSUM 
                            --din     <= not std_logic_vector(udp_crc_t2(15 downto 8)); 
                            
                            din     <= X"00";
                            sel     <= 0;
                            State   <= WRITE_DATA; 
                             
                        when others => null;
                    end case; 
                    
                when WRITE_DATA =>  
                    case sel is
                        when 0 => 
                            din <= pkt_cnt(7 downto 0);
                            sel <= sel + 1;
                            
                        when 1 => 
                            din <= pkt_cnt(15 downto 8);
                            sel <= sel + 1;
                            
                        when 2 => 
                            din <= pkt_cnt(23 downto 16);
                            sel <= sel + 1;    
                            
                        when 3 => 
                            din              <= pkt_cnt(31 downto 24);
                            sel              <= sel + 1;
                            
                            ram_udp_rd_en1   <= '1';
                            ram_udp_rd_addr1 <= b"00000000001";
                            
                            ram_udp_rd_en2   <= '1';
                            ram_udp_rd_addr2 <= b"00000000001";
                            
                            
                        ------------------------------------------------------------------------------------------------------
                        --PART1
                        when 4 to 30 =>      -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                        
                        when 31 to 66 =>     -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;
                       
                        when 67 to 74 =>     -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;

                        when 75 to 78 =>     -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        ------------------------------------------------------------------------------------------------------
                        --PART2
                        when 79 to 105 =>    -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 106 to 141 =>   -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 142 to 149 =>   -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 150 to 153 =>   -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1; 
                        
                        ------------------------------------------------------------------------------------------------------
                        --PART3
                        when 154 to 180 =>   -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 181 to 216 =>   -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 217 to 224 =>   -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 225 to 228 =>   -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1; 

                        ------------------------------------------------------------------------------------------------------
                        --PART4
                        when 229 to 255 =>   -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 256 to 291 =>   -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 292 to 299 =>   -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 300 to 303 =>   -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;

                        ------------------------------------------------------------------------------------------------------
                        --PART5
                        when 304 to 330 =>   -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 331 to 366 =>   -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 367 to 374 =>   -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 375 to 378 =>   -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;

                        ------------------------------------------------------------------------------------------------------
                        --PART6
                        when 379 to 405 =>   -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 406 to 441 =>   -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 442 to 449 =>   -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 450 to 453 =>   -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;

                        ------------------------------------------------------------------------------------------------------
                        --PART7
                        when 454 to 480 =>   -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 481 to 516 =>   -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 517 to 524 =>   -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 525 to 528 =>   -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;

                        ------------------------------------------------------------------------------------------------------
                        --PART8
                        when 529 to 555 =>   -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 556 to 591 =>   -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 592 to 599 =>   -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 600 to 603 =>   -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;
                        
                        ------------------------------------------------------------------------------------------------------
                        --PART9
                        when 604 to 630 =>   -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 631 to 666 =>   -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 667 to 674 =>   -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 675 to 678 =>   -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;

                        ------------------------------------------------------------------------------------------------------
                        --PART10
                        when 679 to 705 =>   -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 706 to 741 =>   -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 742 to 749 =>   -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 750 to 753 =>   -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;

                        ------------------------------------------------------------------------------------------------------
                        --PART11
                        when 754 to 780 =>   -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 781 to 816 =>   -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 817 to 824 =>   -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 825 to 828 =>   -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;

                        ------------------------------------------------------------------------------------------------------
                        --PART12
                        when 829 to 855 =>   -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 856 to 891 =>   -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 892 to 899 =>   -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 900 to 903 =>   -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;
                            
                        ------------------------------------------------------------------------------------------------------
                        --PART13
                        when 904 to 930 =>   -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 931 to 966 =>   -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 967 to 974 =>   -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 975 to 978 =>   -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    
                            
                        ------------------------------------------------------------------------------------------------------
                        --PART14
                        when 979 to 1005 =>  -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 1006 to 1041 => -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 1042 to 1049 => -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 1050 to 1053 => -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;  

                        ------------------------------------------------------------------------------------------------------
                        --PART15
                        when 1054 to 1080 => -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 1081 to 1116 => -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 1117 to 1124 => -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 1125 to 1128 =>  -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;

                        ------------------------------------------------------------------------------------------------------
                        --PART16
                        when 1129 to 1155 => -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 1156 to 1191 => -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 1192 to 1199 => -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 1200 to 1203 =>  -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;
                            
                        ------------------------------------------------------------------------------------------------------
                        --PART17
                        when 1204 to 1230 => -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 1231 to 1266 => -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 1267 to 1274 => -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 1275 to 1278 =>  -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    
                            
                        ------------------------------------------------------------------------------------------------------
                        --PART18
                        when 1279 to 1305 => -- 3 modules HEC360 - 27 bytes
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                         
                        when 1306 to 1341 => -- 4 modules HEC360 - 36 bytes
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;    

                        when 1342 to 1349 => -- 8 bytes of module DDT1       
                            ram_udp_rd_addr1 <= ram_udp_rd_addr1 + 1; 
                            din              <= RAM_SO1_RD_DATA;
                            sel              <= sel + 1;
                           
                        when 1350 to 1353 =>  -- 4 bytes of module DDT2       
                            ram_udp_rd_addr2 <= ram_udp_rd_addr2 + 1; 
                            din              <= RAM_SO2_RD_DATA;
                            sel              <= sel + 1;      

                        when 1354 to 1418 =>
                            ram_udp_rd_en1   <= '0';
                            ram_udp_rd_en2   <= '0';
                            din              <= X"00";
                            sel              <= sel + 1;
  
                        --End reserv bytes
                        when 1419 =>
                            latch_so1 <= '0';
                            latch_so2 <= '0';
                            
                            din   <= X"00";
                            sel   <= 0;
                            State <= WRITE_FCS; 

                        when others => null;
                    end case;    

                when WRITE_FCS =>
                    case sel is
                        when 0 =>
                            din     <= not fcs_crcnext(24) & not fcs_crcnext(25) & not fcs_crcnext(26) & not fcs_crcnext(27) & not fcs_crcnext(28) & not fcs_crcnext(29) & not fcs_crcnext(30) & not fcs_crcnext(31) ;
                            fcs_t2  <= not fcs_crcnext(16) & not fcs_crcnext(17) & not fcs_crcnext(18) & not fcs_crcnext(19) & not fcs_crcnext(20) & not fcs_crcnext(21) & not fcs_crcnext(22) & not fcs_crcnext(23) ;
                            fcs_t3  <= not fcs_crcnext(8) &  not fcs_crcnext(9) &  not fcs_crcnext(10) & not fcs_crcnext(11) & not fcs_crcnext(12) & not fcs_crcnext(13) & not fcs_crcnext(14) & not fcs_crcnext(15) ;
                            fcs_t4  <= not fcs_crcnext(0) &  not fcs_crcnext(1) &  not fcs_crcnext(2) &  not fcs_crcnext(3) &  not fcs_crcnext(4) &  not fcs_crcnext(5) &  not fcs_crcnext(6) &  not fcs_crcnext(7) ;
                            fcs_en  <= '0'; --Disable module FCS
                            fcs_rst <= '1'; --Reset value FCS 
                            sel     <= sel+1;
                            
                        when 1 => din<=fcs_t2; sel <=sel+1;
                        when 2 => din<=fcs_t3; sel <=sel+1;
                        when 3 => din<=fcs_t4; sel <=sel+1;
                        
                        --Wait FD synchro packet
                        when 4 => din            <= x"00";  
                                  sel            <= 0; 
                                  tx_en          <= '0'; 
                                  pkt_cnt        <= pkt_cnt + 1; 
                                  State          <= END_TX;
                                  PKT_25702_DONE <= '1';
                                  
                        when others => null; 
                    end case;
                
                when END_TX =>
                    PKT_25702_DONE      <= '0';
                    pkt25702_fifo_wr_en <= '0';
                    State               <= IDLE;

                when others => null;
            end case;

        end if;
    end process send_udp;

end Behavioral;
