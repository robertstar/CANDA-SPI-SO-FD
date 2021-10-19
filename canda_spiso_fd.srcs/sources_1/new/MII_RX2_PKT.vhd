----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/12/2021 08:35:04 AM
-- Design Name: 
-- Module Name: MII_RX2_PKT - Behavioral
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

entity MII_RX2_PKT is
    Port ( 
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
            PKT_25701_FIFO_WR_DATA  : out std_logic_vector (7 downto 0)     := (others => '0');	
            
            PKT_25701_SRC_MAC       : out STD_LOGIC_VECTOR (47 downto 0)    := (others => '0');
            PKT_25701_SRC_IP        : out STD_LOGIC_VECTOR (31 downto 0)    := (others => '0'); 
            
            PKT_25701_DST_MAC       : out STD_LOGIC_VECTOR (47 downto 0)    := (others => '0');
            PKT_25701_DST_IP        : out STD_LOGIC_VECTOR (31 downto 0)    := (others => '0');
            PKT_25701_UDP_SP        : out STD_LOGIC_VECTOR (15 downto 0)    := (others => '0');
            PKT_25701_UDP_DP        : out STD_LOGIC_VECTOR (15 downto 0)    := (others => '0');
            PKT_25701_UDP_CRC       : out STD_LOGIC_VECTOR (15 downto 0)    := (others => '0');
            
            PKT_25701_CLR           : in STD_LOGIC;
            PKT_25701_DONE          : out STD_LOGIC :='0'
            
           );
end MII_RX2_PKT;

architecture Behavioral of MII_RX2_PKT is

-- for rx
    type rx_event_t                 is (NO_EVENT, DATA);
    type rx_state_t                 is (IDLE, ETH_HDR, IP_HDR, UDP_HDR, ARP_HDR, PROCESS_ARP, PKT25701_DATA, ICMP_DATA, WAIT_END, ERR);
    type count_mode_t               is (RST, INCR, HOLD);
    type settable_count_mode_type   is (RST, INCR, SET_VAL, HOLD);
    
    --for proto
    signal rx_dv1           : std_logic := '0';
    signal rx_dv2           : std_logic := '0';
    signal rx_dv3           : std_logic := '0';
    
    signal rx_err1          : std_logic := '0';
    signal rx_err2          : std_logic := '0';
    
    --signal rx_tlast2        : std_logic := '0'; 
    
    signal rx_tlast1        : std_logic := '0';
    signal rx_tlast2        : std_logic := '0';
    
    signal rx_data1         : std_logic_vector(7 downto 0)  := x"00";
    signal rx_data2         : std_logic_vector(7 downto 0)  := x"00";
    
    signal rx_event         : rx_event_t := NO_EVENT;
    signal rx_state         : rx_state_t := IDLE;
    --signal rx_count         : unsigned (15 downto 0) := to_unsigned(0, 16);
    signal rx_count_mode    : settable_count_mode_type := RST;
    signal next_rx_state    : rx_state_t := IDLE;
    signal set_rx_state     : std_logic := '0';
    signal dataval          : std_logic_vector (7 downto 0) := (others => '0');
    signal rx_count_val     : unsigned (15 downto 0) := to_unsigned(0, 16);
    
    signal set_eth_type1    : std_logic := '0'; 
    signal set_eth_type2    : std_logic := '0';
    signal eth_type         : std_logic_vector(15 downto 0)  := x"00_00";
    signal eth_type_rx      : std_logic_vector(15 downto 0)  := x"00_00";
    
    
    signal set_arp_src_mac0 : std_logic := '0'; 
    signal set_arp_src_mac1 : std_logic := '0';
    signal set_arp_src_mac2 : std_logic := '0';
    signal set_arp_src_mac3 : std_logic := '0';
    signal set_arp_src_mac4 : std_logic := '0';
    signal set_arp_src_mac5 : std_logic := '0';

    signal set_arp_src_ip0  : std_logic := '0';
    signal set_arp_src_ip1  : std_logic := '0';
    signal set_arp_src_ip2  : std_logic := '0';
    signal set_arp_src_ip3  : std_logic := '0';
    
    signal set_arp_dst_ip0  : std_logic := '0';
    signal set_arp_dst_ip1  : std_logic := '0';
    signal set_arp_dst_ip2  : std_logic := '0';
    signal set_arp_dst_ip3  : std_logic := '0';
    
    signal set_IPv4_tlen1   : std_logic := '0';
    signal set_IPv4_tlen2   : std_logic := '0';
    
    signal set_IPv4_type    : std_logic := '0';
    
    signal set_IPv4_IP_src4 : std_logic := '0';
    signal set_IPv4_IP_src3 : std_logic := '0';
    signal set_IPv4_IP_src2 : std_logic := '0';
    signal set_IPv4_IP_src1 : std_logic := '0';
    
    signal set_IPv4_IP_dst4 : std_logic := '0';
    signal set_IPv4_IP_dst3 : std_logic := '0';
    signal set_IPv4_IP_dst2 : std_logic := '0';
    signal set_IPv4_IP_dst1 : std_logic := '0';
    signal set_UDP_tlen     : std_logic := '0';
    
    signal set_UDP_SP2      : std_logic := '0';
    signal set_UDP_SP1      : std_logic := '0';
    
    signal set_UDP_DP2      : std_logic := '0';
    signal set_UDP_DP1      : std_logic := '0';
    
    signal set_UDP_dlen2    : std_logic := '0';
    signal set_UDP_dlen1    : std_logic := '0';
    
    signal set_apo_comm_1   : std_logic := '0';
    signal set_apo_comm_2   : std_logic := '0';
    signal set_apo_comm_3   : std_logic := '0';
    signal set_apo_comm_4   : std_logic := '0';
    signal set_apo_comm_5   : std_logic := '0';
    signal set_apo_comm_6   : std_logic := '0';
    signal set_apo_comm_7   : std_logic := '0';
    signal set_apo_comm_8   : std_logic := '0';
    signal set_apo_comm_9   : std_logic := '0';
    signal set_apo_comm_10  : std_logic := '0';
    signal set_apo_comm_11  : std_logic := '0';
    signal set_apo_comm_12  : std_logic := '0';
    signal set_apo_comm_13  : std_logic := '0';
    signal set_apo_comm_14  : std_logic := '0';
    signal set_apo_comm_15  : std_logic := '0';
    signal set_apo_comm_16  : std_logic := '0';
    signal set_apo_comm_17  : std_logic := '0';
    signal set_apo_comm_18  : std_logic := '0';
    
    
    signal arp_src_mac      : std_logic_vector(47 downto 0)  := x"00_00_00_00_00_00";
    signal arp_src_ip       : std_logic_vector(31 downto 0)  := x"00_00_00_00";
    signal arp_dst_ip       : std_logic_vector(31 downto 0)  := x"00_00_00_00";
    
    type arp_oper_t is (NOP, REQUEST, REPLY);
    
    signal set_arp_oper     : std_logic  := '0';
    signal arp_oper_set_val : arp_oper_t := NOP;
    signal arp_operation    : arp_oper_t := NOP;
    
    
    --signal cnt_st           : unsigned (3 downto 0) := to_unsigned(0, 4);
    signal cnt_st           : std_logic_vector(7 downto 0)  := x"00";
    
    
    signal IPv4_tlen        : std_logic_vector(15 downto 0) := x"00_00";
    signal IPv4_type        : std_logic_vector(7 downto 0)  := x"00";
    signal IPv4_IP_src      : std_logic_vector(31 downto 0) := x"00_00_00_00";
    signal IPv4_IP_dst      : std_logic_vector(31 downto 0) := x"00_00_00_00";
    signal UDP_tlen         : std_logic_vector(15 downto 0) := x"00_00";
    signal UDP_SP           : std_logic_vector(15 downto 0) := x"00_00";
    signal UDP_DP           : std_logic_vector(15 downto 0) := x"00_00";
    signal UDP_dlen         : std_logic_vector(15 downto 0) := x"00_00";
    signal UDP_CRC          : std_logic_vector(15 downto 0) := x"00_00";
    
    signal ram_varu_wr_addr_t : std_logic_vector(9 downto 0) := B"0000000000";
    
    signal rx_udp_dlen      : unsigned (15 downto 0) := to_unsigned(0, 16);
    
    signal set_arp          : std_logic := '0';
    signal clr_arp          : std_logic := '0';
    signal set_arp_t        : std_logic := '0';
    signal clr_arp_t        : std_logic := '0';
    
    signal set_apo          : std_logic := '0';
    signal clr_apo          : std_logic := '0';
    signal set_apo_t        : std_logic := '0';
    signal clr_apo_t        : std_logic := '0';
    
    signal set_icmp         : std_logic := '0';
    signal clr_icmp         : std_logic := '0';
    signal set_icmp_t       : std_logic := '0';
    signal clr_icmp_t       : std_logic := '0';
    
    
    signal set_pkt25701     : std_logic := '0';
    signal clr_pkt25701     : std_logic := '0';
    signal set_pkt25701_t   : std_logic := '0';
    signal clr_pkt25701_t   : std_logic := '0';
    
    signal index            : integer range 0 to 512 := 0;
    
    signal cnt_st2          : std_logic_vector (3 downto 0)  := (others => '0');
    signal rx_count2        : std_logic_vector (15 downto 0) := (others => '0');
    
    signal rx_clk2          : std_logic := '0';
    signal rx_count         : unsigned (15 downto 0) := to_unsigned(0, 16);
    
    signal PKT_DST_MAC      : STD_LOGIC_VECTOR (47 downto 0)  := (others => '0');
    signal PKT_SRC_MAC      : STD_LOGIC_VECTOR (47 downto 0)  := (others => '0');
    signal PKT_TYPE         : STD_LOGIC_VECTOR (15 downto 0)  := x"00_00";
    
    --signal rx_count_d
    
    ---------------------------------------------------------------------------------------
    component ila_1 
    port (
        clk                     : in  std_logic;
        probe0                  : in  std_logic_vector (0 DOWNTO 0);
        probe1                  : in  std_logic_vector (0 DOWNTO 0);
        probe2                  : in  std_logic_vector (7 DOWNTO 0);  
        probe3                  : in  std_logic_vector (0 DOWNTO 0);
        
        probe4                  : in  std_logic_vector (7  DOWNTO 0);
        probe5                  : in  std_logic_vector (15 DOWNTO 0);
        
        probe6                  : in  std_logic_vector (0 DOWNTO 0);
        probe7                  : in  std_logic_vector (0 DOWNTO 0);
        probe8                  : in  std_logic_vector (0 DOWNTO 0);
        probe9                  : in  std_logic_vector (0 DOWNTO 0);
        probe10                 : in  std_logic_vector (0 DOWNTO 0)
        
--        probe11                 : in  std_logic_vector (31 DOWNTO 0);
        
--        probe12                 : in  std_logic_vector (0  DOWNTO 0);
--        probe13                 : in  std_logic_vector (0  DOWNTO 0);
        
--        probe14                 : in  std_logic_vector (0  DOWNTO 0);
--        probe15                 : in  std_logic_vector (0  DOWNTO 0);
--        probe16                 : in  std_logic_vector (47  DOWNTO 0);
--        probe17                 : in  std_logic_vector (47  DOWNTO 0);
--        probe18                 : in  std_logic_vector (63  DOWNTO 0)
    );
    end component;

begin


    ------------------------------------------------------------------------------------------------------------------------
    --DEBUG
--    ila2_inst: ila_1
--    port map(    
--        clk             => clk, 
          
--        probe0(0)       => rx_clk, 
--        probe1(0)       => rx_dv2,
--        probe2          => rx_data2,
--        probe3(0)       => rx_tlast2,
        
--        probe4          => cnt_st,
--        probe5          => rx_count2,
        
--        probe6(0)       => set_arp_t,
--        probe7(0)       => clr_arp_t,
        
--        probe8(0)       => clr_arp,
--        probe9(0)       => clr_arp,
--        probe10(0)      => set_rx_state
--    );


    PKT_25701_FIFO_WR_CLK <= rx_clk;

    ---------------------------------------------------------------------------------------
    rx_proto : process (rx_clk)
    begin
      if rising_edge(rx_clk) then
        rx_dv1 	 <=rx_dv;
        rx_dv2 	 <=rx_dv1;
        rx_dv3   <=rx_dv2;
    
        rx_err1  <=rx_err;
        rx_err2  <=rx_err1;
    
        rx_data1 <=rx_data;
        rx_data2 <=rx_data1;
        
        --rx_tlast1 <=rx_tlast;
        --rx_tlast2 <=rx_tlast1;
      end if;
    end process rx_proto;
    
    ---------------------------------------------------------------------------------------
    rx_combinatorial : process (
        -- input signals
        rx_dv2, rx_err2, rx_data2, rx_tlast2, 
        -- state variables
        rx_state, rx_count,
        -- control signals
        next_rx_state, set_rx_state, rx_event, rx_count_mode, dataval,
        set_eth_type1, set_eth_type2,
        set_arp_src_mac0, set_arp_src_mac1, set_arp_src_mac2, set_arp_src_mac3, set_arp_src_mac4, set_arp_src_mac5,
        set_arp_src_ip0,  set_arp_src_ip1,  set_arp_src_ip2,  set_arp_src_ip3, 
        set_arp_dst_ip0,  set_arp_dst_ip1,  set_arp_dst_ip2,  set_arp_dst_ip3,
        eth_type, eth_type_rx,
        arp_operation,
        set_IPv4_tlen1, set_IPv4_tlen2, set_IPv4_type, set_IPv4_IP_src4, set_IPv4_IP_src3, set_IPv4_IP_src2, set_IPv4_IP_src1,
        set_IPv4_IP_dst4, set_IPv4_IP_dst3, set_IPv4_IP_dst2, set_IPv4_IP_dst1, set_UDP_tlen, set_UDP_SP1, set_UDP_SP2, set_UDP_DP1, set_UDP_DP2,
        set_UDP_dlen1, set_UDP_dlen2,
        set_apo_comm_1, set_apo_comm_2, set_apo_comm_3, set_apo_comm_4, set_apo_comm_5, set_apo_comm_6, set_apo_comm_7, set_apo_comm_8, set_apo_comm_9,
        set_apo_comm_10, set_apo_comm_11, set_apo_comm_12, set_apo_comm_13, set_apo_comm_14, set_apo_comm_15, set_apo_comm_16, set_apo_comm_17, set_apo_comm_18 ,
        
        --PKT_ARP_CLR,
        --PKT_APO_CLR,
        
        set_arp, clr_arp,
        set_apo, clr_apo,
        set_icmp, clr_icmp, 
        --PKT_ICMP_CLR,
        IPv4_IP_dst
    ) 
    begin
        
        -- Set signal defaults
        next_rx_state    <= IDLE;
        set_rx_state     <= '0';
        rx_event         <= NO_EVENT;
        rx_count_mode    <= HOLD;
        dataval          <= (others => '0');
        
        set_eth_type1    <= '0';
        set_eth_type2    <= '0';
        
        set_arp_src_mac0 <= '0';
        set_arp_src_mac1 <= '0';
        set_arp_src_mac2 <= '0';
        set_arp_src_mac3 <= '0';
        set_arp_src_mac4 <= '0';
        set_arp_src_mac5 <= '0';
        
        set_arp_src_ip0  <= '0';
        set_arp_src_ip1  <= '0';
        set_arp_src_ip2  <= '0';
        set_arp_src_ip3  <= '0';
        
        set_arp_dst_ip0  <= '0';
        set_arp_dst_ip1  <= '0';
        set_arp_dst_ip2  <= '0';
        set_arp_dst_ip3  <= '0';
        
        set_IPv4_tlen1   <= '0';
        set_IPv4_tlen2   <= '0';
        
        set_IPv4_type    <= '0';
        set_IPv4_IP_src4 <= '0';
        set_IPv4_IP_src3 <= '0';
        set_IPv4_IP_src2 <= '0';
        set_IPv4_IP_src1 <= '0';
        
        set_IPv4_IP_dst4 <= '0';
        set_IPv4_IP_dst3 <= '0';
        set_IPv4_IP_dst2 <= '0';
        set_IPv4_IP_dst1 <= '0';
        set_UDP_tlen     <= '0';
        
        set_UDP_SP1      <= '0';
        set_UDP_SP2      <= '0';
        set_UDP_DP1      <= '0'; 
        set_UDP_DP2      <= '0';
        set_UDP_dlen1    <= '0';
        set_UDP_dlen2    <= '0';
        
        set_apo_comm_1   <= '0';
        set_apo_comm_2   <= '0';
        set_apo_comm_3   <= '0';
        set_apo_comm_4   <= '0'; 
        set_apo_comm_5   <= '0'; 
        set_apo_comm_6   <= '0'; 
        set_apo_comm_7   <= '0'; 
        set_apo_comm_8   <= '0'; 
        set_apo_comm_9   <= '0';
        set_apo_comm_10  <= '0';
        set_apo_comm_11  <= '0'; 
        set_apo_comm_12  <= '0';
        set_apo_comm_13  <= '0'; 
        set_apo_comm_14  <= '0'; 
        set_apo_comm_15  <= '0'; 
        set_apo_comm_16  <= '0'; 
        set_apo_comm_17  <= '0'; 
        set_apo_comm_18  <= '0'; 
        
        --arp_request_ok   <= '0';

        if rx_dv2 = '1' then
          rx_event <= DATA;
          dataval  <= rx_data2;
        end if;
        
        
        if (set_pkt25701 = '1')     then set_pkt25701_t <= '0'; end if; 
        if (clr_pkt25701 = '1')     then clr_pkt25701_t <= '0'; end if;
        if (PKT_25701_CLR = '1')    then clr_pkt25701_t <= '1'; end if;  
        
--        if (set_26010 = '1')        then set_26010_t <= '0'; end if; 
--        if (clr_26010 = '1')        then clr_26010_t <= '0'; end if;
--        if (PKT_26010_CLR = '1')    then clr_26010_t <= '1'; end if;  
        
--        if (set_26100 = '1')        then set_26100_t <= '0'; end if; 
--        if (clr_26100 = '1')        then clr_26100_t <= '0'; end if;
--        if (PKT_26100_CLR = '1')    then clr_26100_t <= '1'; end if;  
        
        if (set_arp      = '1')     then set_arp_t  <= '0'; end if;
        if (clr_arp      = '1')     then clr_arp_t  <= '0'; end if; 
        if (PKT_ARP_CLR  = '1')     then clr_arp_t  <= '1'; end if; 
        
        --if (set_icmp     = '1')     then set_icmp_t <= '0'; end if; 
        --if (clr_icmp     = '1')     then clr_icmp_t <= '0'; end if;
        --if (PKT_ICMP_CLR = '1')     then clr_icmp_t <= '1'; end if; 
        
        --if (set_apo     = '1')      then set_apo_t  <= '0'; end if;
        --if (clr_apo     = '1')      then clr_apo_t  <= '0'; end if; 
        --if (PKT_APO_CLR = '1')      then clr_apo_t  <= '1'; end if; 
        
        
        -- RX FSM
        case rx_state is

        ----------------------------------------------------------------------
        when IDLE => 
            cnt_st        <= X"00";
            rx_count_mode <= RST;
            case rx_event is
               when NO_EVENT =>  -- (nothing to do)
               when DATA =>
                  next_rx_state <= ETH_HDR;
                  set_rx_state  <= '1';
                  rx_count_mode <= INCR;
            end case;
           
        ----------------------------------------------------------------------    
        when ETH_HDR =>
            cnt_st <= X"01";
            case rx_event is
                when NO_EVENT =>                    
                when DATA =>
                    if (to_integer(rx_count) = 21) then
                    --if (to_integer(rx_count) = 13) then                 
                      rx_count_mode <= RST;
                      set_rx_state  <= '1';
                    
                      eth_type_rx <= eth_type(15 downto 8) & dataval;--rx_data2;
                      if    eth_type_rx = x"08_00" then
                         next_rx_state <= IP_HDR;   
                      elsif eth_type_rx = x"08_06" then
                         next_rx_state <= ARP_HDR;
                      end if;
                    else
                      rx_count_mode <= INCR;
                    end if;
                   
                    case to_integer(rx_count) is
                     when 20 =>
                     --when 12 =>
                        if (dataval /= x"08") then       -- ignore pkts that are not type=IP
                           next_rx_state <= WAIT_END;
                           set_rx_state  <= '1';
                        end if;
                        set_eth_type1 <= '1';
                    
                     when 21 =>
                     --when 13 =>
                        if (dataval /= x"00" and dataval /= x"06") then       -- ignore pkts that are not type=IP and not type=ARP
                           next_rx_state <= WAIT_END;
                           set_rx_state  <= '1';
                        end if;
                        set_eth_type2 <= '1';
                    
                     when others =>                     -- ignore other bytes in eth header
                    end case;
            end case;

        ---------------------------------------------------------------------- 
        when IP_HDR  =>
            cnt_st <= X"02";
            case rx_event is
                when NO_EVENT =>                          
                when DATA =>
                   if (to_integer(rx_count) = 19) then              
                      set_IPv4_IP_dst1 <= '1';
                      rx_count_mode    <= RST;
                      set_rx_state     <= '1'; 
                      case IPv4_type is
                        when X"01"  => next_rx_state <= WAIT_END; --ICMP_DATA;
                        when X"11"  => next_rx_state <= UDP_HDR; set_UDP_tlen <= '1';
                        when others => next_rx_state <= WAIT_END;
                      end case;
                   else
                      rx_count_mode <= INCR;
                   end if;
    
            end case;
        
        ----------------------------------------------------------------------       
        when UDP_HDR =>
            cnt_st <= X"03";
            case rx_event is
                when NO_EVENT =>                          
                when DATA =>
                   if (to_integer(rx_count) = 7) then 
                        --UDP_CRC(7 downto 0) <= dataval;
                        rx_count_mode <= RST;
                        set_rx_state  <= '1';
                        if( (IPv4_IP_dst = x"C0_A8_05_01" and UDP_DP = X"64_65" and UDP_dlen - X"00_08" = X"05_8C") or
                            (IPv4_IP_dst = x"C0_A8_05_01" and UDP_DP = X"64_66" and UDP_dlen - X"00_08" = X"05_8C") 
                            ) then -- 192.168.5.1 and 25701 and 1420 bytes data  or 192.168.5.1 and 25702 and 1420 bytes data
                            rx_udp_dlen <= unsigned(UDP_dlen - X"00_08");
                            next_rx_state <= PKT25701_DATA;    
                        else
                            next_rx_state <= WAIT_END;  
                        end if;   
--                   elsif (to_integer(rx_count) = 6) then 
--                        UDP_CRC(15 downto 8)  <= dataval;
--                        rx_count_mode <= INCR;
                   else
                        rx_count_mode <= INCR;
                   end if;
 
           end case;   
        
        ----------------------------------------------------------------------    
        when PKT25701_DATA =>
            cnt_st <= X"04";
            case rx_event is
                    when NO_EVENT =>                          
                    when DATA =>  
                        if ( to_integer(rx_count) = to_integer(rx_udp_dlen) ) then 
                            rx_count_mode <= RST;
                            set_rx_state  <= '1'; 
                            next_rx_state <= WAIT_END; 
                            set_pkt25701_t <= '1';
                        else
                            rx_count_mode <= INCR;
                        end if;      
            end case;
               
        ---------------------------------------------------------------------- 
        when ARP_HDR =>
            cnt_st <= X"05";
            case rx_event is
                when NO_EVENT =>                       
                when DATA =>
                    -- check for end of frame. Also, detect and discard if not our frame
                    if to_integer(rx_count) = 28 then
                       rx_count_mode <= RST;
                       set_rx_state  <= '1'; 
                       set_arp_t     <= '1';
                       next_rx_state <= WAIT_END; 							
                    else
                        rx_count_mode <= INCR;	
                    end if;		
            end case;
          
        ---------------------------------------------------------------------- 
        when WAIT_END =>
            cnt_st <= X"06";
            case rx_event is
                when NO_EVENT => -- (nothing to do)
                when DATA =>
                    if rx_tlast2 = '1' then
                        next_rx_state <= IDLE;
                        rx_count_mode <= RST;
                        set_rx_state  <= '1';
                    end if;
                when others => NULL;
            end case;
        
        ----------------------------------------------------------------------      
        when others => NULL;    
    end case;  
    end process rx_combinatorial;
    
    
    rx_tlast2 <= '1' when (rx_dv1 = '0' and rx_dv2 = '1') else '0';
    rx_count2 <= std_logic_vector(rx_count(15 downto 0)); 
    
    
    ---------------------------------------------------------------------------------------
    rx_sequential : process (rx_clk)
    begin
        if falling_edge(rx_clk) then
        --if rising_edge(rx_clk) then    
            --------------------------------------------------------------------------------------------------------------
            -- Next rx_state processing
            if set_rx_state = '1' then
               rx_state <= next_rx_state;
            else
               rx_state <= rx_state;
            end if;
            
            --------------------------------------------------------------------------------------------------------------
            case rx_count_mode is
               when RST     => rx_count <= to_unsigned(0, 16);
               when INCR    => rx_count <= rx_count + 1;
               when SET_VAL => rx_count <= rx_count_val;
               when HOLD    => rx_count <= rx_count;
               when others  => NULL;
            end case;
            
            --------------------------------------------------------------------------------------------------------------
            if(set_pkt25701_t = '1') then set_pkt25701 <= '1'; PKT_25701_DONE <= '1'; else set_pkt25701 <= '0'; end if;
            if(clr_pkt25701_t = '1') then clr_pkt25701 <= '1'; PKT_25701_DONE <= '0'; else clr_pkt25701 <= '0'; end if;

            --------------------------------------------------------------------------------------------------------------
            if (set_eth_type1    = '1')  then eth_type(15 downto 8)       <= dataval; end if;
            if (set_eth_type2    = '1')  then eth_type(7  downto 0)       <= dataval; end if;
            
            --------------------------------------------------------------------------------------------------------------
            if(set_arp_t   = '1') then 
                set_arp         <= '1'; 
                PKT_ARP_DONE    <= '1'; 
                PKT_ARP_DST_MAC <= PKT_DST_MAC;
                PKT_ARP_SRC_MAC <= PKT_SRC_MAC;
            else 
                set_arp   <= '0'; 
            end if;
            
            if(clr_arp_t   = '1') then clr_arp   <= '1'; PKT_ARP_DONE   <= '0'; else clr_arp   <= '0'; end if;
            if (set_UDP_tlen     = '1')  then UDP_tlen <= IPv4_tlen - X"00_14";     end if;
            

            --------------------------------------------------------------------------------------------------------------
            --ETH data
            if( (rx_state = ETH_HDR) and (rx_event = DATA) ) then
                case to_integer(rx_count) is   
                    
                    --DST MAC
                    when 8  => PKT_DST_MAC(47 downto 40) <= dataval;
                    when 9  => PKT_DST_MAC(39 downto 32) <= dataval;
                    when 10 => PKT_DST_MAC(31 downto 24) <= dataval;
                    when 11 => PKT_DST_MAC(23 downto 16) <= dataval;
                    when 12 => PKT_DST_MAC(15 downto 8)  <= dataval;
                    when 13 => PKT_DST_MAC(7  downto 0)  <= dataval;
                    
                    --SRC MAC
                    when 14 => PKT_SRC_MAC(47 downto 40) <= dataval;
                    when 15 => PKT_SRC_MAC(39 downto 32) <= dataval;
                    when 16 => PKT_SRC_MAC(31 downto 24) <= dataval;
                    when 17 => PKT_SRC_MAC(23 downto 16) <= dataval;
                    when 18 => PKT_SRC_MAC(15 downto 8)  <= dataval;
                    when 19 => PKT_SRC_MAC(7  downto 0)  <= dataval;
                    
                    --TYPE
                    when 20 => PKT_TYPE(15 downto 8)     <= dataval;
                    when 21 => PKT_TYPE(7  downto 0)     <= dataval;

                    when others => null;
                end case;
            end if;
            
            --------------------------------------------------------------------------------------------------------------
            --IP_HDR
            if( (rx_state = IP_HDR) and (rx_event = DATA) ) then
                case to_integer(rx_count) is  
                    when 2  => IPv4_tlen(15 downto 8)     <= dataval;
                    when 3  => IPv4_tlen(7 downto 0)      <= dataval;
                    when 9  => IPv4_type                  <= dataval;
                    when 12 => IPv4_IP_src(31 downto 24)  <= dataval;
                    when 13 => IPv4_IP_src(23 downto 16)  <= dataval;
                    when 14 => IPv4_IP_src(15 downto 8)   <= dataval;
                    when 15 => IPv4_IP_src(7 downto 0)    <= dataval;
                    when 16 => IPv4_IP_dst(31 downto 24)  <= dataval;
                    when 17 => IPv4_IP_dst(23 downto 16)  <= dataval;
                    when 18 => IPv4_IP_dst(15 downto 8)   <= dataval;
                    when 19 => IPv4_IP_dst(7 downto 0)    <= dataval;
                    when others => null;
                end case;
            end if;
            
            --------------------------------------------------------------------------------------------------------------
            --ARP_HDR
            if( (rx_state = ARP_HDR) and (rx_event = DATA) ) then
                case to_integer(rx_count) is  
                    when 0  => PKT_ARP_HDR(7   downto   0) <= dataval;
                    when 1  => PKT_ARP_HDR(15  downto   8) <= dataval;
                    when 2  => PKT_ARP_HDR(23  downto  16) <= dataval;
                    when 3  => PKT_ARP_HDR(31  downto  24) <= dataval;
                    when 4  => PKT_ARP_HDR(39  downto  32) <= dataval;
                    when 5  => PKT_ARP_HDR(47  downto  40) <= dataval;
                    when 6  => PKT_ARP_HDR(55  downto  48) <= dataval;
                    when 7  => PKT_ARP_HDR(63  downto  56) <= dataval;
                    when 8  => PKT_ARP_HDR(71  downto  64) <= dataval;
                    when 9  => PKT_ARP_HDR(79  downto  72) <= dataval;
                    when 10 => PKT_ARP_HDR(87  downto  80) <= dataval;
                    when 11 => PKT_ARP_HDR(95  downto  88) <= dataval;
                    when 12 => PKT_ARP_HDR(103 downto  96) <= dataval;
                    when 13 => PKT_ARP_HDR(111 downto 104) <= dataval;
                    when 14 => PKT_ARP_HDR(119 downto 112) <= dataval;
                    when 15 => PKT_ARP_HDR(127 downto 120) <= dataval;
                    when 16 => PKT_ARP_HDR(135 downto 128) <= dataval;
                    when 17 => PKT_ARP_HDR(143 downto 136) <= dataval;
                    when 18 => PKT_ARP_HDR(151 downto 144) <= dataval;
                    when 19 => PKT_ARP_HDR(159 downto 152) <= dataval;
                    when 20 => PKT_ARP_HDR(167 downto 160) <= dataval;
                    when 21 => PKT_ARP_HDR(175 downto 168) <= dataval;
                    when 22 => PKT_ARP_HDR(183 downto 176) <= dataval;
                    when 23 => PKT_ARP_HDR(191 downto 184) <= dataval;
                    when 24 => PKT_ARP_HDR(199 downto 192) <= dataval;
                    when 25 => PKT_ARP_HDR(207 downto 200) <= dataval;
                    when 26 => PKT_ARP_HDR(215 downto 208) <= dataval;
                    when 27 => PKT_ARP_HDR(223 downto 216) <= dataval;
                    when others => null;
                end case;
            end if;   
            
            --------------------------------------------------------------------------------------------------------------
            --UDP_HDR
            if( (rx_state = UDP_HDR) and (rx_event = DATA) ) then
                case to_integer(rx_count) is  
                    when 0 => UDP_SP(15 downto 8)   <= dataval;
                    when 1 => UDP_SP(7 downto 0)    <= dataval;
                    when 2 => UDP_DP(15 downto 8)   <= dataval;
                    when 3 => UDP_DP(7 downto 0)    <= dataval;
                    when 4 => UDP_dlen(15 downto 8) <= dataval;
                    when 5 => UDP_dlen(7 downto 0)  <= dataval;
                    when 6 => UDP_CRC(15 downto 8)  <= dataval;
                    when 7 => UDP_CRC(7 downto 0)   <= dataval;
                    when others => null;
                end case;
            end if;

            --------------------------------------------------------------------------------------------------------------
            --PKT25701_DATA
            if( (rx_state = PKT25701_DATA) and (rx_event = DATA) ) then
                if( to_integer(rx_count) = 0 ) then
                    PKT_25701_FIFO_WR_EN    <= '1';
                    PKT_25701_FIFO_WR_DATA  <= dataval;
                    
                    PKT_25701_SRC_MAC       <= PKT_SRC_MAC;
                    PKT_25701_SRC_IP        <= IPv4_IP_src; 
                    
                    PKT_25701_DST_MAC       <= PKT_DST_MAC;
                    PKT_25701_DST_IP        <= IPv4_IP_dst;
                    
                    PKT_25701_UDP_SP        <= UDP_SP;
                    PKT_25701_UDP_DP        <= UDP_DP;
                    PKT_25701_UDP_CRC       <= UDP_CRC;
                      
                elsif ( to_integer(rx_count) < to_integer(rx_udp_dlen) ) then
                    PKT_25701_FIFO_WR_DATA <= dataval; 
                else
                    PKT_25701_FIFO_WR_EN   <= '0';
                    PKT_25701_FIFO_WR_DATA <= X"00"; 
                end if;  
            end if;

        end if;      
    end process rx_sequential;
    


end Behavioral;





                   
--                   case to_integer(rx_count) is
--                      when 2  => set_IPv4_tlen2     <= '1';
--                      when 3  => set_IPv4_tlen1     <= '1';
--                      when 9  => set_IPv4_type      <= '1';
--                      when 12 => set_IPv4_IP_src4  <= '1';
--                      when 13 => set_IPv4_IP_src3  <= '1';
--                      when 14 => set_IPv4_IP_src2  <= '1';
--                      when 15 => set_IPv4_IP_src1  <= '1';
--                      when 16 => set_IPv4_IP_dst4  <= '1';
--                      when 17 => set_IPv4_IP_dst3  <= '1';
--                      when 18 => set_IPv4_IP_dst2  <= '1';
--                      when others => null;
--                   end case; 
                   
--                   case to_integer(rx_count) is
--                       when 6 => UDP_CRC(15 downto 8)  <= dataval;
--                       when 7 => UDP_CRC(7 downto 0)   <= dataval;
--                       when others => null;
--                   end case;

--                   case to_integer(rx_count) is
--                      when 0 => set_UDP_SP2   <= '1';
--                      when 1 => set_UDP_SP1   <= '1';
--                      when 2 => set_UDP_DP2   <= '1';
--                      when 3 => set_UDP_DP1   <= '1';
--                      when 4 => set_UDP_dlen2 <= '1';
--                      when 5 => set_UDP_dlen1 <= '1';
--                      when others => null;
--                   end case;                         
           
        ---------------------------------------------------------------------- 
--        when PROCESS_ARP =>
--            cnt_st            <= to_unsigned(4, 4);
--            next_rx_state     <= WAIT_END;
--            set_rx_state      <= '1';
--            arp_oper_set_val  <= NOP;
--            set_arp_oper      <= '1';
         
--            case arp_operation is
--                when NOP =>                   -- (nothing to do)
--                when REQUEST =>
--                    if (DEV_IP = arp_dst_ip) then
--                        set_arp_t <= '1';
--                    end if;
--                when others => NULL;
--            end case;
          
                    
                    
--                    elsif not_our_arp(dataval, rx_count, DEV_IP) = '1' then
--                       next_rx_state <= WAIT_END;
--                       set_rx_state  <= '1';
--                    elsif to_integer(rx_count) = 7 then
--                       -- capture ARP operation
--                       case dataval is
--                          when x"01" =>
--                             arp_oper_set_val <= REQUEST;
--                             set_arp_oper     <= '1';
--                          --when x"02" =>
--                             --arp_oper_set_val <= REPLY;
--                             --set_arp_oper <= '1';
--                          when others =>	-- ignore other values
--                       end case;
                       
--                    -- capture source mac addr
--                    elsif to_integer(rx_count) = 8  then set_arp_src_mac5 <= '1';
--                    elsif to_integer(rx_count) = 9  then set_arp_src_mac4 <= '1';
--                    elsif to_integer(rx_count) = 10 then set_arp_src_mac3 <= '1';
--                    elsif to_integer(rx_count) = 11 then set_arp_src_mac2 <= '1';
--                    elsif to_integer(rx_count) = 12 then set_arp_src_mac1 <= '1';
--                    elsif to_integer(rx_count) = 13 then set_arp_src_mac0 <= '1';
        
--                    -- capture source ip addr
--                    elsif to_integer(rx_count) = 14 then set_arp_src_ip3 <= '1';
--                    elsif to_integer(rx_count) = 15 then set_arp_src_ip2 <= '1';
--                    elsif to_integer(rx_count) = 16 then set_arp_src_ip1 <= '1';
--                    elsif to_integer(rx_count) = 17 then set_arp_src_ip0 <= '1';
--                    --18
--                    --19
--                    --20
--                    --21
--                    --22
--                    --23
--                    -- capture dst ip addr
--                    elsif to_integer(rx_count) = 24 then set_arp_dst_ip3 <= '1';
--                    elsif to_integer(rx_count) = 25 then set_arp_dst_ip2 <= '1';
--                    elsif to_integer(rx_count) = 26 then set_arp_dst_ip1 <= '1';
--                    elsif to_integer(rx_count) = 27 then set_arp_dst_ip0 <= '1';
                    
--                    end if;	
                    
                    --rx_count_mode <= INCR;	
        
        ----------------------------------------------------------------------
--        when ICMP_DATA =>
--            case rx_event is
--                when NO_EVENT =>                          
--                when DATA =>
--                    if (to_integer(rx_count) = 64) then 
--                        if (DEV_IP = IPv4_IP_dst) then
--                            set_icmp_t <= '1';
--                        end if;
--                        rx_count_mode <= RST;
--                        set_rx_state  <= '1'; 
--                        next_rx_state <= WAIT_END;   
--                    else
--                        rx_count_mode <= INCR;
--                    end if;
--        end case;
        
        
        ----------------------------------------------------------------------
--        when VARU_DATA =>
--            case rx_event is
--                when NO_EVENT =>                          
--                when DATA =>  
--                    if (to_integer(rx_count) = 1024) then 
--                        rx_count_mode <= RST;
--                        set_rx_state  <= '1'; 
--                        next_rx_state <= WAIT_END;   
--                    else
--                        rx_count_mode <= INCR;
--                    end if;
--            end case;
        
        
        ----------------------------------------------------------------------    
--        when DFS_DATA =>
--        case rx_event is
--                when NO_EVENT =>                          
--                when DATA =>  
--                    if ( to_integer(rx_count) = to_integer(rx_udp_dlen) ) then 
--                        rx_count_mode <= RST;
--                        set_rx_state  <= '1'; 
--                        next_rx_state <= WAIT_END; 
--                        if(UDP_DP = X"65_F4") then
--                            set_26100_t <= '1';
--                        elsif (UDP_DP = X"65_9A") then
--                            set_26010_t <= '1';
--                        end if;  
--                    else
--                        rx_count_mode <= INCR;
--                    end if;      
--        end case;
        
        ----------------------------------------------------------------------   
--        when APO_DATA =>      
--            cnt_st <= to_unsigned(7, 4);
--            case rx_event is
--                when NO_EVENT =>                          
--                when DATA =>  
--                    if (to_integer(rx_count) = 17) then 
--                        set_apo_comm_18 <= '1';
--                        set_apo_t       <= '1';
--                        rx_count_mode   <= RST;
--                        set_rx_state    <= '1'; 
--                        next_rx_state   <= WAIT_END;   
--                    else
--                        rx_count_mode <= INCR;
--                    end if;
                    
--                    case to_integer(rx_count) is
--                      when  0 => set_apo_comm_1  <= '1';
--                      when  1 => set_apo_comm_2  <= '1';
--                      when  2 => set_apo_comm_3  <= '1';
--                      when  3 => set_apo_comm_4  <= '1';
--                      when  4 => set_apo_comm_5  <= '1';
--                      when  5 => set_apo_comm_6  <= '1';
--                      when  6 => set_apo_comm_7  <= '1';
--                      when  7 => set_apo_comm_8  <= '1';
--                      when  8 => set_apo_comm_9  <= '1';
--                      when  9 => set_apo_comm_10 <= '1';
--                      when 10 => set_apo_comm_11 <= '1';
--                      when 11 => set_apo_comm_12 <= '1';
--                      when 12 => set_apo_comm_13 <= '1';
--                      when 13 => set_apo_comm_14 <= '1';
--                      when 14 => set_apo_comm_15 <= '1';
--                      when 15 => set_apo_comm_16 <= '1';
--                      when 16 => set_apo_comm_17 <= '1';
--                      when others => null;
--                   end case; 
--            end case;




            --------------------------------------------------------------------------------------------------------------
            --UDP header
--            if (set_UDP_SP2      = '1')  then UDP_SP(15 downto 8)         <= dataval; end if;
--            if (set_UDP_SP1      = '1')  then UDP_SP(7 downto 0)          <= dataval; end if;
--            if (set_UDP_DP2      = '1')  then UDP_DP(15 downto 8)         <= dataval; end if;
--            if (set_UDP_DP1      = '1')  then UDP_DP(7 downto 0)          <= dataval; end if;
--            if (set_UDP_dlen2    = '1')  then UDP_dlen(15 downto 8)       <= dataval; end if;
--            if (set_UDP_dlen1    = '1')  then UDP_dlen(7 downto 0)        <= dataval; end if;
            




    --Assign
    --PKT_SRC_IP           <= IPv4_IP_src;
    
    

 --------------------------------------------------------------------------------------------------------------
            -- source mac capture
--            if (set_arp_src_mac5 = '1')  then arp_src_mac(47 downto 40)   <= dataval; end if;
--            if (set_arp_src_mac4 = '1')  then arp_src_mac(39 downto 32)   <= dataval; end if;
--            if (set_arp_src_mac3 = '1')  then arp_src_mac(31 downto 24)   <= dataval; end if;
--            if (set_arp_src_mac2 = '1')  then arp_src_mac(23 downto 16)   <= dataval; end if;
--            if (set_arp_src_mac1 = '1')  then arp_src_mac(15 downto 8)    <= dataval; end if;
--            if (set_arp_src_mac0 = '1')  then arp_src_mac(7 downto 0)     <= dataval; end if;
            
            --------------------------------------------------------------------------------------------------------------
            -- arp source ip capture
--            if (set_arp_src_ip3  = '1')  then arp_src_ip(31 downto 24)    <= dataval; end if;
--            if (set_arp_src_ip2  = '1')  then arp_src_ip(23 downto 16)    <= dataval; end if;
--            if (set_arp_src_ip1  = '1')  then arp_src_ip(15 downto 8)     <= dataval; end if;
--            if (set_arp_src_ip0  = '1')  then arp_src_ip(7 downto 0)      <= dataval; end if;
            
            --------------------------------------------------------------------------------------------------------------
            -- arp dst ip capture
--            if (set_arp_dst_ip3  = '1')  then arp_dst_ip(31 downto 24)    <= dataval; end if;
--            if (set_arp_dst_ip2  = '1')  then arp_dst_ip(23 downto 16)    <= dataval; end if;
--            if (set_arp_dst_ip1  = '1')  then arp_dst_ip(15 downto 8)     <= dataval; end if;
--            if (set_arp_dst_ip0  = '1')  then arp_dst_ip(7 downto 0)      <= dataval; end if;
            
            --------------------------------------------------------------------------------------------------------------
            --IPv4 header
--            if (set_IPv4_tlen2   = '1')  then IPv4_tlen(15 downto 8)      <= dataval; end if;
--            if (set_IPv4_tlen1   = '1')  then IPv4_tlen(7 downto 0)       <= dataval; end if;
--            if (set_IPv4_type    = '1')  then IPv4_type                   <= dataval; end if;
--            if (set_IPv4_IP_src4 = '1')  then IPv4_IP_src(31 downto 24)   <= dataval; end if;
--            if (set_IPv4_IP_src3 = '1')  then IPv4_IP_src(23 downto 16)   <= dataval; end if;
--            if (set_IPv4_IP_src2 = '1')  then IPv4_IP_src(15 downto 8)    <= dataval; end if;
--            if (set_IPv4_IP_src1 = '1')  then IPv4_IP_src(7 downto 0)     <= dataval; end if;

--            if (set_IPv4_IP_dst4 = '1')  then IPv4_IP_dst(31 downto 24)   <= dataval; end if;
--            if (set_IPv4_IP_dst3 = '1')  then IPv4_IP_dst(23 downto 16)   <= dataval; end if;
--            if (set_IPv4_IP_dst2 = '1')  then IPv4_IP_dst(15 downto 8)    <= dataval; end if;
--            if (set_IPv4_IP_dst1 = '1')  then IPv4_IP_dst(7 downto 0)     <= dataval; end if;




                            
--                        if( (DEV_IP = IPv4_IP_dst)    and (UDP_DP = X"65_2C") and (UDP_dlen - X"00_08" = X"00_12") ) then  --192.168.4.2 and 25900 and 18 bytes data
--                            next_rx_state <= APO_DATA;
--                        elsif( (DEV_IP = IPv4_IP_dst) and (UDP_DP = X"64_C8") and (UDP_dlen - X"00_08" = X"04_00") ) then  --Port 25800
--                            next_rx_state <= VARU_DATA;
--                        elsif( (DEV_IP = IPv4_IP_dst) and (UDP_DP = X"65_F4") and (UDP_dlen - X"00_08" /= X"00_00") ) then --Port 26100 and Data_len > 0
--                            next_rx_state <= DFS_DATA;
--                            --set_26100_t   <= '1';
--                            rx_udp_dlen   <= unsigned(UDP_dlen - X"00_08");
--                        elsif( (DEV_IP = IPv4_IP_dst) and (UDP_DP = X"65_9A") and (UDP_dlen - X"00_08" /= X"00_00") ) then --Port 26010 and Data_len > 0
--                            next_rx_state <= DFS_DATA;
--                            --set_26010_t   <= '1';
--                            rx_udp_dlen   <= unsigned(UDP_dlen - X"00_08");  

            --------------------------------------------------------------------------------------------------------------
--            if(set_26010_t = '1') then set_26010 <= '1'; PKT_26010_DONE <= '1'; else set_26010 <= '0'; end if;
--            if(clr_26010_t = '1') then clr_26010 <= '1'; PKT_26010_DONE <= '0'; else clr_26010 <= '0'; end if;
            
            --------------------------------------------------------------------------------------------------------------
--            if(set_26100_t = '1') then set_26100 <= '1'; PKT_26100_DONE <= '1'; else set_26100 <= '0'; end if;
--            if(clr_26100_t = '1') then clr_26100 <= '1'; PKT_26100_DONE <= '0'; else clr_26100 <= '0'; end if;
            
            --------------------------------------------------------------------------------------------------------------
            --if(set_icmp_t = '1') then set_icmp <= '1';   PKT_ICMP_DONE <= '1'; else set_icmp <= '0'; end if;
            --if(clr_icmp_t = '1') then clr_icmp <= '1';   PKT_ICMP_DONE <= '0'; else clr_icmp <= '0'; end if;
            
            --------------------------------------------------------------------------------------------------------------
            --if(set_arp_t   = '1') then set_arp   <= '1'; PKT_ARP_DONE   <= '1'; else set_arp   <= '0'; end if;
            --if(clr_arp_t   = '1') then clr_arp   <= '1'; PKT_ARP_DONE   <= '0'; else clr_arp   <= '0'; end if;
            
            --------------------------------------------------------------------------------------------------------------
            --if(set_apo_t   = '1') then set_apo   <= '1'; PKT_APO_DONE   <= '1'; else set_apo   <= '0'; end if;
            --if(clr_apo_t   = '1') then clr_apo   <= '1'; PKT_APO_DONE   <= '0'; else clr_apo   <= '0'; end if;

    ---------------------------------------------------------------------------------------
    --assign:
    --rx_tlast2            <= '1' when (rx_dv1 = '0' and rx_dv2 = '1') else '0';

--    PKT_ARP_IP           <= arp_src_ip;
--    PKT_ARP_MAC          <= arp_src_mac; 
--    PKT_SRC_IP           <= IPv4_IP_src;

            --------------------------------------------------------------------------------------------------------------
            --APO data
--            if (set_apo_comm_1   = '1')  then PKT_APO_COMM(7   downto 0)   <= dataval; end if;
--            if (set_apo_comm_2   = '1')  then PKT_APO_COMM(15  downto 8)   <= dataval; end if;
--            if (set_apo_comm_3   = '1')  then PKT_APO_COMM(23  downto 16)  <= dataval; end if;
--            if (set_apo_comm_4   = '1')  then PKT_APO_COMM(31  downto 24)  <= dataval; end if;
--            if (set_apo_comm_5   = '1')  then PKT_APO_COMM(39  downto 32)  <= dataval; end if;
--            if (set_apo_comm_6   = '1')  then PKT_APO_COMM(47  downto 40)  <= dataval; end if;
--            if (set_apo_comm_7   = '1')  then PKT_APO_COMM(55  downto 48)  <= dataval; end if;
--            if (set_apo_comm_8   = '1')  then PKT_APO_COMM(63  downto 56)  <= dataval; end if;
--            if (set_apo_comm_9   = '1')  then PKT_APO_COMM(71  downto 64)  <= dataval; end if;
--            if (set_apo_comm_10  = '1')  then PKT_APO_COMM(79  downto 72)  <= dataval; end if;
--            if (set_apo_comm_11  = '1')  then PKT_APO_COMM(87  downto 80)  <= dataval; end if;
--            if (set_apo_comm_12  = '1')  then PKT_APO_COMM(95  downto 88)  <= dataval; end if;
--            if (set_apo_comm_13  = '1')  then PKT_APO_COMM(103 downto 96)  <= dataval; end if;
--            if (set_apo_comm_14  = '1')  then PKT_APO_COMM(111 downto 104) <= dataval; end if;
--            if (set_apo_comm_15  = '1')  then PKT_APO_COMM(119 downto 112) <= dataval; end if;
--            if (set_apo_comm_16  = '1')  then PKT_APO_COMM(127 downto 120) <= dataval; end if;
--            if (set_apo_comm_17  = '1')  then PKT_APO_COMM(135 downto 128) <= dataval; end if;
--            if (set_apo_comm_18  = '1')  then PKT_APO_COMM(143 downto 136) <= dataval; end if;


            --------------------------------------------------------------------------------------------------------------
            --ETH data
--            if( (rx_state = ETH_HDR) and (rx_event = DATA) ) then
--                case to_integer(rx_count) is   
--                    when 14 => PKT_SRC_MAC(47 downto 40) <= dataval;
--                    when 15 => PKT_SRC_MAC(39 downto 32) <= dataval;
--                    when 16 => PKT_SRC_MAC(31 downto 24) <= dataval;
--                    when 17 => PKT_SRC_MAC(23 downto 16) <= dataval;
--                    when 18 => PKT_SRC_MAC(15 downto 8)  <= dataval;
--                    when 19 => PKT_SRC_MAC(7  downto 0)  <= dataval;
--                    when others => null;
--                end case;
--            end if;

            --------------------------------------------------------------------------------------------------------------
            --ICMP data
--            if( (rx_state = ICMP_DATA) and (rx_event = DATA) ) then
--                --PKT_ICMP_DATA(index+7 downto index) <= dataval; index <= index+8;
--                case to_integer(rx_count) is   
--                    --when 0      => PKT_ICMP_DATA(index+7 downto index) <= dataval; index <= index+8; 
--                    when 64     => index <= 0;
--                    when others => PKT_ICMP_DATA(index+7 downto index) <= dataval; index <= index+8; 
--                end case;
--            end if;

            --------------------------------------------------------------------------------------------------------------
            --VARU
--            if( (rx_state = VARU_DATA) and (rx_event = DATA) ) then
--                case to_integer(rx_count) is
--                    when 0      => PKT_VARU_RAM_WR_EN   <= '1'; 
--                                   ram_varu_wr_addr_t   <= B"0000000000"; 
--                                   PKT_VARU_RAM_WR_DATA <= dataval;
                                    
--                    when 1024   => PKT_VARU_RAM_WR_EN   <= '0'; 
--                                   ram_varu_wr_addr_t   <= B"0000000000"; 
--                                   PKT_VARU_RAM_WR_DATA <= X"00";
                                    
--                    when others => ram_varu_wr_addr_t   <= ram_varu_wr_addr_t + 1; 
--                                   PKT_VARU_RAM_WR_DATA <= dataval;
--                end case;
--            end if;