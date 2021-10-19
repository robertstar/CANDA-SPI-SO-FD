----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/12/2021 12:07:51 PM
-- Design Name: 
-- Module Name: tx_pkt_arp2 - Behavioral
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
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity tx_pkt_arp2 is
Port ( 
    tx_clk                  : in  std_logic;

    PKT_ARP_DONE            : in  std_logic;
    PKT_DST_MAC             : in  std_logic_vector (47 downto 0);
    PKT_SRC_MAC             : in  std_logic_vector (47 downto 0);
    PKT_ARP_HDR             : in  std_logic_vector (223 downto 0);

    PKT_ARP_FIFO_WR_CLK     : out std_logic;  
    PKT_ARP_FIFO_WR_EN      : out std_logic;  
    PKT_ARP_FIFO_WR_DATA    : out std_logic_vector (9 downto 0)
);
end tx_pkt_arp2;

architecture Behavioral of tx_pkt_arp2 is

    type count_mode_t   is (RST, INCR, HOLD);
    type set_clr_t      is (SET, CLR, HOLD);
    type tx_state_t     is (IDLE, SEND);
    type tx_mode_t      is (REPLY, REQUEST);

    -- state variables
    signal tx_state         : tx_state_t := IDLE;
    signal tx_count         : unsigned (7 downto 0) := to_unsigned(0, 8);
    signal send_I_have_reg  : std_logic := '0';
    signal tx_mode          : tx_mode_t;  -- what sort of tx to make

    -- busses
    signal next_tx_state    : tx_state_t;
    signal tx_mode_val      : tx_mode_t;
    --signal target_ip        : std_logic_vector (31 downto 0) := (others => '0');
    --signal target_mac       : std_logic_vector (47 downto 0) := (others => '0');
    
    signal dst_mac          : std_logic_vector (47  downto 0) := (others => '0');
    signal src_mac          : std_logic_vector (47  downto 0) := (others => '0');
    signal arp_hdr          : std_logic_vector (223 downto 0) := (others => '0');
    
    -- tx control signals
    signal set_tx_state     : std_logic :='0';
    signal tx_count_mode    : count_mode_t;
    signal set_send_I_have  : set_clr_t;
    signal set_tx_mode      : std_logic :='0';
    signal set_target       : std_logic :='0';
  
    signal fcs_din          : std_logic_vector(7 downto 0)  := (others => '0'); 
    signal fcs_en           : std_logic := '0';
    signal fcs_rst          : std_logic := '1';
    signal fcs_crc          : std_logic_vector(31 downto 0)  := x"00_00_00_00";
    signal fcs_crcnext      : std_logic_vector(31 downto 0)  := x"00_00_00_00";
    
    signal fcs_t2           : std_logic_vector(7 downto 0)  := x"00";
    signal fcs_t3           : std_logic_vector(7 downto 0)  := x"00";
    signal fcs_t4           : std_logic_vector(7 downto 0)  := x"00";
    
    signal arp_tx_data      : std_logic_vector (7 downto 0) := (others => '0');
    signal tx_en            : std_logic :='0';
    --signal gmii_tx_err      : std_logic :='0';
    signal tx_tlast         : std_logic :='0';
    
    --------------------------------------------------------------------------------------------------------------------------
    component crc
        port(
            Clk:            in std_logic;
            Reset:          in std_logic;
            Enable:         in std_logic;
            Data_in:        in std_logic_vector(7 downto 0);
            Crc:            out std_logic_vector(31 downto 0);
            CrcNext:        out std_logic_vector(31 downto 0)
        );
    end component;

begin

    fcs: crc 
    port map(    
        Clk     => tx_clk,        
        Reset   => fcs_rst,
        Enable  => fcs_en,
        Data_in => fcs_din,
        Crc     => fcs_crc,
        CrcNext => fcs_crcnext
    ); 

    --------------------------------------------------------------------------------------------------------------------------
    arp_tx_data                      <= fcs_din;
    PKT_ARP_FIFO_WR_CLK              <= tx_clk;
    PKT_ARP_FIFO_WR_DATA(9)          <= tx_en;
    PKT_ARP_FIFO_WR_DATA(4)          <= tx_en;
    PKT_ARP_FIFO_WR_DATA(3 downto 0) <= arp_tx_data(7 downto 4);
    PKT_ARP_FIFO_WR_DATA(8 downto 5) <= arp_tx_data(3 downto 0); --arp_tx_data(7 downto 4);
    
    --------------------------------------------------------------------------------------------------------------------------
    tx_combinatorial : process (PKT_ARP_DONE, send_I_have_reg) begin 
        if (PKT_ARP_DONE = '1') then
            set_send_I_have <= SET;
            dst_mac <= PKT_DST_MAC;
            src_mac <= PKT_SRC_MAC;
            arp_hdr <= PKT_ARP_HDR;
        end if;
    
        if (send_I_have_reg = '1') then
            set_send_I_have <= CLR;
        end if;  
    end process; 
    
    --------------------------------------------------------------------------------------------------------------------------
    tx_sequential : process (tx_clk)
    begin
        if rising_edge(tx_clk) then


            -- input request latching
            case set_send_I_have is
              when SET =>
                send_I_have_reg <= '1';
                tx_state        <= SEND;
              when CLR =>
                send_I_have_reg <= '0';
              when HOLD =>
                send_I_have_reg <= send_I_have_reg;
            end case;
            
            
            -- tx_count processing
            case tx_count_mode is
              when RST =>
                tx_count <= x"00";
                --tx_count <= x"06";
              when INCR =>
                tx_count <= tx_count + 1;
              when HOLD =>
                tx_count <= tx_count;
            end case;


            -- TX FSM
            case tx_state is
              when IDLE =>
                tx_count_mode       <= RST;
                tx_en               <= '0';
                PKT_ARP_FIFO_WR_EN  <= '0';
                fcs_en              <= '0';  	--Disable module FCS
                fcs_rst             <= '1'; 	--Reset value FCS 

              when SEND =>
                case tx_count is
                when x"00" => tx_en              <= '1';
                              PKT_ARP_FIFO_WR_EN <= '1';
                              fcs_din            <= x"55";     
                              tx_count_mode      <= INCR;
                              
                when x"01" => fcs_din <= x"55";  
                when x"02" => fcs_din <= x"55";  
                when x"03" => fcs_din <= x"55";  
                when x"04" => fcs_din <= x"55";  
                when x"05" => fcs_din <= x"55";  
                when x"06" => fcs_din <= x"55";  
                when x"07" => fcs_din <= x"D5";      
                                    
                when x"08" => fcs_din <= dst_mac (47 downto 40);
                              fcs_en  <= '1';  	--Enable module FCS
                              fcs_rst <= '0'; 	--Set value FCS 
                
                when x"09" => fcs_din <= dst_mac (39 downto 32);         --data_out <= x"ff";
                when x"0a" => fcs_din <= dst_mac (31 downto 24);         --data_out <= x"ff";
                when x"0b" => fcs_din <= dst_mac (23 downto 16);         --data_out <= x"ff";
                when x"0c" => fcs_din <= dst_mac (15 downto 8);          --data_out <= x"ff";
                when x"0d" => fcs_din <= dst_mac (7 downto 0);           --data_out <= x"ff";
                
                when x"0e" => fcs_din <= src_mac (47 downto 40);            -- src = our mac
                when x"0f" => fcs_din <= src_mac (39 downto 32);
                when x"10" => fcs_din <= src_mac (31 downto 24);
                when x"11" => fcs_din <= src_mac (23 downto 16);
                when x"12" => fcs_din <= src_mac (15 downto 8);
                when x"13" => fcs_din <= src_mac (7 downto 0);
                
                when x"14" => fcs_din <= x"08";                             -- pkt type = 0806 : ARP
                when x"15" => fcs_din <= x"06";
                
                when x"16" => fcs_din <= arp_hdr(7   downto   0);    -- HW type = 0001 : eth
                when x"17" => fcs_din <= arp_hdr(15  downto   8);
                when x"18" => fcs_din <= arp_hdr(23  downto  16);    -- protocol = 0800 : ip
                when x"19" => fcs_din <= arp_hdr(31  downto  24);
                when x"1a" => fcs_din <= arp_hdr(39  downto  32);    -- HW size = 06
                when x"1b" => fcs_din <= arp_hdr(47  downto  40);    -- prot size = 04
                when x"1c" => fcs_din <= arp_hdr(55  downto  48);    -- opcode =             
                when x"1d" => fcs_din <= arp_hdr(63  downto  56);    -- 02 : REPLY                     
                when x"1e" => fcs_din <= arp_hdr(71  downto  64);    -- sender mac
                when x"1f" => fcs_din <= arp_hdr(79  downto  72);
                when x"20" => fcs_din <= arp_hdr(87  downto  80);
                when x"21" => fcs_din <= arp_hdr(95  downto  88);
                when x"22" => fcs_din <= arp_hdr(103 downto  96);
                when x"23" => fcs_din <= arp_hdr(111 downto 104);
                when x"24" => fcs_din <= arp_hdr(119 downto 112);    -- sender ip
                when x"25" => fcs_din <= arp_hdr(127 downto 120);
                when x"26" => fcs_din <= arp_hdr(135 downto 128);
                when x"27" => fcs_din <= arp_hdr(143 downto 136);
                when x"28" => fcs_din <= arp_hdr(151 downto 144);    -- target mac
                when x"29" => fcs_din <= arp_hdr(159 downto 152);               
                when x"2a" => fcs_din <= arp_hdr(167 downto 160);               
                when x"2b" => fcs_din <= arp_hdr(175 downto 168);               
                when x"2c" => fcs_din <= arp_hdr(183 downto 176);               
                when x"2d" => fcs_din <= arp_hdr(191 downto 184);               
                when x"2e" => fcs_din <= arp_hdr(199 downto 192);    -- target ip
                when x"2f" => fcs_din <= arp_hdr(207 downto 200);
                when x"30" => fcs_din <= arp_hdr(215 downto 208);
                when x"31" => fcs_din <= arp_hdr(223 downto 216);
                
                when x"43" => fcs_din <= x"00"; tx_tlast <= '1';            --end trailer ARP
                when x"44" => fcs_din <= not fcs_crcnext(24) & not fcs_crcnext(25) & not fcs_crcnext(26) & not fcs_crcnext(27) & not fcs_crcnext(28) & not fcs_crcnext(29) & not fcs_crcnext(30) & not fcs_crcnext(31) ;
                              fcs_t2  <= not fcs_crcnext(16) & not fcs_crcnext(17) & not fcs_crcnext(18) & not fcs_crcnext(19) & not fcs_crcnext(20) & not fcs_crcnext(21) & not fcs_crcnext(22) & not fcs_crcnext(23) ;
                              fcs_t3  <= not fcs_crcnext(8) &  not fcs_crcnext(9) &  not fcs_crcnext(10) & not fcs_crcnext(11) & not fcs_crcnext(12) & not fcs_crcnext(13) & not fcs_crcnext(14) & not fcs_crcnext(15) ;
                              fcs_t4  <= not fcs_crcnext(0) &  not fcs_crcnext(1) &  not fcs_crcnext(2) &  not fcs_crcnext(3) &  not fcs_crcnext(4) &  not fcs_crcnext(5) &  not fcs_crcnext(6) &  not fcs_crcnext(7) ;
                              fcs_en  <='0';        --Disable module FCS
                              fcs_rst <='1';        --Reset value FCS 
                when x"45" => fcs_din <= fcs_t2;    --FCS 2byte
                when x"46" => fcs_din <= fcs_t3;    --FCS 3byte
                when x"47" => fcs_din <= fcs_t4;    --FCS 4byte
                when x"48" => fcs_din <= x"00";
                              tx_en         <= '0';
                              tx_state      <= IDLE;
                              set_tx_state  <= '1';              
                              
                when others => fcs_din <= x"00"; --Trailer ARP
                end case;
            end case;


        end if;
    end process;

end Behavioral;
