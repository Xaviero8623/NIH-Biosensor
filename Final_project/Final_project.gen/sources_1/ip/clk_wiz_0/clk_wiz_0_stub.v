// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Jul 17 08:51:18 2024
// Host        : NIBIB02135175DT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/onwuxc/Final_project/Final_project.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_42MHz, clk_84MHz, clk_40MHz, reset, locked, 
  clk)
/* synthesis syn_black_box black_box_pad_pin="reset,locked,clk" */
/* synthesis syn_force_seq_prim="clk_42MHz" */
/* synthesis syn_force_seq_prim="clk_84MHz" */
/* synthesis syn_force_seq_prim="clk_40MHz" */;
  output clk_42MHz /* synthesis syn_isclock = 1 */;
  output clk_84MHz /* synthesis syn_isclock = 1 */;
  output clk_40MHz /* synthesis syn_isclock = 1 */;
  input reset;
  output locked;
  input clk;
endmodule
