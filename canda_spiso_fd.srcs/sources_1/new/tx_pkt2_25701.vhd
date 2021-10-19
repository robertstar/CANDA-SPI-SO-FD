----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/12/2021 03:12:29 PM
-- Design Name: 
-- Module Name: tx_pkt2_25701 - Behavioral
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

entity tx_pkt2_25701 is
Port ( 
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
    FIFO_PKT2_25701_WR_DOUT         : out std_logic_vector (9 downto 0)  
);
end tx_pkt2_25701;

architecture Behavioral of tx_pkt2_25701 is

    constant  UDP_PROTO     : std_logic_vector(15 downto 0) := x"00_11";
    
    constant  IP4_VHL       : std_logic_vector(7 downto 0)  := x"45";
    constant  IP4_DSCP      : std_logic_vector(7 downto 0)  := x"00";
    constant  IP4_TL        : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(1448, 16)); -- 20 + 8 + 1420
    constant  IPv4_FL       : std_logic_vector(15 downto 0) := x"40_00";
    constant  IP4_TTL       : std_logic_vector(7 downto 0)  := x"40";
    constant  IP4_TYPE      : std_logic_vector(7 downto 0)  := x"11";
    --constant  IP4_DST_IP    : std_logic_vector(31 downto 0) := x"C0_A8_05_01";
    
    --constant  UDP_SP        : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(25701, 16));
    signal    UDP_SP        : std_logic_vector(15 downto 0) := (others => '0');
    signal    UDP_DP        : std_logic_vector(15 downto 0) := (others => '0');
    
    --constant  UDP_DP        : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(25701, 16));
    constant  UDP_LEN       : std_logic_vector(15 downto 0) := std_logic_vector(to_unsigned(1428, 16));  --8 + 1420
    signal    UDP_CRC       : std_logic_vector(15 downto 0) := x"00_00";
    
    signal DST_IP           : std_logic_vector (31 downto 0) := (others => '0');
    signal DST_MAC          : std_logic_vector (47 downto 0) := (others => '0');
    signal DEV_IP           : std_logic_vector (31 downto 0) := (others => '0');
    signal DEV_MAC          : std_logic_vector (47 downto 0) := (others => '0');
    
    type t_State            is (IDLE, SYNC, UDP_CRC16, WRITE_HDR, WAIT_DATA, WRITE_DATA, WRITE_FCS, END_TX);
    signal State            : t_State;
    
    signal sync1            : std_logic := '0';
    signal sync2            : std_logic := '0';
    
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
    --signal adc_data_t       : std_logic_vector (255 downto 0) := std_logic_vector(to_unsigned(0, 256));
    
    signal y1               : unsigned(15 downto 0) := unsigned(IP4_VHL & IP4_DSCP);
    signal y2               : unsigned(15 downto 0) := unsigned(IP4_TL);
    signal y3               : unsigned(15 downto 0) := unsigned(IPv4_FL);
    signal y4               : unsigned(15 downto 0) := unsigned(IP4_TTL & IP4_TYPE);
    signal y5               : unsigned(15 downto 0) := unsigned(DST_IP(31 downto 16));
    signal y6               : unsigned(15 downto 0) := unsigned(DST_IP(15 downto 0));
    signal y7               : unsigned(15 downto 0) := unsigned(DEV_IP(31 downto 16));
    signal y8               : unsigned(15 downto 0) := unsigned(DEV_IP(15 downto 0));
    signal y9               : unsigned(15 downto 0) := to_unsigned(0, 16);
    signal ip4_crc_t1       : unsigned(31 downto 0) := to_unsigned(0, 32);
    signal ip4_crc_t2       : unsigned(16 downto 0) := to_unsigned(0, 17);
    
    signal dst_mac_t        : std_logic_vector(47 downto 0)  := x"00_00_00_00_00_00";
    signal index            : integer range 0 to 256 := 0;
    signal cnt_get_pkt      : std_logic_vector (31 downto 0) := x"00_00_00_00";
    
    signal sync_cnt         : integer range 0 to 44 := 0;
    signal ch_cnt           : integer range 0 to 16 := 0;
    signal step_crc         : integer range 0 to 800 := 0;
    signal udp_crc_t1       : unsigned(31 downto 0) := to_unsigned(0, 32);
    signal udp_crc_t2       : unsigned(16 downto 0) := to_unsigned(0, 17);
    signal udp_crc_din      : unsigned(31 downto 0) := to_unsigned(0, 32);
    signal byte_st          : std_logic := '0';
    signal CRC16            : std_logic_vector(16 downto 0)  := (others => '0');
    
    signal pkt25701_tx_data : std_logic_vector (7 downto 0) := (others => '0');
    
    ---------------------------------------------------------------------------------------
    component crc
    port (
        Clk         :in   std_logic;
        Reset       :in   std_logic;
        Data_in     :in   std_logic_vector (7 downto 0);
        Enable      :in   std_logic;
        Crc         :out  std_logic_vector (31 downto 0);
        CrcNext     :out  std_logic_vector (31 downto 0)
    );
    end component;

begin

    pkt25701_tx_data                    <= din;
    FIFO_PKT2_25701_WR_CLK              <= CLK;
    FIFO_PKT2_25701_WR_DOUT(9)          <= tx_en;
    FIFO_PKT2_25701_WR_DOUT(4)          <= tx_en;
    FIFO_PKT2_25701_WR_DOUT(3 downto 0) <= pkt25701_tx_data(7 downto 4);
    FIFO_PKT2_25701_WR_DOUT(8 downto 5) <= pkt25701_tx_data(3 downto 0); 
    
    y1 <= unsigned(IP4_VHL & IP4_DSCP);
    y2 <= unsigned(IP4_TL);
    y3 <= unsigned(IPv4_FL);
    y4 <= unsigned(IP4_TTL & IP4_TYPE);
    y5 <= unsigned(DST_IP(31 downto 16));
    y6 <= unsigned(DST_IP(15 downto 0));
    y7 <= unsigned(DEV_IP(31 downto 16));
    y8 <= unsigned(DEV_IP(15 downto 0));
    
    ---------------------------------------------------------------------------------------
    crc_inst: crc
    port map(    
        Clk         => CLK,        
        Reset       => fcs_rst,        
        Data_in     => din,       
        Enable      => fcs_en,    
        Crc         => fcs_crc,
        CrcNext     => fcs_crcnext
    );
    
    ---------------------------------------------------------------------------------------
    --CREATE UDP PACKET
    send_udp : process(CLK)
    begin
        if rising_edge(CLK) then

            ---------------------------------------------------------------------------------------
            --sync adc fd clock
            sync1 <= PKT2_25701_DONE;
            sync2 <= sync1;
            
            if (RST = '1') then
                --pkt_cnt <= x"00_00_00_00";
                IPv4_ID <= x"00_00";
                State   <= IDLE;
            end if;
            
            ---------------------------------------------------------------------------------------
            --FSM
            case State is
            
                when IDLE =>
                    if (sync1 = '1' and sync2 = '0') then
                        DST_MAC <= PKT2_25701_DST_MAC;
                        DST_IP  <= PKT2_25701_DST_IP; 
                        DEV_MAC <= PKT2_25701_SRC_MAC;
                        DEV_IP  <= PKT2_25701_SRC_IP; 
                        UDP_SP  <= PKT2_25701_UDP_SP;
                        UDP_DP  <= PKT2_25701_UDP_DP;
                        UDP_CRC <= PKT2_25701_UDP_CRC;
                        State   <= WRITE_HDR;
                    end if;
                
                when WRITE_HDR =>
                    case sel is
                        --Ethenet preambule
                        when 0 => din <= x"55"; IPv4_ID <=IPv4_ID + 1; wait_cnt <=0; pkt_d <= x"00"; tx_en <= '1'; FIFO_PKT2_25701_WR_EN <= '1'; sel <=sel+1;
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
                        when 47 => din <=UDP_LEN(7 downto 0);       sel <=sel+1;  PKT2_25701_UDP_RD_EN <= '1';  
                        
                        when 48 => --CHECKSUM
                            --if(udp_crc_t2(16) = '1') then  --overflow carry 
                                --din <= not std_logic_vector(udp_crc_t2(7 downto 0)) - '1';
                            --else
                                din <= UDP_CRC(15 downto 8); 
                            --end if;
                            sel <= sel + 1; 
 
                        when 49 => --CHECKSUM 
                            --din     <= not std_logic_vector(udp_crc_t2(15 downto 8)); 
                            din     <= UDP_CRC(7 downto 0); 
                            sel     <= 0;
                            State   <= WRITE_DATA; 
                             
                        when others => null;
                    end case;  
            
                when WRITE_DATA =>  
                    case sel is
--                        when 0 => 
--                            din <= pkt_cnt(7 downto 0);
--                            sel <= sel + 1;
                            
--                        when 1 => 
--                            din <= pkt_cnt(15 downto 8);
--                            sel <= sel + 1;
--                            PKT2_25701_UDP_RD_EN <= '1';  
                            
--                        when 2 => 
--                            din <= pkt_cnt(23 downto 16);
--                            sel <= sel + 1;
                                
--                        when 3 => 
--                            din <= pkt_cnt(31 downto 24);
--                            sel <= sel + 1;
                        
                        when 0 to 1418 =>
                            din <= PKT2_25701_UDP_RD_DOUT;
                            sel <= sel + 1;
                            
                        when 1419 => 
                            din <= PKT2_25701_UDP_RD_DOUT;
                            PKT2_25701_UDP_RD_EN <= '0';    
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
                        when 4 => din     <= x"00";  
                                  sel     <= 0; 
                                  tx_en   <= '0'; 
                                  --pkt_cnt <= pkt_cnt + 1; 
                                  State   <= END_TX;
                                  
                        when others => null; 
                    end case;
                
                when END_TX =>
                    FIFO_PKT2_25701_WR_EN <= '0';
                    State                 <= IDLE;
                        
                when others => null;
            end case;

        end if;
    end process send_udp;
    
    
end Behavioral;
