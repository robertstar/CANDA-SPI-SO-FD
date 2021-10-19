set_property CFGBVS VCCO                        [current_design]
set_property CONFIG_VOLTAGE 3.3                 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4    [current_design]

set_property PACKAGE_PIN N11                    [get_ports sys_clk]
set_property IOSTANDARD  LVCMOS33               [get_ports sys_clk]


############################################################################
# PHY1 pins                                                                #
############################################################################
#E_RXDV	    BANK14_L13	     BANK14_N12	E_RXD0
#E_RXD1	    BANK14_K12	     BANK14_K13	E_RXD2
#E_RXD3	    BANK14_P10	     BANK14_P11	E_RXC
#E_RXD4	    BANK14_N9	     BANK14_P9	E_RXD5
#E_RXD6	    BANK14_T10	     BANK14_R11	E_RXD7
#E_RXER	    BANK14_T9	     BANK14_R10	E_COL
#E_CRS	    BANK14_T8	     BANK14_R8	E_GTXC
#E_TXEN	    BANK14_T7	     BANK14_R7	E_TXD0
#E_RESET	BANK14_T5	     BANK14_R6	E_TXD1
#E_TXD2	    BANK14_P6	     BANK14_R5	E_TXD3
#E_TXC	    BANK14_N6	     BANK14_M6	E_TXD4
#E_TXD5	    BANK34_L5	     BANK34_P5	E_TXD6
#E_TXD7	    BANK34_T4	     BANK34_T3	E_TXER
#E_MDC	    BANK34_R3	     BANK34_T2	E_MDIO

set_property PACKAGE_PIN R3                     [get_ports PHY1_MDC]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_MDC]

set_property PACKAGE_PIN T2                     [get_ports PHY1_MDIO]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_MDIO]

set_property PACKAGE_PIN T5                     [get_ports PHY1_RESET_N]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_RESET_N]

set_property PACKAGE_PIN R2                     [get_ports PHY1_COMA]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_COMA]

set_property PACKAGE_PIN R1                     [get_ports PHY1_TX_DISABLE]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_TX_DISABLE]

set_property PACKAGE_PIN R8                     [get_ports PHY1_GTXC]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_GTXC]
set_property SLEW FAST                          [get_ports PHY1_GTXC]

set_property PACKAGE_PIN P11                    [get_ports PHY1_RXC]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_RXC]

set_property PACKAGE_PIN T9                     [get_ports PHY1_RXER]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_RXER]

set_property PACKAGE_PIN L13                    [get_ports PHY1_RXDV]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_RXDV]

set_property PACKAGE_PIN N12                    [get_ports {PHY1_RXD[0]}]
set_property PACKAGE_PIN K12                    [get_ports {PHY1_RXD[1]}]
set_property PACKAGE_PIN K13                    [get_ports {PHY1_RXD[2]}]
set_property PACKAGE_PIN P10                    [get_ports {PHY1_RXD[3]}]
set_property PACKAGE_PIN N9                     [get_ports {PHY1_RXD[4]}]
set_property PACKAGE_PIN P9                     [get_ports {PHY1_RXD[5]}]
set_property PACKAGE_PIN T10                    [get_ports {PHY1_RXD[6]}]
set_property PACKAGE_PIN R11                    [get_ports {PHY1_RXD[7]}]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_RXD*]

set_property PACKAGE_PIN N6                     [get_ports PHY1_TXC]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_TXC]

set_property PACKAGE_PIN T7                     [get_ports PHY1_TXEN]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_TXEN]
set_property SLEW FAST                          [get_ports PHY1_TXEN]

set_property PACKAGE_PIN T3                     [get_ports PHY1_TXER]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_TXER]

set_property PACKAGE_PIN R7                     [get_ports {PHY1_TXD[0]}]
set_property PACKAGE_PIN R6                     [get_ports {PHY1_TXD[1]}]
set_property PACKAGE_PIN P6                     [get_ports {PHY1_TXD[2]}]
set_property PACKAGE_PIN R5                     [get_ports {PHY1_TXD[3]}]
set_property PACKAGE_PIN M6                     [get_ports {PHY1_TXD[4]}]
set_property PACKAGE_PIN L5                     [get_ports {PHY1_TXD[5]}]
set_property PACKAGE_PIN P5                     [get_ports {PHY1_TXD[6]}]
set_property PACKAGE_PIN T4                     [get_ports {PHY1_TXD[7]}]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY1_TXD*]
set_property SLEW FAST                          [get_ports PHY1_TXD*]

#[Place 30-876] Port 'PHY1_RXC'  is assigned to PACKAGE_PIN 'P11'  which can only be used as the N side of a differential clock input. 
#Please use the following constraint(s) to pass this DRC check:
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {PHY1_RXC_IBUF}]



############################################################################
# PHY2 pins                                                                #
############################################################################
#E_MDIO	BANK35_D6	BANK35_D5	E_MDC
#E_TXER	BANK35_A5	BANK35_A4	E_TXD7
#E_TXD6	BANK35_B4	BANK35_A3	E_TXD5
#E_TXD4	BANK35_D4	BANK35_C4	E_TXC
#E_TXD3	BANK35_C3	BANK35_C2	E_TXD2
#E_TXD1	BANK35_B2	BANK35_A2	E_RESET
#E_TXD0	BANK35_C1	BANK35_B1	E_TXEN
#E_GTXC	BANK35_E2	BANK35_D1	E_CRS
#E_COL	BANK35_E3	BANK35_D3	E_RXER
#E_RXD7	BANK35_F5	BANK35_E5	E_RXD6
#E_RXD5	BANK35_F2	BANK35_E1	E_RXD4
#E_RXC	BANK35_F4	BANK35_F3	E_RXD3
#E_RXD2	BANK35_G2	BANK35_G1	E_RXD1
#E_RXD0	BANK35_H2	BANK35_H1	E_RXDV

set_property PACKAGE_PIN D5                     [get_ports PHY2_MDC]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_MDC]

set_property PACKAGE_PIN D6                     [get_ports PHY2_MDIO]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_MDIO]

set_property PACKAGE_PIN A2                     [get_ports PHY2_RESET_N]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_RESET_N]

set_property PACKAGE_PIN C7                     [get_ports PHY2_COMA]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_COMA]

set_property PACKAGE_PIN C6                     [get_ports PHY2_TX_DISABLE]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_TX_DISABLE]

set_property PACKAGE_PIN E2                     [get_ports PHY2_GTXC]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_GTXC]
set_property SLEW FAST                          [get_ports PHY2_GTXC]

set_property PACKAGE_PIN F4                     [get_ports PHY2_RXC]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_RXC]

set_property PACKAGE_PIN D3                     [get_ports PHY2_RXER]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_RXER]

set_property PACKAGE_PIN H1                     [get_ports PHY2_RXDV]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_RXDV]

set_property PACKAGE_PIN H2                     [get_ports {PHY2_RXD[0]}]
set_property PACKAGE_PIN G1                     [get_ports {PHY2_RXD[1]}]
set_property PACKAGE_PIN G2                     [get_ports {PHY2_RXD[2]}]
set_property PACKAGE_PIN F3                     [get_ports {PHY2_RXD[3]}]
set_property PACKAGE_PIN E1                     [get_ports {PHY2_RXD[4]}]
set_property PACKAGE_PIN F2                     [get_ports {PHY2_RXD[5]}]
set_property PACKAGE_PIN E5                     [get_ports {PHY2_RXD[6]}]
set_property PACKAGE_PIN F5                     [get_ports {PHY2_RXD[7]}]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_RXD*]

set_property PACKAGE_PIN C4                     [get_ports PHY2_TXC]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_TXC]

set_property PACKAGE_PIN B1                     [get_ports PHY2_TXEN]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_TXEN]
set_property SLEW FAST                          [get_ports PHY2_TXEN]

set_property PACKAGE_PIN A5                     [get_ports PHY2_TXER]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_TXER]

set_property PACKAGE_PIN C1                     [get_ports {PHY2_TXD[0]}]
set_property PACKAGE_PIN B2                     [get_ports {PHY2_TXD[1]}]
set_property PACKAGE_PIN C2                     [get_ports {PHY2_TXD[2]}]
set_property PACKAGE_PIN C3                     [get_ports {PHY2_TXD[3]}]
set_property PACKAGE_PIN D4                     [get_ports {PHY2_TXD[4]}]
set_property PACKAGE_PIN A3                     [get_ports {PHY2_TXD[5]}]
set_property PACKAGE_PIN B4                     [get_ports {PHY2_TXD[6]}]
set_property PACKAGE_PIN A4                     [get_ports {PHY2_TXD[7]}]
set_property IOSTANDARD  LVCMOS33               [get_ports PHY2_TXD*]
set_property SLEW FAST                          [get_ports PHY2_TXD*]



#---------------------------------------------------------------------------------------
#--ADC

set_property PACKAGE_PIN N16                    [get_ports ADC_SER1]
set_property IOSTANDARD  LVCMOS33               [get_ports ADC_SER1]

set_property PACKAGE_PIN N14                    [get_ports ADC_SER2]
set_property IOSTANDARD  LVCMOS33               [get_ports ADC_SER2]

set_property PACKAGE_PIN P16                    [get_ports ADC_SER3]
set_property IOSTANDARD  LVCMOS33               [get_ports ADC_SER3]

set_property PACKAGE_PIN P15                    [get_ports ADC_SER4]
set_property IOSTANDARD  LVCMOS33               [get_ports ADC_SER4]

set_property PACKAGE_PIN R15                    [get_ports ADC_RST]
set_property IOSTANDARD  LVCMOS33               [get_ports ADC_RST]

set_property PACKAGE_PIN T14                    [get_ports ADC_CS]
set_property IOSTANDARD  LVCMOS33               [get_ports ADC_CS]

set_property PACKAGE_PIN R16                    [get_ports ADC_CONV]
set_property IOSTANDARD  LVCMOS33               [get_ports ADC_CONV]

set_property PACKAGE_PIN P13                    [get_ports ADC_SCLK]
set_property IOSTANDARD  LVCMOS33               [get_ports ADC_SCLK]



#---------------------------------------------------------------------------------------
#--DDS
set_property PACKAGE_PIN T12                    [get_ports DDS_RST]
set_property IOSTANDARD  LVCMOS33               [get_ports DDS_RST]

set_property PACKAGE_PIN R12                    [get_ports DDS_MCLK]
set_property IOSTANDARD  LVCMOS33               [get_ports DDS_MCLK]

set_property PACKAGE_PIN T13                    [get_ports DDS_SCLK]
set_property IOSTANDARD  LVCMOS33               [get_ports DDS_SCLK]

set_property PACKAGE_PIN P14                    [get_ports DDS_FSYNC]
set_property IOSTANDARD  LVCMOS33               [get_ports DDS_FSYNC]

set_property PACKAGE_PIN T15                    [get_ports DDS_SDATA]
set_property IOSTANDARD  LVCMOS33               [get_ports DDS_SDATA]

set_property PACKAGE_PIN R13                    [get_ports DDS_SLEEP]
set_property IOSTANDARD  LVCMOS33               [get_ports DDS_SLEEP]


set_property PACKAGE_PIN N13                    [get_ports FD_OUT]
set_property IOSTANDARD  LVCMOS33               [get_ports FD_OUT]