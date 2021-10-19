// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Oct 19 12:45:41 2021
// Host        : pc running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo2_4k_sim_netlist.v
// Design      : fifo2_4k
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo2_4k,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [11:0]rd_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [11:0]rd_data_count;
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
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
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
  (* C_RD_DATA_COUNT_WIDTH = "12" *) 
  (* C_RD_DEPTH = "4096" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "12" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 132192)
`pragma protect data_block
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
SlE6ADdVzYBR
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
