set_property BITSTREAM.GENERAL.COMPRESS         TRUE    [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE        3       [current_design]
set_property CONFIG_VOLTAGE                     3.3     [current_design]
set_property CFGBVS                             VCCO    [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR    NO      [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH      2       [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE     YES     [current_design]



set_property PACKAGE_PIN N14                    [get_ports sys_clk]
set_property IOSTANDARD  LVCMOS33               [get_ports sys_clk]

#SET FD        
set_property PACKAGE_PIN E13                    [get_ports FD]
set_property IOSTANDARD  LVCMOS33               [get_ports FD]

#SET IP ADDRESS OF Module        
set_property PACKAGE_PIN F2                     [get_ports {ADDR_DEV[0]}]
set_property PACKAGE_PIN E1                     [get_ports {ADDR_DEV[1]}]
set_property PACKAGE_PIN G5                     [get_ports {ADDR_DEV[2]}]
set_property PACKAGE_PIN G4                     [get_ports {ADDR_DEV[3]}]
set_property PACKAGE_PIN G2                     [get_ports {ADDR_DEV[4]}]
set_property IOSTANDARD  LVCMOS33               [get_ports ADDR_DEV*]
set_property PULLUP      TRUE                   [get_ports ADDR_DEV*]


set_property PACKAGE_PIN E16                    [get_ports PHY1_MDC]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_MDC]

set_property PACKAGE_PIN F15                    [get_ports PHY1_MDIO]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_MDIO]

set_property PACKAGE_PIN G14                    [get_ports PHY1_RESET_N]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_RESET_N]

set_property PACKAGE_PIN F14                    [get_ports PHY1_COMA]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_COMA]

#set_property PACKAGE_PIN                        [get_ports PHY1_TX_DISABLE]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_TX_DISABLE]

set_property PACKAGE_PIN B10                    [get_ports PHY1_GTXC]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_GTXC]
set_property SLEW FAST                          [get_ports PHY1_GTXC]

set_property PACKAGE_PIN D13                    [get_ports PHY1_RXC]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_RXC]

set_property PACKAGE_PIN C16                    [get_ports PHY1_RXER]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_RXER]

set_property PACKAGE_PIN D15                    [get_ports PHY1_RXDV]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_RXDV]

set_property PACKAGE_PIN D16                    [get_ports {PHY1_RXD[0]}]
set_property PACKAGE_PIN D14                    [get_ports {PHY1_RXD[1]}]
set_property PACKAGE_PIN C14                    [get_ports {PHY1_RXD[2]}]
set_property PACKAGE_PIN F13                    [get_ports {PHY1_RXD[3]}]
set_property PACKAGE_PIN F12                    [get_ports {PHY1_RXD[4]}]
set_property PACKAGE_PIN D9                     [get_ports {PHY1_RXD[5]}]
set_property PACKAGE_PIN D8                     [get_ports {PHY1_RXD[6]}]
set_property PACKAGE_PIN C9                     [get_ports {PHY1_RXD[7]}]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_RXD*]

set_property PACKAGE_PIN C11                    [get_ports PHY1_TXC]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_TXC]

set_property PACKAGE_PIN B11                    [get_ports PHY1_TXEN]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_TXEN]
set_property SLEW FAST                          [get_ports PHY1_TXEN]

set_property PACKAGE_PIN A10                    [get_ports PHY1_TXER]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_TXER]

set_property PACKAGE_PIN A12                    [get_ports {PHY1_TXD[0]}]
set_property PACKAGE_PIN B12                    [get_ports {PHY1_TXD[1]}]
set_property PACKAGE_PIN A13                    [get_ports {PHY1_TXD[2]}]
set_property PACKAGE_PIN A14                    [get_ports {PHY1_TXD[3]}]
set_property PACKAGE_PIN B14                    [get_ports {PHY1_TXD[4]}]
set_property PACKAGE_PIN A15                    [get_ports {PHY1_TXD[5]}]
set_property PACKAGE_PIN B15                    [get_ports {PHY1_TXD[6]}]
set_property PACKAGE_PIN B16                    [get_ports {PHY1_TXD[7]}]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_TXD*]
set_property SLEW FAST                          [get_ports PHY1_TXD*]

#[Place 30-876] Port 'PHY1_RXC'  is assigned to PACKAGE_PIN 'P11'  which can only be used as the N side of a differential clock input. 
#Please use the following constraint(s) to pass this DRC check:
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {PHY1_RXC_IBUF}]



#set_property PACKAGE_PIN M16                    [get_ports PHY2_ECLK]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_ECLK]

set_property PACKAGE_PIN N6                     [get_ports PHY2_MDC]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_MDC]

set_property PACKAGE_PIN P6                     [get_ports PHY2_MDIO]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_MDIO]

set_property PACKAGE_PIN M14                    [get_ports PHY2_RESET_N]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_RESET_N]

set_property PACKAGE_PIN M12                    [get_ports PHY2_COMA]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_COMA]

#set_property PACKAGE_PIN                      [get_ports PHY2_TX_DISABLE]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_TX_DISABLE]

set_property PACKAGE_PIN P9                     [get_ports PHY2_GTXC]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_GTXC]
set_property SLEW FAST                          [get_ports PHY2_GTXC]

set_property PACKAGE_PIN N11                    [get_ports PHY2_RXC]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_RXC]

set_property PACKAGE_PIN T10                    [get_ports PHY2_RXER]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_RXER]

set_property PACKAGE_PIN R11                     [get_ports PHY2_RXDV]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_RXDV]

set_property PACKAGE_PIN R10                     [get_ports {PHY2_RXD[0]}]
set_property PACKAGE_PIN R12                     [get_ports {PHY2_RXD[1]}]
set_property PACKAGE_PIN T12                     [get_ports {PHY2_RXD[2]}]
set_property PACKAGE_PIN T13                     [get_ports {PHY2_RXD[3]}]
set_property PACKAGE_PIN R13                     [get_ports {PHY2_RXD[4]}]
set_property PACKAGE_PIN T14                     [get_ports {PHY2_RXD[5]}]
set_property PACKAGE_PIN R15                     [get_ports {PHY2_RXD[6]}]
set_property PACKAGE_PIN T15                     [get_ports {PHY2_RXD[7]}]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_RXD*]

set_property PACKAGE_PIN P10                     [get_ports PHY2_TXC]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_TXC]

set_property PACKAGE_PIN P8                     [get_ports PHY2_TXEN]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_TXEN]
set_property SLEW FAST                          [get_ports PHY2_TXEN]

set_property PACKAGE_PIN N9                     [get_ports PHY2_TXER]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_TXER]

set_property PACKAGE_PIN R8                     [get_ports {PHY2_TXD[0]}]
set_property PACKAGE_PIN R6                     [get_ports {PHY2_TXD[1]}]
set_property PACKAGE_PIN T9                     [get_ports {PHY2_TXD[2]}]
set_property PACKAGE_PIN T8                     [get_ports {PHY2_TXD[3]}]
set_property PACKAGE_PIN R7                     [get_ports {PHY2_TXD[4]}]
set_property PACKAGE_PIN R5                     [get_ports {PHY2_TXD[5]}]
set_property PACKAGE_PIN T7                     [get_ports {PHY2_TXD[6]}]
set_property PACKAGE_PIN T5                     [get_ports {PHY2_TXD[7]}]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_TXD*]
set_property SLEW FAST                          [get_ports PHY2_TXD*]


#---------------------------------------------------------------------------------------
#--RS485 CO1
set_property PACKAGE_PIN G12                     [get_ports SERIAL1_RX]
set_property IOSTANDARD  LVCMOS33                [get_ports SERIAL1_RX]

set_property PACKAGE_PIN G11                     [get_ports SERIAL1_TX]
set_property IOSTANDARD  LVCMOS33                [get_ports SERIAL1_TX]

set_property PACKAGE_PIN G16                     [get_ports SERIAL1_RE]
set_property IOSTANDARD  LVCMOS33                [get_ports SERIAL1_RE]

set_property PACKAGE_PIN G15                     [get_ports SERIAL1_DE]
set_property IOSTANDARD  LVCMOS33                [get_ports SERIAL1_DE]


#---------------------------------------------------------------------------------------
#--RS485 CO2
set_property PACKAGE_PIN L13                     [get_ports SERIAL2_RX]
set_property IOSTANDARD  LVCMOS33                [get_ports SERIAL2_RX]

set_property PACKAGE_PIN H13                     [get_ports SERIAL2_TX]
set_property IOSTANDARD  LVCMOS33                [get_ports SERIAL2_TX]

set_property PACKAGE_PIN K12                     [get_ports SERIAL2_RE]
set_property IOSTANDARD  LVCMOS33                [get_ports SERIAL2_RE]

set_property PACKAGE_PIN L14                     [get_ports SERIAL2_DE]
set_property IOSTANDARD  LVCMOS33                [get_ports SERIAL2_DE]





##set_property CFGBVS VCCO                        [current_design]
##set_property CONFIG_VOLTAGE 3.3                 [current_design]
##set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 2    [current_design]

#set_property BITSTREAM.GENERAL.COMPRESS         TRUE    [current_design]
#set_property BITSTREAM.CONFIG.CONFIGRATE        3       [current_design]
#set_property CONFIG_VOLTAGE                     3.3     [current_design]
#set_property CFGBVS                             VCCO    [current_design]
#set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR    NO      [current_design]
#set_property BITSTREAM.CONFIG.SPI_BUSWIDTH      2       [current_design]
#set_property BITSTREAM.CONFIG.SPI_FALL_EDGE     YES     [current_design]



#set_property PACKAGE_PIN N14                    [get_ports sys_clk]
#set_property IOSTANDARD  LVCMOS33               [get_ports sys_clk]

##SET FD        
#set_property PACKAGE_PIN E13                    [get_ports FD]
#set_property IOSTANDARD  LVCMOS33               [get_ports FD]

##SET IP ADDRESS OF Module        
#set_property PACKAGE_PIN F2                     [get_ports {ADDR_DEV[0]}]
#set_property PACKAGE_PIN E1                     [get_ports {ADDR_DEV[1]}]
#set_property PACKAGE_PIN G5                     [get_ports {ADDR_DEV[2]}]
#set_property PACKAGE_PIN G4                     [get_ports {ADDR_DEV[3]}]
#set_property PACKAGE_PIN G2                     [get_ports {ADDR_DEV[4]}]
#set_property IOSTANDARD  LVCMOS33               [get_ports ADDR_DEV*]
#set_property PULLUP      TRUE                   [get_ports ADDR_DEV*]


#set_property PACKAGE_PIN E16                    [get_ports PHY1_MDC]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_MDC]

#set_property PACKAGE_PIN F15                    [get_ports PHY1_MDIO]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_MDIO]

#set_property PACKAGE_PIN G14                    [get_ports PHY1_RESET_N]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_RESET_N]

#set_property PACKAGE_PIN F14                    [get_ports PHY1_COMA]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_COMA]

##set_property PACKAGE_PIN                        [get_ports PHY1_TX_DISABLE]
##set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_TX_DISABLE]

#set_property PACKAGE_PIN B10                    [get_ports PHY1_GTXC]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_GTXC]
#set_property SLEW FAST                          [get_ports PHY1_GTXC]

#set_property PACKAGE_PIN D13                    [get_ports PHY1_RXC]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_RXC]

#set_property PACKAGE_PIN C16                    [get_ports PHY1_RXER]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_RXER]

#set_property PACKAGE_PIN D15                    [get_ports PHY1_RXDV]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_RXDV]

#set_property PACKAGE_PIN D16                    [get_ports {PHY1_RXD[0]}]
#set_property PACKAGE_PIN D14                    [get_ports {PHY1_RXD[1]}]
#set_property PACKAGE_PIN C14                    [get_ports {PHY1_RXD[2]}]
#set_property PACKAGE_PIN F13                    [get_ports {PHY1_RXD[3]}]
#set_property PACKAGE_PIN F12                    [get_ports {PHY1_RXD[4]}]
#set_property PACKAGE_PIN D9                     [get_ports {PHY1_RXD[5]}]
#set_property PACKAGE_PIN D8                     [get_ports {PHY1_RXD[6]}]
#set_property PACKAGE_PIN C9                     [get_ports {PHY1_RXD[7]}]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_RXD*]

#set_property PACKAGE_PIN C11                    [get_ports PHY1_TXC]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_TXC]

#set_property PACKAGE_PIN B11                    [get_ports PHY1_TXEN]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_TXEN]
#set_property SLEW FAST                          [get_ports PHY1_TXEN]

#set_property PACKAGE_PIN A10                    [get_ports PHY1_TXER]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_TXER]

#set_property PACKAGE_PIN A12                    [get_ports {PHY1_TXD[0]}]
#set_property PACKAGE_PIN B12                    [get_ports {PHY1_TXD[1]}]
#set_property PACKAGE_PIN A13                    [get_ports {PHY1_TXD[2]}]
#set_property PACKAGE_PIN A14                    [get_ports {PHY1_TXD[3]}]
#set_property PACKAGE_PIN B14                    [get_ports {PHY1_TXD[4]}]
#set_property PACKAGE_PIN A15                    [get_ports {PHY1_TXD[5]}]
#set_property PACKAGE_PIN B15                    [get_ports {PHY1_TXD[6]}]
#set_property PACKAGE_PIN B16                    [get_ports {PHY1_TXD[7]}]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_TXD*]
#set_property SLEW FAST                          [get_ports PHY1_TXD*]

##[Place 30-876] Port 'PHY1_RXC'  is assigned to PACKAGE_PIN 'P11'  which can only be used as the N side of a differential clock input. 
##Please use the following constraint(s) to pass this DRC check:
##set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {PHY1_RXC_IBUF}]



##set_property PACKAGE_PIN M16                    [get_ports PHY2_ECLK]
##set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_ECLK]

#set_property PACKAGE_PIN N6                     [get_ports PHY2_MDC]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_MDC]

#set_property PACKAGE_PIN P6                     [get_ports PHY2_MDIO]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_MDIO]

#set_property PACKAGE_PIN M14                    [get_ports PHY2_RESET_N]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_RESET_N]

#set_property PACKAGE_PIN M12                    [get_ports PHY2_COMA]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_COMA]

##set_property PACKAGE_PIN                      [get_ports PHY2_TX_DISABLE]
##set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_TX_DISABLE]

#set_property PACKAGE_PIN P9                     [get_ports PHY2_GTXC]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_GTXC]
#set_property SLEW FAST                          [get_ports PHY2_GTXC]

#set_property PACKAGE_PIN N11                    [get_ports PHY2_RXC]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_RXC]

#set_property PACKAGE_PIN T10                    [get_ports PHY2_RXER]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_RXER]

#set_property PACKAGE_PIN R11                     [get_ports PHY2_RXDV]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_RXDV]

#set_property PACKAGE_PIN R10                     [get_ports {PHY2_RXD[0]}]
#set_property PACKAGE_PIN R12                     [get_ports {PHY2_RXD[1]}]
#set_property PACKAGE_PIN T12                     [get_ports {PHY2_RXD[2]}]
#set_property PACKAGE_PIN T13                     [get_ports {PHY2_RXD[3]}]
#set_property PACKAGE_PIN R13                     [get_ports {PHY2_RXD[4]}]
#set_property PACKAGE_PIN T14                     [get_ports {PHY2_RXD[5]}]
#set_property PACKAGE_PIN R15                     [get_ports {PHY2_RXD[6]}]
#set_property PACKAGE_PIN T15                     [get_ports {PHY2_RXD[7]}]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_RXD*]

#set_property PACKAGE_PIN P10                     [get_ports PHY2_TXC]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_TXC]

#set_property PACKAGE_PIN P8                     [get_ports PHY2_TXEN]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_TXEN]
#set_property SLEW FAST                          [get_ports PHY2_TXEN]

#set_property PACKAGE_PIN N9                     [get_ports PHY2_TXER]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_TXER]

#set_property PACKAGE_PIN R8                     [get_ports {PHY2_TXD[0]}]
#set_property PACKAGE_PIN R6                     [get_ports {PHY2_TXD[1]}]
#set_property PACKAGE_PIN T9                     [get_ports {PHY2_TXD[2]}]
#set_property PACKAGE_PIN T8                     [get_ports {PHY2_TXD[3]}]
#set_property PACKAGE_PIN R7                     [get_ports {PHY2_TXD[4]}]
#set_property PACKAGE_PIN R5                     [get_ports {PHY2_TXD[5]}]
#set_property PACKAGE_PIN T7                     [get_ports {PHY2_TXD[6]}]
#set_property PACKAGE_PIN T5                     [get_ports {PHY2_TXD[7]}]
#set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_TXD*]
#set_property SLEW FAST                          [get_ports PHY2_TXD*]



##---------------------------------------------------------------------------------------
##--ADC

#set_property PACKAGE_PIN L13                    [get_ports ADC_SER1]
#set_property IOSTANDARD  LVCMOS33               [get_ports ADC_SER1]

#set_property PACKAGE_PIN L14                    [get_ports ADC_SER2]
#set_property IOSTANDARD  LVCMOS33               [get_ports ADC_SER2]

#set_property PACKAGE_PIN K12                    [get_ports ADC_SER3]
#set_property IOSTANDARD  LVCMOS33               [get_ports ADC_SER3]

#set_property PACKAGE_PIN K13                    [get_ports ADC_SER4]
#set_property IOSTANDARD  LVCMOS33               [get_ports ADC_SER4]

#set_property PACKAGE_PIN J15                    [get_ports ADC_RST]
#set_property IOSTANDARD  LVCMOS33               [get_ports ADC_RST]

#set_property PACKAGE_PIN J16                    [get_ports ADC_CS]
















#set_property IOSTANDARD  LVCMOS33               [get_ports ADC_CS]

##set_property PACKAGE_PIN J13                    [get_ports ADC_CONV]
#set_property PACKAGE_PIN H14                    [get_ports ADC_CONV]
#set_property IOSTANDARD  LVCMOS33               [get_ports ADC_CONV]

#set_property PACKAGE_PIN H16                    [get_ports ADC_SCLK]
#set_property IOSTANDARD  LVCMOS33               [get_ports ADC_SCLK]



##---------------------------------------------------------------------------------------
##--DDS
##set_property PACKAGE_PIN G11                    [get_ports DDS_RST]
##set_property IOSTANDARD  LVCMOS33               [get_ports DDS_RST]

##set_property PACKAGE_PIN G15                    [get_ports DDS_MCLK]
##set_property IOSTANDARD  LVCMOS33               [get_ports DDS_MCLK]

##set_property PACKAGE_PIN H14                    [get_ports DDS_SCLK]
##set_property IOSTANDARD  LVCMOS33               [get_ports DDS_SCLK]

##set_property PACKAGE_PIN G12                    [get_ports DDS_FSYNC]
##set_property IOSTANDARD  LVCMOS33               [get_ports DDS_FSYNC]

##set_property PACKAGE_PIN H13                    [get_ports DDS_SDATA]
##set_property IOSTANDARD  LVCMOS33               [get_ports DDS_SDATA]

##set_property PACKAGE_PIN G16                    [get_ports DDS_SLEEP]
##set_property IOSTANDARD  LVCMOS33               [get_ports DDS_SLEEP]


##set_property PACKAGE_PIN                     [get_ports FD_OUT]
##set_property IOSTANDARD  LVCMOS33               [get_ports FD_OUT]

##[Place 30-7] A clock IOB / BUFR component pair is not placed in a routable site pair. The clock IOB component must be placed in  the same clock region as the BUFR for optimal performance. If this sub optimal condition is acceptable for this design, you may use the CLOCK_DEDICATED_ROUTE constraint in the .xdc file to demote this message to a WARNING. However, the use of this override is highly discouraged. These examples can be used directly in the .xdc file to override this clock rule.
##set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets mac/U0/mii_interface/mii_tx_clk_ibuf]

##mac/U0/mii_interface/mii_tx_clk_ibuf_i (IBUF.O) is locked to IOB_X0Y78
##mac/U0/mii_interface/bufr_mii_tx_clk (BUFR.I) is provisionally placed by clockplacer on BUFR_X1Y6

##The above error could possibly be related to other connected instances. Following is a list of 
##all the related clock rules and their respective instances.

##Clock Rule: rule_bufh_bufr_ramb
##Status: PASS 
##Rule Description: Reginal buffers in the same clock region must drive a total number of brams less
##than the capacity of the region
##and mac/U0/mii_interface/bufr_mii_tx_clk (BUFR.O) is provisionally placed by clockplacer on BUFR_X1Y6

