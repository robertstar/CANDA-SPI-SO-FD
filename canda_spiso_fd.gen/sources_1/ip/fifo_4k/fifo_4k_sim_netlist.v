// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Sep 21 07:24:46 2021
// Host        : pc running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top fifo_4k -prefix
//               fifo_4k_ fifo_arp_4k_sim_netlist.v
// Design      : fifo_arp_4k
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_arp_4k,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_4k
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    rd_data_count,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [9:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [4:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [12:0]rd_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [9:0]din;
  wire [4:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [12:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "10" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "5" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "2" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "4093" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "4092" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "13" *) 
  (* C_RD_DEPTH = "8192" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "13" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "1" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_4k_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_4k_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "13" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_4k_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [12:0]src_in_bin;
  input dest_clk;
  output [12:0]dest_out_bin;

  wire [12:0]async_path;
  wire [11:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [12:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [12:0]\dest_graysync_ff[1] ;
  wire [12:0]dest_out_bin;
  wire [11:0]gray_enc;
  wire src_clk;
  wire [12:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[12]),
        .Q(\dest_graysync_ff[0] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [12]),
        .Q(\dest_graysync_ff[1] [12]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [12]),
        .I2(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[11]_i_1 
       (.I0(\dest_graysync_ff[1] [11]),
        .I1(\dest_graysync_ff[1] [12]),
        .O(binval[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(binval[7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(binval[7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(binval[7]),
        .O(binval[6]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [12]),
        .I4(\dest_graysync_ff[1] [10]),
        .I5(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [12]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [12]),
        .I3(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[12] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [12]),
        .Q(dest_out_bin[12]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[11]_i_1 
       (.I0(src_in_bin[12]),
        .I1(src_in_bin[11]),
        .O(gray_enc[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[12] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[12]),
        .Q(async_path[12]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module fifo_4k_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_4k_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module fifo_4k_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_4k_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 147360)
`pragma protect data_block
5lRPhRUIcRgAjqT8KhQqhL+iZOpfFCRtbI1NL1cz2BfNs0g6B2YHhiD+47jRIjR4xlwF878nV8EH
ot8+OBWw5jilpeEEtHOqcrjdaXwg3gOZv2lO4csZmBN6lSFxiwdMXRU47zt68eHvmq9vgAgZ+732
GU4LJ9xGNJ3xKk+/UOs5hu3/hh3HCwlXn3HFDDwb1GUyBEsSYBD3BNHFVLMbPQXZOy9t442hTseq
dhOVgJxXE5rZZ6GX1CQ/5RV620q+nIojEfXny28Dq8hS6gqvXfv1uSkYaX8OVgV9bYvvWvB9jybI
n3WnQWYwjgk0jJ4UkHW/8194myEpKe8xiYcpM/MsJefvrhNEiz+CzKTfgpzvt4nlA+JF2lCKer3o
98Go1mVCJ+euu/cSvUdQv/CDFiBPwzX4xubrOVN3WFEwJdC2Rw92UqfODrD6IIQZMoLPkSAOsO29
Zj4HZF7+cWmiBpAugJwuShxKyFZz3dy2R4ZR6rTdmh6/NelaV0zBsnOn8c/Ybu04NtTrrFRvJhvg
FRGxtELlHTwkH7IeupFwEUuVQOjSnqf+5NUIloeROquzrPz9POF1diVVWQfYUXaKMSkYrvjqcXdV
w8DRv53FNsB+7cWUoNVZysW7reTh2zluUyb1upDlqd1709SP+hXKDPcKe6JJuIsi66z2q6hmAd+R
7LlsvEw8weRxLMQJkCVzPAiQlMANbgyAg4sDF3wHv5SmCsifb4i9Sh+EH0L/mUtdjImtDkUKH7Un
aCtxKfVQmZkh0VpGFEnuEusZlv12P+TeAE55VAhntpBdf4krg8Q92T+q9UzBe0hD3w9BRqSnvxhj
l+Tj6Wd2OvMQu9DNnaIDPls/8bCAQhDUaxUIIFOZfvPbfMX10sxjQrt9/9HmkFmnx4MudX71sU/F
1INJIL/qiM3fzwPTEb/20b3hN/TwFMeCKbxKunNCOY//q96+c4qBdvaFP/InXYiZr04Zw29rIsuv
fJnCZY2nP6B0PtG59wzAhG/pVG9+Ip0PDx4zOKlUJRaV8gQtgLL+EsVdUwyIIatkSotQo9lpFXQR
KA7rIMUttuRXgkMMQe1ULg990VsIDzrs8pUTrwhs+7cmBpiFzGCHNXY1NvHwG4Y8PuDqKYASegny
ZNBKe5UiHTjElTWm+5J5AXGSRC3f7Ba5vH/I0t/J2AvaDLNK+4lgYgfjkmEEWLsHUR0AN059Rn/m
Oozv7JdKS6aurzQ2qfSFgct5VZqR8DZ0bNhAqHdRi9Fre5Pobt/iqtfTWcfsV77oRJYVgpDY/3nP
Rwv57NdhMR/znjEmkqGff1isiCnjuu4g0+cIoLJgKHg8Z2l689hQJHa59icJQrqzlOAqhXccDuwx
uHpVqeytq5f43C2zP76/F7xqKEdKRfqMKPO5e3kaT9/2I7VepuwUEiT71LqKrTGNp1ZwJ7kZEY3G
eyT8c1KD2HfPqdNuBlUe03CNPwpOYeYDWBvCeXHsrrLU1N/MeNPnMQLL5WodEGhlsiDRuR+xUgUQ
ZGStrSk9aB+nfS8KZCaz30vA+cQ9AWq/3uEyIWSu/0bHz46nB9Hc8Po1PTbpMfinRIkDUOtju623
bOISD/OSPHUupBobaftoLgTPe89wiA8XzY4Yxo7SDsO1jjtHWU1n7VtR9MWhMAevq6iXwhoGvNxT
X6241Ta6Q8W9ofbZcZNhEz6Luct1vMtSD4dORfSSxnypRHOnGXLIqD+uNQR44sjBYzbtKq5fRLmj
dt0QPhvMYhl5h+cv4BPZAK6xz8Wfnv+XbN7u1gBcdwQu8MlrcYJl/G4mz8MU08avWBLILhrxWwnK
vue1XDWTnIykE3ZPhar7l8JYXYitcHvIEbzFAFe+elljahsf4UwHNUsU8Wws9cwlEtjfEOUaDTqV
C/IWH21Z/The/iA/ZebTb0sOZS99/hnLK0Cne9IznX9vkNrQ9OhbInvpgd2I9vliTyNappMGJ/HR
68Q8T/HfXAsEs7BkSY9P0m6Udn9b+X1JX8QE0RhvWDRfkzoxXNuLVrBW5YdV9lN1SozcsXpt13+6
SzVcEIWzK5xxRuStX9vZ5AK1vejhmQBWDiVAvsISGy5NRoP9TQcXKYYob9ohFgx4b8/4RrCaMHDV
tp/FPvlsW95H4InOovthGTdYi1f0Nb0wAlIjq4iFuqcMBDTBbzE5bcBT3xUvVRnzJwl21CzgpPXm
chzKJM58q1LqQewKfi3JY1JF/wAK5IVakb4m/siopuZOl6Dfkmt5MEoTmQjjs6qMS3llG7fQ8eNO
8i/2dMjIfdhbCjiI58mTBZ0wj1Q/+lZORhX4PZRTSq/IT4zVmpIQ35Xn+tmbVnxfgxgvYaNIo1A/
ggg17H4oAZSDiC/8iHU4VxMnluAzIOCoA1Nh5RO3VMFFKT5lcq6LovN8w1vIAehimUS9/NReRHR4
IQuJFe9Z38O23wp95GMUkr8Ax9eJlfCG7wokUCXYIFvez98Wu9mjwihZqrFdPC3rerR9uwgRtJJ5
APSUpQ37soXznK4fgNcdz5VBMh7GrmQi415X60PymSN8kvB9lCn5WHO4nqHYuATsWdBLeSihd3eo
+lgOImYjq1My7Fhgt2q4hIeJ5jnBue3gp+jZD5NJQA2VZRivm996Os521t16Ui/uI+db0LdUQjDr
HPLkMXEYMlgq3t8v+rGtlR39FbAb+HyiMf+RZqduoac0wwoSr3cS7jthjKnkByX1WARomhceDJRj
kCUdU87/MiT4Bnn8qBek4PUvbh+CjtuY8NZ4rY3NBdzeu3wOuz1+i/cAf0LUyFV0Q72VwX9nlZlS
9hY8ZpkM4aDD+NV1eVcNd8FubUrJoxe6TLCRQBHfn8jHyrs4It7+KRYPmU8WdZB5cE8litNFMVGT
XUETGQ9BM+2rm6x+2P7X8R3sT1+rS+et5p8t90VVUt8qbKyymcyMLdpiPq1+ypPVwpr6kQeBA4fD
Mkkx0NLNKW1msO1So1TWVrhgRgTFiSGYaZ/2hE/O8er2IZhxeUg0HHvOB6QFVmkSC/cUsHosD1dA
8mHMwbC5huUpiQ5xG6VDTRNZKUVl6YGZVjwp/WkbtNuLuIONVDcyo73kHNW9iR450qiQABB3gKib
2C+QTE59k6dTDRtDkCWicNlATsnlmexkV70YpvibjldnEumQSrehJTkLXkYf1EA/fChSE8TCOXF4
dw0Ny6/275CYBAyPz0/we5FkwhWb95s9fWert/NH6d3VnBCe3pwmj4kE90KfeDi8R5BWC7QM+1ht
0mA3uc07eJ8y61gKw90UoX/gcF1WPd/KESkaJa0zRo4GJjYAzsLeHRt1DZc1Vq02mjfr+PJmzeYF
GwFOyH/ZgnlpAoRfDwrIrYWEekIWPKNJcdNbd1iSphj5BxoBDpalO39a6jPqcw8jWbwHaX09uETh
WyZYit28h1nHcPnWftZmHipUqQ/YY6GGfNFRsnHmDijVIEEI4GEjlWMkK3eRyCyr5IiSgRKc7WIr
zcLVWIahnhdLkJUt6b+uaGUKiZ2lV9Et5zUvL1HrtHHO1CK8qDnoLBmGGoGJaCeIto9IkDlEPHqQ
HHzSTK2EoFZ4UlrRwN1UrHd1GEoMqHpZoPIcYvrtfSIo3/nhh3oSsmCi/3BMtGv9SsOxz5jxtPZr
EwpOkJSr78NvqfiAnQKW8DysKEzozm/J3fuYnVM4CbMaGrJiW7U2J/e/WZBZtNirVGEui7WRqtKU
Dnwdd9ZGv+oebVvwAGP+MncBIxYZe96E5WzwpgJZX1yevrQQMUA0HkooBa7cJ8iKARuNSt/16tgx
t0f4Vw5rtIekTuChk322Xcagev3YVlapQL2NWL4Qfd0L4cveNRfBil/OZPXPQk4qSLxoh3Viwkbe
ubjkBKtPcLNOVSNi3Bca1XYyHNsg/NOfCRTY9u32yUGwc/LBL0+ZDnCULV5ae0We8m5X2IvzsORc
AyL+a5T9Sol3G4HgiKehBjs/0vs/o0yr5EpGqY+ljSBK720/jJ8GzfAYIXj5F2Z2HX5losHwWRYN
/6LQslrTu9U1rZ4tkgH0awef+PqnpGSJ8gNa6tp9RIXsTEx/YMiBRQJWoXmVfL+B2BH4NdrW084m
bWtQVWS86g9SL3fwcLXYpw0GcOqmj7k9WbKJE0ouZQ/P12aYMQ4Bqt6O6XTWXkDCBlFCYyTMZ5D8
AtyMrsGJNSi+CngZfiWe7RBZbfUrAqJtamR32RdhioXPwwtSrzSemnrnzzOwgtsJ6NjU1XXx1gJw
WdHPl4Hmd2skCqaGGezBGSeEEidHUw4N00qJAfpSF7mq6Dr9nFIgRmy5/ux14GgFFdoVdBWgZiBM
DKwW5UTX56MDEf8K1JQQ0xV0pyXBEKWA4BG8Cu3sS8OOkEQnj6eXZEHCG8CEGXY1xpvBZP5KgLL6
xIRNI5HABWam55un3Kjt9ZFCOOJj/ZjQwIUYQ8h0a+KBSDIzRY0cKmqngA8XBlz6VA+ZvIeO7dIY
CT+uIPdoMZeXGs/1Ga9wu8gxmBBzKXnlF2w/h5UL/rjPulRGDA008sjVb8C4YomANwNGKyJxQRuu
ZF/DcAxoRoaz28S+l5zBV9y5KU0G8a1kt9hKwUKsBbkUu8KQSwiJ12BlVgGjLdFdKRgc2t3xnQc6
EAFk3ooagOhE/F1hkHEiQ+yPtwcsWKNa96VR1B4+AVbN5XmEvOyrBZEkpD9JyjfVUqj1+EAsLCaz
f4nZbr9YKilKwrgZsvVIVYFjqon6+lC5uq4NG/Z0haAypAAonnT861tFn5yH9znrG8cquzYj5kOv
4VTYWRz2vM6yge+mrGGylmxXJTcH9m8qNIghvsNgPslpBPjzSzCP/HFDkbu/ZRnWRGk69n4QUboW
9bkVGjtO1vKHQHAaAlt5YF2bCr/39BvdC/INbnNhGOz6yWbY77mlTHOc3us2E9euEfWeR5tn9cgg
Yw+dlZcfbu1rqLVdWptQMKbv4LZniJ0hEMNImKgEFmfFp1wLW3Xtoh1ZAHSK2zpA50xD1+o77YOV
1hR6gfNcCvsmSK/HfTXjOLXT/05OjMLE8eHABDrvpd6SyvYvPx+Qyt5w6oLywFTChrvcmM0JzRfy
d767mD2LxLf7W4hjPcSPfFbycZJSLS0h6PKKf8YPRQfsIevcNhyV311PL+ah38fMTiF674Lj45zV
LAx7ilR6+kud99o4wzPmIttPVfDZb9ZPksSikd3iL/Xyf95I2xLyJTo0Q6YtB7MNGJ8Lq4bUSut7
TnJYx+pO9FJQmKm7DXxFkrrGePYmmrZdHWAyZNvB5J30gHq2jyuK9J/EoaXut/Wd3fC8x4iq3Dno
kMQymIKfDKTbZI0AnG3I/h9EgNu/gq1ip20LEDtDCPwiKwzYoXfuya04P4pVwH4chhSQoRO6DtbJ
4YoxL0yae94qRFQEmNOpQQTqsw+UYArCycG5dYFHNXvXIWtpvYi5aP2gsAnmx8Vxi/HYQKg28doH
G8N3rHj8oYafyLgtCuCsg+pUPBlCKiMv1Pz+eKxicmCTVaO8C2gAUZJGKJyKN290y1K9J22rcXnb
HBUAwNZyGGLoE+hVbeD2aZDCiLvYqjMvqKznDL3Xm2fmE7IAz7STlBm5bfz4V/1RL289nH4+HB3m
rC7K+LUYbqmaOadWzbJt0kRZiOvEAsEiPueecTF5EO2tVC8dDZgUgDwETe/0Feuoa7nVwGMzYruD
W7gEByWNVonLwaHH3iEYXsb+AMawzRrkBEydguKlLkqKcxugoENa/KtCOmUx13rfcJJgR1YqiGmy
KO5P6kGT7LuNIo4kBQ5l1eO+870JkdSLgaBeNQIRzDvZ0NnetfYUEPXw2Ld6w3noOtbunOMQFp2t
aFvoYVFH1jyeiPp3jlZuguFQNG3pYVAHa13z4SdylOG2EKQ+yoKh9mVR3XhGsYIcgXGebtvYpDkf
hFzXjJ6LJyNGP8Qlnd/ro7PVj7A/eHev1BDtcOtJ8kZmpaoK8wb6euDT/c/MQ8mfjArlmmeXKG+Q
wMoGM89te9uZLUtk4lqlpKHgAxwqSsmnsRxIzULhFnSxW6L2u8KioHDlDIGZa9n+dHQACudkjAyS
aSIqLXr1JlKDpFLV2ER59VDnM0xwPnOqPISBCEzroiOwkvhBDeCziFEGlQW4I35yMDBdpzu2bZlc
sG16tDDVYQIqQPPuRhvrQStYtStLXn5p7olT9G60cjISZ2CUWoG8ewK/GOYpCw98txJIbOCdBXWq
nt7ZynranPg5lF4J5GKLxarGql8RP+B42GC2HN6OVU7WbjleMeY70e7gnqopmPd+YMOyoo3Un3xA
XtZrcBpSbVdX2uPswFYyvFwmDHSV5glk6Wo6oxkuCuqgryn/S/OI2QIXFvgHUD+PtBwZ4WjxKRrL
wGri2T07yC+RvF9BzdYliUZfg7lFEfH0QwUflAsQEU2L1/ohsW891hFEeoyscjjV0RA1WiLvOu9Z
n2rxEsSlX6re2/glIVfUeH/eEE8zam9fFhPa1Fu9BqQGahExk7jT4ycu12EtvPk3AWrGao8Ph58m
yAaxbwnsAgbm9eU+/bnfeqQ+l+bm/uTLEr1NEj0wXWUa8y4lfI5rt3/67mJSFKVvMSrKYLg1E64O
a/83+PMw3sRhSIxwEDRFhniRx5ULFjAfmucZTjB0r9/9fJ5Trc4Sc2qH7gy6stsHtiwivhxFysuL
iTufZsDjB0goGkPOf5LNqGz7KEP7TwWlbgNvF/IXs1GEN59CM/5Z4LBt94ZL0QPUEZZe3XcZx25P
kMVP5rxT7JOYhVv8gaQB4c8FJ8bU86pxr5ytUdJhkL5re/pBhfx1Eb9t7GiLw3EArJY3ixpAT57e
Qm/7/EclerRM5iraAj/kRA5SnLx+FbYUyG2wrgRZdzSJgwBYlYtX+N+y02LPaZDufG5whIy7NUJh
RY/QSrbPXR6pxQge5Ivv6O3xSGivMhqVg2Kri77nnkb9Gd2t5uzWUbBMwaUv2aO9gxgY6ppVcwi8
wNLQj7jYw+AwFfXbA9cg+XyjbZxBLTUOoGjJkQZ/U2mKerNdWCWJXtHXQhMOi3OnoG3YyIub1WF3
JITNVxs5jCq1AqrgCOnPYp5p4ncybS4f0OXXs7SrEO/9FUs0QrXyKdTvA/44f0K/XoSZ6G/XUCGT
ttSsYU8u1XUVuwnYnYSFy4pe7mAEKa4OaHCg0ynehEcxyfIwfTcbIlZQXoLybDZnPZt01In/pBBp
c5j3bzt2DyNFjbSXUA1w+Tqxs16MVc4k5eMaeSpo6lV6xGj6tMNxVAFGUVCP0cga1wUq8TG4YkK5
2FPYYK0Kbdm7j8FbUN39CdAfVuTyG1gKv3lT3vuG4QTXCLtmAV73nyJfsntvA/lu/xdx9bEeQOEe
mZs+OtL+Qj2MMNeT4xfsYmNuF1NsJDfXrf6cTOGMt1cYlm/zhtfSYUtcplZG8uBkvLYlXRnHt1Ed
0hDp0n8kfSMOKpKy8zwVn94hBx20UWywgKKkqhcp4DEzDMm8Wa3uV1Ij5wjsD0LrhVN2N502FQ64
+IVAVcRMmkVvEcFDagY1WlCg6rHqZ1sAo91WP+zCQjKnTUCmLwIKDI3s0kgG8oW+USBumwJFQ49e
I92HKi0E6k8rqmLcK4kqEYnopsl8ucgljkY2Wzd3vIvo/MhRin+Rsq8nUaznwR/Mjm3G2z2Ubcxe
UBQwjQmO5SYBL9YiN2CArk1px/dRXdeTYyvmoG78IxXIiZrQFCr2PPN9c+WY0/123cQm5eTrMGpW
e8GG0+F5k1fHJFQmgLfMiMHb25zGRTocVDtpXyorhHCRBozNpD/6x29GJndH+EADqTqjurOmSIet
+1EALiR/2X1UMLDltutzvIGgoJddJzAvK1yR8P/h9EI9KG1OmAejdBcUh2htoU24/u6RG2khSh3d
1chxeRHhSg5pvjO/LxXyMYMerqJluKOKsklnj1c0IFN5eGFEStPzZfDavAQcv60kHnWTf59RmMgC
3ZZuPs9hbGEcPVCT5tucqUtDzC01BGicODIO7o2pAkvQU/SZHl+Ui/ppaj+0J59X+f6S1nZs6GZI
os5DAT7XIr5mDGnvDoREkjl/jygWIXOMr+V+9HasTW47hSgYSLYcOPE0mJxVFOZTEPA7obwW9yF5
MsjGjb4kkuK4uI+SCM02r2aLPHvcQms752MaCIhOWDmt8pUQVvqfx6u5AW0mfYtRZjCYCAT9+8og
GoI/xQQemCfJ/E0CAp3kDd7k06My9pyI0rDKxh8V2PxeIut2j8waqk9OJu2JF9fUPOFMW0yLsGvn
6PsXjxgwv3r5mldt5v8jE5yKMNUDeDTY1UNg2HCp5PGEBJhpreje9UNhKcUKMwpa+1vClSb8yE4B
6BtdisTmUwYKT3/FIJud5EknTHOfXWVga10KlJkVPD/5J9oBr6xgXZtfCtc/rUkCi3tpPwmtlQZQ
cM2ipEqMif2doo8tX8xfw4LcLcY/O5f/wjwJn4tn6rMIwF+8ffT20RXh965jRixXozEGJzHnlRMu
5VnUTTFtRghIU7xslRUVr4KzAsx56LgF1RMBQFcv8ariwNJFfPMDn2T74T0uEQAIfq1mqXT18jq7
+yEA60NvELRgTv4C1v5OxAL0PUomFhkPpVs3CLa1aCOaz00h2IdEk50BBCMRaE11NceV8t+fVkZb
wLrMXueJo5qcwNneyCG8uglrID/a5Tl0relA9xe8Fc0aXs63WWYGFoRMof/LH7SEHGe33tobVZc2
pbJmtRoWiaEtucQyStXWIUR/n+8yPHC0p8UR/nPEZJRe6b9o9Ike8GJ9oEccW+tv/PVjZ3phiMGS
VJ+Y7PzP7Miz/FtGXDy8mz015XV4B6YOdatVa6yJ0+3j+bIWfnIr48YQGgn5GWWdhuHAVRvbpEHz
xMoEg4obaNn+GJa9uMB1evX53zUwIEwc7EUb11mpSPlTJb1glvYfGOhQX2S9lb1246EZMfL51I+E
i+TeiEUNxJlel6BxNEaAGH9DAny6+hxXTb83NbkXS1ZCqt6uuBjybq3W6taXqXpTX8ltMvkKuQ6t
k5dAlQ16wc3TQsONwaWlMAYlRoat3JSzpluNt2Y9Nw3grxoDuMvu20F/T2V6CS+Ulg9Dt6eMWAeY
uu4UfznUTYQKXUF3e9Kpfe8ehdGqQOIoVXSb2h53t+9lMglHcNSKRSb0VL2R73DUtWYa/OWPFMm5
I7A3yES2B1MMWiFjBxRiNpJyN4cMVr+CCvrRuFC3pUmjzuYFpRuvg+TvmPJaBAQtY/24MO1XzWoG
5QBMQCdMNpYShSAAWHMK/JiOxU3lTr5zwJZbtRwyoD9uKz4isUadZJQJHizTaemE5W9QDdx44UmJ
YrKRE9kxVfdGTr9E1s2gOL2wQqT0o+5Esp8Fls0aG4xQ9V6yaVWurRBl1tL65t+lJiDHHuz1IOn9
2i92w4fCa0bD/pfv7bxc1XUiBNn+Bz2XeKVYrrCbf/SIpn9nP37v8hjb270TfSHNNgpcxuLDhL4S
HQUdpauXsdzAHJAlHe+MqoOaAiM7h9w1NjkpYzmH4y9v5AzKLj6K9R8h5vBRyyCIZeY97QQeQUop
iQSUvE4HLBx/jqbx2dajRt8Z2Ln4FmASJb4bcmrWZs+LDhf96DHbIgHgtHqcDSS0GHajD9up5hKS
itUYx8Nn283dg5VzI8Dc+7M66nrjLa8Ffj/pmV+1Fnmh0uQ/YzKSSRtYgznZKxxQJ2A09upMp51C
HBSWttmuWn7RISlAXFuR77BHc0hGgR6e1xNHkRftY9uEcH/vAKkPqA53tVn578IVY3dOs7hq5YT6
LqpJCcd1v/qPSDQjm5GmseK9PmV5zdF1zr+eY2WrOD3dg9OkaNB9mBLVFZZX/u4BL14qBD8J7dSe
73uIzlR6lu7y49EF+t8QLWXOfu9d3TL+lu/zFtzBP/xo1jSCY2PLowxW4ANJch9OYPHR4CKd3OL5
Eq1cnkRsBUIoKH4SjO7+T80nntINqakCxiES79somfe4TADZz5wlztGKhICNXmtQJ10L8n2Flt2x
NsAQceDJGMWG8necXRNxN/gqjDfEsKCr/dYp5/ZEcb77vJy46qoRX1tfM1lOdg+TWx/7sUak+Jno
gcoPb72ufV+F4Z3DzR6oOSeUco6tS/7fK0QymM36py/P19iIqrL9vZHXKw8hxF3oTiHOApaKrLEB
g3BsnjmgE4b/k5FCWQu8tTSZG8flvwD9nyXbjbMufNlzug5vQVFO1CVhOK+ttrmUBNoWpOoVVaXu
on+cyOHSfysMMcLWqHjiug10yp5RJ7Ub75ncV3MSRAFRss5D1jzlUw2SHQ9z5/2XjGdvLmRvIgVs
fZIFbwMF2D8B3D2eEZrGUUYvfSqoh9ckFvwwVHBSssL5KFsF/JkOAiH/MMltwurjRWud0/CBfxO5
a8Kxzt6opk3+YdBVvWKgHOsYkNsyrjdyOdUH9ipKNBVgQUvxc/Y6mL/HGIcD9fAD4Gx1UuqU0uGz
Lolpmz++FdPmHzZW0GIGGZPiFQAJO/o83eiFqI3E1wTG6kfbcnCvi+O4YZxoqNHJw25NFt1WCJZP
oxOH+nxhTYRYaRzsE80AtyJe0c/ar6Ix3SkcrcXSsXU1B7RxijqHCXVzwi/COdx6QeUtRlqpJuSb
ZemQuLVeMVJHtGtO/GWkSvAnUiEgjDUsBlfeNcA/pciA/si9ZrpGbDzcwOUUvS1XLemm+Ykvkgvj
RfYTH1Ui8OPQv82AfpZUnKDZslBvK06cCX96YUKNcXpRLGWfG5t7VqPp6zWkbRyjH3dM694QJQSL
l5jOw5IUrhqv8GAbqsIsaGojO+V0m3yk3qSheCGdaTZV6Lh1ao3f2i3p4Nb/Gvi6wQVAI60rqtin
EphG9yE4zIsKBiCg01rw4NnXDCbsEbdHDmK9c+GaTu5bGuEj9QR2fskwjCF+AIuXar78LhAyrc+h
J9L+Lx424eGynS7yg5ujxD3GzjiEwjkx1bffa36zshTQ7ouwavVpglIK+UqZ0ZskO9vz7Th1qRhV
cDFzdr8TOuZs7spREEDch8yyClQEEFUdU6Shc64buMvFK7YRkGNB7ZtGx3k8K9ojBDX+ghbbqBQz
QbL78Hk4KeDP/mfAU4sh7H4Fvpe0LVGsraycNSx0JsUG2KMr7BR+XQU4pHtqyCDtfQI+r/l0lyLO
TtijsOxub0fggfaFFNr8GwoQ0ln/kxsiyy9+vx40zaxB1KmF93NN86IiI7PJPRkwN/eyVIFFrgAQ
yKOx/wIXiZmLjLYyth6iBV/hAzMPVxeEKaZJ+6jza6Q2/j1RKIQIUCuI1lY/G2Gmrflk45XcipFd
0MBzIaV3hDBzWoMIQ7miOMp7js854uAB1nsygexcP7qsKv/wxhgir37z3FGlrpb8R8vwCqFoz7O1
2Ka/Z5hG7yV5FoVypqryDpjWx6eQ5FMz2/ooA7q9YOJ8kDOgf5BeyxFn3XwF0JQVKXBFoKuVhH3t
kbM6Hqurjvmmp+KYL5Ivue2E5rZ6ZxsiFeU+ZL2Sl2NmO9yCu49s7+Ly4vKd5lvlvTKd9cXwWODT
aMwtn1RhJRS+Hzwy0AHNPytUxScW28PDcCKz0+9cSaU0FAVz6MZhDlPqpeKP7NR3702j2zhamdgM
l6WN9ZCUbeuWTTP0pqWTINXRIrV/ee7XdenPDgl9U6RwwAPBXr0cajYO1FFNAU+eQaIg7t7E+HWu
WZNLMH5Uo6hdOmu/Kh58FNzpEXFRzudU3nlUR+s8b6QseBeDpsy9Z8AeJ6elPCz5LTUeFbsX8aBE
bRi5v2UR+89GiMnw6VAMdvnpExGu1f7svNEB/w/rAQxGjHxFBkB3LBKKO3VahnYdHb+B9BM//WRN
1zhJ7QW1rcSLpaVk+gXWg4ljdkue87t2AfRbtIf1OCE30rnuuV28ZXfbJ3nMGY69BuPD3TTgjA4v
/qmJyvXES3HIpuhBcKctq7OaaShT5LOl59Z6w9aOJxCtSlUGAV9ohr8xQmmVE4qZvdb1I/GY3YDt
SwhNmiHdwdbNOSozws8ifuw5TTalKxxA6Dki06SpYDK/O/D6sAMFBa7qIcvCErwetHxDh+NL50qL
1qQzbW23FyMtiUjgBsLStmHFxrRVHgnHcDDot5sH/7dv9yY43jZUHtPB7+6vUbBP6LKi++07hAgI
YWgtyk2j5zznnG5sZlzadkgw4zXfcut2OgmFtb/3wXXB5GoIyNXewnWYqxCkRvAsXspr/RQZail/
L0Z8XO/HeQi15jeMJPRUGAUnWlkll7lA91wq4IyTTTXLYLHPX9vgl6CanGfdcSx/nO37dvrJ5hrv
+ew+Xmsr6B//WyrDLWNz5M31aKXRnVksu9XvcE3hzemfQWd9LAUwUPEj/ATHGRgbEzODmoPvysGw
lggGqoRgKXbj4SCiABaudOGTXShOjPZHQ05CSkZW2FKDm8A85BV8Xik8csrTTULhXhoQmEDm13r8
4bDlUHpqRytHlYJFoOm8/56EW76Eupz3Lh8NqrYRhvNrnsqp4mlLCQV/ZlVclb9Hol59VC2aU/vH
/00uRmtq4SKRPFHkWbn9IEQ46ExzhrjC63CAgPq5hg4a58JMrLVzFI6UChWl0xfDv4yh5aKhXId7
JnrkW4p6QSqhHWDsX3+6bIJSURGUj5s6GWjuX4SyfvgiwgiLjkhm/I+g8Ewvv7v2JseVk8/0SYhu
waWLknpf5ROKuQ8gSNTTzwHKq2puJo35lTWH9bT8MDAfwl/+dtoYpiMS437CbD5MQylyaGPUZdln
yE7b4Kczuhu93/0A6QTWP4+jCMvW4Zqig7/yipBYvG0JoP8N0Z5Swd4FA4ZFsR573uf++jBZEF5Y
8S6P6Qx7tQkWFgukgEcvwuzFvfw5zPMpbK9SjlFom/LhBTVZfPo2UU6co6rSJD+eshMXRmyScUJF
AtzNKUYfDafST6V1XIISRQ7XZkBVbBxSXPVSbs6F+KDTwXoOMinqQRUQ2ia9/iHDCicx+p0LRcCS
CWjl5lQtMJ7jt1srUHsDhNogFc+o3N/JmEsaWLLK7/Sx1FQAojPbIPigjUfGk2XTmEHPjwbdqv4N
eNIppOKU7vulowiXJkvVM4NZp2038kzIh12b8V77pq6RzWAY90o/efvb8Z/Hg1BLuKZfc8/XJV6l
dwr25z5TMyPuny/e/rg9iDEOI8upITU4Tl5BwLMrPbuUSn3mY89UZoyX52+wcy7LkSGCdJ90rVgF
FFsm5/ZSQrA+EcLfgN51qi/lg1Sn+IFTTjvHqOhEkf4gSsP59PpQWNk/OtEnqDArk7hE6W0qqCl2
JiMne83lbWYAv9MOD6L3W22nKFL7AExTA7ezmPLS2vf6g0aDJi1x0cPdxiZX6kdbc/QF587KgG7s
qZIlwEo2Xi1rlJVxXWjc8kTaMpKseCrOA6mSpuVN/nwRKzlCOYe58dSvbK45hnzolKDEQtyA8wlg
0wR3sM2pt38K+hzb/09RdFoNAWu/oDllgw9LUgRtiKmTDIoSKAotgHYhgCLZfZWHfL+osBxB03kO
LU4npVZ8Zkgr+oJ9iwmYH0yb5MOZ2zW4SLJJdsxLfoRgq2jGud0QdvmHikT2WdeouzjsbwI6TC6B
5rs/gXsUgkGTCEj5fNf3YKErisf6+0HLPmflgfD74aEnBbJP3xBuoabfNvsBl5xEAkhA5po7Z1pe
hbiwMRxayJLP5NBBK5H8wScYgszIfbRx7AwW5DBXO+zZhYL36mmRoSuhQYZD7OQh/N7+C6MpX5PP
hLV0fuCYgz0vMzz0SU3QNpEShjC4OolL0VAESNJBusy5/WAV52lP321BaJwKd+DCtflDgpFNLzmh
1cUUw+qcfqIZ3pOx5hrkbEv+ndsKM/W8u/cufOydNKBNVOdU7N3B6jO+1i1e9g40XhAJx7izyPPB
Ifam2WYSh4c88AEz5XosNJ/wx2sxtPpTbmx8U3nfDfvLSp3ICcv7ZlwaigIfKf7qBxdoQ7fqfL0I
AGP54/AARCr6StBSQpOR6pibxl8WIG1XCty/luavXUjKKFx00Cd+fdmLcBkL6EFIpqM8f1YPEoPt
9NwNlz0a05Jb46E6GiR+Qpyk2pvCw8B4sw9dLe1El/6ugnF44b/+4d6lzf5N9VG2RxqrGHaJnrUv
XFRx+P57/zQ6Cx3TLEd5FFu8rjJ7zXJ5h+AutqLW+yb6sXmU8+QSPkPchsoiTmNfR8wQtCVVrdO2
xS9krKGeFrisuX5Ba8hwUGMJESzpa6jtxGG0apgp8fiSw1gd+9imy6g1oRjzjcL/8VDVtTRdDiWJ
E19U/U1rvd23jdPAj2jpHVfZNCpbUgEdMYPqM57yudQCQPh161nxq2EECb7XZGYT7IvFCksILFZC
ewE3N8RKU8QeuKYoP73E2LhFCiMDdRvpEb/zwTD/ISpnwu+Uhurs2t5+hG2j5B1UvU3ON0bqR48Y
V1pApNuC/qJ+nPpyVV5OClx2w81zTiJYMwYUrZ6F/IPicw9vIEC7sktI1RNJKw6PVywMAwnBfvz3
9hd4YXXKiM9cS0IHEpvJsJGv8HKGlfZV0qgcd+JiQP4rl/eLk9cXsFagSqvOdEZcyNtPV1fF46yw
/4s/OJ/zrOM8baLvB9jZziqg6FOvAqDVFjkvKPfGhSAdNMMplM5tLai/J08uVVzQhHHbst+B8N/J
6YtTl6oD6WjFfxVVX0lGsB3M0JU7q5tBoeBwOwAUAxPY9iPqUdoDFhuuFbIHO6QW/NiyUV1Aibwh
igQrCyC1Yf0auSF/nRE3+tVwZRIAg3SzLTsHE73gqZJdhmbkmjDjmOOdSVJ69emSd9JBa56mGLw8
kARTFEiZpXLJMsGZY0Xl+KqyNuIBFObE5tRoS5pbvcVtqLSn4FTGSpTW2sYioZaxRgxk54107mCz
HHIzCeZTTULOUjLgGXesI+AvryZRXv6FyeLh/Sm2SPZCkwFnELr2KHboX2Wn1iPxlfpaWL4o95Oe
RxNF6zpY+07XGG++b60XWjd8p71+Lp9DprMEGqT/cxMS8m7Cwhl/iICCkfhfFy6lBZHvcSQYgaq6
PUN21OHR8HNM/HmrPsv4yduGgGzRWTWVnYocjmzktKDNgI1peRPbTS3663a3kT4MXnYD+S2jNv6A
fKDLws7U/MB8eaP/tHc+CPIdnJnKFB8YBZsw8ZFwIXwQvvBcv8xT4ymgHbY1Uhu1qZ6wq46/DxS4
spLlTe3ACb0WKH1x/0LDwxEUN2gkgvKaHqNFhkZoPXHdAeuDT+x+jb7zdwjUCVLU3syyXKqcv0fr
u9PcH4EGKk22PKZYaesCYyJvAX9PZr+ciH0t4N/Rl9yAZ2Zkd/TtEwYRO2SE1hEs5k6jj2ln5oU/
HcXIHR/A4MesBu6vmPrGBdP3EQck/CdRt3KEll+QP11GMCMUsUfYhoJkQPt8NrDnggbS2tCCteRe
ZbSFM85xyGuF18w0BYfezjA1Hh1QBIs5kAPRQMFyKWzytS8j/o313aWD52atWmz+LQ3TnO4qrnX0
O/MFHj5mbsYbQye+kXiYwWxzcb1iwcmFLJdTs3qon460jMAuiOXsRB4C3mhI/QjxnxRoL8w3wmE5
5MpULUgnW9WL/MzQbdxdRdZjhOgAf0ir+jkK5YwTgHCDz5Y9lXpGuoHGxh67PagDhjm2n88fTUJ4
KEumFEAc3AcTIOKAea3t9wodnMXcC63IEL3D4Pm6/A9BPTyC8FWBxo8D2GaSx/XGmA29hYCy/1tK
1NgbQDasMbTJ2wuV8aQfyjPW52uHPPLod3Ej78Wrw8Ec8sNfm/d2s98zF0BMANnrm8jMTYNPHqYD
W9VjAHqC8cqohmeukJCuz0yT/N7e/N6+T8ClbJu15/mqNxsCncLKk/6l2kSWArL+GwnszXXgFzSQ
SU9B6FLbCGIfpR92DHpQW/yOSl24KEFwyo7wcsTOzZKcvBnnVg7CFtlbK7IeTvhJsGFGUzcPyv5B
DO+8Xud8Eyn1c3KuRoJM9N0a45MFUSrJXI6/T9Vn+CV+4jNuQ6YEJLt5QhGwk/JTnxmetMdTsv50
N+z1FasjS1//6jJCos/vqbwZ/yqCUpuY+unGHK0Pyu/tbL4ea2Ehxpe+SoRa6eNwHCwVSXcgwDjg
DNEHc4vTrRI+tLTqOlLvsGMcfWRECE5M8LLcskWmoOEaDQwfm7arljuxq4Gj4eQW90cO3bAH1PT0
0SJA2bwMgdAWfKEkU7hLsDpAW9dTLDkPTFhS5f0jiBcpST5j4gegTYwLe57gnZGgYGwfnqgQilta
YJAtBenbV+/qcuQWBhjtLAVFZq5ZOQ/OWaGdgTO42IMCsJPtPQ+LNc2syXW2tlXkGfeqHqWAhQbw
eRcNOZ20i0hKIEmiwr2wnVM+C3jLDZPvzcRL3EVKepoQxmL/Lq6c0TjjBEKrA0j8un144Syeyj7v
ZbTvr0cuQpR3Sm/J4zvSjfZvUCcXcOUZ75HaKOlzHGyz1bNySSA6jpOHATNAq+7RVWw+UMRCGSoC
XvJuEDyesC30wUnQ1eJTq/LZRYWJrsTIa8fEGvjXKcAP4d1+kv9hBAT9yent9uxf8pK/yK7g0nO4
OAXan3Alp0eX36sFlwXsS8yCvtwSzULaCICJsJtuhqJrKqy6gZAxq0XlkD/LiZgfwE7STChhzEsG
XqXK0ciX01gHOfbOGGWSaQ0onNaZqfJlXk81vL+iXH/il25WQhj1oNqDKZjLFEXn9g6vhxFs2oOX
cGiofT/QZrafIr/LiK9dMo8MbTXkxBeD4O9Ml6wI1pIrUlh6/hTAohWD7E18B5qOYoSMH6GLTmgK
/eua7bLRKrDUs4FBraMtozyo+9AIY6C1iDIdeWtmpuO7LHc6tdLbFsJtULt1Ha47OCa0vi6xfVr3
Rl3GaZ9v3Wmvxr4f31Nm5uSw6T8AeMrsZWU4xU5tPJA8Jw4/ODw6meC/5ij3dfZM9mVt9YYtJ/TJ
6eTQHe4ziIYeuL386YGaF94P7P9snuVzSImYtqn1KZiZJutTffiVzKQZ76Vkc/IAtxxXJsY0hb08
ZfminOdRm05yNUUKH1ejeErXM1ne8UG7PGil7+nmjSgrxiq8NAZ4vq7As5x0/LIZEbJHsOe64Tq6
Q9pbFRdBDcNz/N+W0Hb+j80X+jYg2HEgG17laIF1sLnDjGo17QrHIVh2RmbGXoeV1L532+TB6QUN
DApqyDXEpeoyu9SRH3Apjrc7oKcRqQdLIgnm3eOrQhBVpUFv8aqLf/uOZWLLoQHiNWHWapyVVFzF
uPuvqTynR34KiXqvz6oKp/6ybRhFjmRwDTZmCIUuhJT/frT9J0n9NOg1rv46GSxlexNjPwENGeUf
O6ZDQW6KwzPnSz6HEiWCtxQ1oDShbFPF8TFXvfqkcTF0WsfzpdCfeqFEemEzUdhhh9jB+hTFva1S
PS49zEXd1cQjXB/DQbZv3WxDA5ysqlIV1/6knkSjibgv72ovlMABzmXnlzh1zvTixI9j3+MrRh3g
V+4YC6P/qsgpJXbRF/XH4Q1lx2+B4ppLWMWlm4zyb8sX9n6AV9I5ZxzU1gC9gRG1IUF88Do1hOAN
gnakwV610BHwKR/VN7B2H7aAQ1oIrimlyP/hluxZOzSFiKESmyU4bBhY7Z0CjYQr3//VcsF86bOB
9juApO95LbCJslVAwH/ndsdb3ysZmTjZRi2P7Ulu5vS+1LVOLuXJJGmPywq/ZuafWdLJAMLtQb6O
0hGxPu3Dri1oA5+JCjjSo9C/q4Q5EzrJTidqVOI8GQqjL6dEN1Tjmc/jro3FtN2INADclgzt9bae
Iq4SJF/kd/R46/kM0Sw/Dd6GZq+8tzSfy0fs4z9vw7hp5BjS6LEtDQ7HR2Hz+ms9Kzn22jTDE0Yd
FOKiL2woJZLF5oE3L5TVxwc/t+LG7HkPA1SyW+XTCxfQLFjLYn6u13HR1qNTh7fDgA/G4kOOqGPJ
Fqgi+p5QE5Gk/LMzJglE89R/QsqGdk29FC16earL7AquozixN7sACYD+ZFByThPpQyZNmZU7gFrd
KzsLf12pkzrWx0JFyzsTIX/FZGD05cqHgIJOZbWxbE/Kq80be42VgDsn+qwZ3YH+vhE/Ap8C7wRC
/MVhDfTD2w4iqQSluycaTyrnH/9ZLICxhBh1JQBzj063/tG5PmFb/PZbAOyeM5Gv6VRRaldPA2Ey
VV4vphQ7k9yGgze/XNOF7liVPq1h1JROxlV56tTWM1Q3G35oQ2yVJu/8S+rDEmrH0u495z+tYqQY
VKLrsnNa23IhqQ3b8Vj1f9DCdOvuoH+0sHo3alRoy7i4vsQagXAwVjyG400egQ4qSdbGM5vise8J
XFHNloW0M/K1sInk2tYaqbNoEf4MrulYyvoNVqXXvlxHzSLm1bNvCBxK8qMKO0cxfIEaP5cj7UpE
c0UhGUdBBeGtEcvi02rOHwEwXyTWD2J6KVE5EeeVKT4EIl5fU8njs1mNLFFC+Z3/1p18vAgVmFbq
KxiDX3fdjdpfEd9TtNplKhP4jz/Mk+CqevOrvRH6i9HwBky0E0/HCCslFnBA7onzUrw1bNFa/CaZ
gjJ6uzUztbbC/WvWEoKvnhfYutObzVPBl3mca6ScXq/ojZQnzwipuYFRCvZj/WR8HYsX9eCUIyOI
BlIx5l+JIXV6x++DvCvrnJt+ZDK8iEi1gDGicJKoN296b3tb+Fed0snE6SzYNH4VMA6c8cDb3DDp
0UlDdHVxalBlTY47/nyJ/ms21Bl1SiCmpD0qUIy6yppwBgLZ5rf8KNnCch9yD2SfyDfDk2Ogd0Qx
21hJ7BEOSG12DN5g8WyztgDltUfpBYGFdKM5iRT2uczF1QAi7R7TGL1kgev74Z7e1wtYtHMI8hJo
9nWHhuTJPzX09ibNWdvMm9raWgh3SHULzR3hwfTV12YQvvk7JSNzO03Fz5OhUVSeu+YCXvo1EC4+
NHB+tMqwg+Lfe461jDyjly32yuRZ2M/X96GHEyZsW6kh+hJboAELq0zuriOPAhDwhbwGxq1aR9F6
9Nis3PzajTV+SPOxGHGrG/l6yGC1qGxFUbcllwzEpeOU4Lmhw/SWwn3v1xeT9Yu093muREwBF6Ai
ldNHCGAiYyCELGkZil4wGNmkCHqjeDGNu3W9UqAE2tmP3vcVLRLWkcCGvz+ddC/o9tLudmhk+EqD
9IKiGNbBVi5efqTE59Km5wMhTomDQ1NEhE9EfontKcX3oz+b7z3riNi54cg8mdSg7QrrLfPBSy8E
7I0/T0sElb9k1QrlbxNNLHypr+E/wCss7UG9OhL5vStMjGnYYTxkbl4B6xeFeXFGA/BwTyn2ZAxf
LNsZkrqSBiGsIW1fRq/D3eFNaijzL97ZGH7aO7RTn0e7EfycbLH2nIrJrmCp0rmoHXohFdG6RuQG
n12/JMDdtUIYmxQSvfXqQhQFPQnUcv6ermyKWnN3SmF3tpgOtcFcTOQ0dCZgk0VSIB6zK5vmPXE4
YOjVzfDIWpq3wpqHrxT6e+8SJxWGwC9ix3HzwohISJ/L0+B1OIUeU5Dmn8aLDIe+iwzqbnzmSkuC
5Pd5KQraggm+B2AB5ZI74XlvW8SkTS9iJZRggCqqjCu7VfNUPGX5d3vAAvo4WpTeUn6GFKkjLz1X
0q3Y4jPA0ZhpKxL1QdY8p7WMj1FFagdCcvYhCHcFuTvGvALKon+2iJ0dHc+RvrnTD92VgM510LON
zX+ONnLlKX3uuJFJrC/ichmuI8pAdOQwfMjCL7dQLNzL59M3mElUEtiitjp9PFk8nlxjaEqi5RWj
H6r2ZBNEAJhdZ3hQ//OHrwyQQl0fDkOBRJe5e6wByohVXscsxQbQmLA4OePsmHZaGvB9BTcRYIvg
eeaJoa6cFVPTmBRfx28IFRBRsNflJgETIg/H/4Sprnh49pjubLh76Y4kSW9/1ci7hfD+7je6wYiY
cXmSHs1LnbFN5rhLwBl3eW0CJHzBjBj8DsJ2xptMRNsWlRPW2HM9ubVhKkQ/X8mVuWnI3SRLKe7e
vCBwYzkeL2Wt8MQ+k5wFHctOt1kjvLrPKVCkYc25kL0SjRhtfrP3nfR1bYRv2xLY36YuRvQh7NlG
Ki4k+OUTSU87Y7KKBK/LoSqER2xCgWWMyddVq+bCRA4bjSVDk9fJCV3AVf5ZZJc1h63w4MfVoTje
LbN9opRhj7XO8cq0b6JcCBV1v5ikLYLLAzLASfKDiOSkgIzGFEcgK3kpIEz+OZ0J8qzwXABdlsMF
HEH+4jrtGIPUx6tcNNXD52aFFX4+NVyVxXuUuO//0XeDGWclGmx2SP5t33oT9rZyr3vVoZ/ud01M
xMaaOAvyZVrI47hlubXCTxF/ba6MF9rdPCPGJnkQwtAr27CdCv1xFI0ARmqocjOOYQm/1hNGG3Ys
XhcPcc7rnJqTlukfDl/yKMwla61PoGp9FpyOeAHWWQwbg9Fh4S/kEsZSFJYUIDdPVKSL0ujE8Cu1
pj+ASfG+giFX1g9mZ6sBkh1+nn0QhTgf212v8DEZX9a09feSvsftCttAQfL5GzqqedV0sJjhpSlu
3wfPxI1AfQ2xR4EkScNC21pvErkOhAcKpNdB5jCKIS4nkXimY8rFhNTcyAuGTlmt/IikzGJsSQ4J
CgyPvXr6bl8drWY3bQWccaJJIR3/gp8ftkW3RpwRQHMKnBeKKLdhpjV/kRKnq6w486TC0zFopyuG
JKSHHuO4gKlD4Jpfe/lhVv/TESFKMzFxqcaJaeAthj2lRcQgP5fF6xztaUb3w8v1z43bGsEdXAob
uPwWruTAScgygaslJnBVM/2ZWOxnCztlTOqulb0lHqTyLLoRnRXPWFMqOae0K10RqAdml8kEzY6O
RFhI4CAjNEzshdXhfansCoMeMzUezc3dJDHivlezoLqpH9dkgWccTBFnDIkle+drKZQa98G1xrRL
HDeXPZb84lXmAaKmeO622GIme+xCAtodJq0gtX3OMUNbpdW4aURku3hguHwqTdBn0lR8qOvr8gUo
8oyfoEX3T/FAeSYHjIU//vAlomOIn85CRRkgnL1q47xMI7S96m8QUv26j0nfSXtaIYFxUYUPGrkZ
a0r2yI3doQiQqSiAc5o77z49eTcfL85HFGXBaUX2Efe+GhxmouOGtTPcupwK94yh1l9kj1LcEPR3
KpwlfhYAahAvpg+6VI3zKzV+ZcEJRktOJL9XO++nzmsvk5LfhbqTiUw9J37fxTnll0OXskxwkrGl
ST/yNOeSJ3+SDwHUghemf1In72AmA0cJRfmXj+/zhMervw7w/KEaTvNQ9Zmd2GaCvQ1q9slPq3Zn
pMhjdeK/NvhKmQ10Iehpy1Hi5BcU0nKMUaUgYPC6xrpK6t/gh8DLUecqKiMdlp0w+yaNzmwcGVB7
/Hvf7BLVKU2FjKRp0kTs7ABO1MRHNOLgV6rkyKsh4tIXZk1VhxfHCD+xPYUnQZOLodJoyvDz08ud
0KiCErPyRNXN/VNKC3w4DPjawCIXk3BrzmsYRQo7uLo3Cm1vu+p4d4eJn5m8QSjIccNpi3F+SZ8N
5tYdOq/TwOWIaGQW4Ax+JA43WrCLBBNzgTZqBJyYLBYAM90hRdsnPNJll7fbswiBWe+dKXpRIBkm
HlqjDotGjHD6PwkdZ33k7hbwPrL1p6ILZSseHPwBXLfqR2VhKZxuYqD7E72XiH/sUptFekdK/QVE
z3FSLrVAkIkvMjEwMJ9NKZp0ZpnPjbLU1xAEBrWHFn6RUm1L4lpccT7tQBy6OfyFeP752wu5wI2P
NUY0Dd3VJXr/J0t2WEcgu82jbqJsCe8V0YPxOPub297/q+BjY4JR95hp103unW6GBd2jT3q97b81
BunGxJLTr0UXS4KGqtslmTfDubCwXoHxMdIaesdk+8GjY7pCM2HeY3yYOqsnYvSsIakENL4xLXtn
WXrIKlWbnEBP+jYt3foArpNKT3iqe8NK4XnBBQnW6lfTAtpe6sq5JqYA4P3kZullGHAIgm8+oCwP
VAohQTvrpKF25vSu7haYD+9KfTYIaz+DZjepEvkbZfOSOq+yn8wCB/N5ODHFa4NhxBMal21opGg3
vKGVCT7sEZCQndpNySfvMusqYsd337Yha0DMRonQMMDV92EkEsgRAPU9xRmml4UAimtPf07yilAz
ijt9KbS9SGehmtxbHrIVhQ6/4Qmug6uKBvzga1CJY4zz5tUAobT3KL6F5fW5L5udcvUBLCFEcSNX
XU5YqOZNR1ymTWk6OJqkbEe3RK3AgPEdgl95i84KTKSn3RVXhM9ctkNTQfk7LolAdProXIeP8SEa
4d4A1Z/mRYqXH0mcMchMdyexxYnEU7jU9gY7FlXPqo/nVfaZckDt7WgdbT0c2vzFV2/AUA1OoQL1
QNykr8EpxQOnCdJF4++FwUydnoHLmA2kXvcr9a1aqEcaSIfkCHFoZCJe8ZnnUSqcFevzFTwDQenX
gRb6ZYQkVeA+ULqsUbd2PeZe+w0vq496Ofk5F1MQjcyzXu202eXNeOc53ilRc8wEgTHtpOjMjwb9
n9PL6YDyGlNUu7583wWt/FFPYBfekFZEEMOob5msAFo0umRgLt2CAeUzzL8rTzR0AVOxc3AcAzkR
jGajIHFFuT4F4gTFqykVoxh6XeS3tm4wPrnJ3RiQ5esy+nSn4GAZixJZwojvVAwZ5F6LpZiePZt7
aOvLmyVAVPyAmN+3epK4zSA57/Sz9lictAFKm7tivI/KYsBix+fL8ZPmg8J28PE11A4UmYK6VjrY
gepXHntg0B+iCrLJe+oOd3zxoxof6KbyyojR2uI49Xzm52iwSln8kJhleW8Ajsc/Vjs3u6dmO7Mo
k2KJm+F5MSf2h+H/dstSwwlKYq8Yd5YTfR8vnKsoPX+u7nYk8OuXy7HiVrblS5fz2zsHGj9eQllE
MDVwvuhWoa+qnBEQxaRmAP2PnLAZaQx31TZtDveYp/DX9vJp9heH9e0tdDjY4l3gJ9S23YmcwZML
O3jYkTJ6eUg3u/MwPidcaO/scOEvR4FoDtfT1lYoPVUfkW7OU7PbmBdttfHj/uInRly3amKrMxZ/
BVT6m4/a8PpdPDxhoSoCI0kwA+e1KxPrU8ML2xTFaLsHPKFtJWcmhpLfUbaZuv3rIIGLVHigZjhj
bCBm6GFI/QZCxq2/yH+KEzqzoofSInrAn2uVNG7mO2qC2jIAGA+xsp2w1C9lkX7AhZx2xAF3cR9u
dhOQJcFOKmk2V+xmY47vBotsu3Bsy0hlBpBzIK7vEktjgnkOikOIIhhHT8dxHF+14aGLCVkb6/2A
5JdF7hxv+v8GIs7/CN5jKrWW52DeicUHW3ic1KBpjIpgXU/DPDPVjfUamTbccvXsHC86I0rYgIhm
P1N+bwLqXDE6YMpAeGupNl0bcThFxUDD2I2mjgIx7JFit1WFhC0ar1hpZFu0Zt1ptV1LI7ye2CBu
E5P8au76GJ3sTk8fb9oQFBpfN2R6rXj/XcbDKNdxnVagyyEl9VBT+gmb2lRqM7HVXp5BL3fHunzx
FpnuF0qCXb9Sgc97p/umvhPRAUjNsIbM8cpiNzUmvkpsDPkKmhjaqFql4nYVUDtgC0XvFAppl4s9
RjkKZdY+qA4I6qaDZh5lvbP3QAfgOcbMlSQBRBPLTYfnHsTkjVHqSVPw5bHKfW36eV1+GBhmACBF
H6g9Hz7PXEn9/Z4AT7ZdoElTZOH7JZqj1eTAE8U8/bi6fobmc8fm5vfrUTwNO1dqFB/LbFMdLfnr
E6BZy4DLctLK4JJIysWhc5siZEnL5yQHfb2f+tWhJwTe4IbV2R/WI+e7080jr1xKy5ftKZEttBaz
Rf4vJ28bXpaFUW3PtkvNjgSShK6kAeeaTLSNyvH0KoRS6VbS7y9QGweV8Fm8Pik5VF4k4DnH9D/2
E/PMR2mfFGfZJrWi6PZrGfYTt3Jb9up5EpLpiM2VlB5p2GEvtfQenDuw2opvq/cscFYqd2Le/6Il
obHYJcuAb44GSz/R4+6VnAdVyeI3BdUXobRm1xuQ6kB9iQvH9Nurc3UnZwwCpO3pgfVcY2FNer1m
/4efT+RhXX1WtRbe0bYnJ7ECrUtzucuv2lXR2CqRybv+tftIRiD0miqgwtrxdBCYtn7aRBCgWCwY
DBUZIL0al4pXEtIMebe1CetF56OPEWqIySe6qhz7VdhY3dgsAASM+hgmY+XJ7QvvX3JaEtDkDoDg
fcv3p9YUCO5y6PQWqwvECaRNcx2vXn07FG4mEJdMu7Mihcd30yRUYgUshfprjSFUdPXVlYHOQb3M
C4cAfI9uesLeuKUMsnB1TNMPDNKda+zro9BOxk0DdVWqQcsPv1ahfVb6+Ekr6MUfDkyZRXmBhILy
FB/yacYYqx1yD2daJ1/ahecYIINp4TSbDxfTsWojy18d4fZc0Vrtpy3ZS10kl52t78rONinSMK8T
H3s/i3xwgWI71glbU11ZTTKnlMl3gE4swS7F/Q/M5mZEvtRgxQElPysTX/rRJ06EKdziYCXiDvfT
JZku+7n/wePFeLh0LdGoCVFHBFd81sHoS/yO477LpB76ei/KaDggORUWpTLWYrEl/6p4vwdrZlFZ
jAjqX7cb8xUr+110eM6ObuRW+2vCboRXWdyS/qJ2O3rPeDOSaMevXar2p9BNUMlr3o2hX63WnWWj
GTs0lvqgES8rd0oyJVUniBK2Q9GjXq5CYpnHKm/CZ8ahAF+QXjL9i0wJObU6dHaJjoaOsAiPLqSf
kZiXagNb6FX5EDtAlZTpykYrb72bJe7xY8zbxYPrff5lWCK6XyvCKRgFTU5qBekMmCU+KdIRQKkd
s0zTdJF+3S7X2Xt3rGHVgyZrwtD2xk9/cxSBAwnc1L2M8pSbBjZRhNUEyyR/gO4Ar67mKHnAJROf
qnw4RKxtoLydij712V9aMSreylQgqwHL+fooTF2ncYqlhn6J4nnOIFAXazNbPdPaVb1fnafaAOZo
D+UVj6CpUCDnoY72fw+hqA590wD6JlrwOouRE4Vu62fVcxqIsICuWO0tvsYdafgrpuyRzwqv43rs
/w5rkMGiEhvdWZ/j8dp8IBklGLtQgbd6Ftjv6qk3NctedKcDjRdkdy2uGDYLXTUvzV2ffijgN3FO
Liu1Ref+P3gC/eaHFkxArHyUlAcSZEVq/23J5bxAkh9q2c3cuzmBUz8vIIgUXfaClG6FESq/JqHB
07uqs6HfaOOlOhepPYkTW9B0ejbXst5WpiEq29JC5vpHm8ktqDZ870Fe7iB+CjrN7RSxg1VW9PdU
spoTi2hmB3WJpco+BZrO16R9PCdbLu6nFZufnrsJgrSTELKgXRe9uDNleVz1zgS7S/6ngkEfiiQD
yno4vYMfDaSHQULCKEZ1SbkG+H0qC/WCHOf1PEdvYnR1DoWhBDt3ZDpOU9mUyOcUREq6pGIbyhxX
mC/052oiOgNh5P2Oa72h7jgD6bpRYUccVKPjjAG2CDIl4RgFRJX2nEazbiz9pCQhV1TQw/+2M8l3
ekD4DtBMRFQBCxgL9a88k9xYSgUatuo/4n3z8O+x7i8/1D0rYnAHNyXbteX/CYw1pavqeZSh5fC2
uu4bodFTq4pZC+iUzY8YRNH1S9BzpIC71AlqYi+AaoJm05unNwd37X6t5a5M6Ck85NbBRav4ML1I
x5CxxPnKkHrBNuZ1Yeqe8bU/YnPXKxc3eGCLpozaENxzO88PMZmJh8j7tNOHZ2MFJ/7/j8wdopoc
+54kuJUNlwhm8SZkmYOOYW1EfsgP25QfEZOdrAOufJUJ1XXDZu+q+bPxVzEO12zDtTmYuZdzcCB8
Rm4C/HXBbwLYTI2wpS5PzpQCWdZChKDxyUuCY4zZlAhEPFNx5DSlF4KYeLkAlW6pzZMcUUjylfrQ
+kkyavZsK6T2TNx/gMSleF2Fr1WfJG1RNzFBc5fBv18D4ch9fSGFspBI+PG5ODoBaXi8IJyp64iR
s2nTwZpihd/JVoZJeD82jgFA2MbCTG9kQeNmvhqosxkCyYmLiEFAE2SCYJ8cDE66GoG/vDvxPhgD
RVAoSJvQCNhiAUJOOLlfUyEZx1j024sLJ4Pgl2Th1Cg+aj9Yf9E2poGNx5Kxp3BNypzhOM4wB4Vq
n3eyzfTYtRF8IZCOYmOmXol8KODA45M9uv+4zzKvVZ2ocFmmIA9QC4vqsUl4/kQG6nKN9RrXYbUx
WYRbGPtBzkuCKBvn5G0bQAIib+CHRRT7RtHVeh+QcLxl5+nM/cIyzV6ZWHf8UqpVTaogSJe0F/OC
DbnvgMQ0uESQ8Hx+KDO/jo/HhijfIVLNJIqcuTNm+eOgyL1MLL45upv++QDI8TOpcQlPWJWXGdP/
fkrfCZ86MOpieN8BUMkzQCZZZ3aEvYyG7aXDTaim5cLYJ79+mJhii5ocNbhuVTWj0NRaXyRrOuRp
jq4nyGLQfqulrTJ6p1KuLKHH2Gln16y0kMoC43vJWtOVc7ThVwX+vKJjRv99XLp/VZjIXSifvG+P
J48KBkU7zV0yKGgnHFZguNBPQQiGItRJeIBuyjM5ne686zqAdvZWF1xFCgzpc0FvylcGiCfTTmLV
5IfKpL35aw7QMngJdHv6qQEeFQWppMx4an1jEAp7VEIVYTSeCn2xX+ij3Fi2pwsldej8I5/H6xOL
8JhfyqwygyyFp7HxDxAx+zemoQzZJnj1giNWoxIQQmaee/zdH/UUjPzpB/5Dpvtm0hzvPfVGA2C7
gi+ftwytfTd1vh7K3fTtASteE63Z6nHgIIPJ+4stjx7vt1yGXddbsAfM8skqA8w06tgGxp+JuRFF
OmVLO27OspYPob5NTa0yivyCIQfiuBwwt8M2pmllkafPaEHBRME5iPP5sKEoXrR2M/tFgvy916qt
cCxF9NqkchGnN8VwGnj0+WoxmvNyiLMFoRdgcVcexB8vLpKLVFRDVgW/aBO1IaHH9MKou/5B/UCW
yZLgbupv4QA71xtsjL4uGBD2xsspeoCOqO+UJC7TvtoA/xnKkFoAIY/R7dUsEdUp9ipES0+A2iXU
dsT19hCu0f4MM+MfHrhNG2wb/nHKsqEF96L8dujXeFrMWjOz3viJvyqrSEvVKKO5LysNw0c6qoqZ
rhmOWcVIAGNURJUXDBx3hdmwgsoJJuQmrc59SSj02Ebr405mEovrB0wJv4j0zj3shvrGe6v7Tyw7
VMITH+zwH+8naDOJvIKWzZn8uQ+9b2bGOSggg3di+56jzzOJ1mPRkrO+1v84MEBHiVshy+w4BUIJ
xpKbOoFmYP6emSmEljuZKeJVEX/NN2ztpcojmo6M1shphDyv+UzIC5yeJQdZu4O8U741BzVTObUI
cWb67TxqXLlMj7jifkJyQ5GReoCzOW+VxBkhR7YvLayc0jRKKHx3pYTV/+LmhOuSe7/9ADLcZS5d
enqGC1HP4dWODeRmVh47DA4/N1Rv4PVI5Ncp4dgWmJZ96DwRO2sTWPcaXmMT+VHhxkTZ+9qEM8Pg
NfFwCk6mJZ2Qv6sI+ATi04gDYzNO+zEoAuoI4MMtA8l+JJlTRkzXgSR4yci5ZpE+5M8l4UoQwfIS
/SnbXAGYweRZZLF0iRWgC/RJSyOSaklQdla4sogcNPpadrnmLeGAxQkd9UNazHUvAHU6wmEaoWWd
gdu4V47MUgszehEL+iv4fXg3QRwNZa+5u7SLqoun7+VQ1bh2U8vo+2yfnhD1TZIP+nNt81Smkt2X
2XF3of5eu+ntPNnjzkdPhOzF5/UPEmIgJpFkWSuf9keCZ2I6VNCVre5b9ovLOEhxFU9ay0WZTetR
t7dsqF3ngZmif7kMlvu9tASIVn5MFc+wka8coF10WplM1f9e63RnNtz+Mlchkd/t1jfgRXiFuxAs
VV80YW5c9kDWTi3VFb41zArr4XnpftVCOKUS0zh1+a2uTzIthCnOCsuSoT4E8MK/bmdkK8dQD4XY
Tn6Ecd9EcMV73RAlKMlnj+q1pJNnOkp0kMtjP0opXdaYT9MIEEr1i7AmIePlWoUFkhMnjgHEnEm5
wyAeqPjxtj3q29StNRHw2DVSXSwm3WZpPGs+ccgLP+mZlsDbmD5deiBPRissBP3g9OR5D7d2pd0M
Gc/x1+Olc/a7zl+Zf0fd6L7PFZ3BPHgksejtCVWp+azUTXR2PCnZC9lUc4JS51iXPkZ+84tcQUkU
s64upvEUGzhmXNd3zFnTVBo/3Rx8XVGuLo/mv1VWZGkkNSPLxd4NulEHfWTMals39+av7wIuI+tp
MphzjlAC1P1wqGyLzPDdJByWbiA0k8RNQRcwx99PXZ11DPtl1IJrZQtSlbdRenLrZGoXyuucRums
djKIbY2uLWRMmRQo6U+W404PMz6cseA8OCt2dO2WqMN4Dso06vjbkm1cBV5Fm8Gov4O0qxJZzz8B
32KnBNarhNUikLXp8xEdGI3Sia7nwxQ5ZSo0qmSa1S1mW3zIdVu1MuoVoWEpLBMB5nN+ZhEqzFIz
KfoNp6NfqAZB7U+YqMNXK2ipbTTETcZUQAAQb+ER+tJHP3fWFauqOGIaZxJonTsfIDCAis8DDmMU
4SZi754p+uzupIjNrGXiVDNQVOTsQmsxJqglZpjQ2ZFKeVB2gD99tBu2II6FcDy6Zhu86rnjl29C
FHC2AE3WSwnZlZ0Wulvbqr02LDos8h7jLvrloTUnRFxEjnJPLHrEMlbaJiP9s+GuXmjMmrynYoUw
1zq7/E20tLyT+mhFH71M2mPNdaIsoNEfELt8Vj4xTpvoPa89xMwAWIeBlZuQXhvU/1l70mKCbElr
SIHv2GL073dzniXWLlztbBP2cImKFlzoZ4CraQwxRW0DeOBF3BOujLzw6djBSgEmr0NPO7RtbC81
fMLmxQ4idKKV/FEk4t7mpZ0t/xv4L9GSJS7O1wSlPMr6BP2Kob0Svl2KH3TMxmT2F/JixiVuSxGM
xD30nWiKvPUjPM2CeIa7pepV0dSPKf6VW16Kv7PXaNIs7mT/il46hYJxX798wNbPbqdWl5OktCED
92aEIl3cE5k7j5WpyPydK/wsUzWLwVakzG3q1RRIf/4ytNMcniS8wZvx3F2dpq1zj6sVdB/Zgf3s
KWkkXFFhgWTP/UgBx0REn+T1fnNCaja4w+QMMMLOv3kDwaHgMzj4asm1fzumlI2QePk4JUkNSFf1
l54MZXnAKvTFBdJzLujBfwQoAqryPW9nOO6+j9Fj2EqWwxB2kbF5P4oSB9bhpteCtX5gK04lbO4p
N/N6VpJ2mCRuNN9A66K16REMsq1YMCKF6k2G87pDLMknw4qSDgE26T93nX9LGupdpDpXj0wJifKc
l5YD8z+Xal415aCEsdkje4yitJIOYytey2uq/LP+xFM2YS5kVNsy1QaPpc2zOm3/+6l7O4Z+BY0m
3ABXJKVFtWaH4vbxgRgiAEzW1fGmjL2Ld3o2TTgIcDPWL78dsH9EVHp6BTkTr70JaN+f+ABmhBl1
WB4G1zU210sIGqGrwGdqWGYbpykSc1fkh5Mu9rTB0SEaI/eSxT8QGM1it5fInp2EnycRix/U9+oU
qSVgrwRtNGzOEH2VJYG6WzO6BBOPq9uqgMEnPXSXDNd0uRBRs+QMJWjMOH9GTamTarST7vdbDv9H
zfSfgj7RUYOe9X9c4AH5vg0kDMLptuljWWooPEKI1LH9nWF2awxNbxMj6kFyvIG0mZmmSxPYoL8d
TQBtygx5iqiawdwT4qT9WSpXQviClJ0gq5q6cDlblINv/wMMrxwubuWlLHQV5ucqWiu0gmV37TWr
yj0Rtvk3CoOcjBqo019TD3Rs7lH4MdiDdA64YFN1hwedYBLmVcWvCcM35K/sK+91fwzO76KYICCa
KXkx3ufoG7hG1cq/KTKN/Uo7LhWD7YAKOQig7eaL346wIHrxaWvN5cSNLMDNG+uPOESFBNnLAHq/
MmInB4GH502ep3CAskzeFZuOVsuGmuWCjMH5cKlk28R00tNodEjKLhcNQZy4+nzHL43PEE6RkleT
4x3Iez+HztLr/oHwE1K+MCkJQLqM6BvaYJcCW4C3OQtbDGKXt+rVbLEV2OUSe4Wc88qsAtHzv9G3
lMA4FBIV3T/fq7nfuveiL9KK8WkIEg8H+L7crLyzDv8jiPxb+H1d0DUOxLyQ38w4/quxTEw5rnqH
eWFtaQleCa/4hbuvO1p9Fz1MIp3SBNbRVLn4TznGPd/acxv1i47xrSk/pkwXHgPqupKPHMqLBnyH
1+z61s+Gm2qRhSJZk1s/fddlMNJAOFVpweiPH/frbXQ0QQ9/+4M7T1Qwh1geP2ieMT3zpWJwzTj6
rjIsKosU9ePz3kqTL+yXVCPALt5x9IxaYfokO/DrPw/MrGSCGF1OQQcIg5MXNf12JoampdKauSLg
MapIsibkmwA5ykKEJm+cirn8Jy4KBkxNSoEMeMrcUMHRtl6dis3LzmcLRM/3tlULUvjpE8KavKA1
O7K31MrZCujXFnoZclE9maiL9D7nRaw4U/vSwHuctqhr7LU/veN8TWRA+97OejpgdpuuCpMUPI8V
joYwDLYeKGTP8+LGjNJ8zE3EV2LWBFu3UPEZf+QK83tAP5qoIDaxYeHRGkNEEpwoaRX2crYOT3Ia
r5i72XPtNkK0fzwMVI7ZBZ/nrU7sjizNUtG3KWFNrmJ6koMBuS6AUVHOfuI6MH+vZhM51C7zt5VF
DdQr1iUhXfnKfqOKifi3T5K7hb/xEzrq+anQBNJab4eXdZk0yG3+v4d395gDhiNEBXOglpmvlRRC
dQeufS9gCg81CilZ/NK3wmQRfTsJR2/Bah17qCQVoYR8xsUGkDwx/5bIbZZO++WOqboV38Es0/yO
tSIBAR0acbTQo8lv/FrTpJPaOwTei5Y5XiPvd8v560E1REz+yFtUAAx/zQcMB0pwK3GPMi0+u+jw
suRi2Dlww9PLV7qsINWqfY5hWS6SouD4RyS23u/tYv3x8Xt4HWrPPIRFPdI7mnDmNQ3myT9F6+/i
VGfzZetwla1sMuzyK9qPv20FFV8wLiQJgmdJ+h4zJeJ1e0jya3FBkvEBwpiI0fWmyP4vL68CQLeL
KC25fop9LHD8V2WJSW33bSZsv/fdjpxtQAFeIENJoyfsHh5FNENoSUsvmQgfHVV+BuiFw2UxPNjl
/GPAwC+RSbfkI+J3uRmBj4frWAuElcPTn588m+zS/P1LiN9Rbs+aR3jd1oMLB/UxsOEejzZiX6NO
KZ+CX6oU7PrxVDsMn5DnGpvkPmT9Mx4Og2NQj9BtZ1m6yRLLQByj7MTwTCP+qIFTCvIbfXh48yDj
CABFUAKqNC2zXBAKnZuF3GzmmUc/63zSul7rS3O8qtKhHqCfL5WvBPYe0XSZ4DcQJn7EmkLNQWcm
Y0lAKvCVHDo/BiSF6oOiwztOVH3KPfqv7MjbEzpNMhh/roVGxNtjhKJIqb/h+y3qohHJeObym3Oq
ahuwjp06KAfAtAc0b4/8kWZK30wCoc8CwSFYoSEf10rasOlti2yg2WQBiSQNWqruPvmNvwWNdfvp
QOgK+TAM4+yUrRhB+WDO9gKhAtvE7WFijLZ3QbURyqTWqUd5u/RQiD40jlVY3A7hI8wHYmbw4jmb
e0EqE+dbDT3VDkyVn7yYQPojC37Z3zNXl4WOzN6Ly9tCHcHH13T3ImXYTt6mGAz18kf9F3sEPod0
febhOxMD32mkPvcNfTZviy3wKdCWrzcBEFuUITpiaziM4Ft0jKuC1py7prbDwL+u0UjA9rc8mLLR
QwHAuB+TJjdsHt1D8z7bKr1/NIi/mCpboZdwBB5fl8is0uNE4aokDLfgEM+Fbtr0zJg7uMgSDKYF
kjyUj9eT1beXIRvrKy2vYKwd7RqE57ckXyWONHGWgEorm8EdyC97aI25RpsFw94mGOWluunOHpPV
N4X5Oy0GWLZB2C8LwQpJ9mvcxoysSsCPgJFgBo7JsmmskYNXLgIYba9b3J6WYeMaG+5PwTjyZ0Te
0KemgoXgtNuoYvYZWVa94+1c8bHtpYEVkSZc1JSVE9PFSEadNbefzVOU9wtBxF9IvdpyndNonUx2
23v5VjZ37XR7u76/uV6ksSb777CzJeWztzku7IEM42WQrxlK0JSXdH9Ki5LLbTvV48Mzkbz+CK7V
jActjpSdEjYz/0O86VZoTIiw+wGZtiubYRUWErnc6mhGeJz5VZgeO5FmKzBSPlAI9G7raRKXDvz9
zhQdrdRbPcAqjH7dMqTF85Zgz22k6o9YNDC+VEjMHyBlmqHENzMiwsL4kEF6nunzXlX3jDeakm5S
2TayZTL5jhuK2nLS0hZEMUTTnkIcw7cPz+HufJoM4tckUey5y583leIPZ4PGc8IWa7A3rOu7TGB8
vhXh0jOuOC3U523r1AdFulhqQEFSQO5no8iup8CBnD2YsgT5reYbvtwF4KZPAGOTOEhXOMi8Y5F8
+jjII2kzwiQ1RM54YHvFmEaXtPP1r320blFlEkhbHDhx/HVMcWl9Nf9rLV4JBOx7raezrDPXlA/+
Hz7no+EeUu0JWBsNqfIfsz8ytO7yVdrAkmKHH6iHSS62xE66iWAz76HLxsVswUSHVy5ICtI7pSXi
kR4sfJQRUw15OVkE0iEzZmnHeQBUQOaIzkH2Z1nVvXuQkfgWZfPjSt2YaHyqH+77DpGM/uoKhdEY
7cs3w+bHU4mFkR7NY6OKWC5n7napOTNwUsTMlR3/SPFr9DZATKNXWzrx5yCbd21XRQPNCerputo6
475qc5T5XgSd0X3s6Ea6A7g+0hbJNCYjbzO5OdgWtpF44v8N1Th76Ve7YGjW9l5O2HlBgHWWWIx9
2kBI8XSBGCTqPZEO/uy8WyIEqBEt/rc48towoQQcqxeAMG7yyL+srikkJFTjWsv/CPYAFcDRnFiv
ba3giBALr4LH2oRb5mSt8+UWI4QVErYYexXfNan9lAtGFKK2EIcHXeHfeQ0wQ/oQpQyVz8JnpQiq
Yum4AMM8hpwwvwv1I67m6qfRa0rLjKUshdvn+6WqtOIMcsIcFw6tCY9h8f+Q0a30zZmNXjF+EL4y
zeVJah99QBWXVB2ruTlTX4VDc52MEmYSVXpBxo0JmAf4zy+EikHP/Dnvgspyb5gRNKKI8n2Y6Elh
onJ765RAelKslDV0a3u0FcAqM0UaE7YNG5oTvYFnbyxvpjx2eLCPPedolYo4kNAUdWR4HXFfmi3M
IrMVc2T6qakQSXyqDRF7StGpY+mlrpKRSJbvoyV9vQh5ajPuXDF5nHOFtcgwZvKTSzfWaBDNm3hZ
vIA3zc5Ph9TGumvV77A3obDqF46zNwONgfiud7Da6HvnrMtYo5W9yTMwWdbAweSWyfe4eAdDqs9Z
2VldyjOCVFn2gi1ScIJpLUjmZ4i7v0hpgh3Q0BG8ReWjAlI1aWDmp6bZXYFelWh02UUFLrLHlE4M
RRPAhhlB69s4qSd0keh7/LOm1dEtEVGFYuMuvglKQsdXgtcLtSL/ZSKl/tM3wXs92L5cGqqEiJkm
Fc33uqeaKU7dZK5ItquExDiDvgCuXT4C9Ys3TjB8m7zLCIkcPuAWwJb1d2y8cFjdj9ocgg/pvpKO
ufJczZJDlduY0GoyAjuUbMrkMd8B+mdbZwrkXqxKGk/R4FOi/wLxGDPCWfNaaWBqCF00HIvvf1py
oBhrWVwmq4i3NGCxXoAchlVEpm+j5WRIm9cUwWAC/w6mGS9G1mQFoLmzs/xINA5vETuuFQHjQeQH
t6w0DtUcNWuD2ekBTwNlA64DNF0UdVJxrS0pBaUE0PZ2B/3gilDGuJp0W19gKf03+XYqsWsLtv8J
+EfrUUBIIKmZPeCB4gKUjfZWtVsyeBeuGiXqwIxGUR1a1+4aGDc6ORNaXz4LvFw1BldM5IHqvpCa
GcnLe6I/evroEoeGJrJbd4fJePzmTGIKi19CyMmZCINcJ+9jgfRgunKJwllfMQnjNzku+4K5kI59
kTKwjMDFiZod2YP1Ze/o3kuRBqfQUV3pxBFhS+lcHp+h4GnJYbTKAVs2p0OV1bUjO1ItRqQmRI87
tKz4BlM0OL+gAgoGzTQXVHIase5flVOtMNAAOyf7saM0DGgRObdXxqc8GD6t1s8l5a6WtDl179rM
PUjyti0ikH6SA6bIf2VmHa4az0UU8AvNFSlpvf4baiakXGhAL47clEaXshFCARgjyDT/0O8UchXQ
YxUV0BcvqWmT2H3E9CLFbxSLoISBGrq8C19UXq2oiaMxCzzCVlivU0GO3MhsH7++J7fgRrmAwpqj
Hoot3RFbTykybI5LyWGGNZKZVhLCzk28Pq259fBCoMRWyE/3ksMuyKNqsy1WN12/K7dqPq2Q1vBU
aTQ2quEuX4dZ/eSL3ud08d853EcOXkX9D3nSODHEAayU3f+7JG0qA4+3ZiOtQjbDk5ZK84zomjCH
CR5bTjTuAnyOi/+oOMM87GcXDiO4Uz2rcFmmn8oA9SM+bs+juW7Z7CS+nwIQTqd36GMKqv03W8tE
dX3ZRU6SjFycw64WigJNe6MCyrWMzDuF3GQAz6l6TDn/BNzoz7xpJRVRRUouY9Ecw9ePDtjuwYsQ
lDHW3nywp+6lwdBszt7DYWbm9SXp5ZXw16siIGEWXk/5FPFtEpEB3C8d+Y9luKi372/ZUg0fev/C
VVncAXoNhPGhtRh6Js7Z8dJFjSP1tDHxJ5xZm9O8r51/Wxv25tgVq/2THgWBy9cshY4WY+cRBH23
BsYamwv1UOZ1ck97UmDUyODT4pHOmWMMcfQyVaQ7hCZxkSvVUhnERoP3bEjVcoZ1nG6+wgSBZwNY
vwns3V0570V8wk3WWiGuibFol3V4uDCiRrCFAIOPjPI/KESFTDAPRGwLWQwiMDGc3Ttgq13w816J
oReQRKxuw6/E+XcHJEkNL1FdykdKW9K0WgQf1Ssv8HkQGPnFfeb7ge8znzriW0mjW+XYD0S+dg1L
GQbbD6jWZg6KgHHsQhGuRjZeAjwGHDj0uhQ8onEctq5ZbtVC10l0H7P095kSNyUWf1YpfS0sjVap
OF7W3CCB6UbVM4BdKZv2DK5HoN7uCs71S/c2Df0pXsgSPjHIz9KB9WP8k4C6YA2MsYfRi3ZZj246
uet2i9oI02FheBW+IlN3H3cZfC7NHTQYArkfn0xXPM8QA7hH1USZcvCmxefxYR4AuhhRLPByAfDV
vGPRVRykHZIIHrEnvaRV300nmkFOgd8q59hlCxDrqmf47SieAbG707D6OhNJkgrBOo8OyAJWt8eA
+jQi/YGHQyfsgOqV+Uqa95/grJ7B9UL05oifgH/2kh+C292haxvIIJmI5mJ+XOGJqNKkhzrAGUb1
JjuohzmFjdKxhrtTe1ttosNaqpdy0tQXm6oZ+tF0w8thUN2wasaSysX68y8BMRpLzC/PsnWlufMo
EpjBIeuppebR9ENLwPzTzpHwLAcqXUJeCiZjlTe3EKxMQhMKGQ3SWGHqrpTUbU43WLTyfcCUbAzD
qgkxi8ldAgQAqy5RjDPXMKnca23xFDUtIn5hA2d4Xf9tA7uWuEiBdT90FsFGQ8NzBCeFnzMtgsBp
rmvVoNJyRPqC1MAbbcnEqU+kjVeuEz40gyfyAWfFctYi4LL/ZWZBQKNcOmlGclqVfI5dG2POa6xG
3OWfF0GurEl/Hr+2aFKEDH1pD/MKxjGE+ibwZFalrwvsniporaLa4fj61T9AcKzYIxoYssY5z7r+
0lhBif2PV0s269hFWJ763eDaV/Sh6dgdg/l/WOHvvu6dZg/k+vuZSL1i637Z5iFERLBxDtQdBGHH
4Po7ovylQlnZRQRWr9SCIP+v2U0fbOw242lRtvxMzn9mNn18luh4VdViNZIngMiUnn2HetehVeK+
I+9haiqak+0fMc4k9oZOOlckafEs/7OZL1f+a8XKy/ag3EtrXh3UAbcY+ookJqP3F9MvHG2q8LDP
CRGrwBTeWXQ5ax06O0DIj3MXKnzKjHjuFsW8G1QE/2DnwOUridZu74+/fobG4H/ZOmwOJlWkJihq
BuV/Lwq/ZRFhvPQaWK07uVuDqUJDdcL2gTUzkeIOTc4jL5/0OEx5ow8iw3XPqDfyEGzJYuS0x+y2
2qe8ZoObrHGkwy+YAPsJxvnNmQiy/kZPY5tw0MJyf3AiJnQ86c1+q3cqA61aVI4wXQcDVcsDqApz
FK4AdM1Y0uYmo7j8oFmpUcWFMApaRfF7t+sWAJzDZAq+F7cWJEf84VQ3YwTI9qiPMxGmOU8agL8M
b/RZrKq1j63ChHxX/sGnLapXaqM1amRUgF7YUkEqV7ZJdyz7VBp20YrskKAqpqKWbMmWOajeBO8u
+GxA1cAhYXwiaXHMtgI1TaRQKRhhzfg6cE8PkMTAT9ScIo4zgf98XUrOY16tdib6tltX3pyvqErG
6pQzY2RQiZiUbot70XnKs6t7GvqNA2e2cB2NMxcsy+O7CzeMK+O4YzeFf3xD1pt1OAAGhaZeULTd
EWRIhzhAvBRK7gC3uwefyUlILBxXoNv9q0s/sCbzqhGDpkEedwHLh+OTdtKNThMpTz3CMygnF0IJ
E05rD38eyAMRPHqFkrYZyHDGh18Yu3YxRtogD57SqYq/hbVJxXoFOoKulwC49UgmEOsSyQZ3NQmQ
/VYoP1mzypoiFJME1UkoPmQvt3xD+PxMsyCsZyVMUKzUFPUH5jK0Tr3p3zab69U54Og4bcXU5gsJ
15He5aVUkrKp+UrLu1PVW+usgxAkz2YUhVQp795/3h0iqAerO8cxdz5qIuXnwxf1oo2FznpzAYIT
yjcMUMzDdmMHLoVoJFpIypGa93BlLZvg4ytqm975YEYmN50esM3NWi9uO9WQMZdS+7YX9IWPtbMM
HXSjgAEnME/AdwbO+FLxAWbB8/nKt/YEYcK6Rwj6RVcXLP7uZXTlXruI5N60m8RCoMy9cEHLb/FC
tOaw+wlw6Dl/jkXNVT25zxp9qN1mMZccEzftFAmWdoWMBgg2usZc8HtjD/zHv3C/ygyubl9FH6zr
LMkgOwWRk4I9ZlXFCRWgUOWx/IEK/+er4msjh4jpnZ90SQsPbJtuGcoiYOUgpZngibjDFwOxoHbF
bJDoi+x+H9bpYpiT33EEmLygDmt7CLC+znK++/rDwMOJ54mHnvSdYa+8QfqFP4oiqU1qcNyXXYJ3
BjVPdVdsKpZlpmms6XBrvNU/LdLnRzNc7LE+wE3bbpGws5oy756ciZWmI4hIoM1WCC4+gWWirjE6
Z2jPVM0NChWkEyi9rPHdpFA5K7IH7FBgLbJ1VW5/olp/fDagwjvfVXoElb5T1ZiI0W5s94eJdw+u
q2aH6tWiH0FcQNw9E8vVroK3qJ2IPCPrPfwqBGl2qVgefGkJZoNWJlxPsTPsTho2HB0Et8f9hu/B
E4yS35n9PB3/LjSSuX/37amRsA7fuXdk9fVOLAZI+7dEP3BcRtZf50EtKz4hmQha/qf/iCCdOL81
jeaecpbbRWmnQEduVQFVQpyMeHILq8SqCWPxNH5fWMp79OLqHTtsqp7l2SyMzPCkvAMP6fPhSGt5
yHRYolVvhrIK2zApS4KXr9bSazRNRUS/B08oQi6uI98MtLuOcEeGm6UHP2eq01p4ns6Wim23jiwO
xusXiGTRI4B3YEJLOG//PBuYZLPZfJ7JzNA3hbUTRm+HaDdJt01P4YytX9oREJMETAayCchOOujn
yBa5B4QcYkuFWep67uiFc9AhDkldzZIZLzCuK/DZDwtXFMa7u2sz5Ew3Y6DXBY8//HjPFQaBROQI
5oeBKg2puvo9pa1kx+xjW40QC3efeKuOq+BMrgahmpUWgoJewOzXpRjUP1KL02uTMJPsgq3ss3sS
7Ttszbg3cXuwBCBbdgP6geyWEiEssjGCXPYjW2wPwvHaFZ7BE01A/e9oFDyRxtOPzNO/b7+8S4k0
+rxH/wEEDtBSkOT8KNQxHMhS6hFbO2487css9MJ3bU6VrdLTZXp3bSvKOgDnghwYIXUxHWe1G3kR
BJW3M+up/aKYcvjpz/KU5ry0ouYP+hBEXviynAixhheo0Kal6C9MbFpzoNdN+S7f/1FPsR3VzP2j
Tr7qFdOCDsUwBjoXW41iIMlbe9DrlfsCpStlTHDtTeDEdWMma3TwWNVUfzL6xCmtHoXa7UzoinT4
0lx6VvXagcE+q95eCLhk24Sw3447L1rQg7vv9fPTp6WrObeeIMFF198zajYdTYEw3802W4QShsd+
R6dqgug5Dv9+FJB/vfBv2zKM3vBmgFZmFPJPF/AA0p7VSLQazhhM2TxNfW/dlyx6yEcGt/7SBfB5
z/zTnzqcF8ZRN5M4lJ+UJ2hiNd1kCkvS5UyFDYLSgIT7Wvau8+QmvphiSTflsNucREXXKtTw+Xnp
72VjDpQqf4l54RZkyt752pYrkCTKqrbzJ64Z6odRXi6G2I9CkmUDXVUvNm4hKusG76gNIAMI5huR
rdljZaQZC/JoiQoAXpEB0CSNEDJw7frBZGbyTQSsdY6nPbBWj3DWhdgaVNoIrvTEzNWqYdXEkd6k
aLxW37WT06EKeNeIty/lxXIAohmjTgx/6uDK2TOYCQ+2Lz113akSzdUocVkMDCs2EjVBX7B1TNDs
P4MW3IYpeoIx2nAUEsroxJrUMOsd957/rsIUH9t4BTJwU8g7Xk8pxLn7qegbA/a1PWLB1bd4wOA7
viH4fT6eRlIagYinAglBm2BHxj/NBvoWg4MS+whbVvZ7QeEKA0KaG+E7wE+0U4V+jrt5kzAQnYxd
Y/mM2jdrWzN+Rq8TRBM0xstHC/709MIVD0P6sn1hjZMKaGvGsvrQqGhZyOxTysVVKtOHCzBzTUmw
dvaedmZfzGRoZcLY19N8wLOY4KPZCNZw6JN3jp1fEATdrYRUpi8aQbX5h+Z66JKZxMMoIODQy/ta
71mJRmbARcoZlA4WlW2Uv8lBRfBhbOfd7E/3bckNf5PJns0xmt4KS3zYUDDwpKnFsJdrW5INGZT0
qje68jkBLhIURwLu/CakBOaHqZNqCw0WDJMs4nRL13KxgJ77Z4Xvr207CAERhzZSQVXv8QdL32Cp
/id73CNlUEnf7pqtsDgQXSpgF9bYWcVVzcwhxVMD7ILWJJI0tG8yZn49U6vL/5BcX4PDAmQmDFV0
NJuPsonNHHvIwmpkZmK2rmLGkva/g38dq4Bcr1MunCThk6Nv1Q3zmyLs/HjdiKegEy3uKDBMp5Bb
PlqdD7lC2ELT1BQDjxyNjVYmCHfMRrHMWKGhOpx5hKRgUxWVT3K0/yK6ibP59A8tn692HNe09g61
8SyXa1uJND0VILtX8mF3fUFFFDuRAftt3YwjN8guikgP4asVPcFyDgFyYseVhhM23O6LX6XHPmPp
tPU9kIw48ulpWUi7wOe4T7yyBssn/oxLbN55oiO/2vTIEQvxBBuPkbAnsyBPa/wDhGeXfn/s07Qn
P2oEA5Q1o0IIgRXZSht5Rjct8ysCoVOP6csVwj2HcHE+KmJ8vX18voz+aYQxFC31+J6BN6utFICt
01AuBZ6sJHl+047Cp5T0HDIdMtOCAEMsanMcy/2fbG3oQBayH4aDn0uBEDgnK2Yd/Awwxcre+qBL
Z4VgqsJikzeVzXOu5NvVf/o3ZsNDb4yE2zseVfxXcPWPbLudTsjwSb0XZBaDlVYjFwz5n9JSn+hf
+5ng1k0IACXzbCMlRqjjBMYQJYQCh6/A6Kff9gV916kPqCrQtqkiQFMiHaBicLDiHQ/bqpmAXO4H
lkffeV9XCx9IdYzcUD4TfZ2SRSpf84lay/PphQ4iKKM/ivxc3oFO8gaEUbLhtWrudjepba22Lq7d
KXE9x9XZ9dnqk5eoDdPhvexHVXMcyBGH/VtcL151HIH+VSvJI0AvmiOoc3qyYVKLC4XKZSB+fa/Q
W5zdpiN8yY5AAxWaeBr1NWz8Es47juJT9pcXb9cVma52TYtBrNyALKaFf1oZCYw1I+X6kcxx4USB
e2CQ/0Lfn9iYPGHw5RedTTBk3RZCFKdsApYmCULHpA9VtoYOoNZmeeAr8nhNRP7y1hnSlb9IIXPi
3Ky2JEGJ2M3B6ZmcWFLEvC5TdykQX9Mt22esetFb0vvkvm1ZDdRJOMTOrhm633QFsKgv+VxT6kZW
ml3SRmIJWN3mGXaGP7IqBMKYbNzGvZvBi9b1jyNZ48ZEGqmzAHfdN9tS5GvPePxyu6H34XR99EIS
tscITMwnGdd+anP84TZ8NiMKk4j2hpfF0GbCK0k78OXnkPQgbW6wSdvkF6JEczKfMDh2/Zhq3pfl
fu0+6TLB2SVkqVf5DIpzl8ZTyBH3Gh4bqP0SitfB6PSNISPXOL5thGkfaicLeRx1zHSJhydFyoJI
b0Hs5ztL3TqseYkc+ub3OB2h3338dRdnLL3pgEtrTF17y9Rrpeimj2wfl1uky5nK/9TInqf6uFVz
azWT7YM8No2x21AObNYKnag4R0qeCE8YXOlS9t87T9qvJyCVm6C6U4kZqQwgs2WOONwMi5xcsfVu
poPt/5SSovy123rWs4PWrioXYW3iFUoTSdryRTu1Q1tPiH1U7R4dN7Pkz6mMS7c7MgBMzUcjEBpq
nIEhawUFSnurFCw1lyb2AcW/hvdiMlcwwl/uj9Bzeoq0ZXnHa3erUiIgKDhrP16rx54R1MRePTwT
X5qGQO03t/vAIj7oE2SxK+m2tsNHZL9arA2QG2j5tPc2rO2z7yOGFPNn09+xYUoByd7Kn5XwTeQg
A9f1xwdzP4s0bEw+WpT+X2nDTaisPnjXhhwzCC5EdvkaVOZit1eGpEUF0u6sJz/NU9q7Ri2Cb9ok
qjGijbTxzeIyB0Kuw9+el+7QvIiu5cPs04xkZla+YV2Z5juIYUjV2lzm2WfeJu+3Lm9MCbz00mP9
7LcMgquR+Ac9E5xlqeHWH1IrfGpbKgAgmDtvb41ESidZywpl0tTDTXrWPFIT/u/TKJ6pBG+wqCK8
cUcwHiS67sAAO7lte0yHZl8pjzl25mQG93hvMHZAmneGT1Npyw9IJkFLC/op4mD3e/YMvMygRczp
pOztQ+3Op8sopPtQnzIEGWtO8bQl5dGdE9ahQN1kmAF1nhTvSmxpTdWuTOtXPc2hEbXvISzXqI+6
1LhqXGWxVFWCR1Q4SQeAE3peyy+AWsw6ifjfvsUrJkRRb6abEU6h/tPLbb3af6ociXkYy4Qci/Ke
P+GNVzrr6VafVjhccZBgxQxc5rr2VxMmBakWhWo6jmCsMnqLX49wKQZ6+AytYK8c+nGPIEYo/3Wh
95ZENsRLSmt0Iaw+yKR67MGlacfjibBoz/QQgaEmWf+g9hAo1IrbVe0Kp+MBPkSB+wCbsaWs/Rb1
Gxlgql1Voo4EB8yn6d8z5IF2ERhORNptWqXXMMMZJF2SKEh0fFWfS6t0ofDo9Jr7BrPEtoEH+h2s
F67mKejq+WBOzDcQ2uIDDpAUghdXEi4VVzFkTxTYVf3NLCcLqyA+LPGKCwLSmGXVY1iuKLBMzHbD
xb6CTiqGaomoH6UVpJtBJg14BtlRlnYYZkVdPLdk++H3rmStG4a6ndg5HdoOfz9Gy5PdxbIt1INh
6R5RDUHIxxVnAJe8jop2zYJp8kqG20gHag6b220zu2H0C5zDO2+jbVQGgeRxY2nbRc+dnmKvl7F4
ZHn+7kYG5V15KJTgLFf6P++7P+ApYargEMuM12qbZvuJWeKZLrx8DNJkeMLI+0xXgVE8Jj2JyLA5
iHyGJoWfzyfLjXQsSkcx9YCL0qqVB2MOrl3uixgbAS3K9M0R4oFvk7QLgFyZgrFHskVXt+p6Kp3C
SmZQTuyjx5pEsPvM+fX3xV7lDZhdTojnyCP3v/Z8utXkPwLah+HGh9dJYwMmaCNVH/vhpH77Qdoj
vD2Cyb45fNiD4kP5To2rynSK0tBfmnvXcEHZ5EtIHEiveUvb8ICGPqS2AeHn6umr8TGTbzpm6RCv
x77wPpu4ljvbNKrNcQeL+ziLwX7H3bqag4lJJDtqxTa9nTArT6Z447XUmyOd/0aFXFTJHcDnhWgB
FrZSY5iRHCLLBs1c2GB0XQ8+jEFxRAKXU4+K1yYjICJp5dH8wAX6AXVoIrI77RMpFupuRlekndYE
Juq6K86vvLNyJN6zbMf3Ty0xEWaIC0i/8+lQB74EvgYzeApyQ/apDEZfEgOi2oTS0mecteuRkxXA
30chlebVmRiudzWWBr+GXbujCJF2MINi0pcpRnkIUrWvdQqAU2Gl+Udfx7ULwyOJ6ZIRjWB7UYJU
jWPYsANm9i9nhIxSQ9BPab/gQJWyweAVeVqRGz/dlYxFQyNrrO7XMcflpdQRtoJ0SDFDKFW26dSi
sFpzff9nezg0BREiIv3ciNWI3pqeVAPMBbmN9Mx6zsEoynAf8yk9ReBs+S+VPk5ekQc0FhZcNG8C
lYiQOzmpKJ5pYZFKmvZPqjf0uUlDhGSMChK+66uzmklzpp+oiz5Q1ea73yO3aiZESIsLKM754GWm
V+9kCPg/tk7iRthWlC4Y9zcVex0ylDxNK+N5ikhyhTN0SC3doPg5Kp2ziS4o6G5mNRsZs4i8GALM
d4K2asGPxcaTbqDmeknpSoM/bVX1z5SpNHltPqtsZKzztAhepEAJKKeMkgCbjKR16Lr4GsTaRh3R
o7SPd4HhMq0d5nxe8j2+JrwjMKEMX88cmMG5vwLDrKPl0ZpJIUxRcwrzwwNTHuU0ptNcmDejUSnc
DJ5gXL6Gn1unwsMbiKXXh3bbjA2Y4qpNxPMfL/y+S1KJ1QBeNpPGbSw+qm13lSH/xcMkm8LRq4VM
YpTOBv10wxWBKobx70QatGCqc0YqTauA5V3q4Y8gB6bDyFdGNAK2IUNrMxNyoN2OytfWW8jMSuPg
9gDKpnApJv4Z9QfZx7HgRwR5lg5YXjM/2ZtELAxzHzgQPFt/JWzEeTk4qP5PtyI12ZdB63yZ37X+
oUXw46BSYNyTLP96YyB9QkmQHjwSD+zkmlVs/6ljHkfe/VReyOo1SRd1TJ/y4BZ0cK5Jb2kPjS9V
OGSM4IsSTK0RdzZZ4lclwh/g3pTI1A2/Itu4TPmARzdutY6pKJt0cYwczdvln3VqE++o/8nIqbL2
DGEIVSYoZ9qjG8oeZ5VcPF4MYYirg2HvEqqOvnJV0KtRxn083dMccrpk2TC5kYJpRK2Dn+7xs0av
KTd8qUkrYqguFGXPp9DCui9XFkWzAPoElnssokabHNyi0zVck9TtOtOmGmpllTzpYDNNoEKKmX7a
71vMpKwZha7w50J9NPArt0lhXDJDM1R534yEYYAmQ46bW0lJYGPToriW8OSQjaZ4ZG7IJJr8DdiU
iLWxz6Y0zbfVXMNznLywAnNMEEuUF6EK9eF4+/qqV+MszvCRrJJdPnOfNh8WK6v4IrPBu8lKfF9o
/M38LcNnRjqdqzXbvETZHShc3OMiyRjgBRIw9bVb6KuD0sTmZkddnkHoGkxigsHKGX4z8SA31oDy
2A4x7PPn07LvjF7MY69Ze6kDkiA340liVSltRpEKkuhjG/PxlMbfqUzkhw4fDrcgWZZrrKBhra4Z
lbDbvpxu+m5Hy3v6tlP3O08jM13ekElu4eG6lGKOSh4yPyPEvsf3sh7YyXu8zztRTMRmnq+IBCSm
88LRHcl01bg4XmZFFeAMMNP/V/jlbxVSAV11jAdvv76B3dT1HJFd+kOStZx0gv5dYzMyg7eUiDUZ
xHd+7pSubiXe5x6XlGd8j/TSVCTlypwWtL5Axkg4l4U5SAn/r+eg9bL9fr9gWOMjg4AO8ZF5BB2G
monGbV+ZAgLSfGGu6GYn1qJqeye0stnvuW+UnzTOM1DbZGgRF3KDAe3r1UMa/lvEgRrMY2c90qKW
CayMA+G1mRacejcYESLXibQ1Y8mqvD78zPKDyQ3izKO10TPpY3YN9J+zEXEQkszyz38sw9qcG/Em
31QYTKPytsagOdhi7N+71Mm8RycGv/ube9tSFvSG44nUwi/S5Mg+Swr1v3181e6lXKP6h5qBN6aH
ZGc4JsWfyAHp7w6hjOybMORV1PP0+l1hwm/fY8RsUwAmEGLo7/AfNg+MEka4cgT5rOdVE/JHrQEl
3OFd2ARkvNZle2KiGiGRjfsSoUF6tS/TW9iGVIXYI7aWSSVWZAsca6PMpyehutQA4fUR26pz/JJg
1HMaRDnGq02D/v9lI9uIdFxtjAEjhM+w9hIZH4IL11bIbtMEZcAGNBbQaBwLbsDoJ2AUcw/BeNvY
e+QSM2rSHsPDrfH3Fw5n2iWMr44a6T4UFZUpn32bfg80MiOZN1grdLzIAeCZQdcNPRH+ueAEuM8t
pZJbOLmVBEog+IJtUaHUwIAUor8s3VvwK0OaeF0weF/BpcYlwXodSKGqO1ZDcUEir8obWbt+jiZs
csmpiv0rLw1z9Am5iaELRYG6xBsrkSsjtRUrXc+lOsG6ZaI7+lxNfbsnlzlu1dvt1JezVEjo8ib1
MSyQg9LWjuSHHPZEGynBMUpqqnDajbZZX0LjtLlp6chy6qxMPUxUMrrBtW3Wcp7qpIXgI3LH8ctY
coUwRlO2I5YQRh7gWwyr9DGrnNHj4Wmv9NYKieUBoxIMrvEYutA/ce8K8zLTnCEWYnYaKL01yuky
0CA9UUuNz0amH6K7uTuppE/a+2dzRk6Tc/ApyPNXd3Xq/boov1tlDcp566UICwhDuOpt/LlwOIRv
cyjJ/T5e84BhJc1H3EDkcp1gGbl6xInQ8HvjUCu6lK3H6tbYP+UXWgNR7sb+EeCKMQlHs+3D2YI3
vY7V9K3UpW8EH5uon1oByrWmYY/6TprmU9DqbR95QmM63rX/MXp1IRVSfms3Rvx56RQlzHbMJ1i+
AZ2eZeCG9IL68nYrung+Zy4hprpZVJzPLe3UvD4ZSfZP+TBUNmkpDdnFpdZ3kJkNG8go75UkDvKv
r5+8ZoDieBEZfIukJTLj8lFRmb89NsgK6p0vzAN/AkPAVFjhKt379KUao07Cjxcf0aYWVz/Bo1dk
7eiPcwIRUFokkYG6tg0yu3oG1CxxarCqW+AXLEzbIs0a0POcDfu1Dk9jf4Oq67/J6skmgVjliFLg
n4uIvKOlJPLfP5niOVu1nYuwluI7sdzCuaimRMQ1l8wZjI9uIW236lqB1cQwpMBxlbM/23XZccLA
b24Pg2UI35gNSbrQjuj0x5WkcUUOtHcNa8pUrUgG41r9tRGX0V5pHVhLi6Q3jM3HgVrifobT5tV1
QI5xZj7HBzRSL6ICNschXdqm48w1hQO75VrveOtRoa2EJ1dRi37hGcmfX+zHVneZJzJzy9qNpiBd
i50s5AfpNTYn62zIi6C+cYVnUU6En99m6LRM+CiA+qUomi1CEFtP7nEn+LXyv94bn4cA/wcP7VAy
2LPDEw6qDzKYevD/1ytxqfNO1RRpwjcAaE9+R2NI5cLxR6Ntw8UiDNcy3x4JnyW7sNqN/hz50hsb
+4q6k6X5x+HbTSiTyLOtlR04jrNXzjD1VCA4Ge0xZkiJtV/BuDCt2AYW4glLd7gv+Q/zTw9qPqML
CJ4RfpdUPM1jn8pBFLg1LDb/JcKrMJDNwVoVqS00Gm/BbGUQXKu6vyrkQSegaBpg592QVvi9/x3f
WCPT7xUG0s2ZGUdmbXl7dsIglo+q3SbHkY30Yd0f3+6eUX26hs0sf/B/BFsViXX2K9+iKDYojkLO
jgNZ6GQmQ+yLBuUO279yyrgQ6+scxlKDZIk19+9BYWrH2GAzhw3c58AB2SqhWX382fBdQlnBioft
phU75x3X8yRMgg6Ii3s371aVEYWqgWsGII9m07gSBrqVvFhvYRR/0Fzx93D7AkgMAAYKyvPJJzb/
DtMkeeAo6ugDAJMeMbPJsPHrP5RBFXVh9qDqegtnwLix81Gj3X1MgPuEqhrHPbqtUEWMIjMpmlaq
8PfnWFAeZ6jjIBSlbtol9w17PTg4SLIdj8mIgikOHM2lQWbIlFoyXAcEmbtvy2uUQNF0BU3WKs6r
4e9DRJC/CYIvfmYQC0D3BGPoks19H5yrS/5lKQfU4OD1lmZ1NLf6oNiApKOMEal79/YJndmOYzOk
vwN7ovXk9g38C6IVljxq6y2XtPWgh8UQLozmeEx9AMjUM/bfZa+TBh8nSfAjcQo85JRz3De99DJa
MqqkauRhu6D4ZWuAuUifocVk1Mpxt2eflX3jKPOc5ZMgSfEwsVG+nPggTFcquIg2pBowHrx0kgso
ToS4IeeW1L3KsuINT+O6PxnyeRg1LhDDSLND0NnRwDPhSb1MJYH2QmUbFS8Eg1IcG2X4FW6P0NMQ
0MIeY2T9KG7pIizw2auZ4TvmHluH0XDHCA9s4ZCy2r1hgEy7rjepcHxXiY9G/Z6j2c6bfe2OQWSj
QkySB1GZldZmChKvinVS9IsDU3axzs7at3ObpaXxW40aCCPeJQpYIVzvRM+BRPBgjqvtNE3/Bmsa
6dukkjnJYc/1az36eD44xXnhPkEi8+AyW+evcUdxiSAPTSb3ggfeiyPNBz8vG92eERvdOXofQbmo
4T3d7rG4iZKqrU1Uvj4XDHT8bbqfGTgMelD2Khc0Id6I4wmTEdJVFY8MHWVZjBF3W5h87BNDmU9c
hNB5Zm6ukGVKBuRjJbLyufSkgq3Wols/2yrWv36cs/0kfBCmzKRykZeb6UnUPFk2RhdA71j/8Jc2
mh5XqTWo0hCpyIY8kpeiK6jNY53g1Jd3FASoGJ5FUlRX49w+xjJJa8ZBtb2rtbsUaGMNYrhm9IF5
wv2gRp5f5VpX/Cn9OQIRWzkYQDkv9mZLysiMEbTdDvD5mS/5I5Gb/YZ2144ko++KIc+GD9yrqmL/
B99eiqtL8N9qM9hT5oh+292WScmhnbkNsxpXTfN+JmNDnGrgcDktUvB5AyqtiW9SPpHkp77n6g9T
WXEiEWR33myw11h02rRdq91FqCzHKVX9eliW67c5B3MP08N8asPXLxFy1NZ5tHNsqJEplib19sQ4
F3AQH3rzuGhvfD33AWg7pvFUBk12B5g5QPmmHwdaGJzWlh1hf+uR1sCodDmgrpBP1zNK6tG4I39Q
ucf8b+JSS9mO4fVAj6wjI3odQD5LKCa9BjIo6VXvdVX3PWq33PutNxEg1NBfp5hDD3lQu/0oWefy
OOdBLQS0yAdSBPcRwaWDAYiFPWMALBbT/kcthrOf5Yn1swIMRmTJRLrjMUI2+upIpJgWqTAc7rY+
U2W+56b0NZ8Zbk9QvD8bcdN10so57YxB8X/OB885ajKyvxbYYsr1TUJZxG5uy+BnrOCLIvsOLhHV
GJJkjjcs0H8JgsbzAtOV5q2/hEE/8X+JvODfpaKFVlXNm/2vtJ5jctojVzoUQCRQ/Hj1DumNkzij
/3UMufABVLZFKgPAAAoWfGsFOy6OC6FIbLzLASrvYFa6L0aKj/uEfhTI6IBJ0PiDZretvhSI8BiU
TeGvXwLGbHR2fAJLYjslltheIkCxs6CwVzqLqZfHwhTZuujJvoy2XArvfspGOX4GJ+y1dCjZzo3f
5Q6Lg9zldHcBUdYEJ4REni1xWBUJdJwIE+u3HiVGVX8Hx3I9rJB426KOBh3pUlG6fBWU/f0zXMwl
UJe+Bjt35jYUYVbpTy6II+yJZem9T4r29ZTlVw+uUSndGe1cPNOQdoFvbYeynEpS+vXYuWn0WO09
HEpXhr/YwFgSd+wgIx73CoBa5DLUiUIMAZqICvdzmA5aWMvOXtrjB0npgO7a2mk27oXM9RzHu6Vj
gNydc2MW4VlVLMPyo3fUPApJ10luSF7F7gbMQtRwbxNeVRy5ZGuxqKutFK9Qi/ELC7glKLdszTzt
ihZdRkUGdW6XrILHW47okXEmzSBuH8qBeXfkc6rbJYkd41IAj0Cw1nq3yrXHHlmIbMtO8ks9sFYh
QEdxGmh4sfges0jQUYIBkDRdD9sMmdUY5BMgQF4uKSIAtiuVeEy3KhQ+iDzLl2B9Me3ftAvqjwSY
3OdrZRoEBjwOwQRZRjUIgUqCg3RsLHY6nqU/68yITLHYIN+S6PWCghaHQSaKWWZG/3ttWpB7ETqa
knflg8pMdmFxcVgWPUlXR+FUcCWq+Gkb7Hzs1wNSO/6RACCOjzycyY5F3+CQLOj2qsyL1BHReTEe
CPEz+jg9jThtTe/o724lEarbfNfz1Wwa/FYH4r3PefynsfZ2MUihg0VrkS3jP5GQjirQodGo0ui6
ExtFdBPDABEMaCqph62IS1DQtW0HuQ69QnxUWCZcNxV3/L9n6OBDhxfePJZ6RPLiXpr56bUBIdQ5
BCH6zMDnelf6/1lqGjN13fQewqoak3Lo+2qeGTX0+tLRngafR7Xne7LLbNC62eq8YR/Ms9dEv5qx
/UjDKBuExtISfVZRwT05aIVcQfWq+thwJXep6QuiDhtBj9jzpTSJAz1yuc1zOzaOUkYzTArdJP07
KSTz/wp7oht8vGQGLSyDjchv9qZv+fVttPBVIOBXrgUt0ZcrelBDMgdbIKcBXDVwGisSVBkTj3io
Ktl5CZwz6pN+Fasc4IOKHcmt1Z7sAq/py5yLSPZmTYWJij/PESvneJhy7R/LfHzk7KiKKKheip1b
bvgXRgiJjKEh4+Lbwz4Fd29rrvfp0NAH0uvePlKgbu6J9lF7yUJ2KD6U9XJcmrAcJ7PiHlUuncj8
soxqocvi/ppoVjn0nyM1LrY05mro9csBSGaWlfYBegHxB8NPzYS2l4Joebcieheg17fSvTHTY9MW
Q1QDhnfkkU+mvCjnG2I8i/SYBsxY1sPxJ5oT5I1mEcnHTOoBRak2eOuVKv2RGCVdI5TwYddLEHw/
iMCzaFpOJIWRi4JBTWtpe6nkC6PVypfNTpd9Y+GrDE8u/5n4TbNIrPCaKPe7zwGf8xgPxunv0ezk
rOIKbdwDlC15di1A2XsTwBBmJw3yHMgUoVuYax/JZPi0WjPVfpZprl23ho55UbZmWa8g9pYlLasZ
1dWOIf5DnKOoptB/T19nNfwY9ibNW0WHJB0tOawLCGJnU5DkD4940Gu7PN6sEZjXxCTe1vYmsxyR
GloZ1Pw1mcmgKJaLPhIE17QhE2r2K5lhnDuUfoW7AX9cKQS0SNZ6+EvMqFlj2OZO7zIKXBVQmIWO
RVa9c9I+9RgjlxqRbbmNd7Q20QjP1ZR81sWN3C9u7Vq6SzsQYSWdHnF4Fjb0beZb+6+B63K5FUm0
ie4xr4m33WWkqTAx8j2xrPkKW1UMNisEMLidJR+fkpFpBLqeKYC4EH1LMDwiYjyOxG4u2Tv/diLv
T/YbsPJpjZBBDbnD5iTcY0q+qK5GIk9/YalbT3aIrrdL267+StoRG0N6uCr1Q6uXoeXrRA16EbOh
dEnZ83z5vBqGdvD+Rnk3RrmGMd55kc9xUzWKBPUXgSEZUu1TuhGkWowidnuVeJbJVt9F0e5omcPX
PCkjqVKzEtyv5g0Z+VEEULPtWORWCysw0nJwG9DKTYnhWvPqJVu2L53Bf4sG/k7X7BF+dBZnaeLY
bGUU0BMZQ4o/YfNecCYHMCBCtyIIzbHe0FSZwSaaqd8hho1GSxIIv5C/ZXJlf9G5C4NnNnXkw/NC
89Y8vljgTetlUF0PEj9ereGvXEcTa3RId9pdQ+Z2TpB8BPEYUFg6GZijCIHCYY7+MMgLWQvF093U
tN6iDhu8VsxGPakVSsVZeIV7XZukR7Y67OLg578U/t4peSQJdbNwTspZ4gGKnY9wPwf9S13c2iz0
SVcCPv8/UDkX2++0aHU56gApn+zLCRSJv33MLS3hq5AXMuZASEWVLsciJb8Pb/+sCg/hpweeg1eS
X1I54iVMzbuOhLUFAJ5EHVrNSlmrEidsi+b2JUJmDBzDa4HLPg9jpaVxVDT0KFPdhnPAtBG+UKKK
otW0VagH/4xaWwAPhxa6AX/XMug04sTmvF5s2YdgC6wu/Sjh/jjkWZwibDY13Hz2ntfsWnDH7K4y
1C+J5vh+vAy+BIleyq8ucSMja1lUaKjTt1Ws0SleHwrqNk38kIH5ge5YAxlZn3sjI4S4/1Vv9MKY
08nJHW8qBByuSVgaO4qkhdAM7YUmUABnrrSTe2RKrC+ZE3YGsn+qx3ga/Ez3Z70XuhYygJTBPbuH
VPtDO6XZAzibMQprJ00rrLNnDs3/mvogVrlSmL/D1VH3P0DovTOh3nCnNBFWzL/MRFImKQ5SHjGj
vDCeQD9yqjnTQdHExJ7LL7orfB4DIutCYp36Mmy7TZ6JGEVOD8AVW/faWxC2Ze87TmpPvWRT08qD
g+E3TZOjiwTdm5AW6SW0bA8LVCNNFht5vIVn2h5s+DP6R6gR4I2nuSoBpXu+gVGRz39mrIqc+HuI
RBU7yAFvlpQ7B36AsUIF4f9yTIsGm6R4ZF9kqdRQagVgVoCexjSaMiETNWHzTWxCgNIsfvXP/9nX
7JpDdD/Tp2ngPTrm9i9/ppCreUtrUu5HduWKPHKYWC5F2BbN3KMtAaA63AQw/3FEGcc9r/h4Foti
3ZFaF4l2yWZz5rfEr+cg1jbKQShhaTtWbx07JKKO/EtiCkN3ZLa7W407vvJtGoGpZro4tOTUz2X2
PE/HFOLRNbiWo6NxQPolhSP2sNxO/FTQ6zjrCXZAjzYtwlfZML9co3Ko3oiUmFsW++afcw7QUwVE
zbt68V1ldJleMLI/+RIGJpcJSTME2z3lmbSAsOk88QGm/YyAJqRqh+bsXNijvDbPFWhgo3N8/sGP
CgVBByzvanpqUIomQVd4iZtu2LOaT/iQ9p+Nojj4W2a70ZKk+wcYmbYqKIzO1HczvKbcuDr8nKS9
j2g7wVFnV4URcJcP/1/VNLESxZh4WGfZloM9bbIkv9XYaFClLyAv7mXj9H5Njh0o1innjdy9/mL9
u8qLZgc3WJYezfv60/bZPkH5BFT2vjOIMAU8QK9qjbdPySKld3TYIJJLnJai21bFevWX8xFFDmUJ
2umDlIaGc+oHnKKr0+HvAFOiWki9IVSPbgxZ3JtUm61hRVs+A9ZKUkqVkCLbrCWlPdSJxHAitr4D
M/nKoMGh38ryuXyH8r0gZzb81SNmqVb53E1psHbydgxo+wZorNHkQb4c0J29NJrOyViWNOnP5xKf
NnW2M/XnDhi2w54r95DNaUT946VpwnJ3kiEinZ0t9CLAgc5GGYbz06FhmIRo0O/YXkCZPto3K1H8
krDmz4KzHm1RpSsC+yJngFkS/g7TJAEbc21DUrMCCgHUHWdK3yBS4t9DdiVs8/uMQc3xEQksMYmi
EnOrOQDUIAlTpJBH7EDrNLGpx13kBnO+ds9fI9vN8apQavO3rNJnSO07ETfiA7WOjW93BAbEpzFT
GJF6h7DMTWmHGhG2QEDGcGbKWjWoV1FHpWxrP5wSSVFqVSI/RfROrTFiiHeh+NKT+Vj8ynLV+91s
7mgqX2ykzhxgi1WlzeAhjQk3V5Yxkckexi/pdfctePJh1K8FEG3WTcJWWgRcI6/KZkBflSWdCs+o
S76EnzdvzRbcQSJdCtskJphKiqNIlQejHUfu6u3Dfoy8BUBeIgKT0Ay7636zuzY8wLtOzeTM73zp
OYV85NeOZYsA7WsZk9Yr/uf+laJapuQ5bAq6Wu1kzhlX9Iv2RjOfK15jt41TOEJp9YpmAznkO927
OZ1R1gnEa+0AAt7NFXG04I41OkqPTqH0iZs6E0Rcbo8WuMNqglUlzoUiDreJwhFWI1TtB3RtFZKz
bVWol7T5IAdpeGlm3pnxgbTCwiCgt2VmHZOzWCOwZYzJDE1fcjmn+ZYRBLdLBHMCo8yyWLOIAvSD
y7ganCirK+Ds+vptdOX0S+0RzB25/Na8EJ6VL674w9Ful6BmU9eE2PxAfJPxCqHtKV11YM6hDeWM
8Mxoh/SCj8eDexHNpS8BvROkjUo60T9u37euQ5h0jUcb1DTUa8sYIYFSjkGn94d5ZGW3P0+JSD0m
VCb7IyST+4xJmbw9edpAtnS/425RzCu8ptkbNaCMfCnLmoFgUY6zsNvE+oIdo5NPTbUtyP/XAx0q
Jifl9dH1xJtSCLiwnFr4JyTOjhtMwjVBo+YGOcju02i2KGTkJvtILZR10AcyNP8hLVvept8NYplQ
0RYqwjlvS6n4mXeTgWZSM47tLPXycxsJM3OosuDs3sp0nY6ttEKqSoJFN7Vpsdmaz4tPfO4Roia2
al+WH8jB7vn/yFKwutAJvnJke0SufUOfPqDwE/zY7rz45o3Oj8/kNEfHujq83MtMJ6hLrcBD0Z3G
SW4oEdt09sOLLxNS+4b3Pefrjy4XUePpB51C8+C/Mhzhpa5xEYzGkEgLn4URoLupK40Mqld7dd2l
mBLewEDZyW+1TOZVjh1WGazqo56X151E1MOFSiot1g8ANPY3b+yeeSzAwTTwVT6Fy61ji/iSZO94
uTkQsnnBal0hgU9DJGiuUSVbDfu5xoKlp/qPHNfoHlKaMoQ3kVa3pHoBGH3wo+PZXqN9cwTfH4ut
JQCUe8Rr1cKNSkhKppIJ0OutOflkG3CwTtSKlPQloi/HbHXYBS21Kj1pn4GEx2K1uTEcbgBaEljN
ZvJmLBtaCwDEebG8udpNkOdC0X2Rj3lqQadE/dqW+hfrgrOCw4gXrUIz4Ly8JaTabskxsyuhlHpw
IKiqVuW9pUK4ZtudQlAwxFgzaTSYfFFZm1eNi6ERTYwDszwmJ7hVvl1x8niYMrccHMDLSJmM8odi
qAYGzA/KaLVKJhL5mdHCIlm0e+Y7tX+DXOGXLpVVloYvOcV9k3cTqY61cnJnw61gRsAk9xJGZPjR
NgNrj7zNr6sejklun54tQGsjcm1ZqoLiPhJgDXeG7Dab/E0Ax+0iSu/CajoCW5nRfLasjcxOENlv
FR7cIkbTQuxxVKb0PsoTos9DfGzYrlK61zW6PowejwDOQ/P34UG4FJHq2Mkt9ExowsW+TOGtgmWS
Y7w3uisMRsrk+747YKJX3Q6kzZZDLHNZnXB80J1y0N6/VM8QB70pu1bNMN1jqkVnoKLa6wnCSC1s
5Hy8H057uKDZMqnmEtII6zHBjPg1D2xTm0cA8Re4641IbrT+Q5m0zanbq/I3HLJJCLb5IhdmMPZ0
EUJ0xyE5Of066/oSPhh/8zqbg0bkZztvmNjxWa86J6s/io13Z+RfJauGBnnY5jkvH4d0q1M/Iu3j
vSNh92Vwu5LE+SKKQq1ryvsJOmMg5gTEJZekaiP3vEwnXrg0XyBsj1KN8JusHzXbQRPJR7iICvMX
RSE4WyEUo+Vjrf84xM36iel48A6A7vqEe2ermHvk8Ui92+v7TiEMqHWICTsj4A3IAQW1vbQN9/2f
8m9UgyOWUnLC6VX9tqq0wIAhkn28gl/kAfarBD93/FVt2DgmpiA/jW+he6OPk91A7aKBgQMWwV3B
Mh7PLMxP5BiJFDi6h2drtZ1dH1vspeVAAtkY6cR7sHePT2pPlLbKdZ8oisyDasIJcS6/02r0vQzm
1+kwHFuDheYpLDTTm/nBB2oQf+mdslbf45o9PGl9KSbL49Xs42/8pD2OIpUsicVo2puJUVXBZUhz
igKws3tN2C/h6KKNbJ/zBE253tGkvCKUa2VVK0hZQN/ij7KxrMPQxAWZcM8CufzYQ1VsyZcM/u81
AiEi08DfhC2FPWRDjx5tQ6EFbtG/x9X9eKaJgNEmzShXYqxaLrSuLnH+B1c6MCte73g3ffDSHcwp
ohnuivTKITcXPMhV3KA2zffvWypV7IwF0X7cjbsoD1rrfZrSxlzVSHRuYFwA5H3MT/JXdLA7bl22
bzFny7cHXV+ZybB4TLkrrD1UIZ9v7MBg9Qy+CBC1JNaHg6FEWaX79tNbnsHA2R0Kgdx2Mc1ueysP
X/9qFFfIfh3YH5rlJd5xoYRDJTlFgsIjCHsRamKJAHJnqBkC2H/424tZtlbfS10HAmNzR4TJmp0B
NFoZ/djr/dNi5qlalpLNL90eCqNKSk/Xw2IF2zgspstesrnT/tTk8yTrsAdzSEXV5OvSLNDs1NNS
5u2nrc/Wxtq7P10513Um+77EojyIBAC35gbU2rTZmstYWJwTccbjgS3xKelblCD1ZXhUgVag52i1
RvnQYCokDJOgAbl7qqU/ZhcDyHre343xHghQaFeQcOPH0afOKwGAcQeleeArXqReyfUqn1GhlN51
uIeLI+OLT4wpxfk7aHH8+VpHf0tFEoJKJD1BmLr600HW8JAh5z+oiPFP8yPCIFJvgYlSQpGFhPoP
auO0rCGiAtvQxIMTFUKLPl5ZB1TFtTrxYaT7JovShSCGrC7oC8jV3pSRQzXK51FeZwC2Wsp5ehGa
mMI6SugdCA7uWpARK2hs4Qm/h5rHpRX+YPN5AzpzXY1Sw/JshSpNz5c896tbTg1koDuZJiP9aMKt
g2daU9wb6XwCoBQHsJW63apgNJuOikZ9sRRjxxTn6IpNruzTs2qIvqlYnkCHevda0tM9ZkcX0pmj
MAQJN/WZIaUD386tc6DvhUWAcW4aUM+H49VjZIWf48LBh9odwysmGjGR0os15249Vp71CXsu6SVJ
Ow2QTB2b8JtqzY5Uf3veLNI8HG5+Ksn5mlRxLO67h0Ul1LU7rfVsTtOyB7TP8QNkc+Fc8GHm/ym8
CGaC6ls16goBQVuIw1gS0vlG7dRO+GnAh7zF4uoR5lELXDBFNBJeBcr8Nuuz0lynVkDRDAyFwR9v
Zx+hcMzh6j9yEQRSxalHHw6yQ+NwGL4WOTi0pZp/O9F62UvEVngUYAiSwGZzX/3LxZWOtGJX9xMQ
PbfGTXc9wGYRmY+jV+iIs7mctno3GUPDAnfwo7tGgBQ7hlVmCgDeL5F3cLzfuA3uyIiFPDs7RUCW
2cZ+5TfxWc1oeuRp3ug77ZezkLZEaeaPSgLuASw9pyGNk9T7k7FgJXENkd25ZgGkyE8GcpKcaUpd
0BM2EWe+4bHMG0EzSZ0VKGIZiZ8A+a7NhZuiEpRgYoDFd/SnPzUy3ZKxojzBhgAk4OHFB14OlN63
37Vt9MDAMaa5Xa6+hvaYbmi2DhpGcq/lGhjKMagh2Q6iU6NtV8JVTwwJMiFQj6x8fp7Kzcxg6ff2
/BbQKXfBpja6zMvS/QinPVWbtaPRfejtHWsyc4Bg8yifhH4f0/lvMqrzJ1g0BHYCaIOyD3f2gPXj
HIEdpf0i7dooIcD+l7mgXbwvtJ4TvRTD/YIGS+KMLy0n/ulWm4wbj4ky2D17XYsrHpHx/nZ/U1WO
0N2Tnn2dxktJGTDdZo4vaiCUO41d3LY6OpMXGN5S8hv+FIcmIuNDXASoGz4M5SVKlYbnZCccgT+E
9dEN7vsEHsEkYaWIvsIYzCzJdjCwi1PXx/E7as/hXQv14BU8tOG7m53v1BPdw4AZtahIvu3Jmv+d
9EmEjIiH7ZyM4MLGzKc3oEEf7nBfgHvFHFZWrE8NpjHSGtn1sCyVVz8lBpMOZT8nRGqxx9RaSwf4
UZOqBsNWE385lH5LqtlUVtUBjZDqnixRWqI6QHSPw6nJ/FpkKO11I5UrAI0mteDKvT7V62j/2AW0
Kp7CeEiRY27mLuJ9RYx684NbNDsPNDNa0thP+ZK2G8wq9nluwaGyDznBxwulqkggCatCFMXcemGS
93WAuDSaJtzBKBZJEQG3vTL+0srhDtBHp5S4zO2XjtrdCeSRhTcSkJAEV6OFQvJD0/oZtmFYvRBh
Bu8vBb7yVHRX8hHTPJ3FLCWOUgli/+MJ7cxFcasI6dmCVMcPmJ/UcGc1WWF9zdBTLNutg497I3TP
2lbjmxNLp5yMLwDtvItP6fSBCRAz23ZsgBuWuExnG3YUmlr/xHZm6AKcTdbz/n3pwWYA5MnIeXwq
hGQUDZXT8RTa81HSG9l4iTvP4WGuazNGhbO0RqRNWzqNqe0X+by10UdkB6dlnFRmoMIsT0sNaeK1
K5J5CbHHd9EUF2y5Me34iX4X9Bxj+Eyb5oQ1FM78HQDZTgFene2Zmxkd+CPWn6aS3vz3v9FIO9W3
8uSDEm9D4/DBFU3cw+BjEQr+rhqLmSpxIi2HHJ5PaMMO7l6Wg37jPBF7TdAxaJqHcc6ltOhdMIWJ
W8Gfy9cCUXRZqAhPG5KGaFE/z032Bh+0Je2+6bRK1+r41CKuJZNH9GXH4wGaEM8IqXhwoe9vGz1c
mFCThg68+vtzT9LI6ysJMwXJtjmqGkJ/1t2Lm5G0gb6BFjgxOEVIDm+Tsxdoz+kRwIoNedoEsJdv
vVVdwoGMnAOKDX7s7FCAc0OdZCK8v52Y7rjGm0Ma9I+8zTXc1iw0PNZT+XixUyFEAZIxUqVoyLoG
J51XDVfnAdbwb6gbCLeLKLgzZBoNF8hRznLpixufzVqqJdcrD/7I7q+8tDQrw+jTyKnCbsZUjlGB
iH88H8I4r+5Rz0TDwSGt/WrNPgDBX7AXwbS2oziHwHdGcEZK8aL0Od4BB8AxA3righhiUTyEGCtY
xYLOqSxUdYxHDpztg226MOXVXvt32zstJIb7rDBnjVNDdP3U5rkx2bLnXfXg+Smj7BUuA2lNquhC
Pc1zglowNEFNRhATVR+RpasVWBWu5B5/GUrK4DnAQTaE2Rgcw6B4TLBvaDdG+9GFC9mHsN44pOPI
4JiKZe7z8F7//fZ4/9irzH2g4HT41oQpmXrM/GXiXmV8bEg/HpFRPQEL7hjz5C0Cb1wqmp6m7QQT
haK8c0NSvershx964Z1zNzgM24H5iiZsV11h/VXoSJuQxH1GGJVXmUW+WIxxw+T4dOPfeHrI8q83
6cryMnDgyI3kkhd0+iUzPxZtNnY8YcyeHx6gqSww6uxB2SJjFTKYnPHIPi08psnLRAUoBv4RmCum
5mcOPlCuXMbT8p1FPQhdHc1GzXQMhaInogmij4NPh8DypGdbsV2fN611/iv5CmzMPNRlGIoBa6Lh
Wwiyvf80mYobYkchq2v8WmUv0zBSiHsu6M8A3r3HXLnz25CQcyMB8OmWu5cYWZ9jJ99v/2l+I/9F
e1InawEPsIIr79dW0B30VijrGKdWLWHz670wrH9ti457Fd8lDI6YlTa6RxjQ9twj+1XZpXRxREEo
u5T5g71LQ/lFolbanoqnnkki647pzURighReQzhfsZmIG6qjOpaxS/yoCzdr4kIx61pUrwDd1RqT
hHIy8GV2L3yKBNGSXyOseFqYsJKp/6K1KrniEnk6F5PPsnIm+yeVNxC76F+2j0/0VcLjl56gW+nJ
MnBOYYM2eCGd49+Kog+0mdKDLLs0Rtl/clMdsQvLnEmA44HEzZxtf3+2/gpjxI/QlX03TJ3Ib/EK
zCUuTvkkeSbC5J2tzKapCIxrg4a8dyPHjHQ21ysWM4U4urO8WZGXfUHwgCccm8lmaQyxdDu30bho
sQv4vjZ+3xrqaMfJRInMx2DqPjS402O23LeeoyePyjA2Hg6ZGjZpp/oa2jVB2u3O2E/i3CbfiV4g
dD5oKDbIYWuieHa3kX7CXgSgx2IWefpXXg+J3zihBwhMSTTVFNfZlARqUjErplwyd0np6Tovp6k+
wKG6bqug6NLm3HZyW5J4oGJc6xUY466h+xWoJAK8kNtpZz098ldyJ16WEBTJAQyctLMNUCdCqMWR
qUWW6MyTvm25xKpe/tJAVMuuQsWWjlVhiyU45Cuzyw9hv80N+r6Pt8QDSXxY5QQlGnmvlNPKsyWL
MJ5LFerquBRAE0FjGiWYntTt5rsy140t31G3/9oSPsySt7fQEK5KM6wWA91d7h3An7mEJL0b1z6E
Im08CaAclQ5nAHHRnPZg/ROnZfns0qm4uYvANKPZKoL6OJEL70vQjQa3Rwfk9i6f6AqSSwRdETRw
RnqEG3OjDwwT0GtQkcvwotq8TShBDEQ2i4Mse3Y8Ya9Ew3rC3S3npPWW9LhLAnIjGH+X6u/VC7es
hQwsptuK1Q5Q7PGYQbQ0MIQsYiRTDFDg+xk97wazKv050MEOAXJoo1VgiweRmIZjG1tjeFqt9H/5
WDKvpxFWFqyv11LaFc9JICtVAe/Gg+RLuc+rFN/yg3xA3ozEcaQTCEl7zzkGNCDQTRrdYssXf7fD
f90Pje5QRbTftSUSrdD+2T0OOTPTJ8n34NIjuox+6xXR9l3iFLYaoCGSES37D8wXYOSehJTaAN+p
89IRpIh6e+hs3yK2AxqmIuoJQ0SX3Pm30htdrq5xlUBPFh0rCUttbnd/HbHSaFABbV9EbHm+aVOs
F0BYgcYr4M0lDg4QjtwYfDB3iV6KJHIl+9N49qUCYlfIT7XFUP6A4q28SCiFfQKq7PMYTgyAsmxY
nwX43P72posL7WyWCEiG48Qm6Y9crVdaEvD/wkS1fYNv8mA2nSjlbSl7m9LU6RZ5/ioSKaNjbegy
q/dgVOEit8Ofa9wokEKRvUkR6OJjKGOilxPvA8oOhmdsKt1qGklPBClQqJXbXQOr/jvKtEIxM/Oo
HK9FxTZB0N+6yRP2qeOZdDltY/IpzctdMaLO3WaomUNoxSsQk4YesSdy86xixTa4oFNAKFMbwK7k
BUPG3/PeGKTZ1sU5fAr/JpaRDTE1LtSpvQ7E5iL4K5B4fQyxKkfgd5mHt9liLKn5FpWOEnawsGaB
HS+W734Gf2fHXk4zksNt+dtXtWFdY7Ns09YuCyVP8I8fYuEzc1wrov/pfcOYU/7AJ7m2+TconGaf
K+Lv9tZ8JGMmeUPbQCWUo86rgVHgfIrctSnA1H95cwdQBtA3AxwFkUTONcHT2FiaZ0oSVjsUEFc+
cAffIoCuRImOPN2p85Ks+ktf4GLAA2YUaMM8UUtcgi2luMRotERiAZ1uqR/MI9G3FfbXQ9ShqWOZ
y8hJV02IgX8aor2Hjc53h/sAH7gK4FwVCHe9mi0hhJvDz/Wtsbc4qIkhOiv+SJ8Vv0dFR1Q9CCy+
tiysWTafMEs84C8V1WHVdjZ4Jf2Sb0hGWcuSpQlj07SnzQ7uB1pUQEUchgwa2H24B8CA5sNwxp34
e1Y6sg0wAOP6MoQAGof5NwJKawRyBb8WVYaw3+ov1MNDzEZKep2FqCXF7unuKkKWll2WvEdZiYmP
BD8FaLMAlqSKtaPJ6J9b7k7Y9l4ptjtCL+nz8K15tgQHZYp5kij02mBoo94wUq3FBj4uN8vzbd/6
PEY4EoVGF2mQ0sBr4wB5AG/SPcwrYyNNolbawz6wTndTkaktF01rDilRalXINPky4dxDwUL8O+Fx
/ehVGemLpyGjBzgz5PrMGMWQ/Y0SVaqP4Gxkf1PYggghnkw5nHCY9rLIRO85edbUqw+U8f6pgZh5
I7ViRqhuJVtgO0s1QDbvSOjEikgoUU77HKDcHy77KgLFu6S7MHpBgBRnL0kB5FPEhaB0BZl2T8Nl
rwwnG54Er/i1szpso6EH0WHk1N8ronlKsmCa1DH9KGwJXY66fA2EEs1kftCDG4AdTymITjwg9Yy5
y6AG1WLRxIIFL0CexmFSecIMDBzIb4DXkt28R/gLpu2aK4FpQjY4A5WVf/LNIgSHBwQVUFEqXaC4
lAVHwL6L4XYp6166DjDOJ+oPp/MgcCefu/OiA6YK1dp4sqz96X7RqztmnVL0c8uEAVeS9zqm/qBu
FyMLcZ7OJPuzBx6JOEuDrVeRLDQDr8GFyma4/vcLg2vnN4lGRQ9ygkpuFMsmXSxBjbo61v5naQGb
C1eG0+rDpFa3Qt14HfYw0vWkhMZ6xKXPb/NgQBvaTfG6SB7rj9h5Yjc3x5OzWD8o9Sr7/U4Mhbin
TvLkJA++TelUmbz/7JH3GKxAajX3TcGCMTVWbJfRB3VpkHnuGZvunBGv/5v/cm7+/4yMZjeK+siO
r08SfIP6KeXOXLvfEZfqpLRa956HbEiFMKTdIWBviYEfXBufAXzOEHp9xlesC0IEAgK650RxmZoo
n8j/Ea6+iZsY4fzQWKxbaRplUvAg+uJlBwOFcsY/XBweOvrm91afrs3K/dTNL/5heNdn3dRY2iAU
pOTzV+J+9C5uy7beJl10RN1cqKIUX3r0jQnXUjEn1YLIjxbQEeMi6KibX2rEKc1UF7y1Gyppufxg
SCs4Gz3G+6YCYiIpv3bKR3V5c0lbUJ2hMT7zgfOLqLv809guKS6dxW74mqslyDYOGR1q6YAH0Jmk
YrkGJHiVzkYR0UAcwTFIsbizfIJChyEeskAzgafXOERTj5YpVMQnUDumRJPt52qWcYW5MLLn0SiP
Mcf8Gt6r2WbNFcKzMAbhzBmJrLN4zewXuDb9uATwhERcEp8hAg4tutLA2r+2IYIrTElj7LmUozez
ld10ahf5vOUl3eUSTVmLLlcU1wSRFDTTGK5NULru1gcuykBOTDObibw+t6BUVIvD5H7CHq8FDPug
pRNZ/AKgFY1fyhjkWC2c2wnwg8/7HEZYRMSrmLU6fv/Ck9TcbQbvp4OnE+pDWpUaLgBC1gVDkFJ3
uEBr7jAVLBAemrr+pO1cvx9cI44tksEF7cGO90Wgr523n87K94gwB6DyppG73PrqJP4l2fR3JqOO
d3VkZNd/lDRbANeb515zcJ4158uyhvrmfbv1+RDA9j7RjFZqy+iSFVmb6sRfHJ962l9sz+LlJhDW
si0bVTaFu2v9LL+mRyKpzGicNiJBsLE0t6nUWR/WEonn5rZAmYsm7Ugjxhc4ah7okwKuNXXpSOl1
OUJ7jrsTbnrlOOTCMh2Bm3QoFqOMYu3AWPNqf6CWoOeKRI89UZEFIdC/9GVrpEZqkCQj2IWmMqdS
W7hKIMfUsi6ghyMqUT14li5zlN2U/nTVmlBnLpV9CDk/7t+j7gxv/rmivETvljMRwCxC9R4Dehs9
hdQST/prLFa7eFO3P56GYehnDQvcmrPMtlws4eNUJpz8ysZOSNhWiaUBA182DNuZXLiAr1Mwxob4
rEMGRwbS+C/8a8mIBKf7+PIB2Bk+O8nugb0VImHz+naMYz/PKrQbuC/0wzIyvTeU65koy/u3uM5w
W2GGIaGNsKzJeKwRPeXcD+LtwTaXPDhi03n8huQlbCQfOvBk0FKS2ehUIRA4KVC2n/cSkCZwU7sM
vZZcNDNlGL1MX93lx8wFtRNgqoh4vVL1Wjx4hOPA8zSEgCkT1yVIzAMHZdYrimklxKr9rmTccAK2
icS75GMgD/NWhKSGEYhGyF9o/LWBEderO5S54sNrgUJGXp0XPbhmm2TZFZ6/eZYeR01GTiO3kL3x
dkN8m0xxy7SxUx+wnY9L7oWF7l+PIiP5k3ux4smVOg0MQ0LuVjp6cp0Mj4Plus+5kVsucqKUYcDw
Fkd8kcWGxvdxTl1HSNA+fgHMSH+2aXjgyt6E6XLcO3c+67thfMlFCMkidLqh1nPbDzKDrY9t03Xy
76QTdjChX824bFpDxMolY3ufrRAbkafwjS4OcNOXDdkjAurO1y7nhZ45Zt/iNk5ZO0nRtLqLzqcF
/tQXJWjO3OhAjPc1fkcdPjJiWzYT4qe0k2Ni+UGAZSTkQ05jsK+17U4kjS2PxUSKYf/jURDZTkuH
CpKtmU6501MHnNFshmZOEfCzUOLGAnbcaQYFz7I0gQkymZBjBXf9DMfrj7NmvrBjKLLdQ3EmPsaq
GeWEWjgTSyM9f8dGnJ6sBkFVTLI18T4+LAC1JbJwS5ztzoYSxrJehlDvTcptJOmKeTHj3GE+Trjg
Ra/9En/xUE5hgJOdzwEsAjBNHN5o2+BsoPaapCWpGtV+RAkNNl4/EeBBtlDR74b+a2f0pepkFlNz
CpmN6UQRP3smNnKuQ5YTtAZLxl5uDKxc+6dXt4AyGlG74oAGaA6AybtrKlBb0W+HteP0oBULwemW
N8P2aIUb5tkOhYuY5Brg1bLfumIbfAveRJIf84F/AKK7Or/2fUUnW6GMLWf/fEyDsOALpmoQv5w0
tOhUaIbkYWu8xmy2sVKirs2Tv3p/ojBD/ZDupok0pYAzCbCiZ9xCBP/JasAdedgMKG0ffgRdgidN
GVTnY6CaFcoM/r179opTSeVa2G48ejKHfnu00bPpu7vNi8sl7OCpS7fLh8KWO91+s0QaR4nDYig0
xsWBsLqGpuO1J42udKwrCkytwHayPGMvU6CT+PMPWGim/YbHhRTgL312C0aA1Oc5MpMt8nPMd11A
SzGXR07WaRPTqbOfDFnZCTvnU41vEXLgxaP/sRTsGtAklDi+y0UKsvLU50v6H8Ut1NWYgwjBOyb1
SYVY6bKeP+YZMYLzt6mtL/gjBzxD0fqgaNGCWwYYxM23VtfpGROISkv/t0fqO8qVqLFjpAEipSpz
0RihA9wb7AK5LUyRDVe3WfzRKcD4RppxjQ+ZvVJ1t+FfhKC124CrKO6IImWvEX+AUz/yDMjjYidw
HUlrNfZ4qp9+eNfdkelD3PHjVBAPJckKWPcnS35TJxmA6sa4x4KfPpnyngCR5C0DuyRJP3NP+dfb
mw5YF+OyZG/lzjeV+7Og/fxkfJWybbRa6/Xf1HO6NTj/Sc+plZ14qlFnGIbX4f8Dsk9nOs1Gd8f0
KOggB3RMtxOmk3es2kyL4HKNKzgrgBLzXNELHtvXRIJAjyOr6ZU3eRR200mc/xl5J4fRZDnbvLYF
s4ewJLbi746U1KzJq310jQbu8c6q8HXGohVeiFUxWTcvR/jYGT5isRAmZDACmy7tWahILwGEoD06
EbgrV3IIjdmsPwNcJhdAOaqA57VvX27hHgMzbiI+USo0wDWWy7zicIPMnymXw6YaL5WHxGd1pLQy
opjQB4pzoosOI/VnOa8nXyXFJGNykO/aJ2wrOg7hJ42IkoF25mF+Sm6h92Dr3/BFt2GmUpQ7XCcS
vp75ao/3Y1oj0L+tmIdc9w3vZDMqS0LIqrKIG6LAhijTQ2zXhVmvhHtKNsqJc264aZif1Bg+Gd33
ZDx5wMyI40akVfva72pQDfPzBCEH2Y6WdH8jZ5DvWgsQE5jomEmY5G9beQvUgA0wDMZY3BhKOCdL
izZWZTFJdxg1B2KgpiD/Bc/luN7tJxXb3U0Cc8ILQaD4+PIa8f92WZEki+WMtJtejZOoZ49qInf9
Gnfto0WZ1GpRHlldV5rwOTmVLFw9rw819z4VQ0ls0cqW0eOkLBTQp6eOCrOsnrc15TPBAsYE782I
+ErJ0axUix+VR+5h1QA+3roBvIj+H7HLkhZJUZtIzzG5/4RTBEMHip4JN/aIJ5X8OhAyHrwTarM9
P1NPXDqH8pew43SMRt14ABHfwYLTz0NZ1huAjhteEaWlSFOq2lsVpR9XWDOlXGhyXxKNVRQdFIcM
idQu53OXh3sLe4w1hFsCEwA1aKuFRr5RG75GHw0AcVCHDG9q+/WvWSUrY7FmR/oTOcs6NV5J/0r3
6YaKwGetAuqHj1a7yY+uufQv4W53LOrEHQSNvzdd/qbxtYPnSgEb4pU8tJ6/TUQL29CgK0j5VvlV
C4rPqk+UVspoeSmeMjSAlwH/ooo1+q/8V14588+Dq3JA+NZ63eN5BTKGOmlTJNNef6RzVLs+ZW9g
tlJovMJL2/U4An+mc1bohNVQhuFdYHEiyFcS0CVr5OKzCrFLEeqTrtFvheSwAtcYkhFVBAqeN8/e
oykOIqKVpk1raamLaewkryZzws16uP9WwNzd9anaKDSlaqOnr7YbfZfkHS+SdLTRCj23gYOzP+ZV
BeJ77q5NtKp9MVPWE0Wvb/q71tTTU8hBneJgKsL5mq4QOy1jQg/zvitXwgFT/jU8akQTr8rNtUdM
Of4vifuDTSSxuAuyvQkKY/cAxrdXkb/xQXomaZ34d3kV5MQF6JtHCSQ4qKpZZcjBtUS3Y13OuhfG
IrlMiN1Nu33t4i5YEsz1cGvtsul5e40b9QSYzUOhqOQ/0Mn7eI85qLYREcWwPJyYcJtHF5JOYgDx
bqu+JpeAdR118J+WATBtAMB9ozP+Fk6mZuDETte0lKYdOuqB0MCWf77l+C4/dN4tiQ+1xzl90RQg
BPzVteV1APGCUbKb9YwNiTDHo3ubAO64H/9ISf1gLjmWVKj33HBm8oxd10g4EwlkYnpcjyRJ+0ZU
YhQ4qCAf4fWxK2ifn+v0NByo8YIw+By5qrS/xzbnE4q7Gf0u1ms3IHai2fRibh906NitrfYe8ABe
hGTuyRLLI1dfq2iOmoAZMFjTnRcA2QoIFFBK1WES2ms8bhGAOJsfaB58PZ+Z5r4n8jGY0QYLeK8g
h3Vm3J1UnCAvfzwLsUHCxhd30vbkFyYd+0HIU7EJo2iI9mx22aN/OjFWE9VYm0vTljjO7bFl+ayV
A+KWyL+L7c1Si6JmusL8iZ9phNskx1fepLVwPCSQ8ik4ruxvVYCo6blBlcip4m0wNPwQy/twhXU1
b+ICN8wRk0AOsLAmAXMQlhQxW8aczIyLQiYZw9hw4fHS2nx9ElVrcMS7wK6a81CVjQVU9EAj9a7G
DrkbQGUaA4AsxY6vqe6CxeeClTds5vZrJWXTcHX0o6si+j8Ukfc6HpLChM/2TtA9qS1ZnhCbwAsF
xNYXiO0lbzh+Sy20xRnIerr9mycQwGEmNWcj9jA2pSGdIuOXRqqXwQe6j6y7NWCnL7SQ+RY38lK8
7cDX39Oniujo3Ld5WY0l/VTNgk4r2RW68xl0bRM8upv/PH8SxoZA5Jg1pjKOvAtY/2Gn4l+RdjFN
JvGcoZnPQxGhvbTXiYVFY5y6NwUNBysoilToIS1fkSO8+mZFX4ykcIECOhEiK499pxPkWDQDqMeM
6aiN/794i7V4/6kI5wUUU+KxYQcRW+e7e6jUiOu0Mhp9D5Fif6XRNpULIgHyfoqA2lx2Jx+iaQFr
Ta1hABYfu7kl62L2vxGHlnhuIRun2xWF6kRFldIkRoMxAcBSAR+/9+FGYd3lA8Va8NUMZmGqXP5I
4G2luP96RAqGJpKPLucDsGeYzPQGhWYZZIS8+prCfu1TZ+e8FAWXMQ2gdVbI/9s6jFCVoMN6/pA+
dxp7u/35SdktQnbi9iA9lfkgtENVrQ/edzYIIYuDz0Bc4qpzBjmlpTBoHXv+2xYRs/mlwG3GfE0k
u+EWdIwxmjD3Qx6lINZYVtXu3H7Y86DDL64tErMsv4XjDLrAgUFOInPp4CiO58RHLN/xlSC0mMuN
cThFRtdZjUTPh4eWnjfCvQI5HevODO0FTuOcJfZk04I6767GPEnDLyzOpka1jQtKoPrGfftGcTHZ
OHv/0+iiK2hTDKFjo5l5f8GxPUfQeRjnhJh2noOxbPQ8nuejtZIsjc02ZWpmiQhVGw8F/w8NVRQH
bh6JjQmZqmnwf6rTGXREi3boc4g46gEHseRbI5jSPrxCWPdOa+tVNPtO3Xjn46l1jPDN7BmXueje
+GreqpZFb5eiSc9g/yDjiFEyyXZhV5HOGJ2lmNBI9QJK/96t0zD/V7z0Wig287WGbLyVlNiwYIRK
P9msuEGsgRBeJWIYyX0weumRaUbssKW7Ig4Ics0kmDzBeJJvCum8WMo/4vA6qGNBMJUnAd5jexcv
KLtnd40NWhDwhalaR83JT7Awg0m6/AFuLunq7xNou3TSz9FD9jeFG35IBUWGr9g66VmIPrftdDkb
346+KtCOTmhbGIe3acjFBOZ3eTIyXCyzNEGSUePGui6Jkz41wkZi7KldZvxFMS0zfpQ0NviVL2vz
7fGvIsSIrM3N1179GMv/bRPQAIa+R9ysZUyWFT+cuIDcb/iVSN13YyYXMpdbPt6xuyRv/fR0+vqt
76OVzRNtgcePe5U7fV8txoJMV6/arqCRDIy3Zy/Ca11FfQ+K/lZ6ynhFC1fp70o16be45mJ9OFj6
S0benw/yMxTTrIqM6OrlIXHN+NWs2JHOP0Dk3svWu7AMiR1f1SpEAjXL6pjRjWo02aNGsFFcD7d2
CLiyMX9Z+zH3EiW3VvBJcCUyI2xrAvCqq1j8BCLmhgV7LmWUEO3BElovZMpfeLbNOOt927sYZgRv
XoV168spzn9iKpLZz6PY69UDUfwQfvLb1+B4EhZ2qYUH/2LdhtEjbJV/Zo33pgPWa6ob+nE6a4ii
qVkkpYWQy5zfbheC3tuMSVSZel0VZ8YaarcE2Soy1g3c7lXTZI1Pyl6wcFCTxTKL5zgQAGshBFg9
k6TEMMXPzfUGcCWpcTOdkht8YLlkCoGxVbHrxeB3LPuG0m/VnZPdSTHCT5wquHH3JDE7h3g7ikxW
/qo/7pC+jWHupMrCVFqVzy/D6gILwHd3Xa96DSinLhre1uxAbHEreb+odY49oTEmNIlQvrZEaNN6
aaime5Xa7fGT8exIWjT9ESEZDHfz99t//beYxP1IcMg51yqbAiWJg/CTHxDEHr+bDWDbMynnEw3J
z1FPKbPzDfRGc+dwaEbInwChwVB6b6jvWfcRLp3mC6Sg/ov41MCgnyr7jKilMGff7Jlt91yzyl9t
Tu4WIoOrAWTAo4vzHUPvUrZI8N/e1yMl/51fiZLKdnKuAF4U7HEos2X6CMTFEDho2K5mQ23HCrc+
xgiWePtAO+LfRQzVbhQY1czyNhPsXeE+smdvbn9hl/4kRG53Nm72WhlqW9n8axff1+8gQwF0JYNF
Thz8j0GX7k70EFKoBN0J+V1FWdARg1SfVD4c7444V04k/UG6L6a4f7fpuIbXaqdt8TRIp7YjGcqI
lGcRVWf2Qpcq9pDec99/VDZiChNLhchI18VcRJ37zJuYwAWLDL/8sCRADO+kWNpus3N+4NUPh7mR
abN7CXz0L4nf+bYtStc9wJbTpH/pNq288lrXYiQrH2V8X2VDgXAAJEnG7XduQ5XncQIqjzVLwxQ5
W/FfAMZbl9wE1RXcUN3Q+shLcwYGHcouBWhBf/phepGIhMpl0s/CdkaC2AjpivZ7UQtzorsmxq3V
xsMAXtv5nzak00541pIfuxa1IHcUD7u52eJJkRSaP5NpBSsHnbKHaOOg2dWIzhiED64Fuay3V6oI
arWoF/wu34ERCoTuuqLFtmmrcJzP1fbGfnTUCHOBGjN00UiZdKspTNPdyHx2RoW0o3o1+zXl7NEw
YyG+ue5V5Y1hdOgfU1F13HAwTVkBbObDNGPb1yaXV262i/FinTyNUA9M+FYAksjsjg6DMVWlOJ0C
BdZh/mOpbKGmONvRgrGWFPSNiT3kdK+Dm1h09CLW330FpgzCXpXyQIHBaz46nntik03rHK/aNPQa
2eD7a8bOvj4lmfFbWI7Jw2UVGiYtQCqagT81xT8sGtvp+eZLwkmDDR3GtzIvIA66Ru9bFoCIdsHT
FKdHuw2LyKePEwjU9b3yPzdcY0uAk6HnZXHFl+lUGvN/NE5MXMyWsDo5321+93IUJD3touSywSIR
/S4AIbdlvkPxc7iJzHT9NxMSmmoOgmYH2Xm9wYIAw+1TqhrHpntNks1QjCPtRJ74FbnVuWWjdH3C
LlTHGTsXUR3vNw66cKMVVbVhdE/AfPmX5oDS6LEvbpALQwVyMvGzEz4uMGpE8uaPPYaTfnBY++la
iZ1crVlWmHl6zBQH/69l7rdF+ZR1kv5SHcy65QffWz0T8mlLVcDU6kLcnUDOta+kw94XpwKrlkAX
HA57XUvjh2Gi9jjIXMGM2vETQosMgz0dKr3Fcyu+YfnRx3bEWz7Cc1z9Uo4NDYbLBmUeIKs7vF4v
5rcvxyadmtLnL8EJqbtkamRHsNpdQMpVwUW/+ck4FbIJJ2kAuN438tcdQ8HR5kdf33V8zdUkZciB
E9ij8sOgD2KfOBnl4IJxcjP6QwrE/eMKGAjkUJcwRVcrlAEJlzijCsi3O3ADNMBhAAAyPOCVPij9
Xe3kQV4xic+x6ZUfoOpldacQgXvbAyJgICUIEjo1Pe9mGaEOHgN3ErF6bb9zoLMcY6/8tPw3kL1k
6tlHNwGMoaR0+DCo1eE8o40N0chUtQF76hKDQXdXRsybGU4JPI0VvYw46+TyyxkSfGfoRQLDn5Cp
U8JKHCFZXC/I9sU2cs552hDaBinh3shlFnckIbn0I2Cr4HhIdys7L9t9HqXw2QaVIFZd9XOR+UD2
MhkmvZGPjrgctzQg4TNoUqmZgsgxlpd4IlONbF5Yslu03qmBADP66dHtM775IjrlUIPAQ0ySoymn
hQt/gu+Lue5CZD7US3a0RxhH4lsbQEwKBZbo7zzB5ZaUPcoB2yQ5h7S681fyKjy4r9sH42QQG5Ci
rAa2EggaoIKCPoQ65Ynqj/Mci4w6hPReDamuSSpNxayrWEkWHtOR7s4wSKmH5LwMBB1OrC+2BmEi
UY1aPt4RvasqetWZAe65i8PwNnRqcrrSOF8xTVobYM40js8/+1WqQHM9b/WBy3C29pEsM//Psv9x
uOwf040gydgso2smiyroExDdnryH3KX0iRvqwdbchUOWHAruWrEzrfAZ74CuGEjWMKfN5VPRL4NY
3mQ9JuTFtxMfqRop5cZoUAjDkvOHu8Ds+G671qgJ3SzC9rGaA2T1TQmvWexRkIahKXONJMIrm8DM
TtoLe9VT8mCoVVJkqURQ7df1dfogQhFeeWvR2JmfBcNvu2ub0bOk57HKDcw9AZvmfsZLPX8XkKrX
y50farBglRlD8c++45a/i80rngZDTuehKYMoa/0oBkLFphiyt3nVWZCMcv5nP+uZEnu/UhQXg4Bg
gNGg+Yf5fTKS3wcBRq692bdTL6a1DXdOk/wG9jHUIyBz+iMOPXVLwO6tAM4jgQQUeZt7rexDzhYl
YZGySoeWyki5dG9ULnNtpCs9LLxkW1FjlE5XV/Z3f9pDGNIrjIETJFPv7alSN8BnQ0mHqiyDEzYN
ZtOK1rb2hAKbfFZLYFfFJgCQiddJFtw/d2ccElXJIInslHhFGe5jsONDVp8gfXWDKA0l9Ap1KHDM
eJ3oQEo6ju8JM68bd/XWniiNDH4B7fhn9ImvY7AlVDf8nefayywJE2kYttfTsqAaaTOnvh1eKu63
zLp00v+bfjZfNoIKpSURnYbNLa8f8gfPnTpyaRjfRPQRHqPm6p7DFles2RBMNMFjiXdamQnJVPmi
QEHnF2zqYAaujvtwxuvvhAiwSzUsysHFIh+Ynt6jw1ErXVfZ9mm3pg+CD021RWXIL/N3O8OP0MSj
cnrYIEhTPGg58jg+gu/rmnciMTMN6sg7400k9YMv1XYxsdCxQnsEGUL/6ThQd8L6pkgdHdNW11Uz
31Jc2BXnt2PUC0RcUZMwSSuqRIY8JCcmQJOFFal1RHumqiO2HyMH4PX0gDy93fYBHFkguYfwIgxY
c4l+zwxmcBB+CbTAememCFCKzw9DeUlzxfbtxjtpYieCK4gP7ZMlAIJsI9SjCBvGHdmRqADHjHYU
TRzGFNkJ7wtVto/GQmhj3tLOxe7eVE1P8nTNXb6SwDBZ4DOxFITAmZQ014UmqJtI0ivzeiIcpQTA
zNp0HAdk8SPZR24iMTGt2wHCft7JrV43J8GU0t9HE7zTXFol8R+xaD3uLPPkHvOkliZ7JQd8pqtW
+RB9A/3xS+/v/OX9jjAjb5sv4SD/MqTyCJS7t/BhiSQDHg2a25BsNqdVrZKJsR4qQAoLdP6RnWga
PgpnZA6Ee+8Y5mG29DKHGGSiexnKXpky6OjEh9C6rI8BU4e3TZxOZRtUDaFn8ipwC1X5ohfab09n
1bZGss3+M4cytTre5jZrHbiafzKKj4vIMQjUd2eLXyyON94cPJggse+uiJEdZGi5ey7phMJsFowJ
uFY42ltcJ/wxibALyu9Hi7GxZ/1zUmL4wDrcwmHz19qiJp38G+ZHCcQ2Vezs7/Xa3QZc8+EzVZcb
Vjx8I5QZxe4+i/+849x/2HmuhJyojN0vTZw8gyRwa6C0lyWeflMA6IngpOeTYqCC+cNrTfmvLuhF
fo8mJUEfCvlKZisuWMDi7fEaky18zfudm5Q8T72ViC6j/DniRA5mBxW3tZOeiYvLwoU6BrcZWx06
QOXJ2+3WCRhGkRBRN6oadsbOKXEPGGZslZJFLgASSo2JuhNgpf7El+n5j0s4ntJBA9yWUTMLcUgX
qDnoqeIsJRa/LEeWi0iuEvRSTpn1QCttNSUbey8J/qhcE9c7YCj7mpqO3VQLZYVOQ1vGPBzjtzFN
HmFeZ1yvnBmKV0cyAs9g5nPsY81UthFYNvnr8/mNL1IShtRYRsmTrSpzce4E/7nYJD3XgcHirCBH
UKdJKiCNHlL0Oeu7KrXfEdDyLnVJKrxvSW+DV92oJJ4lXoGGWNFx4UbeOTr4qsfEcVfl7jLMkCpi
fXlPNb0N7HNHotJxoeU0q+5ObSi6Knhq1XGk5uUI82cWrNWY1rIn0LQORNy3RZjOLwnee4FnFeto
3CLTNli7tRzxQ25wbr+RFv9w7tojUvFTlsAvA2GPwGpVBMeSv4cB6CvVmILiSl6qi4A/lhBuobOo
qxON5rHA4iOlkKxbcs9MhQaMZz977zapj6L8C6Tx4dxx3gcyIS8q2nHIttm9F9IHQA4j3f/eflMW
g6MEpErv44NKX7QHz40ur1edQm9PgGtyUA9wPU58EhvIZu9y6aR/ok+/wnrsAB3LGRSQ+P/YwEIe
3tIozS82OUv3qL8qPIoXG9sQKljnBVOpdqJdJiUXaIhGSQpPNnoS/hQftrVgUIpgEhGKZ2IQXuQo
1vV8QtI5+tn+HO0jrjVfCkg3rvhnP6t+u4dxY3jc5aFwVPsYbazPn3EVpi1ASMvHL9PiFgE7HtrX
5Q+lf0TH689oW7kznoiH/z+6m6SKZ8MqOz6V+1o/0rEnl+Aryo+m0QILh3VHLTdQayMHkTd+ft5a
GnVdxmI5zNh4DPhSY0Mfx3bSZAcTgVRV8sWN0ulMkmJQjO4s5EB/2hcMaGdTp2yYz+ylVY7dbSF0
EHaeYNHJ5vsFq5ULUqF20BbX45cbT5jQNL5cZi43LRlIBowCWaQmksvQQFEsE4ri8/tbXKY6Ardx
NI9pQlVkxkoM+Hy9aSvWNYUCE/+ZTJSIdRtKZqd7u2yM/gBsOcmBBHeiiIQiIcDiFYuWEEmUar78
SqJAXbgQykE8UB+DrJP4hePtxyWNWaFKb9gSEUyYYItd6rwEqNG3GnjuFpllT9bTtBoYTA5hrPWi
+8JqPpRc/CT9cWvaVTWNwPh1wGHKyns9+UD9DG6IIa5RY04j1LVAAcUH4gSi7tjyBd8Rfm4MAgFM
Tz1ghhHuk+NFqLPOfdowgafgmiSi5KIowCn99Kfj1NJtwER2TxUehu8S9qumeu5ypJFfAksZP8Ec
oISaelwqbE9KmQ0LadQ9roMBRN9DepGbe+FR08X1SXnERgoR9TcqsLiL5o3jsbRH8sa2Nzfa4D+P
yfYzJ4PPt8bnVJZ5z9UlT3wwjiPCeqT3XDyVF/TVQ+HHW+DHL3ar9cwyZiA3ncyFPKw9dtx+iY22
q3nMq6oBXbdJkgjSF/SleEq/Jc+QIS4gRxA0PRrFJC9/jzjDMB/7QRgiFciRq8U1p0MO4zufGYJ7
3dgpG7RPQvUFd/U00N6X5SjThOcS1TkLmxsgo3ZgKlAxla5pJqj9N7xa/KdFhY0RXmc7rQY2gQRa
tQDROzzsh/cmId6QDZG7QGx8kL59xQz4zK+jFfkbC82KfwxD9CuH5ZlN7xn3oKFRHfH9A/6pWlUM
tBFagmRMK+blWIaYVlCm3kF81kUkfz/WkFchXO5hcU4wAshtPQbPAnmZzZRCeljFDbgnmFSdYlot
QM+hNJBsUF2IySspaR2CPebipW1dGxuN50s7kABxENWrV4MoT4yAsQUiIFAtYb2drOR2RJlhJZTh
jmdKuX9Ds1nhIwPpprZz2HbbTaozSrQb46RE/jClfRa4fp0T2jWsd2bw0f3Ny24TmF4o6GLosMQ/
leq+o6CV9NBqBGoqYOWiJezKNJKUU6wNzAMaWashIeaCQnBER4ObTc9KPsoLqd6oE3G0xc4Jje2o
pc4LqT3WJq7JdqA8GmoG56SgfgXvbEX7E6Rx4/GSYWFTkOcNNkVfAkVDPrA1xIdUkREPMUdm2pvb
Zi5U2Xfw/fcRNXEayFSLEfJthFQjy+UalWZQ7RNrOSpUWFX21Cot+u/+lqj4pvNTKWkwBXyGM4+d
fM05pNtOiFRL4vGLt6cK+Y+q5CXyH2p4kTH8dfwJPSJ6K/tdkfc4sMjZwh8Z57Q47XoSkq2BMrN7
/viCgJQWy1dbagoLCv/EnmYlnBoplm5DOIiV/AjwgTgdyRltDxrXdsCHvJ8Kne5Z9/6gkH1dnIPv
zbNRq8SQthxxqtFrAzlHgU8ld4vd3e0jTGwroTccGTUlMIx+OayZdaS+IdU7f6mveqb3DjogGt91
YWQ2kp6x7yUrmhbxbZdvs4QCduSitP7tWds4k7dvXufVGnc/g/WP1fSkDQq3EWx3qV12XAjKJWxX
o2sWBmOwHEFg6VC39wQ5C6Tt9IZittcOUAR0aXqlamJElAyt2zJooyzk7S4+2qcvyNTEDIo5s1dy
31Gu4sKLztEZMOwZz8/u0SasIf0nUvuH+YCnoOC9sMmoWbXeVceYE24MDuXCu4yUz6/dcK+f9zl6
HkE+z4N1xNflDPNONZkyz/2ENJQTjqCgJm1fezRiS7O8EILk7O0W4Fd5V6k3R7+BDwUklFSHC6Lx
OHrF5nM3mO3aj+y5b4iW7VdSH3COUqRyDHOOljOFgDsoj4UbWr5YcB9/tmWFmq+6sDwwG5nNQHCq
JtyiuBDyYO7sDMOxaEzSK3XIZVuQEGbPl9rVuGwkmoIJTDr1eMh5WT5GuO3zWnkI4uqK4gd1gOK3
Ih6w+G6tn3qB4WdmvsvXSdi/qXQYEl2Wm9loppAWdhCSNU+dsorp3yKaBFno0Y1TislTH1WMeLnV
6es719jjX/AJObbTiU66ftoGpUlw+P3qR5Zcmbu4dIsFcNxS24WJMwlAQ7776KLVyFJi6TxenwaZ
+OT/uWYhlig0WMgccr0WWQqEU3/r+/2CZ6sTe7oFK3aTnOr/GocoRcvoIn5orYpLBA0BadTUSFzP
czmRS4oUIKGczvXr1btWih40lVwbzsdX2E1kdNB0LKy6P3thNTMHixn/U+8ry6CZYIdNKtt867Pr
XBAqzw7R6NjgQOmMoKdzBsiglEy++5vwf9HlIKSKLlxuF7fEg/1LnCXfG78R3n3lmY2QQT6kaHqE
eYTY2D3sMPuyc2VmUffjdkUNTTfGxFpOWxf9UzO0PPyRzlzGLVSWHdi1590d5XO6LRzKIOiNp8ZR
yiTPcwR/5FyYbV4Vd5+JbTUwKLyijdRYklbeeaYV0h9PS+hCSpJJNKuZhIDwbE5VXXMs7JtvLt8s
YUVB8SX/LPiOlv9L7ZJo9GWwK/SIlsazdrq3LsDFk9XYzsdQcP0aj7YO7q2DqS74mc+3vofsdu89
bqtwB++ab3RDHmNo54oWc1EIiZBeX/++KGhal2WfG9Rl6Q1lDSXVc7WQPzj6OABA+nsf6h6I9aUZ
MebIjoBf9HOCNWfbuayiA619cSlnBa9KHm8kQNj6ceaI0m+Bmz7C2fKFtOQhPuh8I8bX5x1NP9Vx
RPsU/q6Unygm7vFQlqEQzlAE9i2U2O8jo5upIA4PeG8XYdLHbP3jx4w46JElsbgqyzTAm1NrORxl
sC7DwDH9idNhnXZXbKm//JuH5SCigPR+yaWsvQpFqJsnvl30oykT/hwckJAOzg+Pi3EC5vjfkebl
BQwEcZNgBMmdaL+6QuFE3doqs64pUhPZye73rIBH7ang9I1JH8untilNh1ZdKcYVwOHYtfHWSgHe
+W5pdQYBplYg1y0jwOanD4fJ8Csk8eE4y62htXSIHEMEFTCrroDUZLhnb13crBc63I/JcqgnvIv+
+9uIDKAUBkBxBLCz2/HwGYAHxgKW/y5W967iNNEL+v8YFmzdI7krwxApxkE1AC4lCUBhHRRnUIi8
cg97+HfoFfRnQYGr4yuVpCVPho48DUFALAPZEzyRtf/qVGK8QJ0ToPx4wbT9RzNy10blIWWxqSF0
VbWdfB7zaXmSRC32zzI8Ys3pv+Af9Y6EMnrF++oD3dPBDGaECkImLJ4ptPSlBKishTRk/7yozQZ/
Aj9MKYYAP4MvXZdqtdS4/mB+rWyBta+B3w3WDg9QfASh+NpbZDC2KZmypTTBiXDsmE0ptvkvQFnv
Akvm7T3pT/n8m20BS9qVbNXOfMmCwTmZjZK7CwAxcQfQHedo+BywQSF3QfvQJcibfhXe/eXnY6VD
eOL8w9S880rys5JpH/7ULQC3QTUpvO5oSt9I9sc0Np6qpGmuZHXyJ1o+OLQqcI/VetTYAjUDPMCZ
lZE6KTrBFMI1gGw1f1oKFw65p1F6sMxYsqu8ICQqoRgAxpuOy94hxSbSynlV74TMcUR/a54YpP0P
CfIaa1Fd1PF04JPnaKfjjDg5rt3o82Hn7we3vGBoiiLcbKFth3sjnwS+xgyzzKa7/ohv114slvxT
tir9nf9qmSYDktPsJHiEMHUnmdRBjroYZDP3eig2vpgH2Bu+2PBX8ndJnyUFifQyL3BNva5VhhO0
rS6pb9JJk/EkwngXm4wmmt0a6P4KthWry6b6NIthT563k3IPOHzDOAi6z3Se2idlrY55SLBrxoaw
zJHjG2qxZIvxpMo2N6tj4su9wzUm2gjT9N6QeTllKU2LjqtMswddH2UetVOEoqyXix756FXViDVC
MlSP2Yt1+Rz3Bcxxw6zmcLjbW+t8p2HZAPeQekQ2A87p5oHkljWtmhTIDHZaz1bmeGa/AQrwq0Ce
LgWhARHb2Z0cLZ0yTJ7zoIXXBum2wApIn04G4rfl9dgydn4HCX8xpAhBTtgB9XTpxD8W9YCDDe4u
S98qg8/9P/WV0QtOj8db98rPx/EsxayrzBxg3KNSZ3Rj2wAkkOESZbGPz4StY7kMut4p9d40ym7w
daNsmyBEY8CWr4I/f7x259S5V5N6OGjkR1g4L8WndReLuTcDIh0tU5693NutR6djCT86P86WaRRc
lDsRqaIxZJ5gQKbkXSA+3XHhkVYFkPpQ8S4V7d4o/EhfHBDoNO7mxRJqe5NIwte3/6DnjSA6yTRw
yxC7UGNmYuIc51FSsLydshGy+QDxz14Y6h3qTi6JYx72wV1Pj7rxjb5MTQoYzdka3sMm6/6K6vdO
KDBeWCXXYY7Ef+nJUBCDAklmQDqogDcF6WtevWONNZ0+r9Cxr7B6CHbiEjvIoLMqp7dPjgFRX+rY
qJ42/6Ms1Yrwr++yqb8K1frgC1o5RTs8VCrRsnueFb2XM2iSZqLkbvcm99Ak3AniFLKThnkR2cfd
p9CCINai1sw+fF/5TkRRCDaS1ihKzcoAUW4o4jICn4p9tKNR3Vg1xaJNY0Gd2N+5DshxdEUhQMKW
A0o3hBlQ9dYTZsIT04fA7jLBxfRz+2X80/L3Ku/hq+BoUOEx4+wjXvksLWFUlzoUf3phRGFk2uzq
vERH2ICR7Ilf8kqz1yOcAJRTgw9G3cNYtA5rhrslWibGtUBmZj0qARDTutZvX1H2mm9LJ0kGOldl
+2I/G+Ia62l9kiSIewTQFJ3oAQA8S6J4/iMv+NK0/hSh4h9py/8t9DK+9+5gqom3rsxfF8yhnVhr
ueWRcyQ0FujaWa/6bNQkDwGahEIsQ7JrNnsEddxoY9udFDWpAywhHTSE8i7V2K6rx6PX1HDMkpds
rruMufB1GJOcqXDHvjsdX6vzVhT3wf4nSVyhcIYm0IzNwKB2acw0yawBvGo46L3wv3Am5XN12RsP
noxcn7xhl5ykCYOa6Y3+Qj8dptYAZCAFGGWpL1u2N2Yot/dzNm65z5wLAQJsTbYUutyyod16Y8o/
nUtJmX5PV/X5m8kwi+x0mMlRKBfeVYu3tHC0ShhwsfbkA7rTBrIrOP8h2ZKKmaLtsGeRbYZbQB1Z
l2VZXMuR+FRRCV5V6Ig3vhhGE2MqGalpvdPtgCL9zs2VVbfa1Ipsxm8tFkb4vGsJb502gDr7Y2TU
gEz3JEw1iKe3qOCH3rnrmYVT1370iBANm8nsMTRcJ+BwRLAcQ2X3TQM8U+B0h5EZe/elW58AZ16H
uen5EUAv2fl2zB5TiKF3C4vPlTUTXUpVGFai/WOHT+TVnZ6z+huW3gliLseP5qL7sBu1HLAvpKs6
uNX+6c9RDcAPRLGmYds3DtmRV6/0zmsQCVCB5mT2i2iwWkgplLdVrWaAjDmYN/pi5xKM110PZz7b
UUvrXygQDWctq5eoALi6U7nUZvVQKaVvf7TCBJHrwpKJRwmV+7yGAgJeWbmj1QtNwMGBicXa/bzc
dZd0wVQDLsfqmuUaFIrBGKJXNAUjbJtk4tDjn2f7NKfFuyo6H+HuSKYLcpsamqcG0MDkxjMrJo8W
7ODFL42nRXHar3M5534g34KQZ2jLRrC2nyriOvNLSbF5XQCsyHBfBLnEWqYvwiHRKn8vgS3m2fLx
qYe7GHNsSEVqgkUjVRU8KDr5o4RM+bY1v/6pQXA3gJPt0CvOHQVoEkkvWW4vmrQALKl+JX/VCrMv
Q7tontdOjcCWXUp4mGhAs0Quw5QRMnAZm4/d0T1zibI5UrykgauCr8w7hrpo8E0SRBffHjTWZ1tA
LAkEQz9nHEigTelAOwPY0v+bPsGHlZ8rRwNl0BOXa+GJg9U5XyfgjP1VviNSC3nRJKrrZccDuFWI
zyCQRJt9k86phTqNwHZy+1SM9P4kAt3UfEzxRqm/t7y9GLBUllGG20VhJ1OlMuBAynPT4Q+YFt5w
F/TDvNP/Dvv/CxEml1OJZy1xt2hPpeqq9J3RRM3CXC3LpSI29QNjpTs00aTJ1lpN6ey8MxSNqaz+
r0OjiSpUJw14VZofNcysga7C1MooK8RPafTlehDttXRrf30WPAdNPqaOaF9e8qJ4LoQCq7lHVupA
4vg6Um2CUHi2h+u6BJU37YhtUAzBVkdDtBf2xPLInURURT0eCxGY4rHXRmkmpbMFgWX64CCiZLA4
lXYpQDVkXz0QFOw91tnpVaYB/jH3Fk1hefSAQYkbNh+AtL8dW96JlroKaSAlpEh8qVNVoQdQkYJV
XtcDOiu7mmWoWukGwLLgZGiMp/try7seZZMUFSmG0QXdbPfGlbgd45FINlmvoyWcB5IB/YElsfBu
q/GhSAmSN0Xkm0P34P9VNWmFSo6ZzzLButjqv7mqiGT2a/55ltsBA/q+7/SfE96vEp4DY/jc5ChW
vdBRVJ7NMAk+al8E+Mt7/FY2yqYgMckwYSu8LMfaXFumkGC/wjZJ4wr5ADIAdSmVJNUXBWEByL15
9UWSMzYvzwdu+jHt4+c0wWuSwcvDUFYtoA14Dmf/77rBEDiq3Xj8V37LuC2GnPvCStx6pWsS9flp
yU2bXuzdTcDE7ONbfy0ZPZQxbXbF/hKgZ4uKa8nMKBWXRWxd8tkOp/C+i6PF/bDAkr1OYdHdyTzK
hwjRLk5ZTTKOKqB9AY+6/99oTSKBMw4JFWAa5cW9k7mI1ZiUmCyi0LAGEPacrzPqsrc0VD6GsYbv
FRs2WBwjpgeg+Qwyhnr5l78KbZorf0OwJM4IYeKM1ymsPwmbSRAPFh6rtM6Z5DonPa5dJ5V16leS
tfmQiWERlXunsPBk65n9T34lEDR/HZfNl15IsxYZ/KTowG3y0YcKDVcA57DQDHjL+mVk0+C+CH2Z
O/AIWcgrfWowoHgu8NvIBL8i34FFulb4Jkwaq71lcZtdA/eQ3tlGO1IZza3JPiR029KbrynTvIBm
mynmLcVQ5Xg6Qn2+UIPzU5aGOF1HxLxEoDW+G+HGcbiu6bpmAR/nZ2eSOp6yEzgm6OUXXPYCVBhL
fnkaNmhG7mFlnlCDBqo4gRsQBCblzPpO1tqILTNZy/Af6IJ+3PfTRz+dpq2zGBRcdLeiIJ2KWliW
SF1pOel/HG/Xp6VhlkD2WlmCFDyiB7hPayeUA/RC1cX5F6kOb21+2CrHBYhSLabJTzcxtm0jmN3E
Vt1A1jqM4wdqr6WlngGzb2GLUsa4Ol5bQsZ05HeLR1wnBOutgOAtls3EzzGR9j+aZeX5z16zmiJQ
Jpp/4TQixpCK+V4Rr2axZBxmBmB++wlxxtYYJRqFITw0j9irclGVwSPo0+BRvAaixqPOvnUsxWz4
P/pZRGOaoNLkoGbZpv5TtVgE49kybzJaXT9dqg74HsnVzgiuGFMSqKMB6+/ISHS4qwxINSm4Q/HI
XfJKNsjQnwp8fog6H7y2hSee2tLzk6YI3HOP6NA+mxSpE3YmsWZ1ybw96bs4A7YZr3YcqSFWHGtF
OYbpnp8A2D2M1Mv+wsiUUITPD+r+wJEAF5woL3piPRA4/ZR6pbmp/YJOA/q4k7jrKdxtNkDaLHc8
HnoFxkn2uUyz3TCIkpXxRmJKgACjT7rli2pJ869qUxLP7TZ7a09/hoDcY5bhMhtSGaJQ4J4WJkkS
9vpAG9MGtJ7Of2cUTfLFVOLPjqdQA1JENHXQfhrs/t7uQcIZl44m6UTg/UnIi6/+/e3E6wdlTxv7
4/AdFz7/9FCwbmPquErzsyTcW3Z7z0zKucB63RG4gJdrLhoW61GPiYgqIRmpC8/o1JJeCA/V2gz8
lwIinvkzEt/USLxI9dffximVGrKqbVem2uFjDLX/EJ6bLGqMfK5URKd5zgToROurFKCLgZRjAlVR
V5ThJ+zVrzzBn6JG4qKBcihnuD3utPOwU1Skrc0snxpUI1m9/N5aTvj1B5vMpKRIvLC72RSNPl3o
ZQFzSs/3si/6uSuUivKG6OAynfABVb+i2fsD8fccNWZKB/H3Mqr8Jvc5U+LZkjmlUptLUmMxLm6H
6SZCONyJA9C3Wk7i7nnW7Cy6xscGpQ9dYbgf1V2aVtOpKVIPmLbq7jAdGHSBoDf8Y+qYU6Oe5Qg6
ez+M389coSi1jhKrazdwB5AswBkZgnDWD1WdOVK4Alpg/+1eThrfiPdTjaP+BJmJ4MBQ5vVyEvIC
Sw87/x1odggKqSqD/Lh4HYY4IjUItDQyDzX2CmhexO0KCZ1tNiXSQcRgTPIHRsbCF+DAJDQLoB5b
ziYilXVQ3pJv+g1YUG3mGlujO7XWfOkARFJRMV3dolMnd4EeSw+OpERakTCofkyVndsAmv5HX1fR
A8sr2wj/OQdl5kbCmNpat8eSEWaPtK/dBKmDYlurqqoUt1R4Ju8XXXsEwCsKZd7EXeVAYIdg/VpK
DY/x49Aas8bjmLjAyPVwdZSul7ZAuqaR4GS40P8i/YDAz4GTT4cVo5KPqx6oYdu+C9YdssJvS5CT
rH+szeoOCrZGKKQ3vbpSAq51ThQxFESwznQeAmf2RWGkn9TXrAndRTzQXPVQqMKGCfB7J9TmhM1x
1O8U8KuHvgCD8Bs03LP/85G2oH3q+lf99+Of4BIGBGDmHDI21UH/tgg+6fVWwKl08sRbse/3ta1Z
GKG7cKroiZhxzFdF0r98NIYn+IWrubO7SHce7xj/ZU2l7mAtFIkJ+lTKNaEU/J1Au62Q27dawos/
zZ5nl9W3jd6qHG9Os11/oZhOM5NPHwGcRV5j5iSz1MVrHY9rYGTxaUOqB3rKYNTs4yCulX8lvwW7
QNk7n7s91SAqS8bVvJDhKJqFPpPV0cGYjGR1CTl/baH/xkoq9nxwxnStPYwN8a+s9pKX+uSsv3mZ
DKsJvPFEXvjI1UNVfzEJAn9pUvlY4gKoLmmWCvDb+xGhcz5GazAQJ0zDctuA+wVY8PQ6TrQTx0aZ
a/FOsBD82i1cSgguy2huv5WMVjqMaNqO/onsZ5nGs1JPHTJCRLgNNCcDEhSsC09GPcjy0fyjAv8Y
KLIvbptU/o+Xw10+zfDuv486AgtqRBorijUP1b/chdMyRLvFKzT22JCoIJC/kWOw3HhQKCRC/WzS
2jWTOWvFvaXZF50C1rlEyMfOUTBQaFjezJaH2xC2ghkJilPs/kgOTQ/UpvI+kxmPv1Y2QfC4DI8M
r5/9sijlrCraci7Y5Ysf+jqKIvVNtYHYBfMCDavLbPyPUMeNv+qZva8PeetarVHfPTADrvYmfX4S
meRDwMuHTFQhFEjz7vWJeH77TWxYyBRrfiAGvWYCYzcjscHuMnkxaAFkgfJOZTwcK7qiCtkI087g
SpKEHiQDO/zT7WIS2mRk/QQnKZ9tg7HA2ADHhpixxI03Nld99T7ACjGISvx7twlk07BFYTNCBF0W
OXPvgbeO+yeaZdkgP+v/TmaCe4174fokV1kPhHAAd11aj6BVsoIJGqj06I4dabu9v0+vRlFhyhXZ
fm2dCDCS0yS6IGlbRKNAzcAJUOHQ4jsNUZ3x59Ta88BmxLUMPbzRKrEaiIrEGprNDB4grEAreYQc
I8kSUEKrceKAcu+2VhnUJkj4y8DghIjqDTM+ygJiSvSXI2XUUqRs8h/LO28fjKRmfy2fIwaXrjsJ
3wJe84gEf46cKbJHqjswyaV3A0VXVm0oFRLjq6lyRqFnuf43Mu1jy795m0Qm8trFryuj/7aVt/QW
C1SATIExqgJ2Flhy+1X3yrjrHSkw9pclxAN/uCPQQuA49XHWD6ywTUhLfL2o/PhycOYBUCTYvs7S
qxeZeZldOMZZ9BDhK4PA65ZG6abjk5g1JDbi/vyXserlLzrfgJJc5rp+ICoX/aHFHhBDYIcsg4D+
P9275kJm2nPB95Pn8jxGhJJH1atgaWAva63okefpzvYDqpZF+e4Kdv6a52cGbxY8zu/dbVKKcPYG
dwBkHX5XjskxrqwTjEYwjz47FQgjqM7kUvMZ5dcd2999cLbkrvxBrwt1hrSMl8yiinaKfpxLxUkQ
AEgMhhx3WmbZCu+blKJn6bImVw98DK4AnbUvc8HHeJRltBn4EMX8FzoQgOTz4OO4x68JgrxRiVkH
MljbHKQ25Kr4LFMzvg1hrYq/dzKAb4hC6yDPH2b/7RVGYcFIgCQIKKARikjLqYVs5YukfiJMAYcK
QuX9HyT5nq/NoiIim6BDuZz9pn38BPeZ3tS+oTK2ppryfoBYx6lpbsmXQa6TzVOAtr2aLBc7S9WC
GhasF60Cv02VpQElnP/qXfausraNnGkmZRE5KrR80PVemQ/l0AFrfBsnhZfMSNm2nxOzkgGKG0rp
3+A/N4HFWi3tFBS2HPVBkZNMDIRfo6A/bEnCHyhnj1SKvmdXwFHr6ADj39WAt0tEYGa9yBxYNz+5
WYuaAHAJsefJE3csNf3LwT+ezNwyznyGJ7nNG9Bt+DR5tkprSTyUYWebHiKgQmrluWMUkaPtsX9K
HIjsSf8//Yzx6zHIOAKX3Sx9BmwOJwmEWAuBkuybeOPYlvwT5gJ392m/vcSRlDLkNpsgC8y1rcz4
/3fnMgvSeZssmMfvkr8dcVOu22mK+YW0fxC3xbK6OknCF9JzY7Bi3w3aV0JlSzfIXhSIDzMr9Whk
sVDks42YM1lMVW/3V4N+1Zq5ASfgrsUCo0/IwghJamQyYfdwy86tKaEfHg5IQ2Z1di+AB5Dj+qID
rSiOOA6Ql5YLqn3tJaHroT9mwsP69ugOJAGazKHWO2YU5j9+MtxLe6tJpfIz1Z6wN0pckKrQ8lGA
6ABXMBTvvUuoA/2uWX8tWOp/OSzY2hzUcwH55EP9b+gS1ua27TecAbnLr9yUyi6OARNaNURRlkNB
6j9KCUUDh1G84QahXujN2F55GyZ6DrERKiEIgyhLsmekoGXBfT/zwrEYQ6CDpNRzo9gQofK8x/Tt
e/4IyUlpvePhVDpRC86iVeFk3Rx14ZHkHcGu1sKsGG6QqfssqwY36//DQEFp84FaGGnXQ+1fpQfX
mLbTTuP2pM7hOhd9Ma/8LNs1LqfC+jioCcEHK3AZP9frobiK9iaXckBoEwRNuyxCKK2jQOOuCgEf
pWfmDc1GSwdu6ZiMZRey7QVl/Oqkh8Be3S1M9Ov0Us9UR5OIVac/JPgWqFnVYLFiK6y8B0fCKxAW
9oqWQMzL1BHo+adL31gPi5YT67VMGLxLNsFBL9fM6Db/0S5ZDdHr9BPT/v+4BesVnstzA5VXaqh9
DoWSuPU5/+U9WeZi8J32O5BTGhZ/yaVmLOBlqhuuBUP5Fn9tp9JmZboL9VTobFVSiJno8tPIGCTk
Sl1fw8KEAAEIyEtwp2geLBAcwO81/1PGbi/LF/bRBrNI5RIFzA4ZAS6fhLRb2WQZNSs3izzMsiNB
hmcR3H0S1EC7QGiCBgPdMkKym35EWpH2/NlZYT6dn129gPqgwByxNSs4JeYy6DKSoestnJf0SB2+
tVTX80EMpMxspGXxj2wLts/0QC09a3rj9WNtf1KzJKnjEsxxbSdyzxQX9v2M4OX6dZ+54IWf65JS
EScZbSV58h4BlnHy2CqIiRSWAoCBdqQd+miglOgGQiEyymIdfUNqygHzJrEFJMta7DF4qAVtD9vp
BT59vEDf4RQ2wauez7fJBDchG1157cwu0xbX0ufX/RNlLyNIXehHPqS0GpzEEj8Rsg/2eQwIPNyP
/5KwUBHBme4Cc3fnKdX18bfRBAFb0WBsBUtG2kdiABLcuWsSSAARMErG9ec4122bdoHr2MacVMdj
1DRkIIPuvJnAJnZozrTFzD9cVvQQA/QdU4HTcFglViIlZj8gR7wsZUJiskUjFezHn2HQQNVYxC9d
4x7m3m0gzM8DtdQoNrmbdFwlo+8Azou2aew+FJMB7cB01MgNNEJBssdaKzJTHWkzPrrSt2oa6iuK
du5qfqYq4ecBHXbGddl6EQGGPmSd48V0HYcJKlO91WPYfbpMHVUJc5X0L4dXtvFx/PMrd7Uz69Rk
XjyULQRdO1LfKwglO4TxXF9e2idEwXjQl/ULuvIYqQT9Ff/MBp9xYSlVcr064aHV7vHL0+Xduzt2
RVx3FQAjj669/h3TDNgClPxjD6PrcKxB46zRyp7Oj+2lZa9n8YpqQmz0PGnx5lNDJ3ER4Z13Zr/O
7uabiXZ/I9htXkWICiMXqXHSRPAATQYTGsf/ed6CaZDzhJ0q+ubIbR66m2LoWRdznHzAZ8Pv9siy
Yyd1N4rE5z3YVu9404IE7UAE6OFQFsCXrlQKC7khrSeLG2wyLiYqs1t3mxZ44mFrl3Q6pQx02W6r
9/dTVIeVkvxru6qJbOI6waDmcRQV502rvqVdyFXU5c+s7p1/RDOOC8h/EpOqVuDWdXzEhnsB515C
r6A9Pl0eSFGvAq5JOTwhUxZmR6DoFd1VCOIAChleMrEhAkrtqmEjJC0iFKHQdKZ8kTFoffmGZfkx
8Xt75eJxz6QkF2reuR8Kn0gS3Y5WTjTrNyzLypasz/B2c/QcCrhdUU53yZyHIR8tKk3Lm0OdMRND
expTinlCD/0PVHsS7ObK36LBu82nZDcW8SgZD5YyxI2v3iOJo+QBl2IMGS3YGdxek2hqQq+D0FO8
qikXMFGBeSaEeT7B4LIDAfAK3hbgmfCs5UFBKoAOmffGeXAPNzFLIfkmlCUTucwIX9uHmSXrx7rw
mGr+tWmj1F/28zpA7rPhVvitkvoEzOfOR+7ltMTiMieojHCDyS8FYwWAaNhx86SNnWo2bWVwZXMk
TA3nvxT+zhYXmRNhdHw/ztdeX8e58E40Q+fUTelLEqi9H5osStk5RE2wfUdnuNgZwn+rmbjkDXf4
NCTa96QuH0+2OvqlsyHnjF2CEavjKQjVr8kRnEmEi2o+X/IVeIpgNCyi1vVe6ss0L0zvhdKrrEzQ
E4vSQYB5eYmvsqOjdwApsdtptVbFkxi1INLOqH6UZQ1t/RNfx+FeaPcijc9QEZFdAuKatmWUryR8
z+iUwjbAhzBwTO5bMozSL/1/mEt9q2EAkHGJWInb0vG8fM02dSOhvz1+CtXjpPX6L0ivKKI4qCCZ
RVjl8fwoargWYKdAV2ny9QTD7Ke6ZLckIhjECq8D1s28cgTsUXclkQrSIlAEHTb44j05U7MAkRGG
s6Lk2jDGRwfHQwzjPYd76q3GnNAdLjbv0+a1dMsSkcQLENUFwcnfV5KdHl1g8yCGEfPrJog26UfP
ojBbc1b8AuJHJUeqW5H9N93z7z6RDoFw61EyunBXmDF8ckZc38nHXVU66XfF9GeuwlAIu7zqWgmV
G18XY6jGFnautTD270LF9wkbFcz93gpyiaNeg0o1m2Fqh7g6hvlxWBcBiBgKJObnrv0Fjrtinoez
rvU0sYP7KBPBlDnrpXZ4T8/x1oJdO/AwyQAKDkN4jDZISAuNNqvAcVwLhJDMvZ4UfO3y7im1sLyN
y1o6gObVOLmnHr2nXNVbi60Hj3V82SdNbDSDDTN3kcMCi2An60tD1Ttxh8UkpDRRaQB2N1SOPOQA
PXSqbmdGlnz0ypxpThdluWuWUYxwocVu+aIny/LJzMYc7ZSow9MLpBx32NAHVanZUXpogGjmlVgZ
MB0dGJz10IMsFPqZN/Ei7Rq4TabRGmIjjz0yj8AomMyaDGLClC/nLioMymiBJPalWjdWN3QsfjOq
rHAdgQBmth4ImGMpTNkh+Yq9M9+bEajgmA8xZDE5pS6vRNtHbHCSrJpXUkgFfOAnbSxSWRivxwpw
S/6IqJxENVlUsHWInO5uDeEP50TBGwByu+hL75MBRIUViit79EB/jkIkmaFABatH1Sp5bU0v+ZOE
DHzaE/keetxLrohdr6XvVWoWpNZEp0DAoQU2JAJrC8iBrkf8ueIIjUwnKiJwzPxoj+oYWSliAU6F
VpbP2copzBbv6ztdKeuWfM48yv4BCvkM2bYesl7pgHcDENA6TXZPzSa6FDFpu3n8E1JWQPfUiXwH
h+i3jIiScxQPsl1xrqb/15g6k8LOyrYwExEO/ttr+c62gCNAkTVXjP8rjuPNMRv5APKS42BX9hQS
6TbqZwThDcEn7M+lwDznbP6XHMCUACZ6JRNKw1SN5hszwObF9BbKIjywheyEfCkrwLlijyJ4uGp6
TqghtSLuKyyywkaP9zpBC1nYBo0IBAZ5hPeO7esRdGnkCejOfqhhysKiBeMKF2G0kkERNOjOv43c
kqialO8mFRcknRQTQTb9XY+7ucJIWo11C4BST9qLgLMV6w4bzObsjkDNxB7iZjhgsnF3oxe8/3zT
PhvMNO4d2LlewJx2zxWq3pbln+Khdu2ovY0ItDzKZJX/8mUzVHfBULUxFCdKf2+Sw9lihM/JvDHR
cuBFvXo3dXPhqjZy7CQ3j4L90hfLf4PstRQYmfGrs8pVDKPGkCwAejB0vvhfYrnDEPJWTYzaHQIG
CwCbh8HdLCXKSFtTPlIya/onY5+NntDXR38TbMuHtYVt6mloK9SqO5Uk1QGfKoH3kPdHCOINLAO7
B7whNEpqdSX0IZQlclqo+imdmnbTfygihlEjO0+qakXKyS0yWcj7Ls00aS+4RFTjwrf+AUIsCo8Z
BOUgKtFvCB12hyuGalKvxTEdOOxZ0nViFVqIdG6s9v0J9MjH5AVvIbk9aqnuqELfWC3AUDqvuQyS
YHfSmv0Tm9I7GPp0w5GKeyx+07eYQdP1Z2Lw3Ri9M0WtqWk9pqcqb7uqch0qzrM6tPGnNZWO2GV/
rseNzrVR5fRpfE8SssP2hrYIDp2d03wr1k4rrlnw4gx5jr/L2euke/6ZuS3zAQW+G5iC4h6l0/Tp
3B1ppVovnYOcj01IOWtDlPmOql6EqlKd/W/zKeAzjD7NaqGd6It5tvTOhMNV/cqPb1hK3czEb2rN
hg9hskY8698Yn+srg6ByRmtqdfd2fERhKO07cwx1I6ogiSmG01F+qu2A8RK6o10qnSPA7rzDcj2V
+mSDojSP7LAGK7ZbcqRSC6E+aEGer+BLaqGbGrfkti+HG7f+Y5rQiYWF/ic2em6DX95GFYHBGr3W
yBL97vSDsB/66caX4HakPjH2wxvqY29J8oncLDKOpfuvbNEjVGMENBLou8h4zJj78UQ9UJyqdq5e
BEQO89/NJv3IVyidOeMExjVmivnK2VaxSoGltya4PjvOHevLNaDdTNlXDMihg1JSRp+tyN/9X9zx
zLvsWKrip8/19FOEwrtj/mTV703Vy70IAM4D7K6o0CZ81UKKyLxEF6itj0nRaYHPpyoar+c5794m
JHU/VA+nMBpJyQzKepYcoe5IPRNEb3Kmv6YKgyvZesKxTYYxnl+nAjW8D32FRT7MTPM84H7aROxi
xrX5AX5T6zJQwArpQ+E9KriyjtQEJw/KCJYdlVihSIMF2OiRF1NOnQLgKAnO0jnDX6VIWcvfVxHv
6mFPJS/doQKiMUHGrE2qTGWkCVYNOB8ea0TCYrubBLMPG87SbYabjMrLznKjx2tp2SzYyrYhn5b3
i7LlIVrft+Z3FDRh8hnFDlmFv57ZeNog4NXaxhu2PAIByadVU0Q8ythaQQDRps08nugQv3MCqNbo
xP1wlmkpFnVaNfp9AOIcceKnc5PcWvfgNr+UYsufqlKRYxtytq9z1j50PXJ5CV1Y6tXq71T3kWVE
CfuGeT9AuZYCN1VHDGguWLx0IerPWg1PZ7DO5occtfLRVNqjK2fzJCfjvlg6DjWg9kZGTpX7l8mO
cpmu+x054mxUfhyATlEAhkHRavoPNZRmnCd56Zq6srr3J5pelgWaBLVe/k1qB0fzP7Wk00Y4ZRbJ
MrEtk9J4e+WLLGmuTIxlX628UniBk3AGj4x4l2AWJsxSCPqk8mnsWaxNKk3GSkrr+Ijr5Zzq0Oxz
t1Mw/o75gzPXhLAq59BKN9LWH7Lsh9wJ9twUT463ytHa1ASXeLy8zpxPcfD1zXS+mDV30qXrgvzx
Zc59YSy/E2eM8OA3pzexkpUCvsUJ4DBRsLbh9o44gOHPGoq+/mZPm10x7E5ununxS7QmIVIeT1Ia
RIqLZ3/NNB5fnuLP8s3x5ktD3xu76QbrK6mTdKPycf+XgySnzeTdXRCx7TFuP8g/8c6i8QsxQxaF
HiwT+FpSGsm8PsCO/mD9LNx9+fwqrCIe5XCrz0YXC6cKlWFLjy2LdO+i9EEXFMm5YGAznRxIjx6f
d0PluAlfrEdGIxqI/RviaxxfLt85fnaPl2zpNAU7/na/A37H1qml8MnFDpms2cfKQy/KQyScR+dK
WS59fXzwdHcEkfL9OLRrAH10YVvyoFrmJgfTLLsest1q0KqMSPa+9+r21feaw+Tm5Szy6ti5HtPa
4//5g50GCbyUSypWlTUNvGl6abeVFo+MZLKnwsAVu8sLrZqfhIMUuH2Xo6UWPEmQ/QTVa4vCKF3d
oICPIOvCW6+aHTZ8xuha/ux+3ne1pYXZ2LIyij7NX5uGq6NqCMXiMY3dsPO2/pMcbBGnLy7ifFtM
0wI0GfDfNz7an147XVx4/3Ex5WnKRadOXItDpfdivy1K4OzOmSTTHIF1wZG30fs0ntBIuXK5v5Di
vA9MjhY8BeNcf8vyvRKPtNjpj+s5v7BdL7Gh5BvvI6s+1ajG5iI44+cVk1JpikcSOgsB5UWcUxoP
FtMSvnk0he5cW3q2zGdiKBf0J3D9K647bRWEM9D0dnDAmjzKX0krwCNVNpUbu9ftVqugwAsh1xe1
TI9JVhBrR7YPfZ8WAJoZetugTc8bHDC4JS2vB+isFXx48cFQS3hZQnK7cCERpGD3/g8PZf0r7v8F
LIjIipzHT8xR9w7R3booxsnpRvNCOw9SOaD9i2Q4tDv+fZ/uYwSEtnbDpnaH7ECGMnYIlO8bVDC4
XDCHMXhaQ0ro1S2gQiCFjXmQTYGTtpHtFFBgx9f3Ks7RMhSImOFoVnjIQFbsdfeZVTRyvIJsfYc4
aTvuo+X/tvxxqPzzIPMhFgp8SYlbG6JLTY07hQ/FXIQ0DhqAEK7YWTL0LiGcDkG/10qXRS5hDngW
0xGcFjv50do5DWsvmV1QTbx9nu/TWEEv0N82DKSTmwvs2AFmYu4QqWluWlCHnkq1tzc+vN7JHOBl
tnnKZHv3YYyskrSms2hd0onIJIIwivWfMo0noWfvhkDXTmeG36VWGKhVAyOAY/j2PoM/+H7bAIfr
joXmr9RNJ/SPJjsl8s7IjuJxL+mEHhdz8RMqMCsGuMB7xTfH3uXjY7Y0ZwHiE1a1tzmmnPRdE2Sr
27TSzxFUgFFAscxCdxP5URZvZW1VSzqzsMosgtdRjK4MfELL5qyJLX4H9Uu60mDezCOJGEvQK4ss
P9Tp+opPwfEcoxdawZWVGxEwFL5k1YmR+sY2OQMyHkAFs+1GHYdRu1HBdLRIMlVeY8jdkVRrc1aR
neS3Ho5w08fMjqKBC99uE5+7rsUiYEqXa02jQHgRqyeXA6qbtMFXAqUweQWbEuZjj5b4OtALM5WG
uXTCTF+Fyn72BInFFd/Md5W4ze63uRdLAenZiVN/YwY0Ilu8AJyPS1tbiO3bB9TVmO1mZj5IIaA4
cGtmeBJcaHhtVW5ok/lwuIUzZfJRyjEHdYIewUkuhvnTXzg2HSwp5qTYBUhnHF3He7n8j3jxpPV2
cPpSvDCIuh3yg/bTBH5oRQwcvYE8gjydRLLiMVoYU+CKJ006rh2fm53ntkdvyzoz70WWO58iUbVA
H8zRI1ewxI4H3lvRyKf+aRJjcxlnA/qRQSBI2bqke2QwaJ9Na5txg5bQlMhwPSY9ZGlqsvTV6oy4
xyQBBiV/I7QQiu5kYSesocE0+tz+lnLUXx5Wx4gap5FwmxLeJqvyKI1BQiR+4nqldzfz3LyhGhfW
AhkJtq/hsaogx2VqRVieaDeCoiH0tTPSwrYgAeXF52Dua/087WMoKIEVhVqhnvD4j6d/HJYU7t9L
M001yJMO+EcfvcDLGb6T/xOQFGtJgxSvIA+l87Joy5MOwc8Zq/FX3sP4ys31asKfQTKxTIiWAsxY
xYarNuRMwE4DR3Ix4THIyez/egSuygwJdYCFh2sxk+WgYbqEbBvwe3T7WW5IucCyGpEJRC2KsMwJ
D82yraQNkIxhCqsPPFur0hDO9qdufM0gE0lL8GYIE/qplyrSfsR0zbLy7kEiahjwwmdSNJAKToIo
4TDzk9rKBFXQ/ibARR0nZ0366IjP37IIzJ9gnegfizb1o1QFxvu//RG+qTBWfk7uxQsYrIxykHpU
HiQACo7qqcU6zTJIBgDZjNhWqI7fL6Gg7R3rnxjr/dgASfsy9dQcIn48uyK2ZvSnmksNXv65FHja
ZfRrKTpKvJHNLp1IZ5WJ1fYNX//xS4ZdvgVTK4MwiY2VeemmCsMDqTdCcMTMEdp9MdoCO3ZQH6of
GWxIUJzvEdhClYqSRCBef/7NdW1VOI+jdSgDQ4R32eeV1I8KjgQWEaVYBd1yJDDlgQ5yibYM2jnq
OgfEREli0oe7s8eDf2h5P8MGGah980p/GZRHE0Hpv1Buuu0nz1DfvNAnIWmU1EANH5MC2TYe25M2
Er+MwKrIB67D/EWJ3C7EKgG8t2bPvdvBwMItKtqQSdw/S+XXNP8jel9mS25o4pa6pv3lO1169BNK
9aAIBobc262Qv5Ivq12K89peup/glaj6lLHuJYKhqYqbvoTIS7n3sB/nQrD0IUtv4SfmBUJ73Dmr
UGbzhXFWQ3Wux7A5TNBUCvsoQUtjORIlANs66MEKhd0KTG9HNqAr6Ytiy5DOo0O55WgxMm03s6a1
p04PWfQsBbmnX5j/Lzt805Ya1qCfig8ANg89LyLGxtPJRZCAnlwXyXuHpgBC+Bd30f+YoF8oOwzh
lJHbvvrn9hg5VnB+FC3eh2gJQaF1RJeydQX5K0qdGx20YesxcHicTLa8cv+vV974LOF5VlPEu61/
yBDXf90UXs7ThsR+JuRnuuy7YxZKgaqZkNoj36oQ0zPp8cwvA4+VdK8+XLiHjBsVoFbYUwzE4O3j
o0tKCXm4aYdisDXwGnteAt8q486uqAG7g8x9rYXqSLqUmOnYza0g0ZV4V4sx4ApYFjZVgW5i039x
RhnrYWuPQpwoW/oTA1694VPKzuJ6d0vfvkQNK5sE7SpON3HMgR3rmB55ChYwHE6/vS7Du0m9B72l
AWNA8SH85xhmYdSZhZPR2w2aKlG+FM6H+5A8cKVK9QPoDtPUofv+E8f1mEtPWB8a7X09bUrDubyX
Bxg+csT8RR6gfPZ1/McixiyPh8vN2kFb5DZsrHVf77/tLUSi0AbzU95jmKjLrD8wTLbIy3G5jONA
Q4/itC/Up/2meb/z4w5mTX4jJQKohXwsVjy/xRBhwsXJt4f3peVTwTSrTf5edsr+8xgFOrzmkibG
PFfeQfHp0+sQ1RBMthhssqhD1ESHJ+0Vw17K9LYA+7O4a6ij9JEAob8QBLvpUWVBAXQj3rHnRVB0
Po0vWUti2mZzyZ5Ot8GXDybjThOv3QYv7c8hhUD9rUcv4ws+UxFDFwfvi/f1UT3mLwGeUaLa4FTA
eMcO7iPPyU8xXo0GjD8HhlsHqqTLgL3hMZB2M0FWZLjOhDch3BlPljKVxUkxLRQzgiq50QHboykz
eLt3LPilrf7VNuLprQirfHzCYhsEJP2VCuP3tmzXM0HnFhGtb+KrGM4lCQsddF1RiNj35xDMGYbg
V3lfJs1telwuX/nJhC/oltfSv/6bfigULiRhuOiZ/EIrZMTidV68m4EoYucTMrLkFqc2YK3AnJ6U
ZXqOCK5AwApWZ3lJc7budUhtnHvHeFPzDzNMWZqAcCsmBZcvXfkfSPgqMr9zKd4Akb9cl21de8R5
xvzGPKVcQX2tC5P+PQCREShPaG+Ik+T4CEkoXvqolRHJDPHt62oGX4aut5dUAkTblvtFLBchqcdz
KsD5C7wBfZaGWdfkM6GjyRDeVRktbi4L+vqfsVnwkqaKtBE6Spoa2MtFJtpfxEHNyuvBAIun56Ta
i3mP72dbjmShB+IrV2Zqazmb14HtzxdO1/dny3Vi/D7s25e1AG/ai1YSBO3jDGYO+clZGrNstfUR
vlW94pS4fYwGYc1mWaVzZWkC/AT0+SY1FBeJdEyZWgB3vapEOh/FK7U3BzBLbddIfUpdpL0FqUK7
uIPDfOHMs6eo5WZO7SQ0qRX1/lon7v3bgMcVM+BC1P+/FJgZNuyKIE3JoH5hzXB2OlK3ycSmBsq7
BR+JF/qQbJoGiboaqd2aGaqzns46wUZlVoCqbK1kdfZzaTzlnALcTwISn038Y8TvqvmsYssLy5sP
Jckv9zhRO5MQuC7CWaeklq19TVsMNc0aqOSa6DiIXf05+B5O86sROkbF9V5ocZL7Q6KvBHCoeVlP
0qLkPv/tNOv722mCK19CnBdyhgVO5VusXJmSkgGdb88wkGrRVV/gLuIVO+83aR+Fd1cKgXY6exdc
nxhMhmCtkwPD2JIQFQmQ7yFmnwc3I57eBcFhRl0HIDhO2ug8Iulr83oHWtazm5d/a25IqSmm+oyx
2T5SKuYS4ygl7v/VPXDw4ijuDTEjbPlLSm80Aj4BwyZmH5hvHE4+Tzsz6/jeXasaLaR0O8XDtL2T
2nBx1ZR2o4pjUHPXFTIYOs27eESrcswVIBXvAPerWKjPD4OzS9dSv5Z2hbwIKsd4Ek4TeM7rdQD5
iFwuZrVFOS4I3ui4YSxsWwv4icRCQcATSKYZHhf/yGGdDux5OcajUSGQdpopLWvPcUtQZjmLfGXA
sQZgwjZtuzHfE+rLr4ts9mEXg9sruLiUvltEVg1+5NZ7oFH+JGb9PnJnv40fUppqZch4y7vGFqUC
cF7GpRY5+0kdw/BfzLI/7hBF3813V7JpEptfEqkrSOYcSUGVvWZxQmaq68zd/D3dZ680blC3clkU
/d73tceget2TVRRNkJgDgNSeFPXVJgeeMPYQrROnuArgJ6PkwnF3bS/BgJ0G+XEkFpNO5nHDxVbO
ZD38EgJZQkRyN2YsTeH7FiSpLdDepITSOzdQgrBhxsrafrVPkm0Sj+gLfqCO64UQXwhIvy2yBJKk
UH4gT6bwP9Ur7WKZNHuWRIHprRTPZ4q9cHTIDDGGalkKQbBodXFIwlSzO/Xy63ozavQYt2oC3myi
jNoM9L03LL06EeKfu3yfVT0DCHSm+Y0PD0GoU2YGoRsvsmOmOvzjM4OAtv8AH4m2X/T0wP5UL0jv
tL+0WcVuHkeRavuo5cHB70NcHUfe+lX1TXlWjslSDLWtB4B+ba3zLXgoLJVcze/KZCf2a4AGXgHE
+hmYMx+bzfQQ57oiBKJ5TQgb6wj0qYvURKYryb8v7dxlsKxNJHnivh58ZgJjXR6noE5LLp2ZAVPl
+uwp9HXzdZeqIQq/nmTSplb+Y97u22Onct2gg5OMeFNknScg2+So2rDN8KU7CZE/UwssbjwlViam
2k1CZTo+1ETr1rbLx5Wpwz+zKRfKMeYzTf8Kkbvuqw0RrHeODFiEtxPtVZJRemRs7nNrl0uDq/dN
pfP/mQu7GeY9G5YTAtQRGbYcRDsOivyiDKZFs38VqICQcOZ/TEN8N4VteAEoTB/2MjNWV2DMu5VF
ltWDqOsnFBD1jJYQ0V9F+dyE8Dh3hY6PzTjoDA6xgQT7726+rGimukXD2xHc83J6G8NkhK4UuMa9
UjL1++xdL0KfDQPpt4VEQeUbOOSUydEtDdpamjJxdonIHxrIzv8/jxSwEe7lMut6pZ7i7mRvfpDR
XqBuWoM3lyizxapW9dyPWYgl2pcJnVQDFFk4DQVj7bjFBZhQ4qXTayhXkLIYYicpQalcHY+d2TlK
qPdkBtpmo381CmHiy72HhZxW2kyOKiRTFS0MkaS+onmlg6xjepidE5+0KDzfXGXM5SAX3LEPetps
CQJr4RSQ+lVWdYXUhZ/u2TBU/m8npj5/S5Z2FQoA+a9l4PyTaoRzeNU81fFzTBxRiLHmY9qG41X3
P7N/NB4HTYkTpTZjmtGkH7gr/+r5jaauXAtsjBpiQsxvrlHpmcjMlWL8fPgBUNBt6fyM9rfwj06x
/KNInF9XUecE8jDXfb3ssPLJoaVsKoD1dAZ5yDtuZZoKZB8ER91iCdkwJjiu8TydNseeF5ARFHhr
vPkt2F35vhXd5uBvf+OwAk9SinMB+hz21KSx/ChZouZW+/w7kCxnFlIiN+EI88MW33VQruwaLHsW
j1oEermK1pqAAehzFpECN0ILV6dCp5Yi2iRaLjXCAWZedAMaqkDjcsVG4WZptXrR8THBpAoWrmE0
NEB3h5fnA5KTiYHF4vOhv+1sX6c2ZKzYHfOUCyTgDOw3MNLC1hlmh7vmIjw9zonvpXbCSOsBvwQ+
xQiYRg14HYDPHGUUsPzAFP5xvFT/CAeWzLkT6spy2gLlzP6qh4S6lJMMGqmAnL2WClW7mufPGDeq
646CDTKwci2VW+Pnr9ZwZXQ146KSV0T06MfS6VQ25Rzj3fvMtZK/coq32ftWwAsWN4V0qmbn2t8C
JXNzaSYzt7mNMcacKoXdOGq/dhz354SjzTPlh0BtumC8whegEe1c00jwRX6tRgPepVduvgbRT7xQ
IejbkfZ9ppB0Q1oZQC9Al0+OwQPIdn1ffCOD4sERPN+ULhYu0J1zZPnlv9DaEK7Nj5W0fIf2G7j0
P8Hr87UzcU7zofYp8QaEyYKRX1CbFgkNqJ1+sma/kOrTMV4F0QcPGnG/O0Qp2gwc+MrTWB9Knx3y
Ovaa3MrUANjz0kmB4ewpK+8g6U2uyqaLYmvURbsyF+QPnhrcuSBO0/D92F1EYAz0KlDxKC2EMO4z
vkmVL4xYmJEVMHV6ErS7f/CcauA7TwVCRWSm3sxLxBFtUgoavjtcyfwdoaJraVhS19O9z0wDIP7u
clrmBFPJaFzUyR2CNLKQWnMnoyFKKA+uguPaBTPYSUzRZAnU31uxd+z5sS1d0pA9BJlywtJBJHCs
vX1Hr2glBSfNXIJc/XFn1cYSydG24i5PdwCWO5ynUIv04VK2v3OTYZnqLqVHLIV1vW2mvo/lQsxz
5ucMbl1YvnTBVsRDIgzq7bpVGxCGrtsN6QxP21N6DInwox0fEFlFpNhgMluHZiVWIoWr63MMuLvP
qN3S4M+5vexrQMc1D5UHkvrNgUvSThWgNnemhqZsc0v7PCioj0Y2cMfzyGb24HXwF8MfvEPMTqia
MXNfk8N8RMVn2pRl4AaVuUxfnwSodff6JzSK0zqnongPgD2jm/BJQSNiDY5QC0MMYfx5ozdoUQ3z
GkJb7fmgFZShGfu3pcwBAcyMVCITteaBDbksLW59evrE8q3GbFsIDRL+G/cvjFMX6CKvLTaHWI/G
AL6NRNnfWuWYgU2xITeJmwOag3lOoduGmxVurC0J9v7M878mtvi346pniQ1cFRmyZhyXwTpTPkvZ
B9WejjYKvX7iB52O54TLFRo+Hbd7TaA2vSjyBZRxsbVXv26XGnjIdIiUhSmZiDDqTKZDynfNA70u
oadz7EIv0gvOY6c6VxgJ5tR3Na9I//qpRWPgbueHw9+srfo9pCBqugiayrB0J3x/5Ncj9cUw2cas
Kl3w73HKlhuCcHfBTX08wbKI/5KHsKIL8zcO5PELx/m1W3qXFfV8DM+949oK8rDI9iO9YT6bE2Gx
ufj5OFYFKYlOu80MBpYPgskkoimQgY/iN11PFNLQkGjA54P85RrpM9BgBqvpXzvKU2aM3Yf5rMl2
2NUoAPpD+o0zWMTAOjjiiw8F04SV71YyI3oiR3joKR3K3VHBTi6EHH/xZa+8xGVYlEeh23udkAOH
mMqw0yUBM0NjOE+7cNpkObScYaPCpPddL602TFLROrSHP0qu1ow/2p3yII3fbV27LGvwoC3iMNdI
o/PuQXeoDAHGXmm7ayKFB1eDiSS89NhtucH0bjtg67SW8rSbv/vSSs9/W5P0KmZRcdz4MVJVUwI/
vN2kew48dDfvZKhF+p75UEyFS8YKIqZIeEU0kgUdlUtL9VSnnIjv8SzEKSy0cPzgxNKu5sBT2OfL
fc8jWiRJFRLxHNB/hZKMHedZZayAA7v6lEcf+Kr2tDWRJtTiAs3WSuwR/90MgsPMx1YakiDltIZl
a6H2MrlSBW29Hg/2WVIVjtMI0UeIPzdFqYdgKEDQOehCYHG37rgUOFwkbDcuKqn8T8OTPUdO+jgS
ae4N/RyTTacTh6JVFp9aIL0Ek49Vjph3Kd9WyDVeuQiyXhEeAFZeuNqgsz8hg5pB1cFroPkjNIoe
MM7OI1Imj2GEq870Qi2x60ZByLCU91aRnPU+9ejPdpvtLpeGfgCUAt6vgqX7jcCcFUftYv71zvey
YkGAJDKHmEP0+YS0B2P6VvsCjMVLyp5ungTBkh4oIIUMWeVYcdvozFOTJbI7LwWeDZd+o45FlCzE
GQlLlb79TCoi/83g66DVZRmpPFHHR0EJln9il0/hYZ/8UJB9fwvhLP3vC402ViaSxvSTYYQ1IPV2
iCr9qOWtcnXR2KT0N4kcbnWsfRhz3RcANmiIdxLWKzd0JZ3f/BGFBs7htgrzlp0Ie2IAruXShBq7
FoBI5n4IJb/qkqsWntOwUJYRY8rH5pm2V2D2v/7KBTN9+oieAg3kiER4bdsUDBzLe0qOacU29LrC
KueDY78xU1+0TMRsROnTj6D/MWzmeZXg3BShNALranlQ41bwvA2Gjbg85Z8Bjt7nudd9HQMekNQu
pbR81wlG5pF34CnhRDeNEJrLqlLooW7AxhbD5FI2x/zYs8Hs3+rJi/iIKg55zODz5+aGwEleVPIB
EH2ByULgAZxx2Am5GpC6JugHgoUky+2Up5MbZYYP1AgV4zmrIHp/WDJCiM2q1CnqDi9TbxIsyJOB
2m+p4dEjDmOymu6S3JtDAZNHOlKcKYyXruPAS3aBMZnT/H1A2ZCNJhsUDtuDV4XKlKAp8APlaUGj
MgJeUvWu/wsWNPra3M7OCW6aUKmf/AlyWCsey8ZeMge4wFTDh3YDoIBrqDrQz1yDtXqnDBBoFILY
ZGQxglrB9DpZJ8+aHbHIuMWeABDOpwysP+7IXdajqdUKugddHJOgXUAQlDj5TQz2Awp99a7HU7Z0
6ZySYIuiMsUD8djVxkaC57W38RpYhTFtpZkUR4syv57hZchO4tZDlg/WQosN0Z7bKun17+bNS+r+
oLY+rFwELJPKtzloXVyT7nnyqANkQbj7lnoXGqFQ3yB6xlC9QF+AQU3rkQIYfs3h5ybKsPHYHSAk
gr5vrV8fKlClDuXLN4fi9AVVEezIpHeWHo2u3nqfzWhmf84Bt6aGVl8JEAApTHuvctb4Rn5Ci/JH
M42qmv4uIG/Tp0GSjfV3XGOmiosghYpThLq4F8W8W1FxWDm96/LutTNWRLaqXyR6/Qu7YAMateH5
xOEpAj6HY0qxZo09xtCehyYo+FpL766A74K3cozYAvDzv3/PCYZbwXOlgbR7LX++6z+pobvl0Fjz
Z/rZVmrcwwO6T5Jqbi64airXPdy+8KujowtaXOct8nTqIS5hkqwLsVoWWZTc6BN3VKWnixmGmL3e
1LdbMmywe0gFR8rrraxr7+OXBWY9iYuvX0rr9ML3weZiitz3LMhu7qlD3GVQJCZLgXkLVWTLOajj
LTy5aHiWrAuRASyWdSxmU4nOwDpfHNqV4gJyK3PC5tpoii8JFC3I+42enlBBSKPBLFzqKLuIJV3n
VzLqzF71PUnJaq11g0AhldpOrdg18Wflln9TyY+5btJW374yHpp6zweZVvcDGhD2/uxcU7RPsaGu
kdqgi3M3gU+0x5HAkN0cSusqLdga3yTDnOwTdUhiD0WK0KU+6eEQeDDR9bYAJwVUwwQWuOOAG/EB
pCrZ+wtL/WIXymW/d8V9wpwD+0x2mWALrYUyGK7jsetOBuWQLvQO/1dy1RBdVAl+ZeC8m97f0ZAC
oPAjOh4uWJnlw8x0leNmtmcJEz3/tMps22D+JD5VPGyeoBWuib+NEnqyQna0fHGkmvS1aTgYFPQQ
7eZHZbkU+t5avQvQ7kmAaoGwD3RAAr1O0E293jlcRZm1oH12uCgWNUx2tNHleBNH19+ZXun6co7j
b8MpsESuhKeLSdw1f3jpJ9dXhq6m/PLoxppys7vv+IEDJ0HYMKXIYtxSBpQAncA0QJyzJeV0EuWD
bHkaHUJw0Q6Up2pXK2DsDyTcrNk3wM1cOYyjUSNHmqg1qzfczl5yDiXteWvzv41gLn/rbuIgKHV6
Mvcqay7mQ6vWTRFVxoO0UAkTYGun2kNLcM5iWtlurGCM6I51TEpcyNDUCOSsqMvAMyTeehEiz+E/
4rIH1BGBVuR0aE8j4e5Ob33QDYpuz1BjZQf7cNRE0W2MPbV/2H9yCQEc5s9iS/ezFRkGn0yBKoX6
G3Zsl3GycWQ0Ribmzf3b1LIHEICftAFkXHJRbC7kFYHwC79PgUNw5N1zOFSgCOUOtv7IPbC50Lm8
DAzSzp1NG1MKLUd93+HXKgYSoq9zpGqEvRmS2xLbmteN+j8kFequEuevt2pSmd3IUcBVVIg+SISi
IqdoErCtZYSl7RXiKgBmwZfUhmXR4Xcp4lL/lXXzn3EZS5oalEgLTt/RTgcONpqRqe1cx5OnRkyG
GgjfLbQYC1vs4N3A2O6EJovZr4xFh+ZLDIb2hNISzz+MuaEKl2lk6cGqCYJBKpnINpUnQMJ4HkQ1
LZcAwE3VjQCjF/ZzzfE19dUVpPi6SqR8lgi6ka0RK1/GDUnc2XNUKc7e4xBUY5gaDGBRYdvtnrh9
Rm+v7TooG9Wxeab8AF91JmgIwm6s2FSoki5emyhiwyotBjnvdiomsEtv8uc6/ZOTGAaaVyMwXSoY
2nJvIysxs1kReRLkUCmaGhK0mWP7A1p9lu8nZBueSZeeWnh9pUCK2aeOb0FxoU9Q31Z1V8h44Iha
2SEwvc5cXfmDeoYdEZ6x8R/vEk3PTRpewwi6O2WpHeZSyIKBx+77jbNrmGxMBjpUnmkqzlPPlHAL
hAK9OOCckQjWMGump5LKTHKiXm9IMMflJ2SBlVQ6/eJRQAPM1etlNLSRkm392+H9rXNGRlg1EnX4
t4uNQBtcXXECAycsxiHxob/WZG+LQpgvbzrf1Sku0wRWUoUaTN5BIfSLXpY5qTAUiMM7m5TAx/pT
5ar1R/KCdXQnWbTID9y7L7pKBqRFDPKfipvMRS68+iaI9j2XJsbrF6y/BF0Blv+JTWUvs1CAHyFc
+COhWBwFZpKPVwQZxTNFLd86i06oIaJOUS/o9Ks2h+1Vi4XqYXj7/k0dscmLiKz5LzNF6cF+FYTG
2oh0s0w7HoxgJ1TZ4NDLAEWVBkROkaDG45Md3WTTdWHuWVUfg8c0VmW59PhnK4uK1KH6YOXvR7xv
ZGoZORubQY4gwODxw5bsYZSJPBFK9lXpMi1jdrIErnUx9MmLFJg5nZZeBJEeQHKXXwxAS1zmrNG/
TfwftE4iP6qZuWltflLfV3pwmnWIoGBjSqEnnwaT+LcR9Lhth1E/548kHm0pn69aPeoY7VmkCHy/
8UyrMze21ZmmrwbhG1qGMFlSiKJIqIuXbdkd/Kormb8rkUIkrOIkEV/qbXsi03gRL7FIxBe9UbZM
5uiT4LdOboQ8NEhqzS2cgLubpHgF2gBM7leiRn2Sp1ocycsPTo2xkM/l7toe674l1HScsnwUSM1+
8R2k9bvEBiROn8aCpVuqpMfV0ROjb9PxegSZl/ZxW72jYylAf+YNKmt5lAyvyejFK1BwbKy9X/Jk
r9w1KcuFBJyu/rMtEghWdg9OwVa224uQRUFotKjhmdk8HZfz2gfgBVqZHEwoyruj/D6ao2aV0j6J
bGFQYm/kLmY/gN9g2yQkz5MbYVEjZw69W3pXPIwHWRIUojGfqxUU/V1oDN0xjYAl/i2RGmy6crhC
VY0CjyLyf8BfHnSVzR1XLSGwOG4PsR28m6jZTtdBnq0bV4dyp5I6WNqbhYLcviRlTf63p2jwx/c7
S3DbX8aJmHpwmDM8sThKjy7l91OC/RSSOHvNT4tYRYhuBl/ay8H16jwlCSuVZkFoWiCL0TeXUZQ4
dMG6IZEwtIKgPH7+2KwGVWkdbWyaUlGiSWcBDr2wDWMNUWq1ZMVvxRIEL79ECHE31hROTlyMB3Te
L6Rd5+itKgbSLiqzxxqbbavxLnjKzwzpW2rPyBpLswtVqGu6OiMDkqZ4RerP+2jSU8kYNsDaSi53
YKYRClW0Y7etqcadtrNjRAnlqW9F+ObNIV1jwvmWjIVNrddUWTagmlsy5wlmH3NpNlkDQ1LAn4n1
9uvQbT/ykhD1ADMXD/pnMAAIqfd6WuhXkWLGvBkHyX944bnPjLNGFqqAujmtxApliqUs3aFjamcQ
VVH7E1gpE9OtImG8bv32kJ5WZohIFVEwYoA5L8z1Qlxn+cW3FXGCEGU4diojLS5uXXVkWS86q5a2
OMLPPJUiowyXNEvfwuhr3u87iFUrO1yzJHwsHIl4rknud2Lkexli7vyItV0fk3qEWkMGvR9COhft
ztQwszdjnp2PsrJRG9FMlFQA9XPRSLIS3/Ntam3JN31PCVmmSWdxNitrTSEz7XWmUt4UDfKvpyvT
hMdnbvojfBGbwosOnRSbMuZ86scFrMnC5xRuUujNPIHHr+nVk7JIhKVyIwhXW59bw5KeDkbnT1WZ
Di6nI+9OCStIhJCnc7jBNs9urjWgBYa59XU6NFF/egneOMNBpW30cuVDTY6X+HfBKyK+bq5wS6L4
r1SDKFCe14rBYDKZ9ucyMbUACrwnw8CWYewcNv5Whj2sTo28LjdNx1n4tpXqesygLhkNkbXKMdrT
OkVCK6adNSsTFXukvLsN701tWjfT5+KSA8klKHxHll01kpZIXorIouKtITBGB9ClYhUFyVUwp9kL
pUfsyppx/1LlDS4e6nC13bRDU2668DNYd1s/4K15boxh7ruUWFlMTzrLNq3ntJ5kzvBFmC65vvhW
yItkRy3Uj/v1FQowz5BUFvchVHDJayTYCFSPQLG5RP0TLpMh0cZZUNhTU1nZYOcy+yldetW58PgP
n3aCbqaSYHPx4EU96+rr9xvoVbCe6bV9z3Le0gLPf9k/Xd9sfNnA2mGcqsxpeAoTw2f5wpsq3ksU
7Es4CrE8T2mOMGWLDdI3rXNnKes1LmeO26CI/ZNM/Z1itWNlxAwYeAfx4Ekn3jFKSJli14jADW3k
T9weQb7YNnbEvOFlMkx0yhskn0s5axJIMQyCikymRul0Q5PZY8bBjUeJ8w+6kUHI8UNgk3+oD7Mb
g3P8OZNw6lKzOFCBNPDC0TK04ps2pLUGx7llvuR2pyV2azOPjKgqT9ZHUGAKjXUU/yUd8Dqn8/7k
Fc0umHkBZoS4qQuF5oUiTfOecBrmknnMpgsGrDGgTUfsHuYbgg7PmMy1wEWSOb8Fmg1irr+ATaG0
B99qB84x8dpAqixJASN6A3BmG/ev3I+QBVsK7wnZWV7Gr+vHuANMWAm7BBTkAUBuKipV2Rv7MgYp
X2+oA1hQP311tc/yWqnMTkplu/RBWX3BrFrnMhfq4SMHdIoWWdpWSWm5ZrD5HONwKRRDOJ7YOwJB
ykcROB0KQq1n+kxf6m1Li2VWrThvqn2R5qhXAV2OtDDx7OcT+4v1YjXKNcgAbsGlQIzcBxYaWbJ1
Z+sMdcgptkNLy7koqt15bxxgjF++6vaxQ7oaN0h9X7vx35k1fs9DyzT/SEogXtaOg8VoexrFAJaj
SaBTf83b8+lViQq8K8xcXjSoy2w2Gw7/d11vDlq3LeBLgp13ubMuuzH3GviQFgMG5sImWN7yFwm0
af9j6tKw5Crxzbd9CO6gs3kn5JmfxG1IpHjjrRBQn8VCgc2mPZociFVt+puBAiebQopmnh/XqvJ/
n+jfdSdqiwBsA3ZqTAOd6lNqWm3hQgbECHYUe2eTF0CJFWsyi/6Rkp4jZgitZ+yWZOuoEMK4Rxe2
6YOa63V9YFlmYIGS/kn+reND67k/o+9FiwfJ45kDOhYX9znZBy89JwbbiBdIVsHkgIZC/EXbOt/g
Q7ZYvsJTTZ8bD+weMn3baFvEN352kJaM8pIOOaIjgYR/n8WYyKRmmNmRyct9kZ1Kl073/UpFO4ak
Fc07BozWRVueqFOrzwjbZcz6SPbjtjaJ3brlyv8VsdkVdwGGF9ucdN/1pH2EUOfDstf8w18HBvuh
TmMpNgY4+Tu8lZvCMA1xwYuU/kN45PdlxpiPr13zeOY2sE0NSydT1rVvMRaObJkTc0TQCnC9cIsS
iDuhAcwYU8XQLfDyxgsQlFOMuy+syrSjYLP+LLHe9yqcgkLhgR+88lQiKSHuVp9OWhNMjdMZnLnc
BUwQw0m6q2WUva8/f3BVEd4khNMYHLbFap7b/WixfIWjXNviIvVfBuqP+uQHU6fuasxPRfSGj8Rl
LJAXYIpjnfirVlGFpr5LiyhkAZVsSeDPJisSjlGwvd6yVKKl1rJ2/GO5oFKTKut30q+lMn+WfDZp
q7So02FSYSEtfeL6zKiqDvzS4geD6IqXBN7axeTKIBPK1JUfmzAA9z5bucUIg8ClJS9+nNpG5F98
6DWxviN7vPi2tURnI+RKexiwdsrPzgbaGQ2TjNhuEv7ITH2o6Ff6eCWPzMHKbuvnMFLQNI9smwGL
vXpgWAbnfRfHLSCkAxdoIMOnj7z1qpteWgqQvcfQWpgQnooRrTmnyMSNOUHCNsitBQe3nYENToMi
kvdaygNYjIQqvSbNE36qnYtoHifvVJ4LBzPwvJlCrMNa7nSrrmbtwBvy3S+PyAUmHsWcwWIDqmfi
V12cJkIVRSUe8ofLnS7xgaXyaxpby3/DMsxptFmHW1P1gAQsRaP8U+ZXnIDLtKIHZvG8j8LVLc+9
vLDhU+hWYaCial+tZmntzbKtx2sRdxLLrxskjGuI7Aw0hc+LXxSXqmZ+K1nrayKZoFHxsrM5Q8Az
SDWn6bDLbhN1pyIhXw9Tm0XuwbXvC8cHfaII42PSHM0BObVJK6e8D3uuQb2yT39IVVUIHIbQkm8y
yZMa8EE4MaclHCjWLsNQ9DT9G25gV70uEon5Z9jGIWwehJupA/gWfM365FRvD9oy0NN6Ivn3JTiB
iR4WtlBotxQeC2reSfjPjN0AQyaw+0EP8FhHEH8ypfHWlQGRlMuwikchRzfFwAR0dPk3r1L0aKyt
ow7JJ352Hl/KsvVyxLjYq8YYilUQIbGuk9kLIxfXaedDkD5K+bE2qns0B6FJZgoJ+64OAVDimOLS
hYsGvl3600oJ7npBM6yS3x5I3Kf6t9MTsZUJ5mwJgaThhxrlgqVBQPXzZVItI35SLTe6ndzYIz/3
0MsjCV0kzdchC3gdncAFLWFaiqCt4CHeqXQu5esbsJ8s7Z7Gfp4df3rlpPedxFeXFKlZL5u7jmrb
A388pAh18bQq5sH150PdCBrC6a+YvKa1KrxvDqVPwYZYbOaxTLPgyq40UR+VtGHHZ/CQLW1j1mh+
h2EXawp/QbehRp7J9X0qUeE8l83EsExYtm1M2pTUoW0KrL1u7ynePMJwDVDTKzrDzAJNnYKiXQpV
GgUu+F4T1cZcTFpCzylI+5xOqmFL6s2BaA+UcKY5CdOJMZXLLAmUChH4vOXqvEbPsex4hC+GcTHA
n4D8eZC8wxpROtCVrX9W0GFkUhe6CMazgbUPqeO0azvjatbfjRfWTL/oTaWoQz2AGzFAUDMo4AW9
ImHy+0dFNOQ5kxbkrfQqTxWWxIv7IM7KPhSRvjGBuPqCx4xLB+ffRrkTh+Q+PiFwC5k/viSk/t0b
GkDDD2WyZ2sdZwai2/cMk7Z74/6W/FA6I02n5CpKjvwt3Zfbr480XRIV1DPOGgRtOOct33WCHnLV
QqfBBdIWS4JU+XO2NmAWEsksWNglpS541bSON8zPljtg9jX0gcLNfm/zjPkK43FIt4pR9syn+Md8
ekV67VtOf1QcWFR6AMPRPl/oiXtavXX2W3HXTMwT8a8YZ06Sr4cGsUUwjECWy9lKBxasgzMhq6B6
XKU/7FFvHcVSXISaS6i5yRaNv+in3AdblgYfxyPBG78ndsy5+Lql11/wGq7W5a36gesHXSHDpR23
xJ9+97iuVqAuxcj9g0Bm4vxTiHphoP1shgeQn5NGM6lORbkM0hcJaqxVuIKOEUPwGafK4jvDgkVI
tbAtBTd1lULktbPD+bIiSpiELCBZHSL8KvjKmUInnjRequS3K5JRhFnUxwjZhT4um83oOp60ONO5
7FhJBsqBtGn2a9umyhCoZehuHKY9wKd0N0vPp5QpEaMQsTUeYjRa2z5y4IgKoOnF36yrRB/rZ8JQ
gR5+P0cm8k/Y16Kv8IM+xmLD2u4HaOpq0DpGJnug/Aj79+UKc+RWkcFaWNVqHb4K+tTtgnGQHagd
3aJCBJnHfgj5WqlT/OtfWfDX3E6+1bXh9zgKq7fnNq5+WhhmyybojqA/duWfEX3tV12zPM/nQEMf
6/ZsIK2ON18DwRFsa8SFFiQ5vyQBzt7lsynOc/yVgrwIkiDT4O6j4DC3jquZJfvaXc4psQevE1yf
B16sZfbbDz9o1rilIuwglZr7rysc7kPKh42gGeO9EYapbW0qBCW2gsppGdj04uWV0wsTQHhDScKW
WgoWiyQPtb9XJpRiIoXRWckVz67YXsRMptP0Ei39A/YExmvYFT2gH/i4YGOQt8fwz1Lp6if2u1cy
xDSOIcg3dCoNWn+sRY6o5rDrOoxnYWVauIx5PvtU2Z3qQg+9LPawKCQFHrkmSnbeKPoJBh9VvAGS
GpJbVi9smXyp8Wf3wZNKPG1Xm1GMxKvV8ff6OT4qpIse7+3EDT3BJS2JIk9LONojYtx0vbdFejOp
acqdH3XoGBqc27Amh4pOkU5DJXstF+yDVkOWYmPNjxlml/4CQQ3n79Vz/BfmpUXzSUp6nNLJVr+Q
xyjhtMduoPrhwi95zCHdN88Jy8oOlXTe7JnTOXGxXd17X3WsfSnWvkM5+zEQIRnVQWJCCxPuVovB
OZP2lHeyMr9kBKwXYTCsjqViSY0h/FO1YTUcU/aLprUTsHzAUgdzuhkmyt6BtzAmQxoH9mLtcFwK
ZB7ccQhTgtEds0wHntnRMlMTBQFa3aadE8KTEHYSIuyi/ahBXegRBKH/BkM0d81OqoWMVlr3O0Tv
2Qgza3PRtrZ2gAuf6WMjyZbEQX7k1AbGWen9WwF0C3oa5DdB/ZoCuPYBg+hl71cfe9gKkPg+1WzE
G7K0tfCcbha65Eu3vclFYhmVLj83Fagd99SqbswxmGg3AcPi8Jccwcktwx+AjGZT+6R++iweeAEj
D51oTLNYDGI4t3vK2iT3lr+siMKSWoKh3etsAEwf5Ai3BxxGShRovg0eUOSixmSgO3ghNzc2HcV1
9ULsrykkVnWkOv7PHyuuBbOPpOCbm3WLEnTgmYdwtgmxJ3agDF4BKVpUvFAphAijQGLhG24FQbZW
b3u24BrudtAgecMUgUhoPymQs+4cp5nxpH0yb22e4Tk9trTB8t8m0g0O221IpYia2x3moE9jFyOQ
gk79IvfXbcKdJ/97hkkB9F6yzWZTAKZtvlSVjOnRUfhhzV9QleBQytBi2NMqrOvMuA9Dq2fcFbcX
9ywtItPDkRm7hGnibEElzA1JhVQxhoHcEOAcwaissgQhw6MhsvuI7NUl8aixYUd1Fxds/OYjrysD
VLk5eq7uA3lCwVah0h8IUWIrlT/lErs0sB3eaMnr95KtuyopNoLKfh1A4UMt4mxoz9f+XOnTHkUV
/BTxtCXPEoMwlDEwc9LfgQLUC/RgVBMbauw85B4p4Az+aEMkYAdhgo0vXUe7qO05Kty+vNDEAs4m
e9GSFgrBxLsTbsyhxQZtdkOCCW2eULd3AC4DKAa0h+2YPrO9yOY9oBUQQCBaw3HvSH9yc89ab2yJ
4jjyU3o+bTrTVTLZyzEZj+gHAATEhQNBgL91huE7ZcRDlMXcSPmc+VjVQx3C1d4GEqqudiO2MARX
eBvApJC8UGuzVF0V8FlD3TM0oVaSQMnHFi7TQd6yxMfA2ECgO9PtdUprV94JHV1aeaDzuz353eZW
sw2GsTbifP/F4Z3JqRfrPXczyL8UJcBB05RDrl1WeA0il+5jvb15A5w5CmO1HA7Ge2W/y+8VIxgj
uPKX7O2DMaGmAP0hwxsb0O1cKlAicx9z58zUxl6CZNUqnk9cuudUcKyx3oYp6h3Ar0TU8UjGCbdE
YU5TUgbL0FJNT4ptxVLaHAki3uqFZVdhup9uq0A5y6jXv5UsXnZsp26fF4tXBAlh9xKb81eNvRjW
9434HPySEcYi0T1CoGlZIhWJmNoNbBr6Fh4cMRjCvBHXf8ZttnvMaFLJ1wRda3npOeUgJe0Kl3nf
+/zJoW4fi+bVY4m01OO2DFjtJhrD0Ti26BRh+sFV+8IxTu7O06k8moYNP7TMMl9L34c/5QTD/7nI
iCgAQg/QyUYhORa8UNaXqnVr3btcZ75y8iOMFWUDRQkUSHnGa0NO2oBeKkraCCOqvM0XK9IWwy8X
qb8uYjeby7q8xSCKLD86OrxqH1lrbr4lAbBhCqapQGbMQgEFtmQJQ09cTkOzEsw5tuAfRmThFIBi
YcS+STHgJcz6IBTSl9lzGE62uv4fOGLkGCowmo0mpaA23LfO9PTw1lS3Qt7hVvy9pDOVWOCqF38d
9Au9Xq8TGszzlZtU3olFTuVzjXHOkIDSKXmVK5hTNVgrzRxDqmwr73QWu+/6+gNxK26irzOyS1K2
d1aeNkd3CE1zxtxZ4H+p5HXLoFsgf7/bWuCkN6P91jRMWnY5egDef1W3uqn2uRT+rdYDbzghZoXb
oOs8uxfSNWBwgoWFfsOSxLqQozm+5U1G7geQjwerz7brgquT0Kf1cQ9KtmUg196ickdtlNBX0QSf
W4Nnu4VTnG9RMOzo0E9zdWCCeBS/AM3nos8SmMFzF/HpMAfVMW4ilgc8hrugqno75i26PPpd72Um
iVBlCJ7Qd5wx+BT8KnMiwAChkyGMs+m8BiUVqXXNrt22kSCeV+7vdkJGHxpDXecUPznpn4oui8mo
M9O/LtnyuoLyz41UAwX47IRkSn7r3ns7ir6ll0lJ8WfZAxQKkgEMuESnwDSXVkG2OdP2Ge68NjPw
Cx4nVVEXTAc37+Blj9yBE45OxxTfWHQT3TxV/7F1A6CG1JYP5hHiKtXi5BsFbD5XY8lYlHCrvXxT
UKhxLJr0FRSPoQLMRRn7v+kTAaKV4+5g7ofKCexjv/Pbict/LOe2pHEJGyy2IluusYET/DtrrXpm
rCp7b/weUtmu77nItkY04rfqdP+P9as1T6Ah9VEQR8o75B/jjXsetTQ+zic00nBSPmNm0e2SBOFa
EGYlKuER5eprw9YJDqX/0zQ+B43LnEQe78ZZkS1aGtQ6gB2K0bkRtDLZPPDaglgnYLiHVEF8+8Xh
YwGszZAVQVBf7H1hPmui4zP0Q0mXHYAgVD2e79BeHXHL3WjFlLowito/tfU8mbmxHWtoXGVT8Vvx
zLhm9/V6E3Hdg7rYS+xa4Pr/leomLVAn17nHr5/hk51M9GHIbFtL/N+ryFdO+OghZVXD/gLQPFmj
wJfK1ocF5LxquEj2EmbEB9jKCMvubRzWltMK0YBDN01yQKoClYG6dUtissurZYHXUYGrXHVhxoiq
lXU830OBnrqUJyKjy1XArgh9ROwDzB739fyT/GKeCzgB01+0yGRr85/3apGxgD2ifo7zuaAV4UPT
iwaekWJpEj7vzzMdc14tWQHhbwPTvHouu8N6WSfuNxnjsjidHQbagbzbVSPTEL3WMQuU9r4E7Tdl
9vxXM1JKAPF6n4WTj82WYXGnV+K0ulKWEKThyucwpE+OIL5wKUxtlFa/liYMB5DeD9S4DD7hWmhh
352n31A+oAtvfLAW54UMz0DgXgvPFmKNaW3Qy01aRD5XoH99v8Q40SRuT+LgfhgBi5Q91nvesFii
0WeGIeLs2MWQ1LvwgfT5BLuh4+wHTLtarAID1G4wLNIclHCyIvk/BMEnaua8KVfmfyY6yheau4yD
/IH8tSB5wEYMIL5uL9T2J8H5nucrsnS8wfoTn/mq1ZuK0nwW4E5ST/LgdSJrMkrnWkJ7YMx8XyeC
bWPxAg1TAe73qH0bV5P1sMhsthQi6OtsrwTY9lP/PtIx4zuXhJ2mN9yxYYTYunSgF3M5yhgZb/tP
2teHYx4xHSHthau6JpRnpD3h7iPgOMeKrzN+rMksk3iRPmjGIA9z739xgKujBqNO3kUrKJWJEYpT
uXWoj2sBpFIDSp3UhYImB3qow+qU9cX4jzL+YSdyzOlkLyQ8Ur/t3qfMMDBBcWLt0hh5s1Emy0Mm
ta5nC/8txMbfFSA6+Pr3V9PlWznr3UY2QxZ4GXi3UiZz5RhmTzP4z6rpph7BKmXudSrLoMK3J+lL
MLx4Ibn27G9sYdNwxjCubFmRrKIFgnQJE0tyBxw7309JoLBhSqxyHkmsTR2StwzSaXBvgUmakejt
TdyckyU9E5jhUnmFtRGguHmREX3Je+3kSmIXSkIELER3EJuKqG2MyU/oiVX4s+V0bA9jLmal27NR
sQGwNUoLcAywGUSUuatzDMat+1b+TgpgWSJgAGFILInA4/9DlzQIcY5P3wCCbdV6UBsPG9gArYO6
uVmEw2PkrWuXLo8zZzTnnF0UTDtKtQVGz/mqbRN50ZZY5UKkMKGRYLXw+eo5QqvxJRlD+H/A0bDg
LEneGpdQVvyA0TTEZUIossRCltr2PUOcwTPU/JJFIMdTbzXirUXok2yYT0ztv5/i3rKOvXvCO0yv
bygPrK3a8z20ceWe4oJp++Br5W98rO0uG9X9h31MqzwjNX/KQ5pVJt3fJyXFmzTzs2jZxMG15Rvg
9p3u6b7/CTed0NxUOT3cWAEqSgVaii7kF6PvJctNbSZ7rsikdlKueCfC7AjPnFnN9KxdHIu7tmXl
c+tf5Ikih/JXDufq413raUjFY+M2jLLrLR+e3fMHUcUyRJ4pYbYf5+rzopVPLHd7eYF0SNpluDD/
zenYz6xZf4z+HrTkg7bNbF0D1vi61JpVOsgr1++V95WkChPhg4o8ejbVnQmiCLsr8tGG6A+O7/MQ
frlEnp674/ZEVrprYWnTZTu29yLUsP1SqClw2dBq3EyDf1qoptYDYdSc44+R6y+Cy3rjI6K9wxJ6
yr+ZA29D1sBFD4wc1XaO1ny+LaVB8Xu6/VJiJ4DOei2K4SgSt6qVKHByWpc8uQF8BxQyJOY0acZm
1d4Z1XJkQ8ICdxuB7T1Oua4Jl+BNC1iEOgS2PXKMyUpsMigmVTJRFQVw0DHQP/WdqSrOa9PEUfPj
RGmIXc+QI4VNfkwgcS2HnJ9EKpVE2vWmweFELsJXKYrqZYs+UU9gfa8WFxhtG2c3FHywlMVyBeR/
saba/rKbTZbMDNbFsiUbHLVWAm5OoiVKIbqjoNCIYMPzkaidQEBOOO3xBVujqRoJbJRLTUXODZKU
6XSmJiwayYS0V0YqaVCDqm+G3B8Wt2JHXpDPM2koPPlJ2jYF2Crn8FVxnU/pDzvGgatVfqqUtkrn
NtY8uOgRVTdYDMAgE4Dkrt5Hcza2DG07NvwtobwcEVerFgk7qxFh6XVEtyyESqSDzdwUoIcuc8JC
7KXjYHBd6mPO5FRXzBjSFcC59yBqRoObAhU2n7nA2H3vTXSYtokADvx3FXgMHuMloOxd09oqn+3Y
ALXzN2CTLK32A/6P/wnf1ma3MAjGoDIdvz1tuj2KlM5iF0P7JkJcdrbQIa6n4r6lBxN4on++1k/3
YNMCQj/o5S00zIhwnsBZBQHpOpeeBff31d4FYRhIeSqpCxWNDIjhUGnNnlv+tdO0muISKWGH6naP
JpQuAA+3AyZ5VBuKWdghm507BokZuVc/Jlgi4oF1AF3g36PQfbO8W78xsC+gRTey9phnsV6Xmvbd
HoUoJfHw79BilikL+e+fe7g4PjzVnCpjdYIcqe6fqvPuk6UqJsshSpZ0e2lc03gmmI+tsrKMp3BS
s4LqgNwFbgQVZGwnr9PDRuRsSzCRsO6BbfxPGiUpvCQxk/lo7TNZKqMm92/2vA6yCOB5fW/9T4h6
jSYvoyqDHUswrL/g5Zixtsq4tqxcDzYFLdH5y+RzvNeLXwGzioMhe9nkb7IJaTGC8icvmEHNIDuR
/OMkWTAYGQ1mFUB/HLqo7K4rFsw21aFX5D5NTxUF6RetLrdhsJqcAIukshNiBzhAt8ZQL0iv+twt
GK0SEVlxRCNFsVaaEnfm+luGTPzmkDzJE3DCEt+hDGydytNORwWlsYeXhOMLKBKcilsn/8a17iLU
7X6J6qy68v1E+Ab+CV4XvNcff0+zQnmwsgv/IKwlda5zdK1OAojEqNcISHzSuCv0cKr11vFjlqGZ
0xoRsNBKS/KB1ykEdJbYyU/US+7yO0bqi+xH36FDTE9xZc+J1SM7ZOqBIo5xOt/1idHKkqIVSyER
xMsienmvhHzL7sqcbsVxYGkrvn5m9BUmhPAPkbQbyezTIVaQoznkEvr6TxDwlFd1MkqYKHUAgAVl
QjKg/z48wBctMaIPXyiLyVslFD/8lfEyOOwZ+K2A9mETkn09313hsHA17BhMt3G2ryVjxCUu5BAn
YNyGZvDfFUjQkpzjuhlHHToCljLD+jJXN1Yzdlt/pNDunLQ4uLV/DVuFNdDIuQTEx/n0XcBrEs0/
Gudz67GH0+5o/bJuzSKrdI/oJAmcGAIRsczdN0oGGT9MTX1ZEFO19IdK6fCQ88zGkW9OGiw2Ylzg
RNrL3ITKOayWzu6SIOEQuJHEar5CTabfG1UBeyyZqL22PSeAzvF1bxFWFkpenOs2JIJsJ1J4PPoc
LAKNKXzK77+HExMWhKTsnjaG+IVmc508V0VMew0wY4WMH+FmQ5KuchWswp3t5b8rqrCayBgbOwyX
aS2tSiUWW34Fou2dBoxiE+8F4OKhMzEr+YFUetIxwhi65sgouxxv4GFBWCk1PXiRVuylwI8a20iH
8GwP5hBxlbkejPeT0aIQOuXsR44YoCkYmSdlOyf19UBzO4Vv2pgZ8wIz30JxLE8BryXN+6/6Z+Af
JWbKCJTYpY3CXaE517SN9ypSqeGGhVu/z5T5it8aS4L8Mm3cZ+6wn2rVPAArfpiOwJutXxjMOWm5
/97IlHj3/R+pL5pf196BOXS6rA5fzP0wGQfmwsv5CaGvvUi9XDqikfH4COxx1c6KpYCVu/upA4Bh
2kdU58ugxRodLVTErq8ImxNJdNqgJI6NxLmhR80SqcKMFcdqUeZs/sk3hvzUTp97+j7USPwvkG36
57V+0VVIb36zAsmcBi5MbWsSx3DiyL1Kh7zfcHTQnceVKLdlQge8c3nOoYyLcniETeeHdURdAw1o
aR/5NLbZtm+wl8GFozMOSF5QUs4kjI+YST2mGsIpjsWCUB8jG3zVdkGdmVakd1u5IravMhIV5we1
HdbPXSMrdaF9boD/Y9o99LiN6ul1i7AMb0rGdBX5z4sHsz1kD7+DtOnP2m59FUBW+FVoFwzfV2lI
wX7pEgO3GahUqSFv8hLebvQqqvcczWDci4HFrdAv+1KBPCled5CuJeEe8/f8waBjvJSOIeWRYTi1
wCR7j7b/U6wHn4/Q5uK0pA/nTbxfMvmlM1ReQg5d0EBJNox1N4inC6vstTF1XwuOddWZtQf36NMV
MtH0zvZVU6hH4IbcAUCXcIz1qTVM4EFing04e4rkFAZmwdviJWoBgVugeVG1tsefa/W1KIdHKNmP
WRSg4KJ2yRIt9XzoMvPYreMSc461BLitJbDm+EBv4b6oIjUI7PXgHQ+FewhX5KUIw+4SMftUDd/r
L0YqUvO/ks9yTbmRNftIHX3/hW77DEQqIqBNk2BU0gok5L5592pi4j4UKs2PA33/IPSbobO3ewAC
8IKmmTUehdOqEf4M7kSUJoVRJhHligsx+/BhWtddjuUshrN7wGGt9Jgmu7R3rovZdN+ANxlyLPeO
VWpKHE5GzY3/IfCyvKj6jf969xHp94fWFS8cQm1DxcX6S7+IzDfTyjxaWtyQkQEImTOitB7K6cMf
G7Czu1wupaECvq/smE1JW9qU23Rz0zUlTZPRYg1xnmhEp0ou/b72aEjkMnYkdkyXZqKAx5C8Jad4
8xMGviO9H91/Zrg3rHd7ZmRzfD7Pn5mGFzmPzO9HaY9vWDtdj83y2njYkp3KlESeNXapnHPOZcqp
zQqNNwYgpSK5iHwa91JabOPnm9lyPACG91z2044vvH+sL6VVuK08p9psymc+VYMD3847FH3HIfo/
IWuWEm9wODs8AKHjOx2Ujuv9ak9DaULAfeL2K/5w8jYIUazmSZI4zDbVGD6+Ccz7D/aKIjSu9z0D
hL1rvBuYgQWtSsa2UOu/xzFXLZua5u41Hpdl6aK763oD0aohrhWFboyJ4w3EEc0nP+q2jgeCgKk5
AtCFz1PiT4ErWnZabXWlBIgXXPS/XYg+V+dV8JXWgjzBjalD8SmMxLRay9PEZQdEaONggiTSMcGD
VaMm2qo4qviHPvJgQOWPfGU1fGSz+vMIDLp9hGg8rqfwHQNzV7o6y0odGkfb+hcecLY1gje0boBG
1xNWr0jF6Qrb/G1HEKJzay3gg/VsTninnM1t2auUaX1MSLnQRzkXXhTWSFYTD0TZDOw9Zj1NtV3O
ZRMQxwH6NQh5INLDNIJW69/Q5cbz+PRR9oktL5h5i0l1pe0AUH1Sm0XZB9upVIkJIID6PPLnPCnK
2rkq5ucNNCj+mMLEwqkGKotmf/m6WovjxcJGXPagPdvhceATSocibDH9cyExT1AypI/S19ZcR9hc
vAwrRyMaoqLDKz8GrAxYDRDZxlDDurcAooVHXuk6AQU94amJ8iPFGaXM7jLTIFbBQE04y4DxdJkQ
DIksUTc9gs84xP0F9nNBNBmV0YYTigeCINgWtbOo5LVwGmn1G7CuA8VwimRzbdbK51IuGzK8pkMj
bCbkykJiyBzZ7dS0ylOJZor9WTfgJYa1oAJHcsVR9NGbFji5aJgEFHybk9Z7rhEh7npmKkD2AwS0
CfdzgfLM43yfN/3yzKj5MS7RpMhqdjFxIuICvITj84W71N3p3zAKRZdz3YvC4BaO9nQymco5aKMw
OxmrsIr2LV3DJX+3CDHYT6PQfbIF5MTR/v9MvExbmSErAJhngyXHMKMPiYUIzzg0Jp/3Ms6KIhzk
aCnOAA9qb7zZmpky4NLLX8s5+qFgFLTgiIkjFFOgvMjie1oDLl5r9Mr9FOCVchsWvP4oU2suhLkF
oQ7xfJNr6hI+vz77UwsMlNNBBB8a5Hd+yEg2iGPhScSfOg5Pn8RL2zMHAvyFplNWRwvDvUAMbgHU
arQpHwkyZX5qbV8yLeKRDH/OIvJNZAgZKkp3CvDNirBBO09ScfD28Pp81GV4opuf9OQ4HA9qHA6z
p7OrT9n0T5eAMPUX6yZgTvs77pvf4d8qgLmiTifEccKPbntjfw8s07ENyVW/tFDLI45I03n1Ufmy
2aHeJdb2SRuCayLBeZVIwdTnrbbbkGA/vyzaVbjo2u+PfMKHTUibh2NqHk17Ia/+YcqJyS6q/tMD
q1Jl44HksuiCpMSq73WWxgLV2wj9ydqiQChLx4wrHKmMqPaE+ASsiUerMLTYEOV54bf6RLaAARW4
kRzCgmcMDh4wHyHEyxO8xDjtKNYqh2QZJYC2eVJnqwhAkCrDsfRZ/BiyAIDSN2DSF6kZLL1qkXw2
uFkB86If88T2kIEGblaN7sY7Oieg6DZyUr7pEqhg5/oBm8xH/znLR/pQtt7ly9VGDymxlOverzL5
dRuFqV4UiOID/qjj7Y4qEdbiT/99MrtJiVSsgoGm/DhvKYYkAp4yiILfiot5ID0bNJyGVhyxYxxr
kVJokCkE2LlFTMEyq+UD7793VA0JIOAEzuSIfTkwjZBBAlGB1PZIvNbD5F/GjiwYx7iqTpeGATpW
ngcAY5H//vs/dxKWWqu5tBxHCHz5zx8LwoLs/484ydy2y9MxBIZJDpo2IaZLJGvSADZ0f9oPsiyY
vKRaOY3/vEQ6kG7l3gTI63TuPt4Om2isrhGCau5b+edp0+th6lv7c2tQZdFEtQ3lZ6AALbh+JjHK
WN230cYGBk6p4KEMujLGLIVKy4lrhpVLoFK7FaZXExZP3q21zZ8r5wiDZZGOi3P7F7Tz+aAhwwpk
NUTUnHU6k8qe3oHtwjgNY/Tn/7ChYYJrHSYfDYx4RpIOgVgXtTXwknZYq6RHrNkrZn0LfbVRSz6I
xF3UdT9/1qSP0uyBwrcdqycDThbfw5EPOPF8qIazgFwvB79upBV6ZUmAINSzVOeIdJUtqxLrUT7y
3ij1wKo6xW7TaO26Ezg/4+YzP+VyszcVI5YD5hmBsM/dpr/Ewsi5vfsj0Cc5FCGxRRrtCtl6L55X
2T2/BTd20k5atVZ/Ki8sMPvWhJnWSu5FuXSYjmvaD17fnI+YvjADXYt8tLdPZ8Q5vzXED26rfUIY
cYlNOJG91ZNbBMT2FjsLR+EB/uvc7ZqNHpi4TDdaIzIv2UnXJjco8GBt1dr+LK42UdUQSt5qtdNK
BLU2D8oO0p6qyEs5aMNVs0Gd0thSiVAXnaPXZ6VtGI8ED0ZTQewcxiaXdTQxuUz9qmThbvy5zIVc
HFYhjE5HQLZ5uuZ2NRD5GRwRnL5nxmBvEaiqcI2+bd0HiaJ9cHI7n2+GMYcrQ4rsXAp2LKFCayfz
w0wkqs24NiIT0niNd62e8oUxDiS9YBm+AIM743NS0QEhCOUD59LIggZRtSBaD2+lecYcSci5fF+A
b1vOoxPk9+tBmJ98tF8JxrKJaH2PPk/FX5Rp33nXy5KnZqpJkqOAl9V81jfV8eU4Uku+3klcvy59
zVa+EZvHoW+AjMMiQGMX5xAiuOpSUv8TH1bhlyHvnnnFK2twjuMc/QxUyLGvi2mo2VjpG7BK73sd
VggznEXOjemWmIw9rc5vYDLYib9RPaHJsXFUGV1Ip2mIgc2NHZW8EXP8rylQX2NZ2x1/KZmoc2r5
77wJqcRPVMcngWQAj9pS8zfsJApsjCw2dMiiX2Est8cbVq93uPPkVsYC9qVnzVI6V5XPRVAIHkSf
GcAEnVCTGoDOFYyPk9s2uq9PvvNXKCkJVoNUVM0WJtx4/W8lcdRfTaSgJGe0FzUNHt6ZYRrjphei
dhRH/L+2vl4Ar+x7eMbyS627gxifhnFHgYMMw4xt+peaSG3JDiXmxRVrD3ORxsVS0F2xGZQtjTWW
8o1qPi1ZjmJnueVbM6UlRy9SKUnKruvmpVPJCT8BaCi/zMBDdAvfmZsCousVj5F6DDCcPK0aeKyG
FYtTEXhqelP8XenVSzMXD4vFa5Cq3qqx9UH0GZ+LKbY98MYyoaoQ3NzR4VOfafJkvKJiC3DhbBZV
311KjXXRYNohn+woTGaQjt7F05aUKH5DVEHBui8I3v7mEU3sn0iZ2xLcyo/YoFQ5KiK6NPUfSrEv
fxbVcbPzf7ggwcEhjIKNkv+tc1btSd6B9bXi7vBVCtj4QiQF2yWzmaK2snBXaCDKXwxLJFZ8gC+r
sQoIuFm0ThpQ4Il7j0kwJOKfCvgmGb2WF1Xqbq6hSeSZC4F7FRTDvYTaziiUKofYXjVVXujumW60
FvAOoZRXRDzISVwgsMSi9Y6ZCKj3KZGIgyOTOWaiZnZWmGitltqfI4z0veJeVaJSszmJN3ZvaVkV
3DJLePfxOugPGHl6GiMlPExHZAj97WT3WNkJ09L1dgYfi4VpuNgxf6TWoM/eGg9GdSbXV8iEeCMI
WqArYS622tYljDe/pDQEtsBQW9tb7uA/JKGvDPgwJ8orAglAfKUzZ9dlHNxNx7cmemdqsWQICvgm
xAbUhv6Caws6YcIjlCoetBhXsCCtcAKdlL6pGeMuGyLydel3vMuIzz9VtntfAo8bocbIaBX0AaeH
SKln7c6E4XkcT9+7AXTWUB6rbCRqHaqvUSdKI/71gXQqHnWdKso43r7DlJIjyyWmlVa4Rb+sViN9
i/LpITswqVEVPw8uHXRWu2JuZnj9nbquPA5GVCH1hQ/7I6QXhBayrUy9speNyozDEYyGZOmh0W9o
JfJTSZOQxLDzWT22fSw9odBYEZ7iUJkGPaH0jpuYwgEIQ+VqXEBqWsBJBAgrO7tlDX9CAgpXtXDe
tfefch7jJsqo/Og2Uf3RbAjk8dcnOS+K78XC8CWttC/WexoklPDBwehLJvFHGJDDuK/fJHK9ncAX
JCPyw34ynK7Ory4yupcChsnJh5Hty9WnTtnrYEYRMrw3nIR0zshu0i4Onnd3k8FoeXmpOlg5CX1k
/8auXpxdLThmXPdTkv0xMHSuOj9z6nAwFwyqzBob1KfskHI2W9xWx/8CZVl4LAr7BpAj0lG+Bvx8
2RYV1foiuYUWUS2f/tsDa+V54OtAU0BNpCXiyzCMjWphV9OqcET2Www6fv/5UdacKKDWq9z3x7+A
NDuml7QLziCrOO9v1OBw8J4YJKk2FiJFxs1yk1WKUEWDF+3Utn1GTqEl+/AugXD0aDWyIQxFnOPI
zIlU+aCWrh3gx+wdSjKOS6HBulmt+pReYqV4UdSj2ruHY2j0MIiJBoQzBoIMZVQZk/dRl7w4FJMm
U1ozNBVO2YoYnoKoazPooV92QTh3aOYn040EtWZXMD6zvLLRMFcRKDZJMRWPQPsP6x7Yfl8NZnV2
ABDmABLMh9BWbH4oWjQXMqVnYMcsTKqqnsRXrszy7Fy853Kw9Wz9nm+gGgbi87TPXtMKCvssYPR4
qIy37Bw8b2lmTPEWMYNU6LsX3oR2URR4Dkk8/DENJFULnsu2n1PV6isOts9AM1aXuPX65AH1sXLs
mwthllabIVayi/gfF9N1u0ywDb+oxYzYzx95vlENfDqDVH3OiC1QbJLG9EUyOexmySnAVTLw/5BW
uD7VtbwjOKusQD9x0YyukcPesNAvYuaBnvxGFk/G2xN2sKsSyMt4Gra3Gew8m7NlPio8BQB03U+Q
PfzDF6wCtu8bR5sAqovv0SjsLxaz4H6+Xy02HFdalFhiP8HaMLbaLJfFO/zMxRd3O5VF96v12lp5
Qn3O7ZqZ3EkPJJcN06Q16oRdSaHsPJkRdyXnbg97eTKLtL/YQj5CT/SoXQw1XFFNtDdvBMtRGpDm
YzDrQr/gZ9t5drP0lc9uJrOVM8zJLD+lWIOu7Zr53OplKel+cQMHd3o7pHs2DmhutcdgmdXqVxIy
YSRanHPpPIRQGJB3fJP7dKmESiQtHoYJJ20cypfpLBdMjPbLk8EJms5YZWJezidPAh1BSTx3uXnH
lW/AwiUeA+ztyl2LNy5SCvReubUsOJjTnNx050d1SSxVwoVTtxJYTAFBHSMrVMQrrMudV6Exxu3t
XCb3c/AMoJKacRCsHgCtMvENBB0p46U4Qq+co/gNJw81HtIp7BET0aSqgI/PZSh45uHplKssb5YF
5iPNcGiJwNIvDWCN/IUXSVxLf7WyHmtHrzWClRP9edBH4ZX9E09mh8CW+K5ifjeZBU9cYnsO9k7A
zz/8dyN2RYmVC/8FrN4NrbFJTyWy5Ns3qSph5KG1UNSUlzP773go2qzxiyrat6Rhw+5fmCptsXYG
jqdQSvf7/F9i3wE4e22pSTrBfX4ojr/VHKcdmY8ipbNFl9B3oJ3aLXsXW1Nc9N4qFjK1nqM1oi8y
psc9K0MWdUzU4KBDX+9R1cKCKx1vlQPQb9WRLuVxuEUmRH+/q+mCFhZqQk89SJCXnr/YIebFVY/x
73d19Habr8DcvEkai6pClUkeyN1uryS3p0JeRoQIWefw3qO0ypB/Dqx43UhyY4T5p5n/pqA+n6Vj
vmeIDUIQhQIHrvDcFDoVtC3UQ2oao7MNNJ5L9LE8uluZYZre/fGfbH1+uaztn3Mzpzpo66O/q/Bc
go7wmzwGCavtYo+kOPvwwr+gMN0txjktsg/OWuF3ea0PHkOFEbMqEBTc1MJ2x/WUIrUwiWWn4g/l
J02W+ZoVMungEJW4AyGXEZMkutLiI6WOg50+TmB7Axan5o40ZHopU8Q4AoEX0mz5/SzxWIhnvaEy
KUMa2/+NhAZajG0syouAsUWb6wILYiA2mnSOnw6zBCVoxoQ6IeCsO62mD/SJXnvRVLYTNPZwZjOP
8xuhd92Nq6hbdLurUpC1ftQ5cuaRyP1mjPTjfbZc5d0N6vm89ow9HuTi50yr5J4IsUgPJCYE3ivC
KBNlhmTV9ibskyhb1nca7Ku+JfoBHtFBrfAOmQdWduqK28lkTaz9kEV4CV3+1T828gRUz2Db5wI/
Y4kBIODWHz38imGy4b9NzFs1OlQGrnaAGTvGTI7hW9xsa/JkxgWZ7zIZ4QqhqI2bgSt0KYDxA1M/
PgFQBTLi8zq3QhNt8RBKbybT/l/SFy00gKUpH2iRPc/MXQrQOUfhEC+DbWRIu6lXkG/j7PeZfczN
JdHoBO6BX6I0ci9cv6xa8AXKRySJNj/bD5v9VAS0eol6DIC8rViHYTqQaku8Y+GbFwIJh+YZ/9tj
DFiTxXsZs53ZFwFnT0H6zfMFe9qKNq9iU+M/EgmcsXlB6ICpKkCm29NapVdy1q1o6GAjfhZdq293
hinq4RcfDwk5QFoddsuBiL0nukdhMQ7c4z+bwr0XzumVt32Pbdns7hMNof5w75z4CWhL23p0hj8+
alAHgz/nSDKbJWdUthk8wGhSVrbwWpVXCted72hbpPnRwPRIqPZCoBOARcJ7AnTGCwevunqpr/qM
IuAxU4YTi6VgjpA7wWd7eTFDoXdCUC2jBqo/OvjcLTf36uPoQ4XWxSkHjIoc4LPzxOdPZJ9U4Y68
MKicKl6xMXkWUOLHh+t1PV2pOqzYLpB9oFWFynQ6HeAnwDoo+gQguSQYWQN4eh56Zk9L4+HNh7HL
pks9ui9xMptyuHhdXrPTxb0vzV6FsVv1Ji3Yfjwxa8RDnUZFcWrZMOpasWixwNWNjIIWTx2KZJzc
xnuSLuKNCANsXuOR0sI/5NU4VGD4YR1XGS4uScRYqpkAW3++F9hBrEgxH9nCKx/4rCnsmJ0jKCEQ
v80jlXzuL7fhZCfcbqx00KVx9MMJw6UIwFe3OxDpwc1QHVo2J1qH1NjWsf1fyGXKbHZsbHbZ+KkA
U0+iQQvkzosfLrNL4Bwp925aRYlqffpma7fepFaqUFtbo4D7yTPWnCagXPhIX6aE7Kq3UbirjctM
rCXkj8FaM6rxcDJooK/ec14AcbXS7pqev33ctn5EWqZPOM+1Tk4N2Dykzb+7EhCfYDAyLoJ2vR3K
juYApQQtbngygFqco6tRh3lYW1YNIvYsfiIOovVLceqe2eneKFIG6wV1BF1zUyHQbU7y1s4mL9Qe
BJLSBEssG0DdsNxF8JZxeq3elKgFTjaegn7FcFYgYVOVWI9VpFMrFFX1C4DcIMkiTM7xV32hzXUn
npQyph4mH6LIA/8sJWq0CqxNk+kxsO6cFQuhkLdsuLKnNtcSn1CRmCyUeS1xoOcuquTQanbqU07i
2k3NdVkzSQojNYRMC+N6bgTwQfJuPS1OgXLmUaYBrhDSD9HkW5Ua64K3SvKgF646mkLermvzOMGr
z8Jz99026kcxEtuL66gLmZ2C7ZRMwMK5Mv29uS6YnW/qE8PEXE1UpaqeUZq8D5yji5VpfqUkFXDt
VZfmPYvXWzVJFd9le4QfEFirrFfvvXcE7VXeAzCIxvaWRooJqgjFpacjQwqiPaTuC7QSogLbEfiA
xiby+lIMsQLWIbMDBDFlNTl7LirKcvTAYeYjtrMW5xznqJhoifeOgbGCaVPKCXs5B43zdFu0kqd7
X91jBjsiH6VoXhOIg0eY3kLgnnjoIlsriRp4AL1dUMR/GjGjv6Xkxcq5hI8m9VtIWl8oULLn5W4s
qr30Kmbf5IdtaKZGSrBQX0Qj0ui0U89awIVgOS8I883+iF6kwuS/FE/a9UuzU6BKZBUMLa1iYkyf
XN5M1AdkTuVDdIgz92gwZ2rtlS2ky0Z4bGHbyr0wFq7yro6HhL6Lgq1B6QEoKZfoQ/4UHXpFIVSs
BHP7xmdWC5jYfDNEmger5EUeK2c58oFRQE2Ibx2vOAhjkN33tPY2ozbd22Kgavqvdsq8RrC9+Pz8
Z2nMnljbW4AwX16BWr6GCrdopxSlbf85vejcOJD3mKPEHRf6Gj0HItVzweqzdwwoIU+ytfPuXyw2
hNKlM2jIVmJyYrOvCGLpgaa5/ETwcDpBy+fLGv2WnKyKubIo6g0WrFsn7fQPl/I18s3O/QWRC8TN
4wTbWnatbprPbGvmNi4Q44bQImHQtUYCIe/wmdJeUjeFdOXK5gTjGK5m/8xq7dUWeNMR73hHSqPY
atdYHrKfpFYv3fRNG3S+YanrU8CMa+XurwHWcHaG1qVQeAZc2xuCG1izo/LbO2OhabLpPICWIwRF
xpZ0G1XCupWzaC7lLqdhTvvwLlomcU6gKUFQhhEGmOugaGyTU9qR16PsS2zEswpaWpayvwuBajxu
hwFWdDwKSrLDfRjRP3Q36vENPC9DUFMqiAH0vkqephGEKrgZtmjxfeQV2cGJQFLxsPry2BbMwDj+
BWq8JaDoDAaWSZv83tedkMyRrEYfYZY1FiYgSgKF9SIvgoRWDWUoOqO+gRpSWI0udaOtf8nxo5Wp
vdXUxQVXYIr6hsyXmAjxvuBSL/V/Xubh//tKs3o4rnCQyurjeGRns+ldq06KnzmNB4zvJCwpY0Ld
sl3+TwTdmOpgOFPpUnHYWsn7B7At+EXl0tMcTYDoJMxBEN/ULtc+nLmXcV2QnJOfDSiuAC5+jUz7
WcKaKpkhdIUKfpUrc2NKI2JIztPVw4o56Sf8g1tO+8bZczfn0nOayH03e3EMsMYAdPxlaUWCKCPS
leipXZE7o68MJGvZrsMw1H1ulagKSDd/acWeRybojpz63XTgwBmGehNLKIWHYzO39I+D85V6n8Ey
Zoosq5/2kwdVkkPsp43OBKJTaL13zZbOPxRTEy2xwQodfOkQ4ODtQVWLKEte8URP5/hoDG057M4Y
SA2XyeVBZ/Me7OLzd2BMwYd6Uga4scCCUhxcqUJ45cHF6KwJJWMSvYZb24cJ45la009Ap9Iw7hK5
hqwX7WpoBmtikx9MdvtA4ekAYzS5pxffxEWFFSO55l6CX0xAXWl+jzg9o8Gm0x/pfKIVz//T66le
V/QIrSfWljBAWS3BdYU6xq0qICuV/lhT4AicN1/VQie/sqy68MmsOeKLDf5YRMY8fWFE3pXP5uJW
ZylqZfXwhS6hRFOEpeLpRtXC9qGHXrsZHNd4QVF0Ru2GMlTMsLLEhe1b5zUFte0yJEtJHGZX51Z9
RPKI72GZmnJp6zzloCnu2kCiM7gcnESUCFoJjhjTBUw4TagJF6iuXyRJ3WCJtdtVz7rwZq+IS4SB
6zqfhmcTGF9+EIQqQWxzu2XJSxOxsQKWXnuZLq/k1qUlstxx4puWflk9Uk/wh5QJPSwKz4wjcPpI
eD2GsPiuh/wOOsOGvxGZitRW/z4dCYY4E1Qc9T0wulI1IvpBn1qbGnJtLEZSeOTPA5BxZZzcl3PT
tyQ51Sq9wTbxvcN84s5oiHufn0vAHvoAZnmez4VQGV/4bSG4UsFTkm99Yamsv403u3C99EIntAIe
UQT+IWTdor3+UfdK90PhAHePe/Q/VM0WcI4VnDWqOenj3LxKw0KGuVqwEoPpAM3lP/Enk5AOqNxN
rljjVH8jjEY/RkHywnRO2VYFw4hmUy0MhWyuDd/5UEbmKXbaMvJWT8rmxhC1STV2Offy8muMF5GU
R4JZjOdau8hKqivCeYy0H/EbaIWWIJsLgWTTTbWdKZIktoZgr82GjvlLHec5ym4CI6rPonenS5WD
lnLHJr8vm3T0xio85DPlFO5sQrtCkV0osRdSebtd5NxiiJkZw0uaZftrSwVXnf2o0jdcLRv76i7B
NrQUyS+2k1QNt4jaYFzZmqgAgLadrAs4rhVlzncC9I0nTuxjs+v0HHllIsJ/naAuVgcWeN2iR6Z7
XM1k/RqQMepLUmh4IkXU/7UC3mhQZK2IbzpZbAG/zsz/xd2xFkpmuJrcGD2YCSiRrZFcRUsntBP+
jgZ/4EAVm5xFANtXgNvjnhMd5m/NJYce9Iw4h5pkSgW9tibEnik6B28P6i7vVuxgIj+8uIvn9d5H
CfoNYzUN0csXcsWfnnkvgvIlxkYoOoAsCKi4IGLuuw8UHCySLTZj+y7zUu86MQucEudFEZfnJUUB
D4L40HZuM7finXIgUDvJANFtIer2TLy19eJmRT8yojh22NbKuk6Y4SrKi8zMT9alCLIeQnrqfjWu
wqH2SHBVF/n42WPBxjcOhslFH8DKnzPiw8isHgvY71Q/6cUhECaouQ5mPSbHuCKVVbKHfv1Fn5i1
5+fgG3YxT71sviNyxU1nU6sFFQZNrW3bTUGza7A9PPGkY+M4pC/27kh1+OipwA3lhxWqLFTdrzUP
4JhpoLX75GPEHjGMEec6CePvf/qPUgih5u5csT2nhPYA/YgCgVdaUW2t6Up6rDqubgI8vyPenPTk
bsHHvit8gxhPMmu/BvCGysip8sQoLSZmX3sNAc6scdfnR8Q5Q1wPiRAZ1MKSYzsdo1CyzggkWDcA
1wgYXqAf5F6R9EsjZAABg36AjhYL2TBNWwWyMKkIY/a9nyIRDwdxCVWRTQqfgZGreQvKSovgiR2b
bOHsGj1b1B615wVsVOc+QCAPh6hTfCLwgrSg4XyAZ+cnb2bEkCYfSGodUlBCDzP3TxzA0RG3ZOyq
YHEpvjc67oCmyeg3Vepg7YATND3YIIUx0pEwUFHpIGax1yE8NfVO8HrOVw8NbZNDmfkGk1DUTQmS
HZFiOkq3X6RCy4ziesEEuhjqOfrY84I3h2o3bqNyBvxI9BIG4+qcW1tRPmQMvDq9KefwrThXI1zg
6D6smjLUHeflpZdE5lszUlYPwDR0XqZ9cmrCHwE91Qbsj0KKrewHgEj7bLJlRog39eC91ekKlfuB
7SkZChmn1k94zV1sFarMHRBfuXqjeBweMU4pl4mjt+T/la3zSgT5QcFEzJXyzvdlKHx/0+ueM9E+
HmOAi+nu1EGajrbMtj+nywagR22+ibKkPIWzbox/pEKVn/7SfalCI1doRsPT4G/u8FHUZHB8PpBr
tkqjjW8lCcTAnK8Y49HGs6mSbbbXUZndUErXAWUWplDwqWiFyCJfj7eBROjUP42gKWIjT2s4n/RZ
LdrpAAcJI8RYU7oPiIVneJ6APxSi9OG9GBijE5ee7TkkUbSCw5onUrrOv7f9i/dYyR+SOKwdhnx7
CAFcQu0mb9LXDhDdHWXxvy9/i2o6gNQBSew2S6ZWQgk0rxkTFE1yBC3JObFIcP0tfJ7TeWvREuw7
YWwPSFSVtXZrCPuqyNMTLluM3Vzg31uhqMMKJXUQBzxoIzpPtqiE2izlz8ClD6CDKp7DzakvOZ3P
G/ru7CH58n1liZP4Yn+K8KSAu7/BzuaoxmSEWBC9MB1zY6x3gAXxjAss3B8ZqkaoVDc6jhzjiY/w
o61UDqye9byCuUO4aK4i9VqdE4P/zmDxhKL2J+bwEC/UKLu1sXQDtLl52Rj4RGQP8INT/s20rjPE
PpEPW5yJZd0SkOA1WOuqV5emc2UjNiI8GYe32TczWmGuDiPkT/pUf7lYT6D/IkgLl//FdytzbdbP
paDyGzD6VI6lcOCpdWPIBrpPRTTUMfXuVqclUNb3JjBcvZfgSJruTmap1OXjXt5057xyROZIwB7S
LgOCJBOUqjKW0S1PwrxbRkPgdnKPVpeRW1sJpAG6tCEfFydneOw2afcX0mRrzVFW6+dr0JVOADcL
shMv4/4R9ylwaLd1euW2z17FjcQgN/OU7XZarJdcJZIT7w4axEnZH9JD+XtvBPNFCgPZxDjKEg66
Fs7RJR+D2fr2TCZ6jEIIdp6y7jMrG9ItToZnvjDl8/yZ2hndKJ7qulL9yDZ9gTjDE7If5Sq9xG77
zCirlJffTS6y4T/5TGYSsGCBw4zixpuZFj9sKYoU3y7QdE+qRoEmcgalidpd3FgHWv7eo0oDd1YS
Mt2fDDZ+j9irCfNjoHZhzRN9L6l93r1reXj4GI3jntSNYo4szpGJn1oKeAHJoBIfZSlHJEr2br/1
+LuAkd6Npbjvk44N6eRW26CjOX6+NdYsGGM8p5vsu0HLIxIUPD4qcs3WOe6wXemvSennRUKfh4Ay
cV56pidps5wVelLIjNkcvi27Xj+2YGP8TyxzSnMI9oK70qMQq5xiaJvv4/wXF0TqiooJfRM9RgT2
5DAZCaH2yHg4hgGW6e+M/O6XshcHu+RwTMFzYFtbMqGRsKnQY94kfOQmVGHABEwvJuccqTtK+EFJ
yTkAfTzyjBWJNl1cWsLMPSeBMD6mWogBl2VPvLkigWN+0rKYKJMzyljPHuyFM/M4Db+or5zwUlv2
hq2GNcXyU2LKKcK3HIVBa0XVi5m9bbAAQJal+8wat5K6hQPfjADBDKaFTuLCaKPcTOqnD+7TehMq
cezMe30INBvXFCJZNCR6DoB+XQSGbsJq4mAXM0vPyzpZMj81R92MWO3hgPGyDQhkSI/Ee1JFL7az
GPMazX1JGOAtX1mqN1Dg3F3c+nVf0OurUqyz3qcqKdY0pdav2Q6x/i1HBA7U0L3Jvhal0HHSTSpu
TO5UwqFZJnCe4q4eNig6tgs3/MkJcNLcFYCebqto+6tYFaLfTXpjsAqAMT6gLGTiAB1u1q7tImz6
FNGQMGg4BACPDtqh3+tTRL3Gn6G6NJy/UW7Y8BhD+wCstt22jxfG56w5oF0FwR41oWX++3vxROKg
p9arV0qde4NZtA3AZ6BbrFynxY6XFAgnL/ykSIgurxkLhCsHqv8IImJhAmaDv9o/bUzGSHlgK3j5
ibqGhAGMh2UYoy61r7j2a+rvKie9c7CGg5UiUZLiLqlB1Y8yF5RRLvXk9W8A6QpcTVeEK6KzEqp3
1EbzfRlTs1fh4EDKsOIEpz0fDhDGqU/9PWbcZ0lYb/qR0SQjuTVUGeKV0UCXDa525I/ipMRjDxmE
DoAq14DI20d1jurUSxHWIaW161NISt9MIP7lz6NTQa4trUz/JxDljwl6q0D7aFz9/uIcQAcfakv5
BO9LpTOBXbUBww1mbmfebZnTxdFw9LuoOWMz6I25esXzUO7Qleuu8L1zGSmLeB5gnJz2PuLFNvJL
PqOKXp9wpInknNkC2zUoVoJErg9VgdMpbaJd1bMPaiachNQCz0qt9BN8c2kAYiufKt0mOWAnSyZX
HA0GWVxop7hg0KtqBUyiC1kDooAd1oGcqgofuxxWEwheRq2qjWFK1msc9l6850+znbhzridz/r52
fd9U3Hf3MKIo6t09A0S0wmUGIRQC37T7BA4Q3Bh/5XMhsKV0F33PE8n95kk4cqWEfsVO1FRLH9iW
L07XEFWbmL+ZIi+gczG3Eb8lht77bXGxngXYC0cARKqdKerZEEFy1DwEM8rfPc0WfBavXROYzsTc
AeiDA8KX35U/3nDsoUcpuwR9p4ZMtaJPrD3ppnxdkEOi4BqO6Y63/bdV0dcin/Vw+IqDWNRI4MBH
ttAis7UHxLxn0b/qX3agNklJHgP1fuf6dKqVAhJHFBzB88pTzU0O1Lipkd+xzAff5uHpKb/7QrhH
fIl1ti3L8priPs1ygubqdQIbu6CwJrr4AqExNEUxptSRIjcddwcR4SNdFLoS2PLib4L6x6zUXNU3
CjsJYp4gDoTbM2f2opeKU/bOYvHqbXGxKnT/bH+fUAyiHYw8ZAYNGW23nvWVWVfzMsYmGlnwGvZa
DskBqqvM2h8vC+w9GZ8hlmzDRtB/CQtDDGg/s+ozHk3l+UQPiVTcm37kqz+XKYdqfPicEq4YzV8h
9EHhbZ4/uVQFTWjsGZV6xku0QpglMOigSHRh+12ovV2W6rGoMFkJ2xMJe731fE//2UBKg+P5bwg+
uuwwJks3Ignd6dF2wYsRHAalkqmepxaEx2pkEvgKYXnxUgvZSoL09PomgYii9bLkWoqnoiU62CWr
U9meEM7l61XKdaycl1n2YXzLqr+NgoamEP1P4UZvk8MUxIiR0Gm0bo4+XYlwVsS9vHwH6TGuHsLk
GtIXByx5us98KqzMltxiTviSkxy6op9rdT8TZBSDTtYFj61rprxV/GV8i8zzJLXFXXDDmaEze/SV
l4RLzdyyrywXVjmb96RjJQ+5EiLTiYhpKEKikTU+WoIva4VvLcWY43LhWvWnhoyRCCZMrHqFCsrt
NSPT76xSd+xdLbIAsU4rFga61RkYRYYraozjIR89VWPv2hHl57dPPmAcQf2Rg7CF/Meob13TQbjw
IoArb5hiI79uBL6MtN36ZqfNfTFw3izNJBYaTJByCq2suCp4YKmJmL8NJbaBYBXli1Xiwu34RkcC
IelZno/0CfX8Rq2pFmNN+7MfP12CyHkaoeqVszblADTpsXKTODKu4kVb3SIof26FafbcMm+Kp/hI
eC1QBsTwBNjjMuhVQGl76g/nA7x6Hn/rhLNClC/mfqOqC4q6qzT70OtD2L6sKFdStpdE/YzLDy7k
j5g6HyXVLdQPlUSOd3Gj9APTOWDrQgsFxDTjDF7BXuVCsRtX/hLFEe9niuKLpvnhHKpjQpJNWPWP
iVF5blTCclxjDEMzIse1HDTUGB1rwU+DZS+ptIkC+oRfASZQ2I3+70vPOuvaZzEU1OJmIPcWA4UA
26Q4FWPB6n0uVsSp70m/HkB5m0RRdTOa8I77Rj5zfAncQTqZAK/C/NeHYtnBiac1xq8hazUx+Rgk
xyrQoavc/1TswcUXBFJkCeDjxn41zQomXFZDjxoge9dVNYmmtArAq/hWLkr6nCGFTECMXiStSjkQ
AcSHss0o6dxz5TrGofgcqD43YwOgKa35IjyM8DzDxM8PZcY/sUFKWLw+nkNB9FwGDIES3zGINJaK
DlsiaKbgMTUpaK6riO6QMQOAGqJ+XCmtJY6YXj+R+z9XDoeW+lJzPMyt0qu5H0p3tPl2bOL4xqXG
EpKV1At7jYcdOFSpGosyiWaL0oryaTrrnr6hCStFlJjX2717qBiRul9z+TnEcF8n4trldstyql9O
PtP8z2NY//1URSLHSUyecEPoikjFiG2zSbftabUB6NmTxVCN0S3FDM6s720lJ+YbFvQCfADzrQXN
C4nD7fdzFtrrVGsHfB43oki/JGDI+2ox07qo0N7In++btbH4tKYqotbcr37bfk6myVTY2rvEFCSw
NlWnebxlDX8s1CdRPEeDDF+k6GNV9FBC1yECTHxr8yGR/mpD++eK2Duw1+fadHmJ1ZvyajGOumJZ
wEYpOAQSAIdRPoXZdKy7+Ezsc+jUSl22xioxhYrWPZyvZq16QERFRGPgCuPb/MJG9WUXtwRaXfz2
UQ+TAM+7mxLBUC+niwk5zuFMqxR5KIaanx5tJ4Bkc/M+25Skyjp2H6UVDq2IFdrKAHXMy1yKULaF
B5PNOmi2qOXreso7w/kzPxM+pzq+AZL//f+Xt9+vHktqeM/gENTSkvp/ezABo1oJ3T9ZdC0Qfcye
BIzrdOunqzbc20HUGGOhWn3F8yRUjEzsnP+aDaC+fERdE1VKq1Aig1EbOHGa5l4d4aVrLrCwR9x9
bonJf2DVZQUlrh8uufoRt7XIxLHo6ryiAI54RJ89k+RwdrAIAn7EyvoAQLGzRgQPQjUEnGv6wTGY
/l4iEU/ONDMlPojL7yBHV5/jRIGY7o9M1ersfy4HUpjZ2CvWEiMg538SaWA+YE6ntz8yv4BdgVrv
qylCb4aIT+xQfUytCqWTKwa0/EpoDmHgE4XRfSvStry22Njd+EkkXmpU2545KEL7DaKt+A0GCieh
WF7+dmVauvPfIp8NErJhlbQpaA/P+OO/X+WN4Fm9WQEUiKFI9NiqZZQ1oJPdzDiCoyh1QceWF5E5
5f28VEzmaMZqrFcLGmwuxOYmHGys+p9TH0RLR+8ATBJ7amAvKKCDf2dkwXpSmECwpKChHwzGTUnp
q+ErWwPHKVDQrthaHxRM5WTZgPJZLukBUIyyKQlHshe7ys2htlNDaMy2e1veFGGrd56CqTeQXBIE
pSUrwpMuPZfEiHhbgJeD1S5wszwM40pr+ZxUyLgHPOlmQEPumq5IMLhiBgkHlABM64WZCRdH1AKQ
X7Fg115Mw9CUbtVB+pPOwPNf16zVidM2ioydXAA4mPGjwTdDHbq9x5iS4LyEsdGmJH5JwCQDSbLZ
tlVUYvd3o4QZLJ85slBmKEgzUdvN6deCwC0IXuDRh/cz7poPpuUrMCVCFa119Cr0ghAceW7CBzKh
4TaUnS/xETkEZd6e8H85yP1IoOI26Cvdng0qiG4EVBphc5J4Ytn8HQlOlZq9tAdLgULFqHiWX8KV
qHTjhrjwV4y3CsHDYrw1QqZac/ymsw7gTFjI8D2XpcXdRQO1bujo/iRU7cSlmkQoPGQKOWbkmeOe
4wR2tI/POlwaYEVoHq1ZSDQxYikeuLSVjM1w9TPNxZCvud+2lZtXkg84dKQOilkz2dKg9Wu2SVCd
19LWIx5oO++70qT85r+dLea/2yFSorX5lk5K7t8LfOK6yXZGPeAeU+DT7HnMbuN43TLUU6yfd+TT
FWr0XwPbcteDRHjtJOeMofMJfkQ6e7cTa58MtjkH1Gsgf/C9UV7XRinrWi3mkfbcPDXKJIBeFo41
XyTLViYGNxgOT7qVGm3ldWuKJkkmXjzYTj5FvZmywVZ5bkyumwUIEPtg63UIeJQfrmc4pYQdCuTo
01W1ziD3+2eryq+X8ibhs6/8Vblgf2bGZCqSPekawQj21iLSS6E3ZGazxuchKlqBZmBO5frpmKuc
Blxpz2E+Vx6AjgcqejAIH1RTNWckSuhgOATDe44My9lGqjjebGkntXGCKlVI/vRMJpjYRTMnl9bm
R4AyqZ0uBFjclWrMXLEpbsmZM4+6JltZpwm7udY3NJ/pKGe/og9i7nY/kcR6+CoITGfYzeM5lEiL
tsaP6qzzEdb45Cx0HRuGTgvoywOonm1rW1IC4aBKWpnJEPW00pEA/nEWLQ7H/eotPfF2yWQo3OPb
ItW2/IpBEypMcBDSO3zl7I/CpNO9a8oc8y1gXdDPwXlyORTTZME4dSXnUDthuDoL0rYJHalhPgZH
UggvG7wTWVlOZkLGIShInn5JACLJibNLcFXr48krNG/1+7WC6W9DGikBYeriZJSG0pBz5sGWgKlq
iMP692Gp34gZsNt6lDF7PpATPZgMEWAPYB7r5m46E0hO1iHjt7xwksXKNbkuMpfYpDTGyEmZAPrh
aWyoKkZc84HWW5JNXHn2LuF4pzQcUQXaGUcL/MK8cf3Ny/mWpxaESsRyZ2ZMbjTay3KPnzB5Xvtr
OlWB3fvR7XnE9Tb6Urivx7kP+TZZfUFY9JCWVq2hBuFt3Z/PUpomaBlphmUZV6JO1mF9TpcWstx1
hY6kvFwWpJpI4BgYhXxopyKNQGLl1To1tgE+Id7+Ln29XId8jeIzv0wZ62RwUwalbQBv8zZdVr5u
5NR98lHIDe49tO3Nlz3LX22yV85p8JFfSg/LQThDX7tminnIQe6FUESGEwhF0bJCLZMnj9VBsjOc
GA2IO8iu/scRz4moXP41m5jHcGoHmsUyn7xBXbWAVFt8wPrBvEIesUL0TwVeth2DspSxYWMfD3Aj
MuiE79a8JIdrqntopA8o0sIwnJKIoccYHM2zcryhyq64I7741m9gnjonPMOF4OWuIZTSokE+l/Ul
EUuRZSFuKObcsu9aiKg9EXcqIVzug4V7/9vqJYjKUviRoTqhHnwJFsYbMunAuzy95V4Bgg4io+c6
q6KLmXhVWNvo3hHvryK1AEbejYaZNXqlhD7mTtVESm84bDztQ0VS+6lZ0N0M6gmUvGd5QTAmvQ2S
0svfHnA9q0dbiYusvmzskWz0PJu4saGiQa5V1zetmSoiZl1xtDxH/etjIeHWxJPeO1FIbV8Eknwe
MIOA7WEQVCFMH6awXFnW+a5CChLMCH6fnQugo7IW1lBveEmt4Qq+BsRhEdQd5QXD3WS7hXth2OW8
R1cUl3t2a2hUspMYENDfV54iPOh3H2Ocir5VeO7KpfnnIy22rzvSk4H+nQ9gAX2j3U6NeWTmeGX1
aAm6RGLOvISYCzqQeAEUyBpUbZPUQlt6xgvjhHc9bXFoinIgWg3Nb3zlKzTLdKTuRjl77TtlrFRk
xZ4aincitDZdllxAOYXYCn1fBV3NMV4T8RHGAxyf1C59d2aISvzSJnCTlh0JQtFIeKpDaWtaO3XL
ffeaPzcD9FidKMIYaWlofvFLaZs8okDbkKCg2QBymwEzLj9kA5IsuB/6mihw6+8EJMZbsIXG6GED
8k5dgnxvt/V/qo0uwngmkyMlZ5yKZvog516urwJtjL+YBCElLJ/on53BCalusFAT2fersXGBPa4k
ot6y/1FQKB5EPgCEARv3gyDln3zhSdxOwPPnmK7atcmIVCTbWsugdSHjO/+QtodnpD8R4zCt6aCU
3P1s2Iul3LzIFi6IIACMDHoA9UYRXqc4+WW+ljIjxurJXuW3Mbd7+QOCTOJ4/EC/U41QhsGVwT/y
6z01oDF77p0H23NUNunce5/TTMaSc3vJj35U9ytlGik/tPfNAvtsjCEf6KvC2wcTgM6p2E1i2zl/
cKe9LieWMwbF5a0WQ7XpZAg+ILzVLg6hmfhs88ZUt1tGFvDz2ujgSWUWPk/1mm/Y8Tz5wECgJGP9
ChFaYDv+bFNXs9MVXAg69YrTfHx5N79e+LyONy4P86lnxK0KeUIzOP6C5HZLUr2qpag1pQiDPP3v
0IkxRSfibjEimeSUIgwo3I2jsZoM7GpJphylY/ChuiIzgYgsqJL9qXi6HQ/wanz4dr70M6y4wdTT
Qy9wxATLeyID99KOuVE36gLG+YC/6spScXkMwcecPY6JMBd2QlT3A4U9ja3URHXL4ClwGNIPQl1w
Ot2sedotbOyA3CguGxw5oANEgCoTA9exyzF375GEoGHzyv/wGZ20z4j2YW6LMULd/Euwh0xy6qtF
VaquwDSjUcEwcgM9Euf2613Vvl1aupV7ZSq9C9HAn4GYsOcYBkPVrxkLl6GI+Cf/fir3UWKWSX79
/w34DVjuuWdUOt5EKyNQ/KzWT8hGnkIa+CxnJuMzvfPlQvh5dfyqv+BjoAPaLt+dJ6n29NuARXbX
EnsKmg1+X9WguVKvDgyQ2lO/5yn8Qv5g1jRa+yB5IzoY7xMDJN7aiWu48PglO4wFo5L2uR4CXa+l
M1KErD5xsa2PNI1oqmgaspQrkTltaSbX8hDBCRiqPil8u2/6xXRSCHcKN/3/g+UXR+xNCyIILyi8
rIhc2HXCNyIfJzKEqjZAokbAuqhrrbHqrY8romvyWHmy4N6MnzvEb/veOsvy3lqjlEgf/haj8lSf
5a6LSwZB0U0K2KFTLzVjmQ3bThZzxQlCdVQjAwtUwiqS7QNuNLo0MecBvK/0jmj/Ld1jos3XbhBm
UGDW3uh602cuhMXgUzOsgZtsLa9ABMYgUlMOY3i2vuOAP60DQeSXsd3Hb/HEM78oRhau/Yyds/RV
jfEetW9d2JnqUi+M0gdUkKpjowesQZlQLtVvrru3mlAwtlj/lZ+YSC5HDPvc4KvJj8VstOSu7dbL
rPHdTaCGXpyYx6KNIV3V9DpDNHxcB+ht6F+Rsvj2O1/8g2Q+ZC+vDRC9+bgd6e6HNxCRTjwqOV+7
geFanfyg+egm7BiUnUxrFCNO8LgZzlpmwYZ5J8L1gglalz/XHC76zUKzrljRTVdayqlds8Sf2z5/
x1BdNbe0HCamAutGSiTtUzhN22L1FaQVeEGAZdvKltDvTTTYEcRmxZb1wPaL3UOgmyRwJ/fvqNKu
FevasWVsEu9AAtGh58PP1x/tsl6D2lPtVynCML+luCNMNCA+zni0eULYSGtZlu6WnPUsrFD1NaQb
t+7fwNRKFowSDdK/1hKXw4JOp+PEnWRQ3E9ZrHl57xa6Lre76bX/8wrjxD4e2OrT29IZ3AB/PcgO
scvszEJX0NC0KdhRJGw4EgN1IVhuCBuawRtDbMz2lVg4zrBqbaiDcevn6UMwH7usnAKRsfXuHFSb
fd0XRvdkwSYaa+5/46Spr5A8J6YV3LVU6xfhOcTI40NZlm8QcLg0onLira4Sise9JHXh/GvBkG1N
59l5R5V2RR9FpeQFZcWipenW78F6txwjAzneBCuWK17zkPz6h6+66D9cuoXndSy2HOAgVHUKyEpX
XbVvPq9Qp4APz1zjlrTSPDUlTGMLzHeeLrj4iOtoiF584lEpafzh4jWCwNEdQAcFHXH4Sw4iyv32
H3UYAVHbRCLJFGsiFMh3BaCTSZxIyFuWo3J0pGOwNW3igxMtmXSojbfMPxGj1LQ9eh1ehA793Cgx
qVt4wd9zGTBUzz8E1mdGwPBbRj5MxqyGfgfbyFBr8prWIDpOngYBbhpi6PVylgwA52CST3i28RaQ
TfSoRhdeOaktuBPPRluYyruX+We6jypkQlcktOkyLHO/K46OYO7dkxmMtueP0Fntld1dETEtfjTn
6bNNTLGYN2cUirjCPQUM/w52+dtbKOQyf5vuL24bEXEmMj0pOSN7SQLEzRqkgX0FZ2N0B/OTLK9z
Ve1abYOBHMz2evrbYwfTPKEeo0v/oOv0LyYq8q0PktbNwVx9o0ho7VZVIloGJRbMjWPtsT0hWJsR
N+jC5csLhivNPRXNWTIOUNQQ7p6GJZWYbkw+jQKwJWS5BDEwaYsoezc17bhRkpJp7XzbMhDF5ox7
yM+chx7xw0O0wgi5sz9/WqOtGiRzPgT19YkhQ5TkILnGlbH7UKn81DnONnQXHbew1veMOBNXBoMs
FrjgxG4/GxtwAY1zJrNcmpKRT/runjH/z7lz6Faqb+9Mmu5BZHacmXTQUHL9EyPYo9ZSlzRnbOGY
kVdULMFCbsFRlN9q8Ei54USg3LmS4kmbSBVIWuw8j+URY9tlztngJX8fC0JIHM+ZaxolE7rjWLx2
FJ9OxEUQ1+U6U4/n/Ue46rZCQ1XhG9rwTqjMfpNj7XzQQPEZ81AXFlBlrepDw9Ww7UrgcNACHQl/
smzOGzuj+ho8hFVc9jxnkh7yrrHhIE3mmqwnQetwOlV9fkuqTwTZvYZ4v/L+PBQOQTfdx6Us3HDX
a5+DkgA8IR/phuUv4ZSWmp+CBlIhKWG6NzqOwWjXzFY6Vb28kauoL8JVrA7+//1tD4Qp3IfzCth1
+CSAilrDStlIZgzvLkI1BHdKIi9ajieEqtH5/cXF4+uS/kJ+Skm4mkTl2DM3v+DNESe9bA/1mihP
bvgZq/EjyVK/fGr249wXaafRpsKVvMMoSssDsoBl96NviATazfIPLDHDJYW2rtnI+KtVMUspPnfX
27aatjXW14xOt2KO6X8KCR9iuDuNMFUvn9Ia6f88njNgnpx9nJT8y7HGAjo+dWnY9AekDMj4MakZ
LtHtXIwfujqjTq9hUDuuBWzws0bStF0CmxDhfzjLMel+2geRRj4Gl6psgh9Y92CBFoZ2G61+2NRS
o44ipZi2d2APCyfHRtJNLHemYPfFWG+cLV73yQLytDsGKBJtYjpkl+0FtnEQyZymcOudafLVgqNG
CTxAaU7eWsVxWMv4sZqlIloiHwFSqQY67psez18bAcBEwTUlUjU7nkoakCDIP5DE+e+yeIXLc3xR
82ToEJ9/zZrpS6H4qTpgJbpRwfblmztKyJz3YgMlqfWBhHN26sU+Q7BOfL4GevME2wr80e9We08z
3i2eJ743AMoP/2HI6n57DTrK8+VaRLslhmPZoF91ToLr0u5kgsHHyF3L3qFO7judSOP7dj518ZqB
RkBKofexTii8MKRuyDN9FxaSCSUZrmYT1nL5hehciP3ZsYv1pG7jKxiuDBDRiyEKkn06oBlM8UHh
R4N3623IpIppvnam+J90480M/EYt82mRtGCIyRAIWnKztHLzmutzF0Bpt0KdRStBgmYXMZlwfphg
cP0qWXu3qJcanLlWBKSvUpumbCsMocNiWWLwlcL8Zbn0OPNxU2mhFLKvIr+yjLhAWmJBR7cX2pus
jFOeb0Sk5ZfHCZxwpYpeRPHdZky1wDSFNXs12iV+NH7btzXe9wSUQgazDXH1K/LcvGqM63znZ5qP
uBoaGdiIbc60OJRT+zVNQ3pRpbeRhS+zUqjvo/tzhUQlq+KVlBPg5UinPcfIrrHPzIZZDbo77gG7
ro91ZZNxiKw8JexY1wo1GEk1O+lMUXlCL0023r/JDynAarhnX8sQW3BsxvaJ/RWFYWzKlKx51k7n
F6qtkudmYoVJjlOPKDfIZhGAluE7FUs4Lc9lULAH/Jg77CG2zh+PTWgktquxtlMn9j+GAHQSFFK1
2QKAP/GfVqzStON8haAqtkobSR5mw2B7SR/ATUpcQ9RAZmf9c5BEbREqDvU/sLjTGMolL2wkDb/5
D2AHX6wvSfUb5RpXWL1MHcwjDCrc+l8CII9HOUn/J6HgC9afuyQim4+REDA/h7mwz0Pq2FkfbGTk
eOh0oeAmHl8NyGnH+mTidR6iovrdsijKg1YQKvRmMZjtSYussfv+fI0tuWO+rnMf2YlhBQYE5EiQ
wy7DGlDJJ2DclzYfcXXFF4MlqOTHYf8BHLm+W301cF2y1tI35asT6hHW4fP8sw0P5ubFtJaDxuP4
51k3AAWVtaIKnNXBN7YhUJrv0I6DGIFnOfrC+Pba4oKSRN91FNalkH4E3Qe5JR/pElxyFcV8h3SB
BdKU5eK8hTFX/zjA2p44hFCMe/LUWZMrhOJnP0pgsuH2zA9WLd9MZXvvVrzRPf8tByWfn45dGwRg
LTXv3B5jArtOjprULQEhYGSpQq7+x9+iXGSa+7LHA9i0Hyiwh51V/m3596bhU7Mj+L5gzGheTRxO
pxiJ1dKUcBlJHuf4Hh8vB69yzBWuwtcaENZwQuCnr4zL8wiR2dDCJlzyDgx2d/CBDxfbmjQKbRAc
dnGMAnbPxhc+/onxT5LVHDiSSp2+JmscLavUI7logTx3LRNGTYQlLBuMpmbmtBBbC1bhvQ+8J03g
d/wKwB2ExktkBxPpUJkqXlIn/KL73L+Cdwpxeymput5VXIgEZ5nUuaWkSaArwPXH+Vy6xVz9VkMP
uXmbLtvEhTRvbDXysYeFyPRLpiUPv+lqrgybEF0hvHAtfgOoGEzTBdaIO0Tj1i8HiPTJC3lifvyE
KaO7GCnSFHa4e2SMBkNfp/HP/bGnvzSH3Ks0w5Th7qowI2EdEd7MhLiCcEngn0Wvx52b8AnFSF4J
tVfnPjAtr4EIn/JfkKRkBVTCFFocAXGq8UrQ6TTrwukNr78T/oG3ip7adoPchQQ39SNeRyq9Fbi9
UMBXNihiT6M2U00HKc8V4H7iEnO2tnMNUFqQLCW4K8JyMo4VESC4tMdue7LbCqoOcc7ydgmqrVVW
QrGPnJr/iDHy11unvXDIDV1cYhHFFyTlwHAbF82emg08sfw8O/UiEMM+MLRxnIBsLSLgk+Top9wW
9rBSK5SpOOKZ4FQ9AlGq7PAU3y65VwMktbFEtoyI51+Bdq/QvlEfTFkYWQlZ8J0OfuXhYgQPwKBt
AtpLpkPIfJDKVJ/Bi1tdCXTupXAVdlRc5k4+3rrSpJwHKjb3Ye6Hs9l4anIghQZ62IvXxVHRhOfD
ur8oSFqvVy49VdOrHF4tMxNWYvKp9Q47cplWMcbsMkJDOGDgiej5jPmWgX7ALNCeOZsBtz2iZpQz
v/oy12XgmnpmMzROLST//VKMRC1ocrVOiRSNzx17EB56e/VgmK3IGh9o0h7P+YpTHtdE6nJGHgDQ
MWEO/ngHn5k77LMZMdC6ryLl7Z4gqCu4v/oKcvUuMlP/ANMuWum6V+0+FXbYWIv34FIlv0yz8pyO
7igmnzZOj6iaHzHB+G88VIGieHbpjVeBNWfLbqF9WixTPxBNBBIJpP9pDwqgnYHey47yAQKDApqE
1386aSGu6myKWgq6UcG0W2rOe6RnkWgpTy/lAQZh0byvJ/Iz9CwGOc2vg9nT2cMOSbnDull1qGQW
lyyeV9+l1wFKW2gv3mEyYuwCvWH1jYymiQn8eaDxUIvGDG/njR+ZF4O+yO5cRb6OjJUYBHh2dYuM
AIwiCA65VggwGRvmz/06914QeUeJsLvUsmKK6a7YoB4SbWCCtrpNvtsf98dX1HpIqm34TTTWKOok
Yiy65gKnmI+jGTSgJbizwr86YRJbJHg3aH5gIKU20cAG8X9qeroqzFLmxj89tAUS3fBfv8ifZ9Lw
VIpn5p9CPqlEy75uD2ryC5eq19s57d6Z6MNvNjIkOtt0CRcP0j84vTm/8f4TKgQ+FbKapflh7aXA
SGh04KH2i3Nmv40e5BjL1aiXtz4mrEfYhJqpxAIpOuhyS4rJNtxPecB51pcTsppJ0fJ2ARZRjS7e
EsZWbybOnh/GPRdNGRrzz76c4pHxEb7vzFzOXmDb7Or2FU85CsyLwg4jzwp3Y5GgtgSt/rUbTdWS
3DRXt0UUG4oASk4K03/VSnXqxgUtCgYc9Tcha8am8J5fx3DY3sXxvZJcz0//6phKBgP/7Pnqgedw
nkvS/Uck9geuQzXa4/nOMpLCOp1zCw799qiyoPn0+e14DPmJlclWBxrlEoURs1XAI8iwukwV/l/U
0pNvWZaqg/M5KaaZGDaYtQltw5FHTHL6XhvcKzB2+dknbbBT7XiXkHM6ojCfHmu/64wwm6AIinub
Csjq2aPoJDm1+z9a2+H8QnbyMfqAZ55qcbFoReZjzM/ptfHGHzHkKcTfmZKLAEdMuGPRNxYLYZ9q
ZNhWxHub7zCheh0IoODcUQ8Kz0oqX4hC0Ty6OnlNP48XdrTpTUmxhlrkRMVZKPkehCH95P9SbH7Z
6SIKyNnLFwPwn92l2sl0NWe7SOWJK6kIOp2IqB6mhhioM12C33aIBqvg4hCGWiyJhrZ+tYoTkswE
4uALqGtG6LHIDm05qsUZv/xKWMw8EETAJSUqdpmEfp2ufKe6MM1Uub4sqAzNhxprcZHW841DG7Mj
5WrvCGXai0qvZIWHJhUGsUSQCdxZf24e/VboZiPHm5x///VXSMDHP1I6T2cLeXGh2JAYtzH/1Meq
81Eo0tpqdsvkHGcXliPWvKj5t8BfRX9jQSMZdknmpfyWpTK72dFq8uFIyRc9SsBae5oLVL2X/D6w
Rk62dsZFtSMSXuD5ogmidz3dFeRJLj0wOj4NjDvrynt54glipTRtxA/hHAlNsjoIRAi7qCA5c2Hx
JQ54pEd86Z8a/IoVs2k1CHz+aElHi+8DwI34aKJnchAfZxuyO9qtarIsgcmWD7pdddJl/d13lvmf
arbfoftGEDPaDyuE9oGdRQw0h71q/A76YYc79z0SYQSPrIsmdwQmVpaDyrzU4Cqph0IDzka0Oq6d
Wj6Nq14cGVQRxEhIdHX3PfOCXgNkrjEjyta3sco0q1WOSRI6hfMxYKEd3tuVMMro3/xUlG8IvXqD
po2Ny6r6UB/7x2fTqljkOdlAR+ktGEzaUb0URL/Lm5bHLep2T/XJFFNQcnAHoazgev1AY839/yuI
9KChG6kH7M6PX29zbtJA51ZI82AMRMWEB6RjTW8AKaoIKn8x5153jujfka+wUm6q0YAuWbGFULoF
3wmLWVlcY8NhknKOkQRyuOTRlAk8Gbgk6oxLE6TwIePNI2w6UcG5cosjzPCHWUkjZp5GdjFS4YwP
0URE69klTITJpGO9MZ8q3nO2c/QiuaAlhnlWmrVPDQjYJUbWm4uLCoQhIXIgZlw1r3s83uy7joJo
VUUBy1Ey7iTiXHYd4zxcTragFdd6NT1wvY6LwFSljKrBOJpIusAenDq2HYeDzhqeDLVGYiEtn8im
MT4qoYfLy0XQ+wKAwwlV6NArW1oSlnhazgGXC46UfoGlr0SNKDcuzZMmVEbD6WknPgoaARhW69NW
QpWbCcqLtm/VCdDhmnpi1Zh6HqabOU+OQoHP5k6G/XknRYO7pUdkHeQJ+g43LsoEwvhwfsLetrbR
15Nof4tvRa7F+3lXR4xSkQ0IBYTsDIZZMkloaRnqi8hmfTTt4IOcE24elVsiSvLe6pVJUI2ZYI/E
AZ6LWtUbJCCPNoKh2e4fhQSloRVfUW2DOoS445LYREuqKRO9IZixFuERIVdMVZLyB5QWW14cejnM
NOKJXbJLKZt17sYTQI7nrM4NQGdMup0V7cRSkzjq1WugtB6X92kfDfnqZOp5Fgwf4OCNWPZMKcCL
y/zhvDYF/TqVZ01R8yv1DUNFrq91Uu59hQw5zQPFq5NXJvTCXGlgwuAE2AsyTd1VtDQ0TSvQAmdq
jLgtRQ1MD82r2NIf3t3z42JVsXvNJw1w9dAM4LLBR7WrIQeiY3fOw3QnVsWgqUGZjVQxBC9eX6Fl
lzE+Qrhcw6ffuxhSY9SxhmTi8AF6QP7VNWFduz2D7jE6EhR9BRtCnDzRschCn9a6ST0G226AOBgL
3eTfw6SD0NizIhFK1uFG7xTLIFT7AQq33TeHuL1pH64gcJ+qet08yjzxBJVQU47ssh2s7en6nFN8
IlLr3SAESyfqZLAmbn15gdI0LBxkfmLd/u5KoSTS+uY9Uczn9VVkuGbaH7HwNlLd2xcp+IbcDTlj
qNQzFPhM8MYKmcStB1dZddSJN7X5iFs4gn9Jg72bWehri562CRAJwOtgspvyHEJ2v2L3QTL0oGjQ
jy+1RrtmB879CvGwkgiht91ebIf6En5fQy1mYbISWQ56MWele9Py6I5OiD5un6tvH+X1w42Em+Qr
qyDHczZDrZoFo8/3KwvcbNV06mcOYR7xCdSJOD6eCmpTO5wiHY7w5cZoJccQlNd5fJXUBcBHlerZ
teHi88xRv9PGchc+BUJ7nLxLFWsbuK56MU9hwkV46b3ofqFETnhBrRACbQ9QBaItUuwecaq12AX6
qmDWfk9cfpItIIsN17KT2pVT5LJUDSKqnrPmu0WxQs2MHTu8lXdseuCoGsl8QFx/ICsW4hXdm3v5
TWQro5jLijHkb3R46a4NPkp+m0u5qk8jSLXzNkM+HdbbpmF7XmbwRCB6RMJHcswRmNfBorYiWgLI
oSq9qAMhfOB/1wjp9x/uQ7TUiRao47X1POh+FD/GKnhmnuALAmPX8X32PNxLLBn8oIKcwkLyL5IO
5aJJpOkwGv9Zm2p/ovs87B2siarnxiodFORxjQ8Ccyoa70coihRUUjBQARfarnQ4OJglUYM02lGe
PsL2oJz0683mUfchD1tnyThnrScGr/diFg4CrxlWRD83RL04xNQzOiePMaxpZxSqOQWm+gBvoi44
myiIRczV4bc+jqLHLgYtiH2IG3L/IGOr7af3AByGnH8TTGiQe0mzdUNNWfA5DoGn0uEjWdyuTavI
SPoSjWCfacMALkcgd+q4mnUL+xJiBXJg/zoo3/cgj9SrWsEKoZwzq0hjXnwxODx+Rn2/hVnP6f6F
GAj7LXgWkRODb+JgcFSkz7PdF+ul9oeGlaior/9vO9R9euj7uJ/2JMRzFpS62Gj4iWPszAFD9Vsj
M9Hl1youaPYTUFyyjN0sAY2RAIB9ELlehHXyFRBFkhKxZ8ocmGmIbERzwKxB50hssFe3+fFQ3e0y
KcstpQkkeiV2fZzAwdGzGz3FQ0/DeotjX7hIM/vFjXyj/+mwS4Pg3wcXPlBTxHKaWXx0CXLS9Y5v
W/G4LbILQ8ZLu21cTyZi5HVgb0mzohqA3kcsz1b4DdwkvF5Ei6r1acyh73TnQYByUyU078dFkALw
zqLevHBwxqbHaviJcsh1WTzA9YknCp+hR0zdBdjkNh436UQKDfedc9qIakSlKuU86j4zKPrGlCVz
HjpGG96kSbjEqTxJ4rjc5g/ZeIM9RSjCum1a8l182A8aj3LdXdmycj/4t/PAgZcHy7NCcWt7kjRO
vEw0IJTatNyuBxvEiF8Yil7rxOKmhqY7E9BsVcs9PeqCIW8ZZ6v3rQ3gw3EHhwgXnijcO1LcGHdu
enhaD+4eODJtoA3pnftmVBUvDXa/3tpZaitmP1uBHbBVXtIHLml9lsm/DKX+JbpSwLdfj3NJNCc7
z1UTNIJuUCOsx4JBL6GReLEnhDxpsdl9RNj7QAax4lYJKuzJMkLT6Y1xRaQ9N11Ll6y8WxcZUTxC
NKKSmFqEg8LWthrPPLsfJc/aUpXvfnOQ9Rnzy13yAkG+NHyGcAbk0OYWF9wRTEj0rLMNDlri/vAX
ekBylZ3pusCifBGljzPGCSFBIuCCyOXFgn7skPHjdSKjNQlRWyUSP/zWzN5MESWOPswto36iK8n4
ptj/j2A73XLuZLqfFs7eScvCl0UzcQvGo9xzd5sexIZSEGiJF6+wVDnSn2Tnf0wgReGBjsHHZfHv
cC5EayKHyaVUuwScgdCbIY8Qi9MuIpkK0TJJsSJJp6HZg8xEi7cNs8YuL9cQl3EQdA4CVH7XlQ+3
cvt4EGSBpeMSKgeu/vGph7GQeB7bufvE+l2Wn3ofVC8jsPeD/DijZdEdSf2bFPveTaTZ9/z2CsVI
vrf1+XNvchHyx/P/Ov65hczp/6MKa8bwOiFMPf6e5wIeiGeXqb4uc2RjGrCBRM5ZK+yQiT775cCi
L26IYiVuZc/mkrJileblO/u8S0fyy61Bt6rKGlE0FV5Ywj4O9fifeJGC9+MnOsk1526Rh9la85Zf
G4GXaPljOzhcgH4c2lD+6BHH2DoluIn4VFQxQu5K2BSva/pn5Rf47XYhCGH4jjfwQ5GiIZySNwGV
GW1ecFPBjNYGkj+WW7MKK91pxVmkL8YeJ+E/NUB2U3NrB9p1oMLmW7zT44WaAaHA0gfIJcmnOCRb
cDU2lRIHCvtgnoy8JlyRRLUFAiAIwWmnRGRrqbocCR4Swa5YnHpsGq0ym4r+WB4/ZxUXuEgQiWeK
c5wpFJO8UmR6a0JXk0nCNeWYJp067BFKnmkpn06vM1x4VQUXFhRiEIbw4tqeDdxqP2/ElQ/nGN7r
P6MTbGoPETAr06+TguY4lBDXk4ltfwNYscrL/4GM4cUevbC0k0AnrLICt+jUviE+V2uifbcvBzAs
oMmnH0i4wcbq4tEuq1JdDs0SjxCXu9NVktsTZh+i0p9EdVp4b7Gwp4AIgJNmRL7tuJuTigluiJ1l
mndzEOYWHDAdMBI1kz6OZA4jQ+rCU3atwkaq2L7RdzBZ1psXTpmXl35J73x7rwOJZ8GNJQodUIpg
EMgDm8dLXltmu+V0Ml9l4AP2tgrzYojIc5uBjV9/AdpRQEbn+lnoo+JmiY4mfFuIHg5TiuzSXk5d
Z/ESQfMuqgBmYbVH+jk9QDkAV/lE3A8IEdbduJQtkIZzZxcygxLIlI6QX0VtxIOqePMPgEQ5KNge
kLMkhm+4YDDgviZmOvvYENMVM69UasDngrfQsf1i1vPkqhuZe6n7pG6U7AlowkVqdFtDwYXmbbcD
JjibA7q3t/uMRy7DKQjBWmdkLjNYX0/G7ZJyzvs8DasnuP3lVPretpg5PycIfJYg4dYDpm+rI2cf
5pqD29bMKTT9VIZMqtnjYpoDqTHavEHwM8m2y1LaxTMzDUhNRoGzr2uGP3k5qVBJIrfpUcgmyis+
IOBwRJqkdDdkPBB0Tfz8kvyOYp42mPy0yEXUZR+6zAdbWf1pz9w8FrcAyohIbysN08Zb/o1UyfN5
9dmqFBPSR4S1GUQdlRckdOPfS+QSCcxcLwvDmQ5z8KAsvgJS9RAfuKcrDEdWl8XNX56SZDEHf7/D
p+PHTUIHGpjM43M9kyg//ZpB3pMqfVZ83/LhOAfEjoBTmOnDiCwOtv/ZRTVRcIoYf9ZvXlIZvRDT
sCmSrG9GE5KpsLIFKPVUutsUGg8l+QxIMfQ82I6LljMLPVgGVjPhExEroqwS2+Pgj4XuFssnuUuv
igj2J4PfzLAp36fiKIPAkbZIjhmopuPspHg8bgF9HcYSAWUHE292HEJwVAOjXoU8dhx61CIuv005
9ETb7uMQ9HZErfn4Jus2slvwKGEzqTsx3E0BW1FVV/o3UGJdv1kX6PAsDwdTZA5IXPRQsvixX6d8
y6fZJYLiXcILAVsxmLgcscTfbux4eH2ktux0q9UbXtqK690fM+wBUEtTsMDWHAzSw57xiwwMPsLI
GTz+6h3/lLPcXIPezuqhG38tezxEI3jq4iUPKAAKvUXYN4eUSjxOj+VXTpLtHGCZReXmXcJ57ge8
UWAbqxZvBLdYbVXun9Bl2V6Xg+0PVjlR3FpI+lBgic1si4Nc8RkvL0cHKb7Rzmc42IyQ/BLrEavy
qNdDWOqi3tUo2tsB8y3wMAubKlBo160rtFJufIzhaiKqMbFCIg3QxVUmFQCSOZrpFdvKrkqf8C0s
z9c66iugVcgb1xAOY8b0W7cpa3n2ykyjt8VAX32tTNxq+FvMyDR7jqVBEAPSB6bDesK2FfUlFbws
yfAfBzVI/PlzOvvrfaoiDEswkS24EiDRfIGNhSBGOOoRDeWN/AHEgSsc0IBKnNr4qrvVnUfB73ok
cbn1Vu4Yugidhc3aXoSkNxswyZBCwo/xsoKwbgDgaR0ByuRtndls4lU7sygVoNzB3zR9xqc7At3D
NIwPU+//GKYL210LGxsYRq2ShgftjIxuSPATQUgGSOD+sKkfq/qAOZt0vMBuxQ3LiyOoGy9MbEnS
k4nKNqCRqfavTGYPPLE7j8UtGy+gSQs7I1uEXKWPzcTXZBf7FeKNZixWvNz41xZyQCyjUwoS11hv
SRio4rnR9gLjDvECQVH0QGXLwzjvKJBXk0XCvQGfvasCwgmGLn33tKiaEejr0f2BqGkL8GI11ySU
XPDB/XDsGlbcMSHKuP06cjQo+f6F+G+f6nlqZMiENpH89lsgJqze7WwwkMNbo9fUxL09CmH1Ir3T
t/SLUpcf5Bqp51nR9zczmbu2jNB1JV6GxwavYiIM6FikK59f8Ij+93kjgIAQuNtsAn3bvdvvpG7h
0r5GCUbY48tWV45TfEXgSBzKexR+6Y0ThK+7DzoYn+VOoekYBNn0iOf2bH+eQPzOP+vTtMMtnAS2
VOBTNsHC0F+Jz0kbZyeR09LXMs4WpN53y08KEz+ai2r837DSXdA8J9X4hGepyF/x2RvZYj/B8F1S
9d60Oqv7NletRY90SzJSdF6CXv2OyPkMCN4XiZ2SFI4h+Ouq9juofoWXarjii8LlOdnJDhHY8z83
EyXhs7Fpci/4KKKH0h0zsnLWqJ6q9DY+/YTnZCbwv2pdHcmoLzKxpy3RE29076ESsxxTk5vX/iVR
kD3yYUkU2toI5uiNoqknRSiQTNhzfoqmEKAq8aBvn65aew5GwgkWAsb+9fS6OSH6wLcmI2zibG6c
HD+iPpOn0iVh4jgQxkoIfBjv5+3Yvt7k/NgMp5iWg5nQY8Tk+YfEhfwrqGzC+N37cscBfR2yq2A1
S0TMNKPjVGSXQ9j0zSTRReHikc4ZhfC2rTOHjXDvqorgY5mi8u5Ntk25/oLYsK+DoEX99ahcOgGi
/gdEIMsZ388TUbnXWjKbdZJQe1c2+w1TT62iCuDCNPdbuRfuRr49b2PcJwv5LIDVr3La3/w8q3zu
8VJQDkRg5MWl4YFlz5YLj1xuEXSzmqAfifKBmbfBH+pRVYaKv02pRHcNl+y94DpQDyTJSnKc0vMV
z+ax9loQRlOJY3zya7l91hBh5eed43xMCyPYBIP9FUU45lImlvuddf4LYcmVjOvRugRNubHV4IdL
D5f80feppZ7LrTO0TGXTyl0wXhRQFgZPZWjwvK0586HDoKXy7Miv4xPHqjbc17LyHcjXIoYgMaq2
/q3878mvFjrS1vGNqRJ9IJNUjK9UvOyBJTP8Cyxfy7YoK7YrFqx0GhdUbjJCsmMD8hjKuXlxqhuI
A+6i4ugE+VfOswpfKAL5BMaq8/MCDPZVGfMMY/BytzbAzoXKriYUq9wqTamMxxazpw0fAFDE0ZQT
iuk5yF73vwLYXVsyT+vukVzBu5MRvh73nnQGOuIjHWMh/GloJApMGN8Cgzgfm6QQhL0DvpbTDhf1
xZWWw5nbaWVuC6mL8aD5LDvOrc/a1aRRvi0CFLzZuWYm8pAnc+21xIaQmNbnOSeJozhkfAFjOwNZ
insPnA2uCCfRfz2YLm2b2LBYqUM/kigvB+04lje3gwd2IN+9+P99ARHPL9UzggADBYjmPlT0HH/3
YtgUUBA5YvfsvgXNPGruwQg5p0oGgNSfdy+6Ke6YpL2kXTkaV1sN+5W3OVItpv5lcI9Lo4SPAgNM
PQYfBUnl7Ul8P+8PgBR1pmlh4FiS6az5CC44OcWJrx4LxSKJgKrtP05j3jSGdoY8leWibAb+JdFy
viynMSGN0jlUc7gXokTnkkwggJBfvjei1fi4uv95655i/oH6yd356u+9cM7PX7x28xHggKjPULwn
4Ys/yaL8w+QtxRRlKOOieExWZ2FQlOcQ3VjgmarKDKmWRw/yCfWMmmAF6jcoyEtLsc0c8iiXdUXt
hbnrYf8NXEpKJp/WkDAntv2qhKvzryOCWCHcabHC5VRZ0x57plUtCYU84uk7CCIIIISqF+4I7N8Z
YhMVtb5tP0vs3cwuFRAvOq47AMnwCitXBOuJME2XmG3+VK4bUFI6VUpnG3GF+ywJwqsEMqyFP7AV
qXzNpJPs/9jmHvFdekfRPpNbhSDiglz/pTFS0VIO5TKe5o2GXzUJMoMhBnNdbiY5QX0qOXc4O3XE
iGAW0syrGmnpPwBu8J8GeiF6jf6CbXWi5of7SCaUTrs/AcUZPnjyfM3OKKy39Lqv5xcrAbnDdf/1
pwvq7xHDrrk2beu8q53GKv7cu1Nk3+oVQyqKofEUxkdIE8l3KQYXy03zR3Cx/FIuFq51OZZ3mHD9
/yjXquLRp1sbF1tXCGZYgbxbxgtdSXLWPdCYZz87WScrz/cvudRau/L4NvuVQOkM4IQtiBTgMLeG
TFcxJN3mEq9W/mq8fQTak8JqshUQ4nEonQarlEE3uHsgVbn0GMTm6OwpAPEhKR6XQsHe6VavUxNz
IZeDkWMODToMrAUQfzQo2x8i2BFpvbzqSlxATIDuyrVjvRQmqtHFKVcoP8Exjs96q9jJIjMoEKtX
w7IHFwemvQU28i6fIGvKelNICkj+redZ3hf/qWjq3JkHFcgJDeQeBuv85v3xCJj6OZ/Xzwg/HdCw
jNN//kt9kDt2oTwZgRqw3OmatVvTqVVxhChxnCA11nptdludf1aGLabFOzZi5gad2vPeZ+zo9yVd
eVB30FboGiXjP472ghB8c+qshI0cyB2DpWodTVWWGeS7fqxyhtScW/SOo6lFJ4xuxqVRiHHBlgvc
HdxyoU3JwKY6WTpU3OsTYvYay7ZJOwTJ0W4Fc6a/9HYXWjGv2k2JfpLQkBcYyVAe4toeo0RgzgIf
gJ65kRxMJNvOJH0QoMJXAB04OtmtYrRwTNYxCHwUumh3s/vH7+JENcu/MoK52Bf3M2k7M3Pyw+Uw
7fFw6Hot9R+gGRwmp8y33q5z9VDTJzvpjmUvj3Sey32iXgmNNYtrEb0tXVsgWHjZsjQcTOFaMO0Y
YNkBwsRpPlqSKDFcrlS6JWtATfUNEPbOAOY1l34uu3zWO1sx8sCJk6aobHvYcUARf1ACI/kSXmkI
mNCiPfwMrzf9jI92alHpNrGtZF9Rs9QdQ3uFCjKyZ58ry7Vq3RHYK5kpnJ88J0nDuRRSqUaWwJ7B
lbued5GL36x2NzDZtOdF6xMDfZXdUndRYXj5G7SIY3FNME8YizuleqbtC1QzA0Cs9Ke6ofYInrEc
dBWhDxs5w4Wbf/NTdrb+zzVxc9X81D0fn/NRbJCg4WVmlPm3jpKG5KU+pCk4t1O+VLj/VgbTKYe4
i0ECyTze+cWP6Cw/arEE37O4wI252sdhf1RTtrZdOzQ803EJa546zeV8mtPxVwX76iUWglQeEIqw
iNI0sscb7pHpxTihK5eWgyCBiG2HWq0lJMUqsIa1o5f+eV/l5Bspl6jQen/DYjW7J1UaTSb6KP8w
mjHUAtJNj1BIZFUcIWQCqNwGylKyGIK8s+U9lXp2rn2Y5m5Fn8vkJBrY0URa+GhWnqhVOXjMOAuo
TCZZiwreUzMQ9gLj4zBtbkK7uUhDz1h/NBk0hl0aspDGeaf281e6PLLE+cUoMxuUnfiyvvNn8u0T
0YNND684MBLGSaxott6PZu8BhGeyJjBZmSrsYX0Qcx2tzL9L7J2FvrgEkGvXAepEF3K4UDxYIs7C
44/CRAuuUS0PHv19Rw//OgAcLH9BVaKIDZVH2/3geOET4255BwrcBWB4SnZ/JK+iKgYfupAbkH1O
9EbckLZoXSlp5VE+JlyxaDC+Jvl/dqyts3qt/6Fuc9AtQiLMsB+bMJYN27hUjniT9Libf2PZiZDm
mqFpeu4a4jRYMBSDefv8CHriKI62p2ATdEuXu/ynBnNSvLDl6vxE/Ds7FkXpyAUxLo8Yg7ryOfrD
ODc6psdIW43Ry6Rp5FOywrbvmTd3sIgV4+VOAb3tP5F1ur2xguBjNO+c7ZwnDHpuBw8eIS6+k6Um
hV5igqCbySX165ga/zU6lgsN5js2b1X5NO4CMox9gVBL4Y9rD/cd3XsLZAeNQUKT/PpJWoRxC1P0
8HT4o0p3LIF09We49gayfhH54g05k2pYRrLVyTBTU+piCBEP8eeGm7+Q8USO4h29kdANG9146hHG
KmI74KoQNtZgFj6ZSQZHqo6f8Iyw3uEJSdeHccoPncqE/3THh//GrOTK1ESxxARVJ4xzO91wGDa+
ehfLBPNcnjPY8e39sVk35TJA2oa9k+I64F5LopNDO8IY//bTjPmYmvzTWiJ+qgy1t38NWNl17Ua/
JIF6nJM8a814CrDaHqJPF0nlQ87xgJMoVBUTlwh2wptfGKTyaZqe0NX5Bh9bJx6vCnQsERmqDVas
bJoQVyjxmIHgg0LPQV1DJhm5bWKpW9Gqdpz3BTzR+smHUY7Ua6Sr6vDVUSMOtoyiBKiXxhPl57me
3+a3jPuKeyMXkuuDOnx6dGJaTMVs9QWaD5zsquBiWqyq5FTqVMESDAuvIsEiZ3KWp0shtVyo9DwI
0osSQFFKzQl+nNV1105FoIbbrT0ApCwaCHDsuDPj9ymuh2DtHJ7QHtCkdqMc/zecB1j/gvlVQ9wg
8RMnItsErKoTVuWbiqHW0K5KeWBs+T0CczSusJ3Hx9keUqyAD2N3kQtKB8pAQWcR/4FC/M5i6VGc
sMOmPgGwoP79M7P2MHMpFKn6fOMxS4I6xUnykqBreTy6VvadoXeCZ9sfGIN81m5t8mZ7baGYhEbG
u/cD50/pTaxVDZ7DUwtOab3faSG2QehfkumO7TBh0hMObxNr3CM+gODLf3Cj6g4IG9aGUkpbKNzT
rGPU+J8CD152JoLwQ4tzfq6w0dRwuws5SZDDGSYHEtegDSW+poyFxwG4gv8sO+znIUBlcyoD2sK9
GuYg28++o84/HxItQhSD7JSJ+B9UQDDc7aIZoH0++OLG1ulUoTeD7GADTyD6J022ds9otVVtevMT
2ftGeRw/ltUqe008musczDAqWU9WYy6o9tb9Nygv/EQ6AMoPvmdtJQkDo4G/motkIWF0MdAe6LhU
khc1Hk0VBKOtowl+idTnMANOlLeF1sFqBnZzrVC4mhDUuidcDKQZVPGVRhsMmzMvBuq9c+3Odo+i
bijlToxI0Ysa+QLr/dl3kSta4GMokpX48CgW/WZAzFGCLhNj8XYjEFB7YgfuF1VJsk/Ca98Uv2uu
y41+6GSoZRCgtMf1CvY5Goy4yaMFdzNdcn/lfNSlxW9/0qP2qnAeSmsgmkGGNZNKCaTted7Df9Qv
zh+KhwSJX+BRF5lrbv17jS60YNt1NGwX4/1knNOoTSnKlcF5MXbqocr2J75TqupFCxmFLWqJVj8Y
7IPNWPkeJMWSrL+7e/cGiF++HunJByVSQSsZ85VFNhN8VenjP4QCC3kpRWOvQBE1h/A4S2ft9djr
5Qhm3BXHfcwOclEvS9EUwZOiZ3AflswOomzfuNCEMm9FA8CdAD3aqP9vqkPx5Jviak6nT2bkVfuR
w7dOCeKVZTSC1D+4La9J4sqxY82qjrd2TkbYe0Dg2z0GNe0byyj6XKnt7+7gUlRrtOsRu/xlSNIq
QEUj6BF+TX0jJIQLT7+Lfy5GbrVvVE1Lmk0sTAV9usaL6Hx+AK1caI1QPDGvC9xz7uRUbTi8XFzC
kGcYr19xuhZH97hc0laiohVM+nx6VZ/EeisH+ixoDNDN7VfKjWo644rAGIk4ddQEW+sYGzf9T1n/
4DDa9Rv/TY4ebqdeQOG4m3DWqwrhm8yLSbr/ZaHkegSMxpc48hQtslY8fiLiYTDF7nA6ylgkicuP
0h7HtnoxcwxAVcARPpkg2qdgjRaGWdmo3eKybI22+eaPAr7hJDYyvZJ8arByn1+SviHowb3iWBlr
BIM1qMDJFeN8zvUezB5WkTEYuMm1P01/4npO4o8nWhbveQHbipxms5qmnM89YVDzr7DEmpce9NYt
lhkAn66VgOZ9X4/4N0GWVSqXyexLdOgNSG7+InZ7DYKtgiUM3HiBoTzYN2d6HH1exzQMjbojlt9R
zj0yEgmIsDn4zOl+WUa3HGOLzokkxPS+oa2REc/XdGOEmvIz452bcP+izm1rX1QR0EsvPU7wuPkB
MOZis+kTW/9H+XURyYXLapatk3GVA/ROD/vOelnrNTynTPkwb3UhWQImZGzHWXlcgRr/Zbxf2ViS
c7IgKhXmb4a7PTV7RqegdmSRpwasxqs5hBKAN/ROQ8/cB5DceNjLqjhddvCe7GcdyQsz7aIPZiIb
J2GifYa0XorXFEnYJFAnEglmgMntD+ren5w+mSS382p5CStqb6r5G9vSChw9P/bUTSrAczQALptI
PkUSiFpj43PdZiCquKJ/jAK9B7ZiVnwabvLuXcnQXxkmnJ/fAvc1eS1tOAPdZ+LW8NBhGntwQL7W
RP2E1a8qHkbZKddCwcdK2oREljADpToyK3JxJCpVpkLWDywyHk3IVHJvGuR5jYDhY2WY8xh13Tda
aMyEPoZOVUFm2vGs/O2nSpVAaOSA63FBUe3BQa/odsCyg9i6jcyqWUL/2Qr7ispuVd+nCzyVg5p2
VKxcuPoiFCB1Vem2JaCqDO3qtwfMeTFgSubPlNNOCWPBRwfedvJGJ0Zy5xknAPRweLWYBbyRqNwh
ZazQOMwd5DwZ3aDRNJI0JbPhPzTFsLkg0uYO3E54Bn4eYvsklfXm7DSnNCoJtWWFD7OSzCJA65hn
LriZm29T0HsGtCvf+kV+cZMdNRxnnNsxGmDI+7cmAjhwr46PKbiUXzGx41a7qmUQhUcO8YXvCYs+
aGcyOWUptr9nERXseNL+mxdZBrWmrRIdYrM+gNLVB/OPiJWBjI/ACNI1H0Oe1NW6tBuZDTiZZb2t
rEjCFfs8VXwH3E9W1aCSkwrM+QP9f0Zg7rUjeIkgcGwfXzuFSAZbbHfn5AQiXXYRrmkaE5keCws8
MnsrmotdkoYJL+6d9GcdAp50IX14zaBquGqIzCLG0/w0rmt+fCjFvT8QNEL4XLrbPm4Te+fAbRSa
1/BzkFyoUKMeWYSzP1qB9zgb8AF8iZ8FG0xD9VI99SgEQI5D+AoaoPAhhHT2neU4WtyKngSnbneY
hs2SlIQ/Y5c7T4d3TdYEqDXjGna/iUbVbg3Fp5A4uHDfZJhHTgr3ZlQwSU8lF2x/p2eO6n66N0WD
yIGLVDDShPFrxV8BF188SMFMb+U3AJirqgXDmB++4EF15B3DYCcYaWj2wAu0K1RyRkQWYTs4yTyu
dBDRnJ6lt/as0ZlnlUm09xSNDCyANhWB16b1X90CGe+KMJdUN+xY/FXrc7XfSCr5zm0fxMbRebyl
iri2ZoNpcIx7BxtaQqdlZZ3pZM93YAhPS8w8jv+N3C1ZGxrqCabnIT6TGT4nUoGZwJxGf4w+j8qP
RQKNa/acH3aYtC1ZS3lPEAlWDPUPBi6sPj/ptGB5g+l6hA1O/EpEoC7SUgoLPDopF89wX93pJdCQ
AiEDFJHaXXsXRYwyQLFL/S2AiNhQw31JuNaTUOi1ouFLQKA0kSx05iqV2RLTNpfE0w2pHt0kjL5t
rr0LMXOYON1TkwtHl5JWkLZMSy2Za0crogOBWj2pHGCfVIDsN5DmahAHqC33FRldSyeZgJrezExJ
IheOPC3XvHbDSUs0fna7Vc4oAW9rU7iJe3t7+GYDKtn8C5XdVX/3NHRI9fDI2cXC5SlKRt68m+n2
iH32Sx0TAJMeYp1wUS+trAGAQujQdaFJfrtRYEzFXBuC7r73gVNJP0mKBR/TExV7OPHBUkQ7+AS/
k1pTn6MBDOLMGimVd8p1EgUXo7L2kw8E9/F9QDUVVDCigfsDQM0PoFokoA683bTrXkxHLqp1rx1u
TmyeBEUULhIyIPCW0uaGXRzJj+dIIW1wv61nBCkecTkCqT0PESW8/pkOfbJnd+Po+sTiac9atXuo
hYEu8TnJnOHHLbZlR8Np9vR4/EnlOl31lnf8LwqRCykOlzcZo5FL/Vcox02XpU+1af/C8I9SZwa8
4AajGEFsvDCtlH4EBpOy+CzbAkARaBniVV5DcnYkzCJTJRPGCbJDXGeFIXjX5IjUDW0p+f1RZ6ZG
KTo7ARA/wAj99pfTT9uEfMtfqEAPiM7WAeS8L0BBd+u3LYf/SMFY4e6g94r8CMi4y74+ZS7ItNe1
9TNzmMRBbb7aicJgCNaQk5SbLjHz3nr3FqHTJAjgWnvDe3gTU0buPG4+fmU5LOe8cXCglF7D4RuA
cpjbY+bJzVxi1826fOQknH+5TF2g0K7k848K4rwa7iD367a07EVwRcUH0K8XoBi6WuUWqJzcE/0o
pTujj994YhqT+Jt1FdY1/pyYF6Uu+YwocMpdmAXvbtyUcPiaZOGnPAheCGRWyFRS/IEwiWDCKu0u
4ttbrhuvJle5EJ7TTdXaZgK3Z7yRoz3w/Q7bCuQkjcqFgLbCI+p3/j2Ap/oCF/uxrS8Dyjdwo6K5
r2i4M5bx3cGYFXkVjAeT/qiqQ8+yIwD7mondOjvy5DTr1sN4td3V+wGLezkj77dmM2Iqo2IqhVmF
f8+VNRwEq2G3/IDtVocgdvCPPNAa1NgmN7QHaHjz3bD4axhoH5ADcjlPUC3Fm7+hpQoCZBhi5S53
pi0szJyKZT2hCA+W+Ju+oltSPdhozSUFYnJoZv3hBSQ6m7EzpAjEVfP4oGSqFxUW689o5Z9sWkp3
BAnUQmnMOftiqvNgO3WKJ8EoZ97LHvykDxuglM/7zJHBpO3Xvhu1fm2PKEwr5tDFZR/OZRfXHdR/
CMffhwaqw88Hi7OxsMBt9nWF08mVzaatdtX2YX4ruIHHJMszUdpUUCnOpmP5K9AzGno33YhRok2Z
fhBWrIkFN1VGj186xJb9kXEk87Q3EKxQLAUIDL5UcOf/qx0jxkgXX2dl4u/2XJ5uN7MT1bXSnxN4
iGJRySLb/x7e426bVYGAW2QBWn7HWSyfE5mvmR6GvCGOJ+H5WtceaZEooRZOC4SHCDFoVz4VLipx
WCEwkd9kNyVK8AoYq+e93/8kMbbTDx0ohrDC8KSDDLm2BTpc0D6J4WRKy7Y0/EI3V+vJ9xChTTNa
tw2b1qioO4GCD1JpPs1ag+WBnaBkE//KmTZf9ock3yPGUEY0u0Rk3B07dzBdL95+ayhQxQgOw+2K
He1jcaXx7G7UyWdcns+SoYanoNBXQdPaSTNfcVTNSsM5xIFv28rHZWxe03/WD6ZTMxjSINkUWZR5
TlaE0tWZKaVZPYGyeSLLGrpiLEvpHDNAXC3wiGkivlFXLvKioJxwxbfyNMzAK/eCz4CZIUFy8n6S
El9tzWHoir1qbw+xvSGhE/zw/u44G9Hu06NTTdQIuCG09/juVQjeS3kM6XusMxvyiDYx+7mF4aIN
75jcnVCR0hnSBWhaCEhVGAwku0PIkr67CQ332vYvjGRYmT5jcC1j7V3ZLJCJZu9p8GkIXIkxzyyK
tsts7kazH4tZutLag7WNK0oryc6iKUcFLo2M3vsvOSJAANyT9m+y0xycS4KXTR9vcpmPmz2zps9i
BLASezl+2rIWPz++2nvQ7Y/I/jvxbxdx5z1bvkhv6sXqQ0o536fjyIcZMe9KVuo4/u4CLWK4XBsw
Eed98RsRzdqNB5L97rLQJFdkI5TaclEV6ESDHuZcLKDO/UH8QvLe1oEYw3A1vFLjEM2JnS0Bst1s
VmT2QasAUMbFfK6i+kfiIrtxYVuVATb/DAUyeCvA/tDOED2xpGaFaab30HrQZZh4FHu22LtHmled
VTbSgs/BiWGOTFcWsKdR/uifG5RM1ybTIK60q1bURQyH7sIjfu/KkpH8lSxjZ1/6D1b2WfIdfkYQ
lJlsDudCbNFwAKbFMEOGEF4Cr8XODcMsaOEGzcR/2Uby5ztqOqJymoJXIVN0MEypOHliLnyk30vX
hslSd+hXupZkYw+l8LkaPVSTITjmuKMoFX/aiyp55wOlKBSSDisISMgMoBHphkmI+PyV+ujN9FC4
LO0SJcmwi21GCoLqfCOCXnP91P0KkUPjOiQgoTWHXWFvwGq7CuTeiSpKPR+eF58Ja9BSRhCJ3ZME
zmfXouKFbYguAYS9bCCGqhBexZHH8N7cFSxoH0A7fKQ9Nzjl/7nlHbUyMMDlI9X9xH/9gFZYjhdA
vz2QaRloOuC9/RhrxLnjjjRamYT95CFbNRkhNj668Dq8Tf8JUJeECwnprAbGptZoP65QojQGm/+N
7fbwR7xABwErvihcue2LwDADu8514Qaj7CoHz7E+JGiiQfLQzSXRnSPo0SgrVMi9jVEa4j10ZS/L
z8HXwmjPV11kDPQRO7zgY3hrBEJzhrVQ5XdzhXAc76N0QXzkiZLAPOtgocDLjCNg+K2FFBlGIdxw
bcJdO9xVTL8ePVSjsYvVQgWX4KPScOZZKfc3GPvpxj9ewnRD+lU783GSwVnJlvej2p3AeSs48QiI
ia9JiJ66U5L0Tow4djonO/Z/WwUMiZDERRkp4MWTY8ScoYsbaczVov4UMEfLyu8AgLBM2IPQw4eK
A36fIlbH7t4D1eSqO5pH5txqf5vLFNRnQp4QePyQGfNydbxBHFFDKAh5tGJwBRnGGXJxVxpa63ol
DLTx94h18t3XbUL+47ytrimUlQF0NXa9GMcKRGUro33pszof/Bk5W4x6GHISD//VuQK6Vs/0sUk6
KVuBzZfGe1KxpSFonr3IPHtftjQclMaifRzpszMvM2c0oJrEDh7zHWkg9p6Of8eqShzq/w0LdmYA
85t88XqxbfJ8uTni72rRMybaoCMpiqzYRS1x3ZxnOebkvRQnX2PlrVfNZV69irgiV8fP9OBjDGjs
kGLQ11NC1jwyUBN6EbOh+Z8aP/FpsUUVERwj7WZoPsWQzgLuuLA1RFu3RzEU6kYgzlgmRATGHd39
UoEZXxQ5rQJ8LVmTQUwHwS4bmHCRKcMXULoQftgmD9vNHBgL0sqrdNwDlMXwm7wIw016wFpnRKcS
HGr5wZQySStZW0SFvTdZyPRtppQGPMHFjoSnee/Hj4acYyH+sJEcA4wGf0TaBA598CqpS8oOWB5T
tjMobCfWNw63pxgc8YuTSHAEJ40HAxKITXqsdR38VmyLRaLRulOE+evuJfj/89WrmheHMdTuFDyi
r2lk6s9cDSi1FtIqBZ53/Fwb/JlgY6O36q+a7mwV+31hEJZ+z1uFbec7IAvV137lC31na+bKW/3k
qAOCIsGng2CnwyfiQi0/hS73oSW9RfLzSdW6f0AHBMz+janEoDR7TuEKOxADlgzIjgiCxa59wTD4
6/vBBqM5/oZOmr7bq8KRO+6TbQhWhLbLOEiVyeGo42mxu3ZiKJ11gZ5NqbGeitm+uIpSd6wamkZr
q0ds1PPwE2EykD/MoDPYiTPYbWPeHvsDU1KppuLYc5Q563eCKKjXm0pmCSyhn4zsjMMQ7+OI17vH
RSTlYdmuIOgCho0m2CITjOTMvKD3R/rB2fpfAknDUi+976zOTyDmhIgDzT3UKMHVbARlG4HxeekQ
Lm1jZ36db073zY+37Oa1X1lMtDDaAh5dyzTen/7HJnsUWJX6Tf2QNqRlojz/bkWdj2HRlwoz/Ck8
D+YZ/HJg++fxs6LJUtuqb0mObHgpIkik5qtvIW4zRHYSNN7GFds17CJFW8nHiIlVPV9h/wVnmDFa
OR/bMm4eb4DozEpVoFRqQR7jYQctv1pan/gN0TF3sZLT7tp8mpUPm39+wKHQVR1VV/BlF8hj/dYw
5rX01otLJxXi5LZSDM8F7r1hNHVNN5IY8IlrT8ly/wIzSY/WshAMJoqO0Wn5/4cTzisJI3AEmN27
tC49CDr9C69bTPwAp5dJXDJpsyhlsknRkPoS6t9Ba5JKIOwnLIsHc7nPCRl6vhATl7dkvb3FSPc8
t2qw5k6GKszkoy1navEHGILBSe7va4L17ysQnbgCvY22+HwiJNH7u1jXUo3ZZDAPZ4FZnIsZB0sI
M1W4R8YtfcAH07cBf9vi7p+P4TCIWn+TK6gkQT6dUsmGEGeG1WIC1zJaPnG9r/fZAzmLN9vx49hP
pVdiLLeYRcJjUf8TMnSPF8gD1IDCscbeZvjRxagQ6aw6h6Yb9+AQ/YMn73vkLcYnkHvmlwUU9GTy
KeAywisHZpc3l/3H8yq/7CiN3to/mYughw/GLx4rTdTKCBixVwEANy49T2MlrTDvQ0Loa2R1Ng5h
Vwmfm2ThpSl2+uLvJj9QzZwSjlU0pKVFTVRncXX/SFqRMoFDe1bx8xo737e4NcBpz/mrNkL6+DJ8
C95ZKfVDsrnWq/ScqvFS77TZFSnPlHFeCzur43IBzkGXdyZb6p3uNiy+gMktSfHhYev6sxuHmLb2
Gw7o6kFHZsGr6Qe0QWJHpnyyve9uNDSi6LtzlgIEBK+8MLNiYQxZDKB+U+8qPMoH61Tjcu6HwJRb
tDfGL5yC15U3GRtIcf52IECZOePZ7i683AvU0AGBZ8Cr/HudRUl1h/cD6h9CGYCQTegUuMWLI8R3
8XJstHu8s2DCCLWfzgiHltuT7TJKb+ycSLE+I1UikK0lNhpmZGS2l/Fe3krTXsA0BFAjLLtN/Ig8
0jVwfilTtud//RNm41nIn9osY6ZPjk3c1/bD96y+rAmyi4/TPE1vYH397lrwPsE/HyW1lHv1zxva
PEkVxizkA7ZYKywTDfikWjOBdU3OzJNtGJZjJTATYkbFMWJV8WUQwrgy/ZrJWhA1QEPU7wAlqroI
iYV8vUrD5DpiNmQc2gYeWZpWIncSx9tflF1dHx4Lu/0CalUBvvGTXsswclK/wGEUvfqY4pjCZALL
inPAOutYQVOGoJfN43FvNNECAm+7NWKnyfoF14vTgBe0yi+V5YcxOt3O8g8WZ7ZGe7Zc29qed7fp
xpid3vd2smXyg2OQi9NKEG/XX+XLXEeSUKtIMrjnueMcskgG9scWfGgX0T5eNjzmFA3T5znhlDYI
Oq/lhqSvVyAQ4XyQ+Ex8ERK9FMSncQmS3nxICjH8feyb2+TqT+wiEuvACEEM4SyBFLTnOazqPWpf
8tJwm1bND3N7bz9TnP+Aho48/geuTk+sGWJ9aS8aS1o1W3tsOKBIUzjLjCnsvnRGKhemnOr1X/PF
dXxCgYlrwpPBdHl8deeDF7VV8KsPN+xUCfTptQr19vBfYvxtF2EAZGFCQaFrAAombkC4Lo3fJqcY
9ccbVKwJX5Z3Q9ChAIgy/hx5tmj7XQgF8lcOEuOrix1CvmoNeqdrxMuE4UtPetIiWOYa49zWmS5w
6sPEhOF6NV4lEXRUu7V5bGpavRHms0PRLiSy81ZPbzs/+ILaqJpWo6xtW4dwj9L+GPaxy3f8r8j6
aXCH8wBSSquN5CFMwV4aUDDymfJHmRGopySOwsMmGBUHk8mH4TyyPdVoo85LAM6fvVa0oaadHlLZ
Bk+Cs9LucjIO+79b2+dvRYIDzIoyEwxDd329aKlZ64gtzACYC8bgxCDTplvFixMprxnGuqPpNcwZ
+rwnOH0Kfv61AYksqIuOVEZsOJ4YUYO1zBawdoWbjTpfDfDTSdVqPEVWSZ7SJP4YaemYK4dhe7tZ
9Gt57z0PU2F+zBsjj26a36m75GqGjza//M2+C6Kc46ejuJtNNLGkPBfRUixAAwy8EYneeC4W9tkd
Efe6nqz8Qb5EGrpgdlzstajSYzEJW+stzmQ88TMzB/ySMp55v47PSxJEaTJp2HEumAOP17yVS437
3uaptlkp4SGHfgQLJ6a4GFN5LTjUDV4wzYAO+S1lTfzEGjdreIgdRw/hJM2hpGF1Q7FRhqKwcTYQ
Drz/WeH3JHKRfLU+M4tavOSElPbZcyzCQa0xRcAkTPD4XB07KoTNYsRjSGUFtAkXoL3FMBu0p6X9
PEdGOm3X75zRKeZD3l0qj0Zndb+1Q9qYsCPf7KIIAT6/g3TAfN9YBMWsPVTs4MFsXSCZ1gjD1AVK
dPlcA8OtJ9xt4lKsqkLPMbAWmSpLnvZUqgDvG92TLMoaOeY4R/cLL/ptphdTZj6P9gvmsKDyPzCB
45+fbCGka7ggIT2F5G5FD6BQQCmsxoVaXpEBgbn97QhgQG9T/pvM7LsIJDG7Te6tSbZHcjkrJ5XL
FYQHjc+IwHDjWsftd1DC02XIokC+n/NhNnflhMua5WgToXhGOwXNOS69x3CNx+gxhbzo7kbynLNW
wKaCZZv4WJncNjCT3JM2RqtosDHnAV65Q5Uwy+ha+4WDV5RFry5A1chXAskP+2WsnmlCxjOih0ny
A0uF3+pDt+E61UTOnDrlrzUiX3kVhlyX9eiMk6+GSyLnid5lvHtK88y5bMXndhm9xVGmU1yA0ttr
PajNg63GuONoNPKhHFFaba63PchYdzeMr1GGKcZtFtaETUdKBn3BNx/2x4AO+Gw/KGKMfAXM/hlw
CZibBFNTmT8ewTuCN4E5FrwoZl0k5TL0Gvqxtr3vXY4j+Cys50wYrV5UoheTsQ1WbTWqZ8fR0F0+
CqoDdvAt08gu5qB/F1SjIPDYm3gkHJeTNexfbxs/nCzU6apo97cEO3BAgodZGWYCqnES+2R1lRbr
KkuJumeaw4OLhjcqUuzrvKJV1LmVt2fgYr8Malt6QQb4BI45qGWsrs68qh9psbSzSEWAVP6yS92/
8869Pum+xryfZvI+4fNFeu4xVikdC/shERT8BXS+lTZRm+BSpymkqOfQlAO1GZjH+Ew5XxRkvJv0
Ervp/fshkl/4xnvZKj6Oet/Rs8Nr4Hj4vf14F2IzlOlCPrrS+t2bjHH3NdOjnYQdBlwV59Xd38P9
pW0AUxm2XnmnbQrgByfakPleqW/EFAPlWSLC28ri5nO3L8/j3XxCPtewwYtL2XpH+ENIUpdfG59e
U8FS/Y4XTecY2UJsT6EErvnqcm4tL5Z6jZP7X6lTEINX93x5VWNMWFwefOLdZfIFCCty6f16tNkq
362TrnhePGGj31NtHnIGPpXA/m7MbuJgNcioMsRqfMl4rHammoAQBH/83rAAgYq0pveAA0jKCmLF
Fi87qmUBbTrg+L1HDW5Du4GnxALYC0MQD0N/sD4TQKeVONmQfZJi754e/BHjECJEW9XiZvIB3Fsn
efqhc66KrNm2r2mLRxo7jlN9kZLSgrfGmrd0xFagTtAZzWy5nb7roiO4wWCB9EyVoNqyt5wAW2FF
XoJkBfwaiHEfecBaIxQgUusTLoJz3sJ1EghfW4Ds9bdruKvi27WQm9nPM9+Low5E60Vd/hU1eefu
9oaD0+MeHKdYGUUj/LkI5rM9XqnjehCjVEcP/foOhOhQ0REYXIsO8bbObT1Ar6at9ORL9BwGv1uU
5trV/5D8jDldiSg2xSHeLjGRV6OGU+GuaLuVfKqoIAEjD/DYfC3CxGI/kfVFI59X01S5u9YmH1h1
MlEtbljm4yMc6JfQfYnUUKbWQPgibO7qeVv/9eY4d95dD4YSUy3dRgIfRuzkHgh1bpH0GjEFs/hw
qEbA5xuq9AUJc4pXiwRGJcv06E6w3vHlyuTaKt3qtjV0PJIOdj0MsODcZEEXDhz9gT17iO7d+y7p
AmmHoCrqA6BKk+I+jgt0ZOUblsoSmO7Yh6takQU+STCnJJbtco1raafGjhmR36fxJYYmZZqRdZQH
2A1jKqv0NxO8S84kr9uHpOSpYJ+R7NgQMqonntxaC/428cI15GwH2tyTeBfS5lkCn7pO8qhWytXg
w8EZLq1XBNn0l5RCJq9L2CGcJ3b8/HAcmnVMPISXCzg2jSL3nFkfKwBL6J67kAsr6ZBmjAPJ0nyH
AVXQG9xntRSPoWCtrMnUDdDMp6ReljHYGPwi3elhBnab0Lu6vdKF2dHMbAsOJ8vHxWvLbwUbmbAS
2jXBOetmGD0S/j4jEx5Or5EhhmphVXnoTnPRmHzgR/M1Tw+V9cGPkziF6kz5GfsR3Hbk4Ckmwo5D
V4a/hZDceOind3nEP2ypl3uKTGaK6bwnyenyJ1RLSG+WqjgJH8OeXkuzagaZM+5feI39e7z6PRe6
Pnvo1hjJLifRFPohUm6EXMGqexI7TJmcqsns9OVjW3vGn2I551P7KhrFcWzMLQNHEYPCeNo4SgnA
FcABhZ8NNGGRl1NhhUWP5O42Mk+R6f7xaLZvsi2gFPKOgmN/iJimyQM08g/zvnZz1UWt+rePafvq
f3MhrsmciQxkkGzeexcNTOqJ2AbUSEZ7uS+kMYBeCdqDf5luq6dddCzbb8gU6xK/Wst0kAUYMopo
DInpqpw/AP9uL2DXQ4UegW1PzrTYRKYAo99WWm+PaJHq5QYiUqU5YxdQMDT02OjRqdp8rO46yTAx
yIjvG1Co0aR00TcDgVChSdvd4UHWAAvxz1I6H0tLv+g70TdtZwCXFvJnxNn2E+BI6kCNROtoHPfk
MJoyBcybLa0f70rqqzh9xHco0ucsXLLRkeuw7ELE4Y2ea2Tt3MeLd4k/YqFZaJ22YAmaRZLTQDak
hRm/V6mUrg44tZPN19TnEb0fs84eNOsAgxSU/WgwAj7psPyNsvxxBZoCY+jLxLr70ETrYExRAaUH
4dOVez8TOBYxjGws0J936DH7s35AnH4XF9DSasAUS+zIPdCw38VKtzrMVPWeClBUTnCrV/Hu2H5+
nRtEkF3rroSPKmomScJIjGTbyIW2Kb5ApiYCQxit7HEspwDd3avVViEK9zMxoquMmF+KnqlzONPp
1kOvh+vkWpVSQ9QA21IhahdwRbw8K7BLW/OXz6+tt/YxNHRz9VPAg+TIaJTLdsnAn5JIwRCHzG16
mcSjw0IlKmlQE0t1fg99pQuzYyB5CeMQ3YveLSH7IvlBr9o3Wfx7U5LTU/786EYGf0GVkkMn2Hql
VlvnufbwcQLiEACJDYdnpNexaT9VRn7Y5S0XXSiiQaMO/wWeHGwD/dBjDMoHEjzTNsDZtAGoeltr
7BgBHX4Z3AvKWc0rpCyxlH+6HCQpj3pnAT2xF0pHnxuAw2QG1lukkfwLzLLDDRia2/C5QX99HX8T
Y+GgxeWkvUWsIgMdZQr23yQ/UR/Jqsx/XzuofMCr2pTgGbTjOeTI3SMlp05swooWqGbDrFpun8Ey
0daFc0nIdW2T5+6rBRXGCNPO1be1TYtrP/upRoMXB81MBcltDV+D/miYLe3w24wawTotIWZuLuuN
fiFLUOjzmEuUdbEwiLDTQzOTGb4Fhz9QZWJKCJB9Zov7ucwntNcK01zpX2FrvJtSX6XxzSQjC6k8
3bnw6+ILYZvs4HOyBbo2i6C1BojJ+kzmyLDpNTLi726SK4OMrheHGTmrmknsOwvkLkUIPo6Dgf1G
k/n23T3YH16Akkqut7C4z9lBd1WO7Uc3jQaHXowycNwSYMeqlnndJLcnrNAIz/BrFZ33EU6j7/ps
ZFoikccgOFko2PW9GDjjUdZTL0YO+NeJycvExP+3vtDcbQYJXDxUd/L3KrEk7Q0ceTQNIBcn6WY9
iEa/UaLNl8gMVrVBmKogzDRDjiGy0jDVEQlfckCQGaOdwCVC5xy+46dhf8pt7yli3DpODVFO+yrN
Y2FJXbtNobEhTusftMrIu/yBm4DlxemR2kMVdlmbXfizMN9Q+3buIYfSgPrUi8z5/T/UULtXIU0E
OPBOb1JTsZ/K9An+pswW+oOF0QxMoNRNJT1d/XpLvqSIDQWx2qjxKGlphOOWsi7ZIaV9mVuQP1z8
3BExHzOYpxCrzP2Pmb7yogLDQYIUxqEDOy420kBJJoQPj6NQq3SVNnQ8eukk1oq+vK2obl+nnlt+
Dl+QcYB3Ygwcf2J22HhDK1obQP7BtAbdoJRXw4RswpSbZvf1w/Tuqq5n7tWsMrAX2nCkg0+7/a/E
93HJMaOavDBRKvfnrr3Z18J1bGOcXcHTss2oBVfEw8jck/yy6EkblLitLqE/D7+hzLzPo33B3181
sjbULaahuiMGxyyy78KArF0xlwT0MzoQQHb1tbnhIOAWkRJyg7NsyJSoeXKdNHtG0Ieiltl8rY2Y
8Jf9eH5usugRQxyvdNoBJhQC2JCnmXHQjgwPX16tWd9HzOhXr6ydlAD7H9w+qJt2wOta9cF21Hyx
S3EknMYEonD3FJsSK/cllj3anTzhzqWe2o12bwOG1lUWWdUe6HIIF5dWJrQWtxLISQ4QBW4EWKyZ
6h03+Nz3XFFtMKCzDSpKkYWVgMaxwnD6+6JSgFUbDF+ZfFhZ1QIZtgjBwh/qK/XzguK4M/1vVNBk
KM4BFA5olpgsVee4N6ojh+g7Y4w1FWZ5haXLtwdJsrJCB6amIcjEP3n9zIKnWTX4iy0oEIvPcrv6
caoT7r7fLDv/EY/nhWvGWnKVjFFmiQq6Mn3mlresZl78MY5pThAbEKSnjKAkAzAUubeiKLduq9y9
cAARorxurQP7dIxiT7OGXvM/fE0u8eTRjro1JRS8b1o9lerPZxtkF80tbiAkcJyQxSBkSxBx8kzC
Jq17lEglQn/K9ISTIdRc4k6XJjA8l0QOptNVCPR/7O4LTS8H2OB66nlwA8fhK3yX/UwdyEzW4hoS
gHvIhcJ597MLYlbs5+Fjug/42D5arLx1agsIDKRxebwJx78+3HKWpBT0RR68g4oz/NjvDmuEFuP8
J5VIc/RqRi6F3Y8DmZfdO5bdSHldSRMJLwmnbxD1RRc+MxWP6iKtxPDH7x/xoOPYpgWhARshJF+6
ULZP9qrxZ5m/7xkOn6+6+O3/gElnp0Z6/G/p0sFuXEnfBu2MWRrYkfYHFoRi0f6Nhw4oD0+Dhxxg
DnFeXAlgYTSW8ZO6nSS+k5TuOI4ElnUrKs/WhuC5u8dhJYVUqNFfxyy2d/rUQ9I8Okp6Q6yC7bUX
zY0V23K742VIqAK9wtYb8TEObknWzhj+i2+oMY6OoJTSOzo2DOpW9VdY+V8oalGE/YYjqc5vrQ2t
pxZ1otzg59ShSo/GoFTMuVMmwksVgc3hIe2+mVHnfD3LkEFyeZfz8AKgrBjNm7KsQfLYRAUr5P2E
NqI7GWtaX2n1NB3PAfv/dFsp2nXSGvzWRzfcEK0d+FvEMgT5cwrh8n82Jv2nwNpMbGXX9onaJLdb
wAnF30BMTazpjK7B78J9G7Z3CXTTYx9SDBDFzOr9zpPEXHwScacPJ43981nNKpxZ9thKKz/BDAUS
aiBy1DFFcJDq59qpqEOJTXoPjHKmjWJAwupdpWkTYEjgW8J1lVnuAR3MlD9BtlLtNs410Xi8M1q4
FoPIv+cOPlbkwb6K+DHU/9couWaOrTay41duoXnpJhuqH98u0PjMHVHoUiKTTGITqZ/p1q73qf68
Lxnoh5g9U311slQPPOA2ic1TEZq6uxHoITzAjovoDUhucdrtjRucsWd9/n7GQiU8WWwyZxukLK5j
LyM0jETfaplkQr//cx2AshM0DyJeZVFyVi7D+A2iOUdpLIxBwEtGJhihTi1qc2/w3bNlqzIC27vb
T9y0b2z5k93S52WlGEJQ9+siH48mnPFxh4ipolBrufllgtYGfwqn1dLCS5kyqpo19D3nFUXETIUR
nnhLWqMLzFVn4uOpHCGfGlsfNJ6UvnqDkLFh/YaTCDm48rM6fHMiYLa6tdaI+wUnp43sIR/I2MA/
MiFLwaSRQBxv/7+aza4K0z1BYkMTneUQ9rMN4f66EY4C0+Kaa5n85UzoMvEzBt8bp6EX/JE301I3
lTidg4uI+2VWazXPi+ngxMEyezq0i+OqdC/QhMWhJUh7JUj8t7He9rPeMZ9CRoiJwPZiSBGWIUzc
57WaUfYzpGoahiJZq5i5LfyukiJIt10QckHFTZWVovsnSbzK+ANkG8+XC8NpW3KjAaaJISwpbUBv
d8u5jb9GPA2M10GYSH6YcdfxaVOJCER6cD9D4Uwn4m5q1tDHChmT80PbaS8GVwEeqwEdy5kprwhi
tCgVjC5LKLttOtRFrx6owP9q000fCAPNyz10zQOlaoN3u0DVBR3ofKyIgun8foqqR3AmK9MtpYjv
uFr5bw5NLEEfIinxkRMbCMIiBn/AlQa05krIdbwP4emdNCbRwsrK9aQxx2EanqPBvJfLa1xZab4S
VbuzDqPKSpP17v0O7+yTSxdTPdOC9no2TUcWqHus6g/skIA8KeMIYYvSkAmSOMZK+J9pgo9OHtpJ
6pwHJutK7FrnH1HcctzqKXwuq/jY576f0Vwf2BV7OswCOphtYYSvPckR1N4/7HJRly4uno05/02N
MZXNOtpGSYDsF0fUhNefqkg1MOb83xreUq7J+Yn1XyY5ocD8c2i8swbbXU8qL8RKLR3uH1Ek8z2I
r99hWY3QHbpxyXIlcPruwxyVEgV11ty+I7S+E6IjlG0F4zkTXs4vSWNZgvWK+SuZ9//qimFuZQRF
mm+yn23h7dDahTWmNdzD619ZSBKrnAJTvrOJVA99Y6MQlWpH0y6TrQ6SNwm+YXtPBAv9CmJ4eNOD
qLKJWYCFXrbGtB5o6eZdTi6f/xPaOyII2TAghQwjm8ryTicfttuW8zGZfZBWsSWgCX171Sr1b/xa
8OCDfaEh/sxuC540IZNdzYYh9E5xD3RrOhijzN7lPSluOSrj5KzG8pVoeQFcAEtOaVj6LWLh5Drp
V4Wuv1BgoSywD5WBV98pdaJX4PLTeR+d2eBYwfKvCQBO5BzTyhR4qznOpRKax/gpTwt37JVT01mz
cdxtqL/aup6FdaIPuO+q5Hp3qOcSu1vhdgJl7sGtN4rvhfFmy6yXCGdkTp8E/fAEQHJL7hCcO9GS
f5nfyN/DFcF+V5pFF72qd6xtO68rHnIyilFXj/y5cz/V5xuqNIZ1wzE2UIV8P2Y54/vU5YHc4XD+
SKNHvdow0I+zEORkX6udkgeSfoKM+wGQ9wLp9n/4K/SgWUg3DnML+T2tcuCE1GEFAHdAJ+RafN/I
vl7wTlLE8OfNindBdPg/KVPA0DL6EsK729eVbWq6ZVbdLOYaLUJ/EczCfoZ84hXbyy55OSplhSVB
XSAOsh0tTndgEp3QV7IIwnpA0L3m0MD1k6RBvGuuCfU+9stzsK8cGhxD+BVy2oCpSgr4knjyNRph
FqVjJ1MRz18Ksu32fA/ArpklUJa6VBso+EblxsT0Wd4YW67t3i7btYgvOcy9AjNRJrLx92yvSprA
9EvVtllEKOO86e1cEsAMtoX+D5cfGbAtO3iXktvDtZam6qFoefn0W8GJZ1D6zmbkiOjja2czU5xf
EggIwzDmKP1RHqUcq5RRRnB024pH+uA6JHCDPrtqkm1EE8PeaGs3rw2plIPn1H8k51PVe8JRcoet
rVItV8gray1hHhuMfLkbGqZjLqhizW3x1Zs+NgV1YUdsu3ilptz7HDxdVpLbKha087WEtTnq+8go
ecVo6FlFFDAXiAxJsYU/vPbX/gocE24XJfEOxWoT0+7QZDmuhKRjOb6be5x2Xd+OAz6MwCk8qkNm
B9+5Cv/NFTbREIlzTzKCKgJyF3BjKiabCY/E/w8/6Cst3Z1b0pfs5HiXjiuCR0Jd+rasu4nyxYIY
rleq4AufLiD+Mez1DFyKCJFk4u/zhf422bNHBAuXvKEOlKBXzsaTx7n2fgNcBJFA7JFVmBMFlWhN
UggxE1tge+6385/Ivui1tnfKMkcPNKRKq1lzXSOhVn2oVhmfM44B5KwYlX5bTM7OsYeOC3KSmntC
VtNtLE9+GbhZPEQzzMPmwNGoiTCkqCq1vUHDt7Hd76Y24rJj/LTw41bGRZLg2GzeFeqF4i3usjqD
hrWB0Wbwrc7ihCeTC/rwTxp+HKkoajuREqYH6NZnTQSi+DmacowcePtMQfMdgUGVq/M6LX/SnxiP
AQP1iU1Gr9A8cSVMOc6ho3RsMOka9llBpRVzfKdNFDP5YWmnSTYntE7auHjZPJNXBXQd7SM26nWr
NL3JvPjXfp5VgL5cPAE9DqVpELwFlvCJLUZjLVD99NqIzQdoNP5Dm26SYzF1GUPLqvWlZIIOYfTc
ZemYp1NvC9PLBzavab6GA7hi3WDS0/Xb8eQl/ibqExGv2pX8tRfjjoFTFmo6IGiXjDEZqdSMmVPa
LEzKj+gp9LAYjL2I+3r5shlGfy6p+rrYtxLArqFV6FxQX1P8/ao9LgrCi8yCc/TW6lCQqmcOtw6/
E69oz22zQ/3qgTZ4irWrrVNHq0xp1dtFbWMy92Jx8MFiywLUBv8cD2yFoTtmvo4w/XMeKCYLcfep
x8mh4vdqpL296LERRyS2Jzgg6CNMBXTS4lMuTT1vxgM5GBJafgcArIo5+NIPPT5cpgG+pgMO2jQF
27nPLlO7CSrEGJmkLI5HUaw1WykcA3IzLD1HrlpplMFuFsU052iFridHc3TetEA7xMYFrn2sb4Ma
vV7ltDBH6bOOKTGVdQDqV69CJCoE4cJDove13h4ysYrRBs9wAUei2hoGA7794rcidl3wXkX9mmo+
x/3SHkXS4PWUX80Aj5iB3tLOmWUYhYyu7IK3aL/0rbQHIyG5fbOGxqGxeiwm3DwWP0UxwV+q7tdd
jUInAuoG8kEcgolv1gAvH1K+WffhbrVuMSQUcdEQSMwPNTCpDCE+jvhjwcpjQqWAKJAqq5iwB9oQ
9k1LGc5EMNCpr7+KenEo0nj2ODp75rCKPZEPB3F04HXTVp99XtXYM1gAxi5ojs+FgtMb/82lW2lx
y9lL0S3OiEoLgId63LSlSHX3guqQ44pD82bDCWUYtpBcuKjrVt6KHfpp67ajcIFS124sbhqaEDZX
ORe8vuHjwybJXqyecTO4wm0HN5MXSx9lD7gWx5GxMt8fA/ul6qTaDAr6bBGacQ755vHZjYkgh7Ze
+wWyQSrIvYzu7EW1S7VukRZVejillNn7c/LdlHxYkhPZyC5NevopDcVho7DC8HjpCIOc1DEYTFtt
WU/ums5lCQvYEPHSJWgYe0bd7QzZGIlPsi2KxqGxqOQHI2rBCcsW9zFcgoy3HOvkX5v+SCzCyolF
9sYXXEFmO0wjEGzqFWryWEizyuXOwbQ2nG126LfCXHlF8lKJqK8SbVeGhM+3gJNvTgh+ZCCAVQzb
8jRxSe/LqoUofUWwOg8nWtAqupeGqH0A/SkCBhfvpcLf2qTtbUWAoZxziI7SYeXyF5zWqjNVdNQ5
gfNh6LLU147MQenP6e2ka22+YWsMs6bDrUDBaFsMUk9rd0cCNMHlzHWKsaHDBYtFHrp26M1yfBIq
OPIFiowWD42VD6tq02eDId1nWZxy24y2p7OeVKmDgBYMLjO+wyFM6vyyzIEdbBsEKchcPnADqIkS
D5AwBlqNNyNsv2tPK+vgFwi68jdhiQLqkgN8tvXUiT9rQXa0KRssBeZcAQ29CKTkfas/oo83IiBQ
N3NMcRUjF27HF8LBQtZM1biJ6P3Xs0/FvvFG3T92YEclBqnQYHTvROp7mDKX8+kot6GAD+QEXy/R
Sr83RjXcWpv/Q70b+VUj/XP4UO6S0BmOGVR3oNJ928cvCpL6zV/PK3zog87ib12jJlncABp3KXBT
cg38xCJFQaHfPt0FvCHtl1dos0UUUHA6R09vR6UquGjECdWhN/+mJPBt3qFw0+Vci0VA9VnvW7AX
HK48s2w2V8Pmgu2SGuAO3h31Blq1lM7Qh0LMtW2X9HHsjCegnMW1fw3sk34Ggbqcyg/H3y7uR29R
sphwRHEAyTpY7sfkHr8Vq0ZzLGsBijcYQnqyRoJ7mN9TDPU0MQc9+sLblaf5Ms60F/R6GC/Sg/8A
uW9VmNhocBZcK2EgbVzA03bbBEIi/sMk2gMTvjyyZBSKy2MTc65tOG7nvky0c+BJzV/Ek+jwa699
GbbKTQj9sxzwPYynNatCjaHc2MNW+uUGAAPBZuiN2yiZdfJKob/4sH/OC/xkZvzlBi9VbqGfHeVa
L5WSUfrZvQaX8B+1XOfWzaSM9neYLlPgbB/dKrCwlpGm7QkawkLYKH//Ce5E401/VUXtV5/o4A5f
Gh0+FmjQv2hny46R9ScAeLOae/Nq8jt7C9HoCtg8C1Zz72lMdu2qMuvtVmy9jEK5WGwoZFHnQBIX
rKnFkziezVyjzE3G26tNcJaTYOGjRzd1mDjC2mMau60OLwYE5qVOjBAwwOoFAzaH+QCJ6XYEAzF9
ODQOs/Ef8Y12IQRE7th40PPTj5VlaASAcsvXYYZZkXIzBnFkv8P8QEJd8BYIKr8r5C77oKTUIzaW
/coB9MSiMZ1CywzQQ2YXvbjPEBpvlx7Isj+m5JUUMVddOBfzrGlhLwJkdkifDzZJJm/4XUZdTN3h
8O0YV/Q/C8qO482XjYehu2MdwFnfa8hUwVckXKizFet+HcK63Qmc2RnaDbIV4yiDo1AaXlWSse02
3+LAVEgjvP920vI41Ha/+79CCGJISRxONii0FVxx1dn+mG1YG106SoNN7WcHg4f8RZbuvzC/70ST
sEj2SLE7MIeUbE3Wu0eyZOgBzNf684KiXg4+IDn3RTOzX+WkvtUlw/kFw/g1nodLHxUTUz36YSuC
y6k05o29Q2vOWhj2Ya2qnf579GOuwR+//tuOiK0vt5DVRKxuVvGdURAuhVJbboWJCqR48SYuTkJL
h7BSUopYxzt4Rmjj4OAMeeE3SVH84rxZiY56VHpF9H+wDYxhyAqVkPRxH1Dz97FgfDbry/m4mw0K
fU13FOqswZnyudUdTfOFx0E1yaq01I93bUz/WYZR9XPQAiSIda4WcdxHCQqko4aQrc+3DE3iRoqH
02KOKf+mtlIcbVnvdTGlRcqqMzcYmrwOvUPSrzPb0j/NcJvM5E0CY9ruvT5deZ2Ecr9V94RMXbZR
8O/NwzpWFw/6e856CDvyZIFKHEDJClgKE1LRM+DH12ll7yJ1xymh/0dUtTIgtFxHWv4lqsQzPj3A
60mIrgedRZojVYTyi2IVRkNpUnDwzECOigujgiviYsUs/xlBUo06/FiZjHmbV6yGHrpT8NF0pHfX
8gOUf/UQFhuwu6FoRuvxPpIgfJkqYgekceG1xgY80rEzNEQYVnaHXMhy9qgdYnLXEWuhsrq4qaS6
vSy6WRbcOWrl8PDMW7dQoJbxMQxQVx4DMsRUzr2cXLden/zx5809bfewTGfGyfONxlRoyEpJaCUO
cwSMzW9XQ1zzzL6VzVjgJkXsrlJ23oUeBXS8sb6qT4L/8GhDZYoN5UisSSIaFBCf65Jq9f0UTzji
++lfPYlDaoN6Y15rfT5MBB41U7SWfNs4puBvBFl2gsvHxaxcr7JYk0qSfYxxpq73gGJ9z6Q/zhGA
DRCAXZVH6hOoVXjVoZhQWwVFaEq/TGSkT5UH4sSbH+z/Z1tSCvDDO1VWEYZMLSC/WoRT5kuhSUM8
iP2ABqqCU4ReJIrnkXE98o8JBGbcAgJnM7YGA8YMgoiryl5hNj62Vp/vVitrzzqHeASnW2sw5vUE
8OMEjHtvc1h6ipRisGMYCqa/sYpgkcZkYCbkTj9GaW1DH9QX36EGAWSJjRZ96vi5YlCq8T+w7Ssx
NuT87vjM1KUvHJYQhO45F3xHvOoxwjIL26mRsMDcjo4wI4UXVdKUu6ejrlf9NDYmYMffHHftW3cw
3H4TPW7i0KNDAhN+jNVk3ohI6yMmHjjrrt4CuDbHNQLVS3AU5zl985eIhfsKpOXZwL9KbqP7mBrB
uQP0h4gcZDZeO9vdT3Ixvqg4IeeDQlZCYKDmqQEgBBRMkjWmUENpw93zYifzCAxIJkNWcI2K4iPt
UIHpMRT1jsImt/fVz7APt4qPsa4PJM55EkmLkhU75oQ6Zpb/VGA8uLE+PLIegn6AUTIg4h/1/axw
gyifd12qNaE5+cq/lcAm2IiJJ9QHUP3TfbjYyNZ7D73+Qulaqfbtu09A1qxuSV64hI7oRyohen70
lO9FmiLW8QjyYq7/TTpeggRdovKYuOQE0fydmz4Md2vYt/RBkr2AGo294kOOWEpvnzo3O0uwgm7O
CUsAq4nBmgAVpGSPBzdEhzXQ0ShX/F9/ndKNF7Vk4QfVrLZ6pXIOG8sm61vLlOs2+1dmXhrch+8x
2uwBVG/A6dgt2KerRdABkJJaaFhGzrXaQza8E3NiUm2beQybV3tq2lXE0l+XEnpYu/3GTuBRDeph
VWEeSJ4DPXsehV5+MN3iOWmLsL0SE9iITTvNekFn9aqOq5qKu2ksgazizXzAne3wV8j0OCmKX9UR
iHtzW0bcc/e5JbZ39DuPkpIbp1G7SBdPb5vm7m/XZ2SIVnlqpEYw9CE0uqYk6xkUgoAOUhSf24eV
Kesw47IdcZx71jsheIa7ZnkHlTU6JZO0ie/MOF/h15WLRpOqkkCmgOXOrLfiaMUYESOdV5QvAQB6
Pd8Og4t1dT9e1GdU6ZSsiCHTJ4rud201KViB9xdYL0UUg/Rk3HVzUcqhozF+fjedwtlWl4fYTQsv
DwqCejipiZzsunF1Qp0W4IyuB4MCXWE8XUPOqoLOwbpniRu5UFFJlNJrWYl3yPxSnez85QucxaIB
e99v++1ox1vovdmnawYigBbsO8V9zsyO7yitFFLgoiZ2EmxqMDqHIXIBrmnpGq/fVVPvGSR7ZVQ7
bYZLVbFaChWfTJfFcnJZglkYesWVkcL5xjB83pVQp1YxUHpPj//gisVCQ40waf8MKUGoyQmxLwIo
gVKRRY83QpbrYK6ZbHeF+ROLdXTcePjihaqF5JpnCUBnSps2Z8CM5vePszgFB1O9uoK1KJToLpEr
l8udSrJX5UfH/9RSaGv8Gz9cSc9OQA8gzwq3C23+i+fjLnAaOKqe1A8h2BGUE5beMQNmDpbQMcSr
gY0W/duE5T4wogPu3J+KC6hEPihBTZgCKrgIvH5nVFYqmr77uv9O+JQXD67DuNtm1XfMhi3EBR09
8Bt7un9IqFLyEzqDDIq6R4bXNLhfYUXSO3YODu6x9k/RDio0iSZtQLKSlhnBZtaU967HuFIS+ohG
EOc4bp94TAkp0vBC1g3G6hruPjKggFcQQQhSbke7zkUui7lth3ILxot2Mf77f7PIvyK5W8CfbUMf
1KB0ArJ7EEm02E8aiFJGGO0uR8VrWZ6i02GqMe20hFDTj6DwOOfXykEuZpvkJTdnFuURZ8Jy4p++
3K4SzK+EfJxg1YKd1rH7fhJ5IjDedIPlcE2KGu1T7oeIAqp9aufEob/0ccpGAJ3pvLuDsvI1ZN29
WcOZdkuIHNoXPicE7ZoLoMWjS2QmM2Hj2dA8xjQQpHmhnrnvnAeMDoljbrq897VHBhPpTJqT1DHv
dGfzV6dDtLs2dYjwG5ysXqqlCUybJR7JhToky+zZmqetYOnlggAge5h3hrmkpWckGPbtUKPnH5fI
oX4GzSqS+ZMF5YbgYimFtVxGnNkBlK5sUOLC1n32waj7uO6MQ8+pdlmhlt8ZmQnOUbmTfCedxkLV
JChjSeC+4sRO1yuc0SD4yAb2o1fRmopt9gL/nj9nl1kLGkE50H5rEX6NoI+HafAXso24EYzvC9Ks
4uXy/rMlPuf4GqB2Sawi/LIScw/MUv7jvWipwC+oj11uL1WYl8boDs1lBPoZ6I0+aKeJE5nCOjTD
b++/1VyaSY6v2u9/RqKNhnvlUvrGP1fVC/9IZYGRxeDKkyldXSjCQTc+1494lW7M/WxDEG+4GNVY
lpedo3FT0/yDIEiGAaa4UWTxppMYcvtpbbHbFs+EXiuZfZLaHlEu7XSaItIqNpTvLMDIrD4S7kdG
ORz9etxsEk1Rl1RW3kEe/+u2r6jfHHMJKSA5KsdIDdzK99aAG/AlPySVXvQE+LqqQrsnOQsysFtm
UeU0gEkZg5JPqMlxwB/ER/w+MAXFNpEcysRMd19WCNQYYjOE4m8A82PPCwnYw3UV7cWJHu/2toCa
p79qsHdIOBys2dfbL148h6Zmp0/DK+19SbU6rNoIuWIHEoGbqD/zlfTRaUkiEho1uB0XcM2IUruZ
WR/SeIVLdOXuPbi14J+mbRY+LzQvdjp2SEP9BmorhcVW5bA7dP+quItpdFkpvhw915hHW9Ft7y+y
hBUc6SaTbp8Wp9B/7dJHn4mnJCpcEM8HflWHltyK+U4rViY+lfcXrKlm6g2PrMO3YnRuWF2/VQxI
d6DgTPJuRO/Xk6y5ga5bqTtHwQ50eepEt+9sN7vl4PFbaUoxhHsnQKQdXp9RaTVwW3ou6HSjFtJ/
O7+LMVaLKwN1k/VLF4CVO84HykYZSEob8aaUd8Q115wXh3O2qqpWfYElcKIwxOXY5NGz3Sj8Ke2E
umziGjrKFHQ3gXsgCWXiJX0CTPH/yeR4RgzG8viQBkMym7mi7IapZs1SH+6OsdFk6WdqEOn7CDaZ
1KPsOizbEXRKWIylhP5WqW+FGAaSO5JUSMvi7HXfQzXkhFxXP4RgsPyvchB88UdQ7u8q2AdmDEQX
xXS3LKkMKPri0N3JVekiaM4rLh8vRPHmHpuOqQYHVIZXxrktp8wZ9g3UdKaqdDDX98ZQsTbLUS1f
yytOi5FUsh/V/471EyyVIwYHUxGzjl2ZDCWAHKYbgO5oyZtnXiISaSc6V0bPmZmVyTswKzVUKxo4
e9joeqIz1ZCFEn8j8bk5VYO+kwjniiXtlg9iOEaTF9RA5tYAeAJtger7Pi7Q0LWEKRxt9OpoO+lq
VjtqEP5GucHEwRrWufzBr1jrwuyUIV6nXHuO1WG8BrjM2EfuPGqEtHSzUXb8r/RQ2uizSEtIkMwg
Dv7MnHocWR0Yz6cbTV8E2biheA2TDUVaqtf8ihtoWWMSrbYwVi9G74NisTaPghtIXLr8Yb/7M3hR
fj62P1HVY5fXBDJus5i2fYuT85NNfIX1XSjxovrsdTspQZydO2vq9jQPQchSMvPyI5UpN4p4OAyG
pqj4olsKMntcv82tThISRqU41XtNAMbqeescUi2UiJIxBxrqKcOiM4y6cTs4kbCXjol4YUwzhAdB
yaYsfxPXsHfQUPiXLp0TR37jguxLroZ+K8k7XsEhjQYPt2zodirsnHXe+oZkqnfBafLQpcue/4T6
qNS5byz4qKY8bL/5xci1fVAtqhOjz6FPoiLfvlezoEFUdXNkqCJ13IN6FvYDKm12oYkgaInpGJvs
62BvOn6QJ9LWzS1t5/yXjksPBGPaVMN+6kOBRmWCI36nJqG/2lK73LZIrETHforqFP+QAMDREMht
gHWVqdz9qNyJ6DHjQRTIzTw0SzVCP8DK0gNp7Wbrjor3MA8nZGV+iA14+FGlk6YLV6WR0VKrikAr
5pBjXVMthUZKjkgHlB1QOFANoHRO30DR3GWj5MB/PL5VIuQ+pUEvtwroUd9DmDGga1FmyA3dLOWF
1zmHeLCJzvBPtNFZMUEhZRucW32XvR+AoADz50oN7Zk1D61xDBsPbQ8QuW4A1UoVO2XQHlaWnxjl
RszLrCuNOhf3TfVl0kkGpzLLsMhUQyNLbriAdjmVN0uy8Xwp3y5jpvcEk6yBA5zkK1maJSuOIBGb
KcG+PV8K24QQFTKzU48iOgeVGgdmacaCoG2nOb4x8v/e+9HAgT/0VktLG8bKj/4BhSeHM/xAzrCN
it59Zh6dO4JKkO2rsRdBIkw/oqiEcGup7mphmk7hv/1qLodzWBwFhfvSHogJgucyJxSdi1/lQs3l
4VQFpEfzwrDO7trk/OPLb5YcKtmff5JX7caDozHwvk4kygbi7dYWXRrkydBWWHc7qFHuc1Rw6InC
MHHGYsU64wsYdzw7NVl8PJlHGSAKN7ZHHBMNLSNC5nSRY3s/fOd1qsEbq3/fm8froKzatXiffq5G
/6VHqVaHq5SUEBXOZt9OLk3+l1N0JLu/M6cssGXN/Ndc0bllHa3ZlVS6GICdB3wOjf2BImB0Y/so
8I3dIK6AJonTFAP1i++HKBIebvDNXQ7sy07B4Wo39jUPVUVcMaZ+nTJJruIvwIZdcjL/V1JrW7DX
Fn1eQ2nGIpeh9L2C59vaZhUx6Q9iMADPSqLcEdLx+7xBkIRcuRcZhrXDU+IXsjh+F8Pa1lwuCcsx
p9b7OAta7TXrh/LKmiKcgE9ko88QsjIqPc1IqLweSu9oNgIgc9mGe65zL8izIN519LRbYAxVHGWb
9zBgCsKjiCH1sDhOE9YB6meoNEnz+VRA+9HiGZFSHwrsxxftSxQw3Juuis7d/3Xi4iYL9nDPgdZP
dPwBrZSfCBpxP2qE4EelUB9KK54kW/dfVfdmKOC0/FInBS+m83Qv+LK46u2bL1XfU7Ue4T1VH7Ja
jmmLDk4uxSPxYMD/A98Usl/SGP0qOn5OY8ebHYGmPrq1+g+pEfk9WJdkslexzcnuV+9BGglZ5BOa
DXcS/J93FoMzIW4aKCgy08PUUkMOA504v5+8jZV03bwLPyfodCRfofg52aVyeD8QymUC7KyZB9YK
Mvf5w632CtOkxrGLJRK52EwdMDYXG5mOqn7B8UFysUMPr5eEqLe4iL2Y0ap5cZ5TCNTd53wYf6KQ
GqEguMPTmIedHhY7DPhJCPngTJO/H/6zitJpzaJHX7V2CZ+CmBeunAHoiscBgDLHFpk37t+nnkR3
Yx/KYsp3sdOJOZD4zs0v2n+fRout2l6/nU1lQD3zu5/daVmYRq+3KamS4StGaAL8ZUocO68zy8q9
/fOPcTFp5LlbVsqvuJk5AodCRLoopj53wxgj36wpzL+e58fm0zrD/reAbHxuEagBjrmGddTZkKP9
QfhLs4FYvjHYrM9GRPfxSQe5es/glqPRahWLaFBYfRmej4uApgox+qLcBhwmtRfcnr0wNEH+Eh+5
H+Jnp8f3djys3MZdfIbjOgjqCfhFPuRP78fRehWaHxl4yXjfvOE4xsICR0teg7RZXNxIxOZor19P
vQe3n7DE6mGJh1Y4HBiUNmBzt5i5VY/x09govuYqblGTSUE2co08e3QOUfpXDU6H0jE+CWdV5BF7
yV10DBdlhMmT5xpY7yFW+ecPWa0yQl/MKIRKDQYBQRGhoKw2jIonShXgYM1kKIfOUXVHC108Kv9k
cV9e0hFBrFWj1v21YyzlbXb2/BmBSsti/3oqXfgFcMi4cZYlcAul271XD66c2EBiJmjzJlURboYz
CgrL/ooszwoVat9BgiPEZeeGVoIfX279p7lYIBQmB0IYCtqJ2uPH5b7tQDOXB4Sf53zM697/RL54
Z8wDtGZhLrTReLRRQKOrv5jjnmWYFIghn6GfKkYB+efuyJoSM2lQvTgX9XRGTcbAeJ+M9uv28dqc
xcNU0aLBbOHshFGVTYAjM3AsgorKPJ5bwmqHGVKT6Ct4jwWpxmHxTvosR2niy8+Z0kZl6IHo9sYJ
lRVnMep0Hgav56wP2aBDNNwc1lihxgVPECQcIZmbYPbERTvWbftA55occIrbjOmAer/O519CurtI
wo1MetypWXD69SOSUdmCP4LZLf7NB1W3e0jPbVQ6KY5WCTQA1gUD/p+DrJX3Fl9wd+WlYpD1u2UJ
0tjOjPUAb90e6qcEGRPdcycUp8rdSVi4nw+fpDttSAsDOQiXovYhSJ/KSrQ1brll5+NFOPiq6FWH
Y64l1EtO7laL/cmTJtc9cJcTIh83hwUlzuiVOsFfnv+YIbcRvh9u68eR60gqQvFy3M1nlWgctw1y
OQzN2+6hXNF2ldjKdEzexqrF3ZpT5A99Xh+xqQlyncVpfwjJLZlLXFuE63vvyNnvCTgDfYe+N9aW
SlfaQufdY72g/bicOmFU7uaKuunCyE/O16TPr2Hnawq4rQ1W/LTpsBPtiGNfqPQgqLl7aQHvUIhA
EdTgH+OBEK56Vs6Iec0N3Jbinuo1xqf4lX533hCgQxX0zzLNIf65zhm0NOOKMHnoUqAK+3iLMD9j
hzP/b38hllWrMw+hx0RHkdy0IONMJoNWgRLhVQHeQBZfWuUspfri2DY+ghEIMfkMmgfOzNt9cmat
Yq1ltB67ZKUT/JESojUwqPmX9SYDq7q1L2SGUabToK7n+Do/Qgcdj6D0qza7LAtWZot9n9pMxEEG
jcNVuFwpWV/d/roe6jdlau/kzzWxGF8XZ+LHy9koUKqXcky2fmDrDens0yWerYAGc51ocTAp2Mr0
cVwK8mwohvIThEXqBmcjNsfhW0HRErp4fwC0pXRiVAN7qFZTaV+lFuSzSFxGbppaJkmk3RUUcUr6
7nFqBq2Kj5t/nCgf3bgAxa49LXLuHopxrSzX1iIzalzVI5d6PdDsdFSoxEwJdXO9yqomRx8fvxij
9vGZa9y1flGwYNitGmSdw5hnf3SSVi7PZrhKxymrifT5FvoLKNhnhnDiCbxv6JJkF13B0jvTcL3f
ytspnEXgZwNXpqqkw0bSmIN/9Hx+N5WphgMWzXJpFEMmVAiXabOL9iGNj/yCIM+/nrRhn+RV5Gij
NWTtRKb+y9/zKmCxwGeFQcV0xnkT1pT0P11a5x7rbrwARXnagGIDARv6DD4lMeEMAF3fA30iTGmg
D4Vnegv9hux3fX8mYkB7RLDpsYKvOuGwrcqw4QhdlS4yOzSl4QobxNdg4HYVWdqq2UBtiymXMSs7
Ah8gkPRF/MjobCfYX5g0NNfdEOIQjtK36dEnlijl91yeTI6XklUuHtTWbcrjMPYd1Cti3p00DpfX
f+PXeJ5kXRwZObrSWITiWfMXYU8XKyVljHcP9XqAGe0hERBbr7IiWlzJyflUjmDf7EvbGRmIPP6F
9WtzYWsfTKMSHOdbaRCpJavTFSXeRSyi1O+ae6WG3t+bDolqIKKWIKhurifkiAIh35LZq4EG5AeS
FoiWzOtnNzBShsmIJCCMk/05765l53HOyjXP8IWYHxtnsfampnzEHJNQyIEtufBRwrDElhHdXS3j
EL1ISKg5FNlomXR+tKKrLR0vsGRf431t4JoXPIobDonas63/scSXquvFHHZIxg2CJyMe7nTTaqJT
+5d+HgjVcBIKumP1gujYzf+wLw7ezdfvTKyKbLUJKYktRZrOjFF8kRyi8aRFKe4l9b8Rhqf1oAo5
dOb6jJa6qABU0qac65lRklDQDIV4lyYr8ipgwDlzrCTVoA9f5W/TUNteJFPycdcT6hbMwi3B/fX7
Q0zTzYo0qUktlQMgZ3o6RbUPL0q4SInKaOpvSXJNDzdW5HIblFvT2dDeeuez/e3bXpN4qp2UUB3l
6DdcmJbvImB0qlSBBKA/YPpI+el2pDcdVoRzVNtrTIrWZH2zTIDaeDxerYbR4Fb3fvRa+8fiyKXn
qCV41gBDp2y/qpoQFo5Ll+ROPaKSlmsFp7dXnCrFXHo8gMVunPqHq8bz+bba/3qjUcfLYi/pklf5
ESkwj5EsmJmL2Ff8AIV5M+3ZRFo6B8JJjj8wTJWwiug5qfn237Kd7I9MUl2tL/xoct32kSXyDDSq
jPUPO+tONJbm42ADAIGFhX6FGy6r6c7m9hsX30z7iCTz6yjwCTc8yNvDCgEOHwujiI+gmEGw7Yhx
J+LHAQgI6Uu2fjNy82kbnSibWYXVdBdxdwWgiyw7c/OTzISnQdghNKqXkcHNMSRifrR1KaPjr5hO
ZdRY4h6UX7QhT/YHRMXO31Ubw8+J1VlcwL/H7QL+pYxmgceRR+zcirxBMRrRrm6iloHMB2HJHV8k
xjlcS3lj0t14GCqVFakTS3gXY8f7z+9MsikJZ0Ixe/+oX49T/M00vgwgjgp+xHBXmGXD/UeRTHkt
m+0cBJnvoMYxen48bzw4bwrdVlt+oT9zgcQCS5WZumq7iXoQyQeHHzMblH+xBqi5/DFv+f65lv2J
X1eA/55na4vA6jk6QcjhpUNViglF4qpYMRKwTn0tAJfNXiI9CbcV9ZOy4oZHUyxpf95QwhpJJSQU
Sqe2Bso7AQtP030JC40NCYP40Od+ly+KX0/u5WKfN6ELb8/qmvznDDw9ubTOQMQlFyYbSJauzY6e
MP2WQLHYSI4LtAivCvkc9IEkBAkHr5KAi6fHFnWnHc/dEjRs4NnW11CHtCD1ppbbI3y/jSJhCbQJ
RMg7yFr04ceyGvV+QL0pjBIhB1oyq5ke2OcsiXbhw7vkNvlchLouNWpzxBDsjt3Bb6VKf0Km0e7q
f/65fhhFCAK7YMoXrqFtX1hKp0aL0Rk3bQrehhzmIBmMuhvfj9Ty8JljfUceYQrVfk1tORnIhuD6
zsspIAaNoN0E2/VAhhAtBPzVJ4tdvvEJjqK34Af4BTYJmtZR/7Wp41zhJ3n43duEOaWU+DfsLrEA
4ZtOBvWFzQdSCu9B5GqOn0Tjr+NEXs/HUMHA+Vka4uBXUHx/EZ0jxFu52cybsyTHEZxnu2hS8Ixb
ryZG3w7GoDR8z2/bHENSnxF3A7NjdnpYqRSF8Oxw6VD1Hwl9fz50kfCfS1WIs3gLkHJcZyrw9Zy1
A9ZlHSNxyx00gGlmYjH4MU7qrEBWLP9v+XXAIy69o+pNLRrvqj2CCAgjZYEfJQ7cEN49RcrQ/ycH
EqXq4XJI9L7A5QrEq5yy4E4kN+mnnp6LyzobMnNKK946be/lUeuyKrr6xs9/lIFla1BXQhuP+qZ7
wpJH9exJZk/HcuIgt6Z3iXCmXAsxqkPvQ8P+Mtj3vdm3tLloxpq5jzTZzm2AuOeYeNEAIrFm58hX
dx2jz6u5NDxcC9tb6V8GxIOK6Bm0O1Mq4joEFBBABDQyF6bFNoSCeUrmI1mMlpIOtTpmTqAZeXNw
lhhOnx/SKz5Xn3edLfpA1JYPWtO1ekmfnvvuO8TZFmUhGhckfwTgoP3QdUrFlVGqDXMhPWLs2kvz
KkMdlX2DDRHR/+9qbsjBw0FANqMme/XPIO9YdJDTjLBW6U6Jar1QMR8HHaQKFyMPKBcT9EFLGXsT
TZjATeC+8wId4Ac8YIIUoYtcal2BcrXPKKJGL2GFMBfhO0llYYAUsk2/ICOSpzSHItUhG374b5H6
rVNLzEfJlwjBzNQg2MH/FVZgHNUQF/9h6pNNWt1J4C4AEtaksuVyZ7L5dDeyTumeOBE87jzoFYRM
mkzjWYvnq5YWQazim55MtGIFSTw0ZJX+VMkPWtJJyEh0+PLIs1xBOJlMh8Sei+QZ/c9oaoqSzIYt
Tb49JywHTAYouXljk2pjJmCMWb0/+hxZruLvJ6u74YlWDlxdHkzaB6vjnamISVKRjSdHCgKrk1ht
Nx5/P/oQ8dnoPmNew6LTsoQQrLq8WcHDBTE1e3sewTieIejanYPv0Eyi/wCQD8QelKCGgMDls96f
vi9mljco0E1fww+qoXkQ7o1ADPcNGtAl3VbadoAcFk/9/vKcprfeR6LC7XdhmuNd/rrTEltcw4u1
OoeYL/E1r8uJbFh8M2P/67AnmFjN1/jYpcBT8x85nAU8oV0vBTr23uf4loEoyCdiH1MYhOnekcN0
fzbbnNHmTW+I3PQdzAZTmFYbLmMynHvld+FaNYmrWr/AAnIcwZh3kt+24rAC66ltDKOJRlX5N7cP
mNKN4zgkXWWOUCntYqWxtLLN/dwcczHQSOHIoXxQQJOUv0nLjhNljiuTL9regg7HYeMYBplDmF2e
Irpmfvwd4D7Thcve5/jxWQq+DVxddb/q9CxzXCnqiZ9DQqJfE0hDBbxw7aGr5zWVvGMJVv48Ch3W
hYs5EwvTJZ2gs7M3uX2qla3rVUDjL+D1H41zdsGW+4ULyuvGXs0eU1JkDh7oz4RwHrBs4kLY+zoT
DMo/xriobY1lvGQXNefLk7nzlhXS3eREqoPr2t3YEjemQwDACQtlv4GJNYRjoAjsIus+Y9IUf7c1
z5svU9McNs6Me4qs01fBSNk6A/h5spGM+NSB6So4wb90GY+c6WJj/JZhiam0n03qfQ8nPYpJnhME
zNFnHZOU9VGy+DNqYdtKQ/DYY6mUevDTnb5puziMwTqlZ1xQM7OczWW96zFbnMpPDouy7BTIJzRj
2PwKiws6k4wmueo8P/EvGEJBEkOHjyHEqPwtNr4IfMr/1sF1EHR3n2w37X4mldQnytQAt92f2twS
MASMoMYgEor5bz0X35BQLr6OqnAFWYCtKDJyqPsYpqLdFyrchiv30SZr/LQb/S0LPZDUp8kjL52N
Zbn5QCwb9GlYIY3oWZphyFIAv/yhnyLgXUaKtHAhqQl22ZiVwR4PdZU/Kx/CdocnfvcH9WPEzRl2
Bn0/60lPvRAW0kxGKrCFnUe//DZyL0L6ad5rjU+sRYS7ZC3iMW3RfFaCoBvHkN+sAOHEJjqOMJro
DgygznGaT8fDaX4PVWia5uc7Y9QRdDWyCp4u1cKfy6ZI581Eze2xAs0Zzmw5qyjM6G/UzAxlAoDd
XCsalanXPZXxLsBt6iAA8ZeYvSP2SHGUCdCm4O7MOTC7RAkYOjYniq/+SehM7CbKwT6+GvN1cdRX
DVm3i1kqunisFOM9cSKYV2VLBndkTSJp76pNPXUlKiNAfxak1P1brUDnmTdQ7+3W0mmQ3PZXBCiZ
3l4Sy7ecx+yYRu8ly2a2W6N6fbJz43xNT9je+pwQDZ5Et2MA479+DxK9y1h2EVjnN4LYlBdIwtRA
cU2bXAJjWz30JeQtHnZbZLJkkO3VDEF4WDrqNg56Ef+YemSroTa4Hfi9rzrpM/+cJ0ppxt9RH88T
2C7z7ol53T0f3TqbKN/GhJWuwCyZuchDKj0iqhNNmeMcDMs7fUtOBBeVxU+5SbN25vgJhbyVTnpL
7NKRpyaf0wY9bmRXUh+vMSnxp5bPKwO2Iy2JBPMBtBXKD37cCoquRbdTKaO0ZRhb+CEJUTNivhsw
qzKUdw4eWJ0f1Fe3o9/t7r/8eehR4jywfTuHpEB+8ZLtstVncZFoVcVZd+6PoSldmb6jT+ggo7ib
QLMAwDTea910OKMRfZs1R7njPUyLGYLMG2RjNXV+pkvJAtRhItVn2lTrrJCSuhk2rquKMow7G6EF
3aOto8Mk/ziBgbdVqxFeq5x7/5mI85IzSE7uoMgjkWtdKXyJu3zy6IuxOG2BITW48lBmi8sikRaK
g72fcXP0AGrXDSH2ievPkHzLjDEMQQgNVDbJ3h7FhV9TPpNHk5J8qKmkeLLAgGciGGnvZVZOM9bn
4w5EytQe0svDroZSotsUFPypa5b+cO5lHKmhKLDXcYGa8C8aSK7VRW2ZsdSb2eeSm1NytLoLvdQ3
ClygWGPQ2ZYCEt5qFQEeHW23+lmQiTcmIkVTFd/tvaPF8XExqIzUvLDFHG1Xu1Q5PVS7E3DaX5sj
4UA+lqPNNeEiIGeM2mkYxr4oIwWTIZVRbNRxUGRD0iWP3ZxvVSHXBbY5fZzc9MlGnIgRF+dre5ps
5VM2E0WEItAHeu6JDjHPC/3oH3kZYqJ5rDpv4NFHe1V2D2IYHtVqvFLoLi5H+u4/4MY2WZMH3cAr
lhMWrUXVWK+2UGaAz+kIhnNDboh/LuUGm4L74HWYNCaJcBiZSCrTyopsakKH8AQcm6SedBpWRAGG
Pac6CVRhOD615lqzXWBn/f3o/Rq7fpTaWXd7PukRIcV2Q242b0El/OMdzD8LSdm69m6D/mjc/QXY
jPJQTaXVZ2XFfwIxgc7VP/wEEjc37jDZln1TScTCHoW2Qy52yApSr6Xip8BaxmnVQcohc0gu3CHi
zus2WKN2tytJ3Ne6wetNAi1JWoq94hE+sTcj4tpc7Phx7LVtyTGG1zDeGbQgeIwmw2d+G93571io
8v3I2vjhp2UAng63JsaGtgngq17dtl4AdQi23ErV8KKOL66YcXCCIpVqcN2aqN6ZVTYOBn6HhNUi
opR+vV2oo7tbEsF/YJCS9R2Yfn77OsfhXXhDXo3MUn204+4pcZrMx0dilGRzrA8Q9kzONyi/bjR9
toay5wEHX4b8RUwvUVgtWcaHDAJ/iJM8IpXFfc9hnvN6WTM5rdj6vZo5j34wno/zrG9euK+bYMpC
IOAX831PF6BaKfdaPTj95Ks/5gqicaqWji5qRUGP2OvcgBkQR+PtqPy/5SndDkJ1W6czlpyoFfZA
y4iLWv7UE5gR24Z67nMQccqqYPdwRbtBn0DQrzlRxxeZBwSyKUk56gJ6cZnbHvgMaz+SfK41PqHt
1+mrBm/FXTE7mDicUMXEptQ1NkDPYXNS/nxOLDI3dvIaGzzJbrncEledCA7WrZoETQweujUmSVn1
2eqgmwMzwkdgy5D7PABdkEmzvBKQJioLcdjEim2LtMCHXCBbZFmZqJx4FGDHeFtl+7myEuGL2TRZ
hXX5kXTSHa4XFoA59vcbmj/Gv7cuhR/l2M8DlvqPfgeKJ38Y+qF3penYKWHQSJvg2d+nJLRLAyWt
MK/1+GVYU5XlMzVW8HBu0evGt7QAMETI7mgDtnYKUyfHWdomYCOcGYgkXYLUJuEs0WU1JQV4MVx6
TfLbFRGQlPSDrWdw1tcicCVUngLEvenuN5DtqGqG2jny32E0snEWQPMZEq6Piu5Iz498i7c/gcy9
rvDxMFk+0L/RDZXZcXHp+QBaa2B4AqGqPUoDBtKHzE4om8BSJSNdFAuP9OpoKQdj846zC9sdvqqh
ZM2fg2v3zh0YVO8GDh6Dq5kLiI5k1mKS+2r43F4Vi35ZIFZTMsSddNWuf6wUg2Po8Ffs1umfvk3H
aUG8h37/h0mYQ64uwlVx6pZED2n7m5ZZVhSynK5IQfuI9wTFcMqJMF98HW9zR7NuuaYqxGTrc9Ac
rGo6PB/rh0/5gdwS9oo4voSUlDM/2jvPFt4rBCA1b3vljmhT9++u6/0hJBGPLd74+ZsNa5UQhBOm
kH1O3Plq/g3UYxW8gX0zlAzdFXplF/lXPE0bYXTi8UyV0sFy9SlOZyTnAOikbCShJ4Q30riUObrM
sggeFO9LOxXifs+Fe50mPLj+QHY6ReN4gWHJHjRGxgGtE476pCU64bF0af5frRXlLnuuyAqcBi/a
JsrpXnq5aTYIa1r2VlXMgEgi5gSaGFvXjK9Y/n60Lqo1XY9uaYkrL3AhfAHbZzh1ir9tzvHu0yDH
SAScABoa+1U1L9syQgOwq+965hdaS9xNp/rg/tD06De/JySv+a8XBgTgzdG01EMzGw57k9A/Wzm8
9qKaXCcsyoU67Bja1pwRgqBtVhDmRHGt5owXrDWyzD/ZydBgHQWTJcsdJbCgwGif7TdyxhTgDOtn
LjfHDiz7lrkLslnxg34isx6WqOpWeVDR7XRFwUs4HT65UR0uqfvnxEdmGhydanxSYpvFSvyX1viR
BtElMOo5HzbzYH3GFpdXWcTrdW0h++rtasAC7FLND5hT6gbVZWOm1khAzAb7j/xoW9nXBAw6QgoU
ej6MiwuhArjIkuFq7DDu/uAVdbSzG9JQ2vkNomVwSfvp6nbUQmiK8Kbd01lY7RjGZ6V2DiJpFCMh
w7SuT1VEi5eoh9iGVmeJqE1s1/qPQf5lsM64adj3p8w/TdSrRWbnDpavFTkaMGvTt1mCFzmpwF8I
+PALF/BLMF/Wb9/clWdmRBVeBiL96Do2y1vXpHZNFYRHJ2XT0yiLIVO8Udkoc3ewKcd/2ZX6voqs
peAcjtbLVxlgbL+8JlfISwXDVQ3SPhvUi6N8BEt7BLe8+PXeZuyhWPLdWV6DLuSI5UzEu/msEdjf
ewajBkpZeaD8Svy7Y4REu7ST0WsUzxc3kV7GZs4GEHm70TXylVAxN1rITYYeD3aE7402oJZNlIjG
yFQE18Dy4aBhIGwdF/NKcOAsP/hm53cjMaJlnExIEb7YrolspG40QT667Q3QiJShu3DIl8E8Fnfx
w0QTFlBQN7dOPano5vDizhFGMUJQ5a2X/SaKvlcHgIwVpDEhZUl4+HN2FylEwcnj4aHm4HUj2LVD
dMPPU2h0zX5QizV9lW+UgIwEIPSNo1tmUzEKc8UpSkB/Tq49uicz3Qfagcxm8UuJonkmz6Zw72mi
Z6+9fJM/nEzQKrl4z8GL6vGJyT5sORkgHDMQNDKJdFTjBBc4BeqAX5XEC6DRlflLTppl9cYYgQZZ
viLdMkS1lVrCjc5XKV9++TxlSzxvVX2G6Jc3la55JbbLFgQcbTKUy3HECPniYqrudkpJN5Tlyb57
Kz9+YtFPUhw0qsLCOlCEUuUzLD7iSPjZ4abh6Oec+YU3NN5LdSbpBU7UFI6DxEQuQrEy+iUHom5O
4ekJKXQpYhB+EfoYGrpavFCox78poEb58fOEmZddcvVSUSeLdbhY1ZjJQlvzO3aXsm9SS0lyVoXf
04hfQmRgXrJkiCAC9VzKt33ovrYn1vR8HvTmv77h+uBmHsJZ7hn8I5dH2qfGDKZ4bWpmg6UybI12
z8Ni/NGChMZO9cuTvpfRg3cMk1EV+vC7VXECKID1QcUWepfOCcSO17DeBKQGJz8HLJCs2xYo0Zhp
F2A1qZtUidRbUPMN14AnQA12nAcmTWNEOvoPcuSqBKg8wX5odknp3gi/Er8i7daO3Ylx4yPJMJ7k
Vb6nC+IB1CtczSryZJDSsBk6K6afl728E4JWc6Z5q9uVoN6WDMhNGN7KUpriz0XKFYW1SrXsrfJT
NRUdCFo3/9FMo3eeGJlGy6kYZMUIHEAWXrwDNQbW8QWnWTo/qbPA4kjgZD/LllRicKciYwzm2RSx
50oQKAUp/skUlX43ko0cf7/udLGncxpeZxi3JzUXQz1vWjrLrWmP9YOpy6yhQY5Fx8H2gmCab+MW
GEwdTVWj4v5QAJ33SMs057MpFsmPsP5KurD92lXWp6C6yqfNKoNP9PZq5EMX4r0z8X4eFwKPIjk+
DzQW5ouLtf06w0FMh0/OkfDIx/lJAiiJQLQqoAwh+wSIwlkFrcLHR2TsSWKgeg9rsFycA6TEzlwN
bvB4CChZjFUZwQhLVqb+o/Z/vVtA/8PPk7P0x9k0F+Dv5+bB2fKyucD0/yiAeuLnQRe4AFFiPGvH
K59IdtLNDu0Yg8Ka4r5+DIMrLPiM3bZdKBP429LAhBqLbJjJdbeD1sYGbkKsVYaWfLkR1CV1toaT
Gre+jhw3PiU0WAxDVmToDy7g/SvqWOMFbS/xDZV5WyvFBk+HzhMARkItITsIcNz8H8HQkObD9OSh
AHKf0ih51KNC62yxAvJ5KPJowCPFCbgCPApql+0PFqBIRwJ+z+3zK5DcMUl3VXikYdsRg77McKhS
WeOTLzjUGFMKDab5j2mCIM+RLyGhFILpbdTDVW99lpAGOScIR2teLefVRTTiq5p+yxULUhcgX/Y9
N5ASm+dImoVPFkSdtlooIk9z93g7hlJXIB3XzWOeJFIuVsqVU1dYzYjXLeM/1SXWk0tjbO6/lz/C
Ko0+tsKEkFMEwDCVom9laMJycUfHy+hcJcCCHtIglRDh3w82504wmcp3kALKavTO8z6Rg5dBS2YW
CyrKAFXfJoP9PdLMZsz3evIxfTFEBnHpHADP/z83RcqWyEHeysaY4r3xmzqOd7I+V7upp8ldcrQC
k6fcno+KUOSsZl3EWurN6G6s1Ssjoyo0pKT+3y68QqtkwryZ9C1GX5SjPIHD9FSfz5g9uRddMVo6
xa/2bcWPap6A9eAGGQ0DnyeLUUgMOkHetuk+5v8VPUcY0dgJ5Fxojs6neY1yttrqBaJ5gQtHU3Dq
oCKe+tKSOdzMom6mv1eaGgZMF+JcGFndpJnwXQx2EPFlMhk/WCBHSManiLk1gGRuF4AKeqeQe1FF
5PXu/uXTZRC392cjWilYb2duKgRH387yRWZN/Rcn4Yi0zEsWiDI00C+LldgSvxEwoZwlcqEJc9G/
t3lFkv/lSWtR7t6S3rISWMgHSzCYDppbR0zchVvN9GQUSh6Uvs12RPwqgAAeLghd9QCiDrXhPS6U
5epebohbPXtNknlvOOKtux9/J9V9c0ywf+c7jwVcVDz+dVBdyYfHFczq+ZX0S8Ar7oNskW1vbT9R
bSQSLCyn+enmOR0KJefHHt8GyZJ+OO1XobK5rVe/gOIz0c0mcixHELfmVcShT8fYVCRXuCom2NXn
yXXPjnqpi1E6ae5lghTBxRkRvtlMwYudpJyHMRXIsOi+yf7PCppt6ALJcMFZTp9eHdbWx4HjqgnS
dlg8JQRHd+9rFDD9d10fm+8sLP/m6aA1tZmCaq93BWt7b4ZGpnRzK/tDUBilwBoONRNuv/lnPLiV
L/41j3E+7gls1PCKOzLdhiMmMh3jYB9IKqNKDqlzlF+4603QifutOq8rvLNuS1G9C8GpvcUyGRMO
HzCnkxi8DfsvU0+hydvqZ3zulU9LJZetEfYzbSKhGo/FdOL+/5mWgFE0NuuPriU6sprTtfxb6owF
KQgS0/Ffvoqi59zS+qrM47tVaca89Vms80bbowYU8GTdXXLvnjms5G4Am7wwg8POXVcT58gIWPKX
3p+kYXHLFAK69MwxktyQpoH+zChqCRl2h8u38+dYHszxTHQtyOhUi7A+WuFGUVTxvkrsqZodkAxL
P9JtbyaZZYxVNvfspRWgp7tmr1LuiiDLp19Gu7XWNQqw6lpeBy4cSP1Va0wqypdS62/SwuBQviaQ
vTMNBHQO/jCkWXU6JPAS5E6EyLEDH5k2T0Nd5TNYgsJk14yLV/AK7hUj+EJ1dG0dOtgKR6ErflzT
G+I7Hwkiqnzvmxti8yX7hvzftyK7rPJNo2yTyrvNUiqvdNFFAb/qXBl4FKK171+SwMqhjTOzaZmh
8vY8mSkDy1B9CULljrfJ4M0gs9A5PUv1n/Ng943vPb+JSZtcooZqtH1Y/JAzsaVTsbR0S5i0ma8Q
xlo1APSn0cstcS9kp/UoKufHQ6t+yyq6VsRfPh2ybypE+HqGPtS+QbtQ0iIAEYcdjCR9FmSxMG9b
WbgbJyZpmlutFPacAzfUEBPo8cckqGuieSTEtfrUKDLY6Sigv5+4XyWMWgFvtk/3fY0kDHQGhEzk
rB/mdqX1vVwzqA7GKV7K5GQwO7LWRzo5LYt3XZSff5tr2N0pu5OeDOZ3ZLlcNVMty9n7mW9erBFn
xTe1Bph7jamd61aE12yAj+LEMfhxOO2EeH0LBp1nN7SwvNRtz8zJ9xpctUFEFH7DGJKI8u/DucHY
fLNL1CCYEMMWvmhws0PPPsQrdov6looznK7IYbkOomPB4xYU/pwvu61NDExg+/XoClOZKDLeqgpk
3kAOMo8D/8k6M80cKoW2ZcifC5KwwPMGIO5cNUAVOXzeT60/lNw/6DNgk0veZyuRE4BtJQP74Ui/
0rSxq/dlZcZaMVWVGBGfTr326N6Qxj7u58ObpY5+/So5lzrmuWKudrB2dXPW8JcoPWk58v2hnNVu
KfwxuGDYJPJLBgolYZmG4RpXiNXFUJmQUGttQ7zKK0CLhZuepVLC8y1i2r+Mqddjv6GV6XydXcMm
TqswDIkUNvTC/E66Xp73nvcMNp9pZpPYPzWRf8NzU4JnnJ2vU7SfcTBhNJMYpy3XZbWbCkrCNoqc
uFozvb+eNSyU7RPAmxL29TAjCKXzdxhLtKxtFKcBtT8Kl1yRd1PktuGvUiUU+oHfZohSmVoTj5W/
2kwFsUqX2DMurgMw4lkxJF4GIDWiSMRZMN4Jydxbt1fRBRcVcg7abZgORivvo1K8vn0xaC25KXU8
2KvRoGQyNcQYM6h1djkqqD5RuR9sFWZY0DR1+CHI37X3tvG2noflC1kt9BFaKsrDwZucT7mRS7kR
W69+nyUMR3ftnYBZXTxpueM+SUk8qlfR2uTVWkv2s/fzCH7n/NpIy+N8zKNKBOxq/kLw8ePnA++K
iyoFFuu7xCpDow33BD0kiFLk9WVifb3H4w/LPvTjOaKiq+kAe0vijtIN0USnvndutpXslQrF8yLy
Mts/OGj9efiew1GuZ7VUQ4MAJtvVghCFNVMJPCJopIKrqb8I1tOlbeYoQV69TEXa9SzaGW1aT/Dc
JIgLYGIGNGAQYVsduAD9Gxca/rXbZ52RWfG0VcghVGsaQjcxdbTziPp6SyVI7+qgqoalvp5riJig
ein4EjUQw0I3pPVfmaRoA8WxlsXDVMGu4VmINaKMtHLT0LLxHLv+iRqD9X34pfhafenLKRVDsE45
L0pMdbyU8cX+Su/h4xNJrQHqsF8zhNRWNBh8Z4LWEoN4lUCbfEdI8SDwbtsPPy7mC+y+sEf8TYA3
oCm2sRcFaUKsCfRQ0YTHx6y9ei8uo9/RazSv+wP/YLDDGj5vD0uN0gFswR71z78Q+hI0I0MWxxVx
j7dLb5IzBvu8EA5lOxIKuxqQqrm8bq2itJCYzuN6vpbx/n5QeXW+bzGZbe/EPHPozDMpl9FGihmz
TrKVOkj4rGYML3us6mKyakiDrK79DZdTohnTtj9Y8HTHdAOQ8K0m9nxyf5oJOKJa0o5lb5U0rm2l
gKJGMmBqCmegqoETpEbuosvLWcC6Y0Jap1aDgHYgm18wu7B18EGd2rpzU2gLqYEkRogTOkZK0zGp
AelQb5sER0onmn0o6zzTaoJT5UKeQajxJCAqsZuW/kBeI+2CQaiA5Lf4xYYThar2+JWrz8ZzYafk
n8USnFWxqlwGzj5xpZvfQunITsnxUmWTApRppwdOkZKCzzM7TRNHrMS7WnpPQNfRnA50RLhn1l9c
Je2Qyb8mXAkEG8gpwa9t3D2V1MHpHBGAvntqYdhbXmwrR49FpyK56npeTUxVfqGGM9QfkwVLg7d9
5ac39FVc3SDk1EPu8V8jwaAudjG3f846us4ScrhClnjqTj2G/ZtSdjncSjq7XXWNfn4b/rksToi2
5PbYRbE91ZO5BOtVVKRffZFPAKW7m9aOsPd9+Ywkgi09Z7pdYFbvpEAMBCnAdRjDurtFUBP+kZy2
BNZtCHBsdrEet8uCVu5za5hPSd4h2YRs/ysPenEO8z9pM5Cusp94tNktpX6rfWSU4NM9e45gvM+T
s/5LhACurzC2I5DSo6QbCzjp/PwX1AiDTQ6x2HJciOj7eRnijBLqM5e9ziBA1gXbKihKAzjxL0JC
FDZqs9I8fL7Qd40aYS8sqVbwxOneJKaCaU3aOpDiEZn3xnSDPePWOACuhxCTt+Lp6/fwdUZwL3C3
whDNUBaKBg9TegMxBd/Cdq4Y//JUOREyy7Qkrz/enPKm2ZjHXgRpBuJciO33CiFnCI71XXrBsAYJ
UgwtmQ0oWO4MV0j4pku0A3P5zVgavx6dawSBi+BATSsCNoP4bxNpRgh4WTp7Etf6A8tRPgX6gj82
cJee5y0YIQwhvyUfC8Ck2YLKgeiC3/3cMmPZLvEQ6amagjtSIuPQ7BnVdfdpAi2tcUkL3N+poXcB
KU+gj1DAOJPpm74ZA8o/kDnFd7BufcYNvapbXnZKHTovOqjEuZaMjPj3t6vy08+ZWNlXEQBK2gh3
ASWtEtXncluyBo5fuILJjFcg+Gnf7NkAgeCAb3PTQpHjnrXjGdUz/qpb1R/y7aM0UujvfvsafikX
8Oy0mk/cRmXHArd3lm65VpWnQFoo046UBc1VKz6Si5H+SmAnaWRofUAANISHfeRsQqmC1cUFoV4O
3T5QONIYlU+lFMvGe2pj9ubKORwLl7kHlndgMcJGxUpKxM0VfJI4Mmc4pybjMeZHZZaVylihaLT3
tHR8nzBHeqBwLpoS+gbdS1yVojbYWVQgLozQbk7WVivQOgryeQD3cW3GGh8sAnWX+xkCu2OSWLkP
iuf5WVCx6R2vevaZ106kb21Ol+MV3ctO3UTTzLq6THh8pSfolcpqKf5LP9Ec/wz+rU1e/4U6xXEJ
n0OzxQWevsr4wTQ1TnTITuC4d+PnaBoVqcjfePNdAa15V9BEBTYoGgrk2pc3bhtJR6R8jFjx6iP1
h0+0T3oV5zo7ZjojZ1u5bfX67yR7R/zmslRKJXkEMs5Nhny+5b0EXO+1VfoQviV443Z8TMggX4+Z
+VMisibtWpzOifcZNkaLzosI7e+MTRVQaGwu4KUIDy0V+03XaKdxUK41gaTb7BsqzvjsFzJ+UM6p
0eJ8+N3KImoSOtPnf9YndU3DoCNT6unXLx3EsR9oMjEMq4mbXgOFiVmOK9au0fjOZ81bCD5PFGJC
ckzsVpbLkTrDgKPYU0T2Q1pX+Iqjb40VZN4FhTam6X8UuxdUlXzf76kEgUjoGwPugyzgBEiyB4uH
14rqQVWX3IZ4eYsWamJ3TdvQCWrLx0trhVz4c0GseOB7MbIuRoBoJBZsmqr8EXtzAC3WEm8w81te
CKesLyjUk/lOSCXLBk0LuQUy8nnd3IxzNq5uOL5cCSRYzOvG6hq3n+LiK2uOXO+1A0Q8Cz3nJ+hT
Nf1VtUTNrRV6f2gb3nrToNRjAb1bVvhY6ipDrskbXLv1rwcf85r+hSQMHImAZbLO2GLQKeSjbitX
UG4s9WEY+iGvl0NxEf0IdDJOa5KtOFdc2krgZLaKPlvJ5tEshfKEgjqZ75nsKk4TSyjGiRSgBhC+
Ye5mSiv/mkgNYL26zN4qXuNfd9A0UWUwMUoI2M8j9v+jVszrRQZpMqxPFxR7hcmvxrMd+YRIQe+H
L0Auk/jcBG3z2QM+WCUOyw2FVGhAA0G6+/CJ90gYR0tyKluq5ienQY3YkT0TeUbcM5YFSQa97Cg7
/zL0M1V9X/dOQ5qHwe4F+FsPxtKZcEhBxQcqV22B3ttGAP6z7aB7lXNDMSgJQ3eVCABQ6rqvI3+A
XU8/C2jhIZ8T7Y+L+oK8AgLUu7QIIpirIrWXA94hwtLctC/r46AbyTdysP+hfVcuXSiqC3797SaI
4Mi7XrRfY9FO/Lvn66ptOdrOe4tKvfPun526c2SC8dc1ZpSD7ljdGeg3setgHj3qmNEcQ5XKPBpq
H/u+cnheS9227tY6mmauro8KW85DSJ7vLmhxU/IdU7gKavWRz7fXGtC0HqkeDE6VIHKDkh7DJ3RZ
3J0vK2J3kPYQJTQoKmMZ9OFv1IFxjJntbEJ9MB5bgyUVBXF52kxJUfpVKsClILOXcQvgbGrd7ssy
FL03bsKbZ0mKWAbcdVlJW4LHFiayIP6esoOJX6RYgehDeY4aHI8P6GbtezM+dL8XZwh3xoMXAEHv
+oCg9bsA3py9IU2LWo8sEIIYhmTq5VKYX1auiWK1ib6j2Smh+fWxYDFqN4oikOuMuzmV0xvsNUi/
GK/7GoCbQ9vIyyyl6dIkJdNn7yo11oau6YowC5y5bE3wXyBqfFg/zg7qDx4uOSn1WE+Kk8YLmr+o
fG71DSVyoR+nwLrkLkTKpWCVW2gjJlPSwy6SRCzPDAWPm574Zyh6ZL3HVfL5EEO3meDetVzQWEN5
JpCW7I6Y1DvqeSzLcvogzHGiFZCCwFQOtDJ775wR8szf2NO/2FxKVU1jWp98jd/IfnDz+WTRnuDa
fMpi2yZAQ+TUWkZ50cQBOTAIEKOLzQqNW3GJWhCJ1CTHQDqWZEDfF31fgCSv9lS1ixj9dyTanIcN
egXkLiY9H08Cj5K9VodMTWhpYS6MUA26p0BXcbDdnUCgVAW98GZsW4WnDCb5OQjRyGq/j83YhFNN
OcMCeUpoSst9L/fQ4n7o+G5jtyssXvJYdbVYsEG0PAlQU3Jlch98Oz4rbTRkaMuh/Kl9lfGvwfw9
3ibbr9Nolv2YKhVePEuoXKTtfvH9B+9JXuLuXGYL9B0xo03VzCgEhGJ9RFFE8i+lS6fMsA+b5YM1
Q/6B6nUB7aO+LXoNvnQwty/BPchLM7ikZrc6rjAgbsJtpqxfTg+cCIQwzetNG/3XYJU1rhINWLGY
kLPBO++KgxTfMRpwIsCXtiCuL1GPv77wT+I18czwSQB26OsAVirmzKJBbt21UIp64ucK29UppB2R
NMnm3M3gDckeehAdRyEjNl9eqT7n64vwNuoIpUSQz9XyQZUBnEEoKbvrNUARMg/vTMJca+gYxR+m
LHj/mTYWxnd7wfRjL1jXv/hT0zBx1nFte98lLs1SpBn5I8f7yrXQUdPcX9toRKipij/VRe5dDX0v
HIdx+1Q4MDet9wjLMV5sN/QoIk9TcqqGEVqmTEz9mLYUmK/Y5fQqldvOD2JJ4FvI2nTMwxif3IjC
0ZkjpA5SjFpebQZ3yQO2wBY3wsTXbdkvv5MbWQGjduspXnIIi/hZV7a+mDMEPFj2V0CpSq1NabUC
pr6XEoKMwhyDjRnM9PiYLL57i/FMjuqdUcJW8rB/e7dCd9XNnr4f/F+4VZsVYQr+XHolQz99qIvs
ZGekTLd/cKea2hSFMzwsQ137Il2f44vBRuUsmJRUOx/gFQz62QM1Rcwk8cLDzxGkuxsiEdos7MT6
P4p0ADIIKh0MbhwOQGHLZFgnyV+Pd25hSprpDAwzRj4Gs5O6GVNo+6bx5cZHmqumxSrKaRq/U44G
yFsa30GYA3K6YhM2LgqbKs7xZDGKr2OIh623fxhcrsNbk04Xf8eGFt9wwHUTXaQuRQ4ulvV7vgmn
Zqo6WRAgEZTbWC7w+FBiMaw/OT/6ADnI0bfzfieH968MDwcaWwMomQragrT63+lQTl+vLdIfXp6U
o56lTadccNejQszsAQk0gj5fN/5PS2JxngFSHKfd+ythTLucF7t8iP9c8t7H3vKw4fFMe98F5ZRK
wzZk3eMePlZkphL1WmI8pCMAXCYeWjZIrgQPIk91V+yaVGgDm62GWjh+l8bAt7zGmQyPUyURCOX6
SRrlaU82hDlDWlcJzZRuF1WeWPvlm8FEBA9yiOZ1elxyLZQBP0s0hbbKBIFJpA08+1WLnxp2Nub5
sE6mm1c6Iz2cKx7ExFDq5GblAV7tKLXyZLh0Clo1hL+Z1EAXYYQqEULZMqlAHkR8wLttRWcnyPh0
g7Rs4Rou87Jay1Lhvfgpgp++TtXJ7C8HbzLbhS1MEbvoFgjvPKAZAwXLggsKjS9RlqYEZZviut53
pr4Zb1lEcoqqYWwRdgrYavkMDMYxdJXUncNRektkmQfbGS4emjRwT8nyXLM0j4vo9lvbQeUd6iyl
f6gzzlSZUx3MCO8SPb19H/ZmBfqXaC20tJRbTrKTLOJvgGRr/GKMeHVWp87WGgb45OAsUQCotTps
6EHFbcFk6XhCm6jMNTvbFblXFZcFHBhjq1JAa8WagC4Du05Gh8YiF15weGONanloZcypoNsPLGb5
hXWvenxFihyAGT/0L+C3jLz7XxEh91nyRnxCnfWyQk3vztKYenY4oEXdfQjcXF0KuxGMyq4eX+IZ
neZpgpP8Sjo3/wGfCkpkK/TKweIpOmxHrMrdTmvtcdyJ7ZFJ5ZQBdkHtBrBgw6TgVHUgNh94HOfk
IoWHCzvTXiGsnv7oTEOXNDXZ6PcHdJOQozhGi4OhXuMNVhhYCdmVjzmPGSPc9CX3m17eTa8Nts9A
N8Jr98FX52b/71cB8DckenaK46OImle5UNQk1XGebUDV1ac7k1uNnTIJ8JLQWIlzLpNBRM/iugK1
CTamioGvb34ErTq2y5unZ/7WGY6NwIDsNz1zgb23zvQzBvf3az2sxkmG18Lz9cbMwEAARgcNpqQC
VaMZ32r6rGuDptMr9cPJiEcIpksheArCSFzVoj57vpe1M9WDA5wb0OiO9vDuxhMQ8kuBRfdds7GT
kDTbmcCugF7hC8u/rd/TdviMrHxRhZzIXGNk9D8PvoFqkmxH6KG5T7pVjHhJHVNVP9nEq91qsB7m
Z6DWB0KD6b0O0t+Pdn7tT0c03c8zP5QDlqZFN9YOFc6XpGKFMgD6o6myEiNmLOkhFGd0m3qt/0TB
tLVVp6vJacH+UlgQl1q/j9jquMY+dsGc32ZYrsqn5bMno6SC2PNN7cIu0pV3AqvZCWRZeFujtKNI
+NPy65d/WyMPRQjeEYNGI/6GMJFd/L1YFAbVLcfE5vCam79upVrHZEAwWB3wmd/InEA+52T1++Pt
E7cDhyhVX9ddIvWIauPGL1BcCyNHVe8DfydRtlaXun8+s6VcSUqBdDFfsLxXxAVPvWMjUSLS1ruG
odQZ52C8hCevX+xc97O9ho3ezER6pybXiCaWuFgBZMnLR1WTaL2SlwLjeWZxJDcOE17xfor+Qqql
fUTMCicWfB8LZKwE/hMcBwPI7zE3v0bMzVzPV2ty3vqnvRMl0OjtugRbBMp5bcIJZTRBdcnZFxxp
p8PFOTbVWyCS45DZvmQU4489s0EvQ1q/abO+ffzCMo/k0eZP2DemsSdc37nYju3uPpPpmQsUtiSn
AIO2OOM1o6JNBTIa1qnPUWs73I3J1GPfSp73i86dB5PkXoJZYV9cJ9A/cktO1+HvpWE37zaa4LNe
iW0Sp7Tprg8Cbt9K7HhEtvR3u4icn27F3HqCdDWaQV8VobB96UiXaq9qUol1gMlUorO5Ah8CLWwa
sxnKJeXw6KHvpcF8I3vfAbldZeBl8sTqLdVYv19KX3IyYAFl7MbOoCMIV3gVCG8JaGTYqoRFCC/e
43Li9tGE/dITIVRIKfjpXZNf3v7WvFcUO7DpnBgkeUETnFRXcyk18UpPIAHlgQMHzaymu7Oao3aO
fCwDXnGgQFF85Bf9vaZTzwF7WTb5v9F8JNZCCdx6hO8T4FHz3FAPHLFge/h8Iz/Na0XT6pAn/ubt
ZPPEpbERadT9ZoNmt0oIpmh19zGtaITFW1psH+1D9gixMd6PwwcpfjhB3yTp0X9AkgVdAbcn7qM8
AIH6v1HlZHbC0endQCOQauXrKsYyu2wVwclG+ZRqaTMgy7ohGVWOWytze5ogYKtWV5pxMnRZyvkv
xEHJ+86P3Srflaoca7iCIIUlXpO/iLE2QaS0Wly37ptUT6YB517SuRzDXDK00a3bPa+w+jKZBTmC
UEstj4Okhf6W3TbOLMeQpkpSC6iGChZBUTTlzn05IbXwZFbeDa9qg4IBPLicX3Qh1zS8A9+jJ1e7
I3rMwsJiLFJ+Mmi2mwtpKJs16Aq06uZdEzR+RL1whj6Y+nM98up7hyeUQUpMwIsO0EoHhAvtS4Nz
F+IEUPE2Mp6Ozq2yjX5BbHdc9ZFYVYHoj8S2UjZJnYeY9Yu3xrz3JNFgSi3IUvzYKzWNBWl4Y7o5
llDGUhFg45JexBnrSjBkaDYJbDiKQZivNWsKtMHgBgLzJjO81zY0s1TkL56pbfFait6D+gF0bdHQ
4rmXI5zD0/dHok4m1WRj6QtB8T1J95lpFBVVC+y47mFk2PZMB6AbLE1Kz/+ASm1BNZQGfkyJmX+w
PFz/NBGB3GUdAF2B4czo27ZnBy4Lkr3XcsDSk/xoDA10BHS6ciFF1ASvMDkJmFaaiQU45P4V0O2S
uzI4p1dOMPNFoJGhlXbuf7FQ4y3s5vd7bej/WAjKW0p7WTT2mKxjCIO3ZdAbQ5V+t2XobrjumbEG
Fx9lrkozU93lKLwIZjkKUwsFwBfFDAdIZWhxFla4xs1a1a5SdhSuafzpbmx9b9ou7k6kjukhhzxc
VFAH+d2IJlcubliEkThkuZsl2lDfDCZJbYa4DYeAeXlJ+PFAnBCU+TbUx91UzdRGUSRFyLoTx4z5
xd4XLTUFsiX3o/0e2uSf6MhrOeVLGfXARQXcpwwLCcKlVi+upiscXX218AfO74i3kOVi54S/qcNC
HPE7YMIZjOGvLmZNLYVCqEtbIAIv3HI9g4bSgeE/s2OB+TVyX5rRNrxFsIMG2uQuAynW13Wjx1CN
io5jM/dlzec/57md3qppvzjVvdGiP7t0pQHQCgX37lJrZtICGVf5hEN2REX1U0Z63TRnLxm/IoCG
u5zkgCB0ugXTQZMHY7bjGpgFaVKfD7ASQvpe7At0e8OZ4fDw30jjzNPIlsZoH7nn3IxZjL/yg4LW
BkR8tYBLzfogN5MjyLO2T5mVPC1z7CQM3XBRSbM17GJgzI4WUYKmlUWIqr6qTkh5mNok4p+F6oAP
6uoFvxxBfIo8Y+HZBfXnfzryIz/nxZbiyH7eKWgaT7eguy9crvSEyzZTLUyPhp76fNJRAMi9BfQF
U92VhDB3pa/vcxApXrcaHEnR76vXeL62QgLdoWyTD9sA/Q6fBvo95fLhmYpVMThcbE9+x2tm5NSU
vScYAXVnXPPEnTud2+mVnd95o8bXgTZFzFlH65XuJ/CFa2jdOtyz3zh/lvwHp+o2LddfArVasJmf
dZwcsL0gEol3MrpXjiMna3a1V6ZE4/iYgEilJq4tkWQl0V+axeh6dz3SJUSPSBQSz3867upPaWKA
l0GkGEIoD1AZYQCRcdcBPhy+7c8/IUAwn0upWziWCkQXiOvYiLxN9mFmns0KCfai5hW5KPCaxLXz
zBLG+UfgPH0po+ayIB6HDFZkfAWGvsCFB2Q7l6sAXNtnf8PbgSMaQhe3Ly++u4rQuLouZZgiGJwl
EruwKP5Kmafu9AAyPPkVRrFKZsmPkge62Zs8nNxsuu/66Zbhcn4PQYaWPtmgVPoDfPu6BfCQm6vW
jl09L3I90T9SJOKf+J3b0wlvr9IbNo7401wZYeojojZOy6GninUZsny8Ysyv2r1J/0ir/I5HHhvQ
Y8nkrEnBb1MPktx2CZTjn0CXUXKO9ENVz1U1cs3pdc0FKGaFzwfAXQi2sQkZ8TUY7vOBY7Q271Gu
pIwb1o2BNGfSZPjQvIocgE8sSbTp7hmVoFwGKQMTioi/+9lL7pVhTYYmxIDRZIO7Bf5bItW2q6qX
jv4z3RuaDYlAkQhBO6gXO5sD/oYw5fu3hRTKm4a6iQ6viUb3i6SmdRT2+L0IH8XUQVhIyvFQGkUG
RDPzlRDn1THrrZBnhdnIaJQEgrLDbK36slR00ZFyc4UJUZ3DRAp5oKGMnYLEupmws6rRu/rtyX94
aSy/bq2DfRSkLG14yBVAVgfQRgPhzI7t+8PXBNV7PRvYx0Y3C7LkuPcc27OtveNqtNdBS0mDly2b
lafNCefdRCbjjya97eW1qnixmhAyDujUfkumA4taJcV1HGNkPXb+Bi3lV9PGK9ZOr+2MXhxhTMrz
HN0TrJzBaKU80hVeO/mcr/RJ+/qfhyD6JRrG/IYUSu/twD6Ukkv/Rb4uLQiB0JMQg5231624mp/l
bTuRJW+Wr3Bl9Syz2NI/XlCiLqsqoC8v9ETKkXal3/kGQekQv+/mptK/P5dycjLW8VRtmGFADbt5
gnQYxK0QdCfvwgAmn3qLQ2vRHYJmm8dXmsdJyZL3X2pFvv91dK+WOp+exvCGJ9yekzCjw0g266zF
Rv5iPzJbqV3VWtiAUuyKMKjEdo7VByfKE7ZYfAWEQIAGSrenb5kNGM4GMyLN9kIZlhhfNuD8I3p4
zwsEWC4VwK5pCsG40qVihY7uZ7csw0pfeTb8Qb6lt2/sdDzTQ3uwf0Vds7j7zldw3OWzwE1+wFee
NZfAfuzUxI06p7+j9Z+wFw4D9elgCz0FusAwdPdgf+ClPz+LCnfbHwcPnD2b8HUux3omCcHEBmiy
L9fxnbWhWU0bdi6Se2VsRseyT88jIr1A4UvKYwTW5dAI4q1lEZmi0dgH+auZ6se15eO4jMISLD/2
ECFGFWA948ajD/qpQMWJtl0W8bbqh/PTmpRle7kTdxnXYT7daMQq7U6acCBjPOwz8NikAFKaAjzv
Tk6516FynhDZm+A8LvimnyxBIK+2bgqBYpZ2KqCe/JfUhVnv/hVTtY/yCgKtPdHc1HVYI4g5HYEF
TYnQ4DRGy9qVHUwh5RoO3B3u4/NqcbbhSwEgjlUFWK69JifpX+OSCUHNgY1DjQZgcSoIgagBdnvc
UIXnz5lgYuHqGb9ovZjshf/dKsBBKbU8dcUoZbKRi/jFebvcejs7CZ+pGWbrW5w/+uwloyDGq79m
fPUowxPZZYWdf97/0OhTKmgYKb2JuUD7+tOTgCWKCRKQzH3fr7Eyw9eY9w/JC4wS2EWEIj0Org2s
XdTdjFDMh3CbRAVxYWv8+7iVRfz//X6Nc9RDS3PAyTsP9FS04eKjhhyVecs0g55ZX995lLP7NZ6N
YuVFOe2gfonMlkfe4Me4zrmNk87vnQ1wBC4AqHTEAl5G4VH+zRpCxoQmPIr84qje9B9V7BDznqDi
vytVXfug+fU1FFkDulVaiRjqFtyXzF2wAxayWewIhHo+cdet0MJ+emR6J+l2ygzXbcOxsquMkVst
L3aHdTXgZeY7Ia8QtX7uamw1duhWk7U0AUg4jP2fzzXpTvaLwnWsT4Z5i42tEaXZdMbxeTE7j8ay
Tgm1iv8hfo+y+XhRpgFSYyVLo1u1XvN7omxr7t1CHA5vpi6kCX809jLkF2w/e/lCE6NlWnnhdQk7
w72NtBkGA8U+W5LDiS77hjOqF/zW1EoTsa/JqobqrBS+hKcGVAk8lFafQ23KnarsV8WUSiSrmNvq
x4s6iqMgdIT7i6D1xLQ3FWCuiI3w0aDSn5ZVgAIFnB1CeMAvvtRlXApZJMb1JtdXQa1SRL3x4HW+
jk5hqy+iSBQ3G8tXe9iKoXivWshzEGep85z6/YWqNWUIyMmep9woviXQK6o5c/sefKm3/k3T4T87
4KPvW3f6OwwB4/j7GTLCUDSL87LWL8jG64Ro0W0M+Yo0GM0xinIyJrWTCn5y8WtoxibNZkNIt2ji
Q2tf/COhobhkKMptfZppkqOLtsilX1+0Hz4l3pdtL/uc+4Cc+1NVXt8As6cwC6Zk0z02JBC7Zhjb
9Fjr9KF9aW2qwHqQObNe5WBLnm9swR3AOXg3vK0RhkwwmNyQvTgHtfFyOp2V8RQzeU/Z30spdBAT
IwTDHY/CT6YyJh3xSaMzDFhxZw6Fnu1jnw1K7gI/B+geER7GLy2WmLVm0eGprYCiv3qLj5G4w4vr
U6A7vg74pUzmDVh+Ep9a2/0HxPR/XFD9CSRDNZHQoIVlZfE1BkWyJanj0Z3oLFumXxlhJ04cIiLL
Iwj0oIx3wp4A0e8fEQaesWssPamNdxaKHsYAq+mrbnHZmzyllorLpVdp9PCIhTIbRU6hNe/RUjOw
WSRGLQ3AJ3LYXPE/l2ka4X8CLl2soo42sBnxxJPeVGBfpeuNqLSleQmBwDJJRc7IA6ZzOWHciCUR
JymOU/e4pzWrPwSQ6xk4q7qkvPcIIZ5BF0nvCH069c54gLP/24OvNrrQfnTXN5049SqcAGTwj7pI
F1QjcziVyryRM0ybkXL/Mrt9M4rd8cgKtIMn9gb53hNFTnrSEzwMMPvlZiRmoj4+9882K3HR26S8
02A2EJwSTyi9fHYfW0t+t7MSBIT/B+wWnmUFyL6o+uP9fNbLi3T/AwemPNvlKHzbsJfD2tmk5RSa
0JvFxCY82vBi4ybV8LR8Tqq12TSnEvXVQhts7gKa4WbZcAqy/TDtzGqeEbQg0pYPQz/ehkdSJFHE
5WCUb8J2sOOYxAAvqwa6amiorrd4Tsi/4//4s91swsR/1e0k9qQZlqi05X38Ko3miPrx7Xse3Vrn
S1IJoJljkF6xY3ksZTXhPLK6/7XWNdtwLHE15peEgg4mxboqjs5+HqS3PmqpHodCRRb3weLjSWXM
YelxrNcwFmZk1+vxalsYTOCSugVVnXvNwBsntG9fRwRQsLNrkMGQshkiEFyNBzEY8qkNH03SKGYQ
MUklcHAVQt9PdNs6l/yxNivTA+2Xxs3d5VWkaJZLKpbtk+4VXSxoerh7TumSVLg/Mxl1c5mWa8TZ
t7W6hP5VUGtgfwzxo44OBx4DKEZDyEdnQFTBYRfs9/tihpxjO5i9lDnoZLD3TsYCMfaKzcsT9/9B
7wsAmKJNZiQ9paA7s2dt+NUeRg7NJzMVy2G+41GT+eSbmUl/Xu9wyYx2+Xb4WEnKMK5PS1EMbuD/
w8vLVTbSE/ndiJ3oEPJD
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
