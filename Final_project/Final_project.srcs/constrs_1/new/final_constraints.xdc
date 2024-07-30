# Reset button
set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { reset }]; #IO_L4N_T0_35 Sch=btn[0]

# LEDs
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { Digital_1 }]; #IO_L11P_T1_SRCC_34 Sch=ck_io[0]
set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS33 } [get_ports { Digital_2 }]; #IO_L3N_T0_DQS_34 Sch=ck_io[1]
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { Digital_3 }]; #IO_L5P_T0_34 Sch=ck_io[2]
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { Digital_4 }]; #IO_L5N_T0_34 Sch=ck_io[3]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { test_signal }]; #IO_L21P_T3_DQS_34 Sch=ck_io[4]

# Analog Pins
set_property -dict { PACKAGE_PIN K9    IOSTANDARD LVCMOS33 } [get_ports { VP }]; #VP_0 Sch=xadc_v_p
set_property -dict { PACKAGE_PIN L10   IOSTANDARD LVCMOS33 } [get_ports { VN }]; #VN_0 Sch=xadc_v_n

#clock signal
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L13P_T2_MRCC_35 Sch=sysclk




