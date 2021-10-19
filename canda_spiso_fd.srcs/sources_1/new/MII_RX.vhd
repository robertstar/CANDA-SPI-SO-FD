----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/21/2021 11:04:38 AM
-- Design Name: 
-- Module Name: MII_RX - Behavioral
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


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MII_RX is
Port ( 
		mii_rx_clk          : in  std_logic;
		mii_rx_dv           : in  std_logic;
        mii_rx_er           : in  std_logic;
		mii_rxd             : in  std_logic_vector(3 downto 0);
        
        rx_mac_clk          : out std_logic;
        rx_mac_tdata        : out std_logic_vector(7 downto 0);
        rx_mac_tvalid       : out std_logic;
        rx_mac_tlast        : out std_logic	
);
end MII_RX;

architecture Behavioral of MII_RX is

    signal rx_mac_clk_t : std_logic:= '1';
    
    signal sync_tdata1  :  std_logic_vector(3 downto 0):= (others => '0');
    signal sync_tdata2  :  std_logic_vector(3 downto 0):= (others => '0');
    signal sync_tdata3  :  std_logic_vector(3 downto 0):= (others => '0');
    
    signal sync_tvalid1 :  std_logic:= '0';
    signal sync_tvalid2 :  std_logic:= '0';
    signal sync_tvalid3 :  std_logic:= '0';
    signal sync_tvalid4 :  std_logic:= '0';
    signal sync_tvalid5 :  std_logic:= '0';
    
    signal sync_tlast1  :  std_logic:= '0';
    signal sync_tlast2  :  std_logic:= '0';
    signal sync_tlast3  :  std_logic:= '0';
    signal sync_tlast4  :  std_logic:= '0';
    signal sync_tlast5  :  std_logic:= '0';
    
    signal byte_vld     :  std_logic:= '0';
    signal byte_data_t  :  std_logic_vector(7 downto 0):= (others => '0');
    signal byte_data    :  std_logic_vector(7 downto 0):= (others => '0');
    
    type stateType is (low, high);
	signal state : stateType := low;
    
begin


    rx_mac_clk      <= rx_mac_clk_t;
    rx_mac_tdata    <= byte_data;
    rx_mac_tvalid   <= sync_tvalid5;
    rx_mac_tlast    <= sync_tlast4;
    
    ------------------------------------------------------------------------------------------------------------------------
    rx_sequential : process (mii_rx_clk)
    begin
        if rising_edge(mii_rx_clk) then
            
            --Create clk
            rx_mac_clk_t <= not rx_mac_clk_t;
            
            --SYNC
            sync_tvalid1 <= mii_rx_dv;
            sync_tvalid2 <= sync_tvalid1;
            sync_tvalid3 <= sync_tvalid2;
            sync_tvalid4 <= sync_tvalid3;
            sync_tvalid5 <= sync_tvalid4;
            
            sync_tdata1  <= mii_rxd;
            sync_tdata2  <= sync_tdata1;
            sync_tdata3  <= sync_tdata2;

            sync_tlast4  <= sync_tlast3;
            sync_tlast5  <= sync_tlast4;

            if ( sync_tvalid1 = '0' and sync_tvalid2 = '1' ) then
                sync_tlast3 <= '1';
            else
                sync_tlast3 <= '0';
            end if;
    
    
            case state is
				when low =>
                    if sync_tvalid3 = '1' then
                        byte_data_t(3 downto 0) <= sync_tdata3(3 downto 0);
                        state    <= high;
                        byte_vld <= '0';
                    else
                        byte_vld   <= '0';
                    end if;
                    
                    if sync_tvalid4 = '0' then
                        byte_data <= X"00";
                    end if;
                        
                when high =>
                    if sync_tvalid3 = '1' then
                        byte_data_t(7  downto 4) <= sync_tdata3(3 downto 0);
                        byte_data(7 downto 4)   <= sync_tdata3(3 downto 0);
                        byte_data(3 downto 0)   <= byte_data_t(3 downto 0);
                        state    <= low;
                        byte_vld <= '1';
                    end if;
			end case;
 
        end if;
    end process rx_sequential;

end Behavioral;
