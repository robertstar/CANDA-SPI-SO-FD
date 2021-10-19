----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/07/2021 09:57:46 AM
-- Design Name: 
-- Module Name: rs485_co1 - Behavioral
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

entity rs485_co1 is
generic(
        CLK_FREQ                : integer; 
        SPEED                   : integer
    );
Port ( 
        CLK                     : in  STD_LOGIC;
        RST                     : in  STD_LOGIC;
        
        FD_CLK                  : in STD_LOGIC; --10kHz
        
        SERIAL_RX               : in  STD_LOGIC;
        SERIAL_TX               : out STD_LOGIC;
        SERIAL_RE               : out STD_LOGIC;
        SERIAL_DE               : out STD_LOGIC;
        
        RAM_25702_WR_DATA_DONE  : out STD_LOGIC := '0';
        RAM_25702_RD_EN         : in  std_logic;                        -- Read enable 
        RAM_25702_RD_ADDR       : in  std_logic_vector(10 downto 0);    -- Address to read RAM
        RAM_25702_RD_DATA       : out std_logic_vector(7 downto 0);     -- Data output of RAM
        
        PKT_25702_DONE          : in STD_LOGIC                          -- Packet 25702 TX done     
);
end rs485_co1;

architecture Behavioral of rs485_co1 is

    type t_State            is (send, receive, save);
    signal State            : t_State := send;

    --signal tx_st            : std_logic_vector(3 downto 0)  := (others => '0');
    signal write_st         : std_logic_vector(3 downto 0)  := (others => '0');
    signal rx_busy_t        : std_logic_vector(1 downto 0)  := (others => '0');
    
    signal sync_fd1         : std_logic := '0';
    signal sync_fd2         : std_logic := '0';
    signal sync_fd3         : std_logic := '0';
    
    signal sync_pkt1        : std_logic := '0';
    signal sync_pkt2        : std_logic := '0';
    signal sync_pkt3        : std_logic := '0';
    
    signal TX_DATA          : std_logic_vector(7 downto 0)  := (others => '0');
    signal TX_BUSY          : std_logic;
    signal TX_EN            : std_logic := '0';
    signal tx_cnt           : std_logic_vector(31 downto 0) := (others => '0');
    signal RX_DATA          : std_logic_vector(7 downto 0);
    signal RX_DONE          : std_logic;
    signal RX_BUSY          : std_logic;
    signal RX_ERR           : std_logic;

    signal blk_mem_wr_en    : std_logic := '0';
    signal blk_mem_wr_addr  : std_logic_vector(10 downto 0) := (others => '0');
    signal blk_mem_wr_din   : std_logic_vector(7 downto 0)  := (others => '0');
    signal blk_mem_rd_rst   : std_logic := '0';
    signal blk_mem_rd_en    : std_logic := '0';
    signal blk_mem_rd_addr  : std_logic_vector(10 downto 0)  := (others => '0');
    signal blk_mem_rd_dout  : std_logic_vector(7 downto 0);
    signal blk_mem_wr_busy  : std_logic;
    signal blk_mem_rd_busy  : std_logic;
    signal blk_mem_wr_rst   : std_logic := '0';
    
    signal alg_state        : integer range 0 to 16  := 0;
    signal module           : integer range 0 to 9   := 0;
    signal tx_st            : integer range 0 to 16  := 0;
    
    signal rx_st            : integer range 0 to 16  := 0;
    signal rx_timeout_30ms  : std_logic_vector(31 downto 0) := X"00_00_00_00";
    signal rx_sync_word     : std_logic_vector(31 downto 0) := X"00_00_00_00";
    signal module_addr      : std_logic_vector(7 downto 0)  := X"01";--(others => '0');
    
    signal samples          : integer range 0 to 18  := 0;
    --signal dfs_timeout_500ms    : std_logic_vector(31 downto 0) := (others => '0');
    
    signal mem_rd_dout      : std_logic_vector(15 downto 0);
    signal mem_st           : integer range 0 to 1500 := 0;
    signal clear_st         : integer range 0 to 9    := 0;
    
    
    signal rx_timeout_1ms  : std_logic_vector(31 downto 0) := X"00_00_00_00";
    
    
    signal timeout        : integer range 0 to 10000000  := 5000000;
    
    ---------------------------------------------------------------------------------------
    component uart
      GENERIC(
        clk_freq            : INTEGER;                                   --frequency of system clock in Hertz
        baud_rate           : INTEGER;                                   --data link baud rate in bits/second
        os_rate             : INTEGER;                                   --oversampling rate to find center of receive bits (in samples per baud period)
        d_width             : INTEGER;                                   --data bus width
        parity              : INTEGER                                    --0 for no parity, 1 for parity                          
      );
      PORT(
        clk                 : IN  STD_LOGIC;                             --system clock
        reset_n             : IN  STD_LOGIC;                             --ascynchronous reset
        tx_ena              : IN  STD_LOGIC;                             --initiate transmission
        tx_data             : IN  STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data to transmit
        rx                  : IN  STD_LOGIC;                             --receive pin
        rx_busy             : OUT STD_LOGIC;                             --data reception in progress
        rx_error            : OUT STD_LOGIC;                             --start, parity, or stop bit error detected
        rx_data             : OUT STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data received
        tx_busy             : OUT STD_LOGIC;                             --transmission in progress
        tx                  : OUT STD_LOGIC;
        parity_eo           : IN  STD_LOGIC);                            --'0' for even, '1' for odd parity
    end component;
    
    --------------------------------------------------------------------------------------- 
    component single_port_ram
    generic(
        RAM_DATA_WIDTH      : integer; 
        RAM_DATA_LENGTH     : integer;
        RAM_ADDR_WIDTH      : integer
    ); 
    port (
        RAM_WR_CLOCK        : in  std_logic;  
      --RAM_WR_RESET        : in  std_logic;                                     -- Reset 
        RAM_WR_EN           : in  std_logic;                                     -- Write enable 
        RAM_WR_ADDR         : in  std_logic_vector(RAM_ADDR_WIDTH - 1 downto 0); -- Address to write RAM
        RAM_WR_DATA         : in  std_logic_vector(RAM_DATA_WIDTH - 1 downto 0); -- Data to write into RAM

        RAM_RD_EN           : in  std_logic;                                     -- Write enable 
        RAM_RD_ADDR         : in  std_logic_vector(RAM_ADDR_WIDTH - 1 downto 0); -- Address to read RAM
        RAM_RD_DATA         : out std_logic_vector(RAM_DATA_WIDTH - 1 downto 0)  -- Data output of RAM
    );
    end component;
    
begin

    --------------------------------------------------------------------------------------------------------
    --Assign 
    SERIAL_RE  <= '1' when (TX_BUSY = '1') else '0';
    --SERIAL_RE  <= '0'; 
    SERIAL_DE  <= '1' when (TX_BUSY = '1') else '0'; 
  
    blk_mem_rd_en       <= RAM_25702_RD_EN;
    blk_mem_rd_addr     <= RAM_25702_RD_ADDR;
    RAM_25702_RD_DATA   <= blk_mem_rd_dout;

   
    -------------------------------------------------------------------------------------
    uart_inst: uart
    generic map(
        clk_freq        => CLK_FREQ,            --frequency of system clock in Hertz
        baud_rate       => SPEED,               --data link baud rate in bits/second
        os_rate         => 16,                  --oversampling rate to find center of receive bits (in samples per baud period)
        d_width         => 8,                   --data bus width
        parity          => 0                    --0 for no parity, 1 for parity  
    )
    port map(       
        clk             => CLK,                 --system clock
        reset_n         => '1',                 --ascynchronous reset
        
        parity_eo       => '0',                 --'0' for even, '1' for odd parity
        
        tx_ena          => TX_EN,               --initiate transmission
        tx_data         => TX_DATA,             --data to transmit
        tx              => SERIAL_TX,
        tx_busy         => TX_BUSY,             --transmission in progress
        
        rx_data         => RX_DATA,             --data received
        rx              => SERIAL_RX,           --receive pin
        rx_busy         => RX_BUSY,             --data reception in progress
        rx_error        => RX_ERR               --start, parity, or stop bit error detected   
    );

    ---------------------------------------------------------------------------------------
    -- RAM for calculate UDP CRC16
    ram_udp_inst: single_port_ram
    generic map(
        RAM_DATA_LENGTH => 1400,
        RAM_DATA_WIDTH  => 8,
        RAM_ADDR_WIDTH  => 11
    )
    port map(    
        RAM_WR_CLOCK    => CLK,
      --RAM_WR_RESET    => blk_mem_wr_rst,
        RAM_WR_EN       => blk_mem_wr_en,
        RAM_WR_ADDR     => blk_mem_wr_addr,
        RAM_WR_DATA     => blk_mem_wr_din,
        
        RAM_RD_EN       => blk_mem_rd_en,
        RAM_RD_ADDR     => blk_mem_rd_addr,
        RAM_RD_DATA     => blk_mem_rd_dout
    ); 

    -------------------------------------------------------------------------------------
--    ila2_inst: ila_2
--    port map(    
--        clk                     => CLK,     
--        probe0(0)               => '0',          
--        probe1(0)               => RAM_25702_RD_EN,
--        probe2                  => RAM_25702_RD_ADDR,
--        probe3                  => blk_mem_rd_dout,
--        probe4(0)               => PKT_25702_DONE, 
--        probe5(0)               => blk_mem_rd_busy 
--    );

    
    
    ---------------------------------------------------------------------------------------
    modules_proto : process (CLK)
    begin
        if rising_edge(CLK) then
            
            ---------------------------------------------------------------------------------------
            --sync adc fd clock
            sync_fd1 <= FD_CLK;
            sync_fd2 <= sync_fd1;
            sync_fd3 <= sync_fd2;
            
            ---------------------------------------------------------------------------------------
            --sync pkt done
            sync_pkt1 <= PKT_25702_DONE;
            sync_pkt2 <= sync_pkt1;
            sync_pkt3 <= sync_pkt2;
            
            ---------------------------------------------------------------------------------------
            --sync rx data
            rx_busy_t <= rx_busy_t(0) & RX_BUSY;
            
            
            case alg_state is
                
                when 0 =>
                    rx_timeout_30ms <= X"00_00_00_00";
                    rx_timeout_1ms  <= X"00_00_00_00";
                    if (sync_fd2 = '1' and sync_fd3 = '0') then
                        --blk_mem_wr_rst <= '1';
                        alg_state  <= alg_state + 1;
                    end if;
                
                when 1 =>
                    blk_mem_wr_rst <= '0';
                    --if( blk_mem_rd_busy = '1') then --blk_mem_wr_busy = '1'
                        alg_state <= alg_state + 1;
                    --end if;
                    
                when 2 =>
                    --if(blk_mem_wr_busy = '0' and blk_mem_rd_busy = '0') then
                        alg_state <= alg_state + 1;
                    --end if;
                    
                when 3 => -- Transmit / Receive / Write to RAM
                    case module is
                        -----------------------------------------------------------------------------------------------------  
                        --HEC360 or SEC340 address 0x01 to 0x03
                        when 0 to 2 =>
                            case State is
                                when send       =>
                                    case tx_st is
                                        --Identifier
                                        when 0  => if(TX_BUSY = '0') then TX_EN <= '1'; TX_DATA <= X"77"; tx_st <= tx_st + 1; end if;
                                        when 1  => if(TX_BUSY = '0') then tx_st <= tx_st + 1; end if; TX_EN <= '0'; 
                                        --Frame Length    
                                        when 2  => if(TX_BUSY = '0') then TX_EN <= '1'; TX_DATA <= X"04"; tx_st <= tx_st + 1; end if;  
                                        when 3  => if(TX_BUSY = '0') then tx_st <= tx_st + 1; end if; TX_EN <= '0'; 
                                        --Address Code    
                                        when 4  => if(TX_BUSY = '0') then TX_EN <= '1'; TX_DATA <= module_addr; tx_st <= tx_st + 1; end if;
                                        when 5  => if(TX_BUSY = '0') then tx_st <= tx_st + 1; end if; TX_EN <= '0'; 
                                        --Command    
                                        when 6  => if(TX_BUSY = '0') then TX_EN <= '1'; TX_DATA <= X"04"; tx_st <= tx_st + 1; end if;     
                                        when 7  => if(TX_BUSY = '0') then tx_st <= tx_st + 1; end if; TX_EN <= '0'; 
                                         --Checksum    
                                        when 8  => if(TX_BUSY = '0') then TX_EN <= '1'; TX_DATA <= X"08" + module_addr; tx_st <= tx_st + 1; end if;  
                                        when 9  => if(TX_BUSY = '0') then tx_st <= tx_st + 1; end if; TX_EN <= '0';
                                        when 10 => if(TX_BUSY = '0') then TX_DATA <= X"00"; State <= receive; tx_st <= 0; end if;                   
                                        when others => null;
                                    end case;
                                
                                when receive    =>
                                    case rx_st is
                                        when 0 =>
                                            if( rx_busy_t = b"10" ) then
                                                rx_busy_t       <= "00";
                                                rx_sync_word    <= rx_sync_word(23 downto 0) & RX_DATA;
                                                if( rx_sync_word(23 downto 0) & RX_DATA = X"77_0D" & module_addr & X"84"  ) then
                                                    rx_sync_word    <= X"00_00_00_00";
                                                    rx_timeout_30ms <= X"00_00_00_00"; --Clear timeout
                                                    rx_st           <= rx_st + 1;
                                                end if;
                                            else
                                                if( to_integer(unsigned(rx_timeout_30ms))  < timeout) then --30ms
                                                --if( to_integer(unsigned(rx_timeout_30ms))  < 7500000) then --60ms
                                                    rx_timeout_30ms <= rx_timeout_30ms + 1;
                                                else
                                                    
                                                    --Clear RAM
                                                    case clear_st is
                                                        when 0      => 
                                                            blk_mem_wr_en   <= '1';
                                                            blk_mem_wr_din  <= X"00";
                                                            blk_mem_wr_addr <= blk_mem_wr_addr + 1;
                                                            clear_st        <= clear_st + 1;
                                                        when 1 to 8 =>
                                                            blk_mem_wr_din  <= X"00";
                                                            blk_mem_wr_addr <= blk_mem_wr_addr + 1;
                                                            clear_st        <= clear_st + 1; 
                                                        when 9      =>
                                                            blk_mem_wr_en   <= '0';
                                                            blk_mem_wr_din  <= X"00";
                                                            module          <= module + 1;
                                                            module_addr     <= module_addr + 1;
                                                            rx_timeout_30ms <= X"00_00_00_00"; --Clear timeout
                                                            rx_st           <= 0;
                                                            tx_st           <= 0;
                                                            State           <= send;
                                                            clear_st        <= 0;
                                                        when others => null;
                                                    end case;
                                                    
                                                end if; 
                                            end if;    
                                        
                                        when 1 => --Receive data 
                                            if( rx_busy_t = b"10" ) then 
                                                rx_busy_t       <= "00";
                                                blk_mem_wr_en   <= '1';
                                                blk_mem_wr_din  <= RX_DATA;--X"77";
                                                blk_mem_wr_addr <= blk_mem_wr_addr + 1;
                                                rx_st           <= rx_st + 1;
                                            else
                                                blk_mem_wr_en   <= '0';
                                                blk_mem_wr_din  <= X"00"; 
                                            end if;
                                               
                                        when 2 to 9 => --Receive data 
                                            if( rx_busy_t = b"10" ) then 
                                                rx_busy_t       <= "00";
                                                blk_mem_wr_en   <= '1';
                                                blk_mem_wr_din  <= RX_DATA;
                                                blk_mem_wr_addr <= blk_mem_wr_addr + 1;
                                                rx_st           <= rx_st + 1;
                                            else
                                                blk_mem_wr_en   <= '0';
                                                blk_mem_wr_din  <= X"00"; 
                                            end if;
                                        
                                        when 10 =>  --Receive crc 
                                            blk_mem_wr_en   <= '0';
                                            blk_mem_wr_din  <= X"00"; 
                                            if( rx_busy_t = b"10" ) then 
                                                rx_busy_t   <= "00";
                                                rx_st       <= rx_st + 1;
                                                
--                                                module      <= module + 1;
--                                                module_addr <= module_addr + 1;
--                                                rx_st       <= 0;
--                                                tx_st       <= 0;
--                                                State       <= send;  
                                            end if;
                                        
                                        ---------------------------------------------------------------------------------------  
                                        when 11 =>  --Timeout 400us
                                            if( to_integer(unsigned(rx_timeout_1ms))  < 20000) then --400us
                                                rx_timeout_1ms <= rx_timeout_1ms + 1;
                                            else
                                                rx_timeout_1ms  <= X"00_00_00_00"; --Clear timeout
                                                module          <= module + 1;
                                                module_addr     <= module_addr + 1;
                                                rx_st           <= 0;
                                                tx_st           <= 0;
                                                State           <= send;
                                            end if; 
                                            
                                            
                                            
                                        when others => null;
                                    end case;
                                    
                                when others     => null;
                            end case; 
                        -----------------------------------------------------------------------------------------------------     
                        
                         --Test
--                        when 3 => 
--                            case rx_st is
--                                when 0 =>
--                                    blk_mem_wr_en   <= '1';
--                                    blk_mem_wr_din  <= X"A1";
--                                    blk_mem_wr_addr <= blk_mem_wr_addr + 1;
--                                    rx_st           <= rx_st + 1;
                                    
--                                when 1 =>
--                                    blk_mem_wr_din  <= X"B2";
--                                    blk_mem_wr_addr <= blk_mem_wr_addr + 1; 
--                                    rx_st           <= rx_st + 1;
                                
--                                when 2 =>
--                                    blk_mem_wr_din  <= X"C3";
--                                    blk_mem_wr_addr <= blk_mem_wr_addr + 1; 
--                                    rx_st           <= rx_st + 1;
                                                       
--                                when 3 =>
--                                    module <= module + 1;
--                                    blk_mem_wr_din  <= X"D4";
--                                    blk_mem_wr_addr <= blk_mem_wr_addr + 1; 
--                                    rx_st           <= 0;
--                                when others => null;
--                            end case;
                        
                                                --Test
--                        when 4 => 
--                            case rx_st is
--                                when 0 =>
--                                    blk_mem_wr_en   <= '1';
--                                    blk_mem_wr_din  <= X"21";
--                                    blk_mem_wr_addr <= blk_mem_wr_addr + 1;
--                                    rx_st           <= rx_st + 1;
                                    
--                                when 1 =>
--                                    blk_mem_wr_din  <= X"43";
--                                    blk_mem_wr_addr <= blk_mem_wr_addr + 1; 
--                                    rx_st           <= rx_st + 1;
                                
--                                when 2 =>
--                                    blk_mem_wr_din  <= X"65";
--                                    blk_mem_wr_addr <= blk_mem_wr_addr + 1; 
--                                    rx_st           <= rx_st + 1;
                                                       
--                                when 3 =>
--                                    blk_mem_wr_din  <= X"87";
--                                    blk_mem_wr_addr <= blk_mem_wr_addr + 1; 
--                                    rx_st           <= rx_st + 1;
                                
--                                when 4 => 
--                                    blk_mem_wr_en   <= '0';   
--                                    blk_mem_wr_din  <= X"00";
--                                    module          <= 0;
--                                    if(samples < 17) then
--                                        samples     <= samples + 1;
--                                        tx_st       <= 0;
--                                        rx_st       <= 0;
--                                        State       <= send;
--                                        module_addr <= X"01";
--                                    else
--                                        samples   <= 0;
--                                        alg_state <= alg_state + 1;
--                                    end if;
                                    
--                                when others => null;
--                            end case;
                        
                        -----------------------------------------------------------------------------------------------------------------------------------------
                        --Module of DDT N1   
                        when 3 => 
                            case State is
                                when send       =>
                                    case tx_st is
                                        --Identifier
                                        when 0  => if(TX_BUSY = '0') then TX_EN <= '1'; TX_DATA <= X"78"; tx_st <= tx_st + 1; end if;
                                        when 1  => if(TX_BUSY = '0') then tx_st <= tx_st + 1; end if; TX_EN <= '0'; 
                                        --Frame Length    
                                        when 2  => if(TX_BUSY = '0') then TX_EN <= '1'; TX_DATA <= X"04"; tx_st <= tx_st + 1; end if;  
                                        when 3  => if(TX_BUSY = '0') then tx_st <= tx_st + 1; end if; TX_EN <= '0'; 
                                        --Address Code    
                                        when 4  => if(TX_BUSY = '0') then TX_EN <= '1'; TX_DATA <= X"01"; tx_st <= tx_st + 1; end if;
                                        when 5  => if(TX_BUSY = '0') then tx_st <= tx_st + 1; end if; TX_EN <= '0'; 
                                        --Command    
                                        when 6  => if(TX_BUSY = '0') then TX_EN <= '1'; TX_DATA <= X"01"; tx_st <= tx_st + 1; end if;     
                                        when 7  => if(TX_BUSY = '0') then tx_st <= tx_st + 1; end if; TX_EN <= '0'; 
                                         --Checksum    
                                        when 8  => if(TX_BUSY = '0') then TX_EN <= '1'; TX_DATA <= X"7E"; tx_st <= tx_st + 1; end if;  
                                        when 9  => if(TX_BUSY = '0') then tx_st <= tx_st + 1; end if; TX_EN <= '0';
                                        when 10 => if(TX_BUSY = '0') then TX_DATA <= X"00"; State <= receive; tx_st <= 0; end if;                   
                                        when others => null;
                                    end case; 
                                
                                when receive    =>  
                                    case rx_st is
                                        when 0 =>
                                            if( rx_busy_t = b"10" ) then
                                                rx_busy_t    <= "00";
                                                rx_sync_word <= rx_sync_word(23 downto 0) & RX_DATA;
                                                if( rx_sync_word(23 downto 0) & RX_DATA = X"78_08_01_02" ) then
                                                    rx_sync_word    <= X"00_00_00_00";
                                                    rx_timeout_30ms <= X"00_00_00_00"; --Clear timeout
                                                    rx_st           <= rx_st + 1;
                                                end if;
                                            else
                                                if( to_integer(unsigned(rx_timeout_30ms))  < timeout) then
                                                    rx_timeout_30ms <= rx_timeout_30ms + 1;
                                                else
                                                    --Clear RAM
                                                    case clear_st is
                                                        when 0      => 
                                                            blk_mem_wr_en   <= '1';
                                                            blk_mem_wr_din  <= X"00";
                                                            blk_mem_wr_addr <= blk_mem_wr_addr + 1;
                                                            clear_st        <= clear_st + 1;
                                                        when 1 to 3 =>
                                                            blk_mem_wr_din  <= X"00";
                                                            blk_mem_wr_addr <= blk_mem_wr_addr + 1;
                                                            clear_st        <= clear_st + 1; 
                                                        when 4      =>
                                                            blk_mem_wr_en   <= '0';
                                                            blk_mem_wr_din  <= X"00";
                                                            module          <= module + 1;
                                                            module_addr     <= module_addr + 1;
                                                            rx_timeout_30ms <= X"00_00_00_00"; --Clear timeout
                                                            rx_st           <= 0;
                                                            tx_st           <= 0;
                                                            State           <= send;
                                                            clear_st        <= 0;
                                                        when others => null;
                                                    end case;  
                                                end if; 
                                            end if;
                                        
                                        when 1 to 4 => --Receive data 
                                            if( rx_busy_t = b"10" ) then 
                                                rx_busy_t       <= "00";
                                                blk_mem_wr_en   <= '1';
                                                blk_mem_wr_din  <= RX_DATA;
                                                blk_mem_wr_addr <= blk_mem_wr_addr + 1;
                                                rx_st           <= rx_st + 1;
                                            else
                                                blk_mem_wr_en   <= '0'; 
                                                blk_mem_wr_din  <= X"00";
                                            end if;
                                        
                                        when 5 =>  --Receive crc 
                                            blk_mem_wr_en <= '0';
                                            if( rx_busy_t = b"10" ) then 
                                                rx_busy_t <= "00";
                                                rx_st     <= rx_st + 1;
                                                
--                                                module    <= module + 1;
--                                                rx_st     <= 0;
--                                                tx_st     <= 0;
--                                                State     <= send;
                                            end if;
                                        
                                        ---------------------------------------------------------------------------------------  
                                        when 6 =>  --Timeout 400us
                                            if( to_integer(unsigned(rx_timeout_1ms))  < 20000) then --400us
                                                rx_timeout_1ms <= rx_timeout_1ms + 1;
                                            else
                                                rx_timeout_1ms  <= X"00_00_00_00"; --Clear timeout
                                                module          <= module + 1;
                                                module_addr     <= module_addr + 1;
                                                rx_st           <= 0;
                                                tx_st           <= 0;
                                                State           <= send;
                                            end if;  
                                        
                                        when others => null;
                                    end case;  
                                    
                                when others => null;
                            end case;

                        -----------------------------------------------------------------------------------------------------------------------------------------
                        --Module of DDT N2   
                        when 4 => 
                            case State is
                                when send       =>
                                    case tx_st is
                                        --Identifier
                                        when 0  => if(TX_BUSY = '0') then TX_EN <= '1'; TX_DATA <= X"78"; tx_st <= tx_st + 1; end if;
                                        when 1  => if(TX_BUSY = '0') then tx_st <= tx_st + 1; end if; TX_EN <= '0'; 
                                        --Frame Length    
                                        when 2  => if(TX_BUSY = '0') then TX_EN <= '1'; TX_DATA <= X"04"; tx_st <= tx_st + 1; end if;  
                                        when 3  => if(TX_BUSY = '0') then tx_st <= tx_st + 1; end if; TX_EN <= '0'; 
                                        --Address Code    
                                        when 4  => if(TX_BUSY = '0') then TX_EN <= '1'; TX_DATA <= X"02"; tx_st <= tx_st + 1; end if;
                                        when 5  => if(TX_BUSY = '0') then tx_st <= tx_st + 1; end if; TX_EN <= '0'; 
                                        --Command    
                                        when 6  => if(TX_BUSY = '0') then TX_EN <= '1'; TX_DATA <= X"01"; tx_st <= tx_st + 1; end if;     
                                        when 7  => if(TX_BUSY = '0') then tx_st <= tx_st + 1; end if; TX_EN <= '0'; 
                                         --Checksum    
                                        when 8  => if(TX_BUSY = '0') then TX_EN <= '1'; TX_DATA <= X"7F"; tx_st <= tx_st + 1; end if;  
                                        when 9  => if(TX_BUSY = '0') then tx_st <= tx_st + 1; end if; TX_EN <= '0';
                                        when 10 => if(TX_BUSY = '0') then TX_DATA <= X"00"; State <= receive; tx_st <= 0; end if;                   
                                        when others => null;
                                    end case; 
                                
                                when receive    =>  
                                    case rx_st is
                                        when 0 =>
                                            if( rx_busy_t = b"10" ) then
                                                rx_busy_t    <= "00";
                                                rx_sync_word <= rx_sync_word(23 downto 0) & RX_DATA;
                                                if( rx_sync_word(23 downto 0) & RX_DATA = X"78_08_02_02" ) then
                                                    rx_sync_word    <= X"00_00_00_00";
                                                    rx_timeout_30ms <= X"00_00_00_00"; --Clear timeout
                                                    rx_st           <= rx_st + 1;
                                                end if;
                                            else
                                                if( to_integer(unsigned(rx_timeout_30ms))  < timeout) then
                                                    rx_timeout_30ms <= rx_timeout_30ms + 1;
                                                else
                                                    
                                                    --Clear RAM
                                                    case clear_st is
                                                        when 0      => 
                                                            blk_mem_wr_en   <= '1';
                                                            blk_mem_wr_din  <= X"00";
                                                            blk_mem_wr_addr <= blk_mem_wr_addr + 1;
                                                            clear_st        <= clear_st + 1;
                                                        when 1 to 3 =>
                                                            blk_mem_wr_din  <= X"00";
                                                            blk_mem_wr_addr <= blk_mem_wr_addr + 1;
                                                            clear_st        <= clear_st + 1; 
                                                        when 4      =>
                                                            --blk_mem_wr_en   <= '0';
                                                            --blk_mem_wr_din  <= X"00";
                                                            --module          <= module + 1;
                                                            --module_addr     <= module_addr + 1;
                                                            
                                                            
                                                            rx_timeout_30ms <= X"00_00_00_00"; --Clear timeout
                                                            rx_st           <= 0;
                                                            tx_st           <= 0;
                                                            State           <= send;
                                                            clear_st        <= 0;
                                                            
                                                            ---
                                                            blk_mem_wr_en   <= '0';   
                                                            blk_mem_wr_din  <= X"00";
                                                            module          <= 0;
                                                            if(samples < 17) then
                                                                samples     <= samples + 1;
                                                                module_addr <= X"01";
                                                            else
                                                                samples     <= 0;
                                                                alg_state   <= alg_state + 1;
                                                            end if; 
                                                            
                                                            
                                                        when others => null;
                                                    end case;   
                                                end if; 
                                            end if;
                                        
                                        when 1 to 4 => --Receive data 
                                            if( rx_busy_t = b"10" ) then 
                                                rx_busy_t       <= "00";
                                                blk_mem_wr_en   <= '1';
                                                blk_mem_wr_din  <= RX_DATA;
                                                blk_mem_wr_addr <= blk_mem_wr_addr + 1;
                                                rx_st           <= rx_st + 1;
                                            else
                                                blk_mem_wr_en   <= '0'; 
                                                blk_mem_wr_din  <= X"00";
                                            end if;
                                        
                                        when 5 =>  --Receive crc 
                                            blk_mem_wr_en  <= '0';
                                            blk_mem_wr_din <= X"00";
                                            if( rx_busy_t = b"10" ) then 
                                                rx_busy_t <= "00";
                                                rx_st <= rx_st + 1;
                                            end if;
                                        
                                        ---------------------------------------------------------------------------------------  
                                        when 6 =>  --Timeout 400us
                                            if( to_integer(unsigned(rx_timeout_1ms))  < 20000) then --400us
                                                rx_timeout_1ms <= rx_timeout_1ms + 1;
                                            else
                                                rx_timeout_1ms  <= X"00_00_00_00"; --Clear timeout
                                                rx_st           <= rx_st + 1;
                                            end if;  
                                        
                                        when 7 =>
                                            blk_mem_wr_en   <= '0';   
                                            blk_mem_wr_din  <= X"00";
                                            module          <= 0;
                                            if(samples < 17) then
                                                samples     <= samples + 1;
                                                tx_st       <= 0;
                                                rx_st       <= 0;
                                                State       <= send;
                                                module_addr <= X"01";
                                            else
                                                samples     <= 0;
                                                alg_state   <= alg_state + 1;
                                            end if; 
  
                                        when others => null;
                                    end case;  
                                    
                                when others => null;
                            end case;
  
                        when others => null;
                    end case;
                    
                    

                when 4 => --END
                    RAM_25702_WR_DATA_DONE  <= '1';
                    blk_mem_wr_addr         <= b"00000000000";
                    alg_state               <= alg_state + 1;
                     
                when 5 =>
                    RAM_25702_WR_DATA_DONE  <= '0';
                    alg_state               <= alg_state + 1;
                
                --Wait PKT 25702 is transmit      
                when 6 =>
                    if (sync_pkt2 = '1' and sync_pkt3 = '0') then
                        --alg_state <= alg_state + 1;
                        mem_st          <= 0;
                        alg_state       <= 0;
                        module          <= 0;
                        samples         <= 0;
                        module_addr     <= X"01";
                        tx_st           <= 0;
                        rx_st           <= 0;
                        State           <= send;
                    end if; 
                when others => null;
            end case; 
        end if;
    end process modules_proto;  


end Behavioral;


--                                        when 11 =>
--                                            blk_mem_wr_en   <= '0';   
--                                            blk_mem_wr_din  <= X"00";
--                                            module          <= 0;
--                                            if(samples < 17) then
--                                                samples     <= samples + 1;
--                                                tx_st       <= 0;
--                                                rx_st       <= 0;
--                                                State       <= send;
--                                                module_addr <= X"01";
--                                            else
--                                                samples   <= 0;
--                                                alg_state <= alg_state + 1;
--                                            end if;    
                                        
                                        
                                        
--                                        when 10 =>  --Receive crc 
--                                            blk_mem_wr_en   <= '0';
--                                            blk_mem_wr_din  <= X"00"; 
--                                            if( rx_busy_t = b"10" ) then 
--                                                rx_busy_t   <= "00";
--                                                --rx_st       <= rx_st + 1;
                                                


                                                
--                                                if( module >= 2) then
--                                                    --blk_mem_wr_en   <= '0';   
--                                                    --blk_mem_wr_din  <= X"00";
--                                                    module          <= 0;
--                                                    if(samples < 17) then
--                                                        samples     <= samples + 1;
--                                                        tx_st       <= 0;
--                                                        rx_st       <= 0;
--                                                        State       <= send;
--                                                        module_addr <= X"01";
--                                                    else
--                                                        samples     <= 0;
--                                                        alg_state   <= alg_state + 1;
--                                                    end if; 
--                                                else
--                                                    module      <= module + 1;
--                                                    module_addr <= module_addr + 1;
--                                                    rx_st       <= 0;
--                                                    tx_st       <= 0;
--                                                    State       <= send;
--                                                end if;
   
--                                            end if;



                        --Test
--                        when 8 => 
--                            case rx_st is
--                                when 0 =>
--                                    blk_mem_wr_en   <= '1';
--                                    blk_mem_wr_din  <= X"A1";
--                                    blk_mem_wr_addr <= blk_mem_wr_addr + 1;
--                                    rx_st           <= rx_st + 1;
                                    
--                                when 1 =>
--                                    blk_mem_wr_din  <= X"B2";
--                                    blk_mem_wr_addr <= blk_mem_wr_addr + 1; 
--                                    rx_st           <= rx_st + 1;
                                
--                                when 2 =>
--                                    blk_mem_wr_din  <= X"C3";
--                                    blk_mem_wr_addr <= blk_mem_wr_addr + 1; 
--                                    rx_st           <= rx_st + 1;
                                                       
--                                when 3 =>
--                                    module <= module + 1;
--                                    blk_mem_wr_din  <= X"D4";
--                                    blk_mem_wr_addr <= blk_mem_wr_addr + 1; 
--                                    rx_st           <= 0;
--                                when others => null;
--                            end case;
                        
                        --Test
--                        when 9 => 
--                            case rx_st is
--                                when 0 =>
--                                    blk_mem_wr_en   <= '1';
--                                    blk_mem_wr_din  <= X"12";
--                                    blk_mem_wr_addr <= blk_mem_wr_addr + 1;
--                                    rx_st           <= rx_st + 1;
                                    
--                                when 1 =>
--                                    blk_mem_wr_din  <= X"34";
--                                    blk_mem_wr_addr <= blk_mem_wr_addr + 1; 
--                                    rx_st           <= rx_st + 1;
                                
--                                when 2 =>
--                                    blk_mem_wr_din  <= X"56";
--                                    blk_mem_wr_addr <= blk_mem_wr_addr + 1; 
--                                    rx_st           <= rx_st + 1;
                                                       
--                                when 3 =>
--                                    blk_mem_wr_din  <= X"78";
--                                    blk_mem_wr_addr <= blk_mem_wr_addr + 1; 
--                                    --module          <= 0;
--                                    rx_st           <= rx_st + 1;
                                
--                                when 4 => 
--                                    blk_mem_wr_en   <= '0';   
--                                    blk_mem_wr_din  <= X"00";
--                                    module          <= 0;
--                                    if(samples < 17) then
--                                        samples     <= samples + 1;
--                                        tx_st       <= 0;
--                                        rx_st       <= 0;
--                                        State       <= send;
--                                        module_addr <= X"01";
--                                    else
--                                        samples   <= 0;
--                                        alg_state <= alg_state + 1;
--                                    end if;
--                                when others => null;
--                            end case;