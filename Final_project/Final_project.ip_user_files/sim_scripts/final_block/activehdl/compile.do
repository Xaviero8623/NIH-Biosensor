transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_17
vlib activehdl/processing_system7_vip_v1_0_19
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_15
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/fifo_generator_v13_2_10
vlib activehdl/axi_data_fifo_v2_1_30
vlib activehdl/axi_register_slice_v2_1_31
vlib activehdl/axi_protocol_converter_v2_1_31

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 activehdl/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 activehdl/processing_system7_vip_v1_0_19
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 activehdl/proc_sys_reset_v5_0_15
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap fifo_generator_v13_2_10 activehdl/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 activehdl/axi_data_fifo_v2_1_30
vmap axi_register_slice_v2_1_31 activehdl/axi_register_slice_v2_1_31
vmap axi_protocol_converter_v2_1_31 activehdl/axi_protocol_converter_v2_1_31

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/ec67/hdl" "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/b28c/hdl" "+incdir+C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"C:/Xilinx2/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  \
"C:/Xilinx2/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/ec67/hdl" "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/b28c/hdl" "+incdir+C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../Final_project.gen/sources_1/bd/final_block/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -sv2k12 "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/ec67/hdl" "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/b28c/hdl" "+incdir+C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../Final_project.gen/sources_1/bd/final_block/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19  -sv2k12 "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/ec67/hdl" "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/b28c/hdl" "+incdir+C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../Final_project.gen/sources_1/bd/final_block/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/ec67/hdl" "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/b28c/hdl" "+incdir+C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../bd/final_block/ip/final_block_processing_system7_0_0/sim/final_block_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/final_block/ip/final_block_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/final_block_xadc_wiz_0_0_conv_funs_pkg.vhd" \
"../../../bd/final_block/ip/final_block_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/final_block_xadc_wiz_0_0_proc_common_pkg.vhd" \
"../../../bd/final_block/ip/final_block_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/final_block_xadc_wiz_0_0_ipif_pkg.vhd" \
"../../../bd/final_block/ip/final_block_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/final_block_xadc_wiz_0_0_family_support.vhd" \
"../../../bd/final_block/ip/final_block_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/final_block_xadc_wiz_0_0_family.vhd" \
"../../../bd/final_block/ip/final_block_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/final_block_xadc_wiz_0_0_soft_reset.vhd" \
"../../../bd/final_block/ip/final_block_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/final_block_xadc_wiz_0_0_pselect_f.vhd" \
"../../../bd/final_block/ip/final_block_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/final_block_xadc_wiz_0_0_address_decoder.vhd" \
"../../../bd/final_block/ip/final_block_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/final_block_xadc_wiz_0_0_slave_attachment.vhd" \
"../../../bd/final_block/ip/final_block_xadc_wiz_0_0/interrupt_control_v2_01_a/hdl/src/vhdl/final_block_xadc_wiz_0_0_interrupt_control.vhd" \
"../../../bd/final_block/ip/final_block_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/final_block_xadc_wiz_0_0_axi_lite_ipif.vhd" \
"../../../bd/final_block/ip/final_block_xadc_wiz_0_0/final_block_xadc_wiz_0_0_xadc_core_drp.vhd" \
"../../../bd/final_block/ip/final_block_xadc_wiz_0_0/final_block_xadc_wiz_0_0_axi_xadc.vhd" \
"../../../bd/final_block/ip/final_block_xadc_wiz_0_0/final_block_xadc_wiz_0_0.vhd" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../Final_project.gen/sources_1/bd/final_block/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  \
"../../../../Final_project.gen/sources_1/bd/final_block/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/final_block/ip/final_block_rst_ps7_0_41M_0/sim/final_block_rst_ps7_0_41M_0.vhd" \
"../../../bd/final_block/ip/final_block_Top_level_0_2/sim/final_block_Top_level_0_2.vhd" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/ec67/hdl" "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/b28c/hdl" "+incdir+C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../Final_project.gen/sources_1/bd/final_block/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10  -v2k5 "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/ec67/hdl" "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/b28c/hdl" "+incdir+C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../Final_project.gen/sources_1/bd/final_block/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  \
"../../../../Final_project.gen/sources_1/bd/final_block/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -v2k5 "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/ec67/hdl" "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/b28c/hdl" "+incdir+C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../Final_project.gen/sources_1/bd/final_block/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -v2k5 "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/ec67/hdl" "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/b28c/hdl" "+incdir+C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../Final_project.gen/sources_1/bd/final_block/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -v2k5 "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/ec67/hdl" "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/b28c/hdl" "+incdir+C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../Final_project.gen/sources_1/bd/final_block/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_31  -v2k5 "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/ec67/hdl" "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/b28c/hdl" "+incdir+C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../../Final_project.gen/sources_1/bd/final_block/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/ec67/hdl" "+incdir+../../../../Final_project.gen/sources_1/bd/final_block/ipshared/b28c/hdl" "+incdir+C:/Xilinx2/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l generic_baseblocks_v2_1_2 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_register_slice_v2_1_31 -l axi_protocol_converter_v2_1_31 \
"../../../bd/final_block/ip/final_block_auto_pc_0/sim/final_block_auto_pc_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/final_block/sim/final_block.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

