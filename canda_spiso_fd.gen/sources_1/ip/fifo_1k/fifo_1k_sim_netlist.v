// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Sep 21 12:45:53 2021
// Host        : pc running 64-bit Ubuntu 18.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/master/FPGA_proj/canda_vhdl/canda_vhdl.gen/sources_1/ip/fifo_1k/fifo_1k_sim_netlist.v
// Design      : fifo_1k
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_1k,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module fifo_1k
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    rd_data_count,
    prog_full,
    prog_empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [9:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [4:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [10:0]rd_data_count;
  output prog_full;
  output prog_empty;

  wire [9:0]din;
  wire [4:0]dout;
  wire empty;
  wire full;
  wire prog_empty;
  wire prog_full;
  wire rd_clk;
  wire [10:0]rd_data_count;
  wire rd_en;
  wire wr_clk;
  wire wr_en;
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
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
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
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
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
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "10" *) 
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
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
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
  (* C_HAS_RST = "0" *) 
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
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "400" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "401" *) 
  (* C_PROG_EMPTY_TYPE = "1" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "600" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "599" *) 
  (* C_PROG_FULL_TYPE = "1" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "11" *) 
  (* C_RD_DEPTH = "2048" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "11" *) 
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
  (* C_USE_DOUT_RST = "0" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_1k_fifo_generator_v13_2_5 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
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
        .prog_empty(prog_empty),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_1k_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

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
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
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
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
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
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
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
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "11" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_1k_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [10:0]src_in_bin;
  input dest_clk;
  output [10:0]dest_out_bin;

  wire [10:0]async_path;
  wire [9:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [10:0]\dest_graysync_ff[1] ;
  wire [10:0]dest_out_bin;
  wire [9:0]gray_enc;
  wire src_clk;
  wire [10:0]src_in_bin;

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
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(binval[5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[5]),
        .O(binval[4]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .I5(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [10]),
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
        .D(\dest_graysync_ff[1] [10]),
        .Q(dest_out_bin[10]),
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
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
        .D(src_in_bin[10]),
        .Q(async_path[10]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 117856)
`pragma protect data_block
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
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
