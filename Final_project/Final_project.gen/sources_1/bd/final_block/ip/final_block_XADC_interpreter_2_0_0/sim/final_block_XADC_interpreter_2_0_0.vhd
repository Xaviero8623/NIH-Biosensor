-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:XADC_interpreter_2:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY final_block_XADC_interpreter_2_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    drdy_out : IN STD_LOGIC;
    do_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    daddr_in : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    den_in : OUT STD_LOGIC;
    dwe_in : OUT STD_LOGIC;
    di_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    adc_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END final_block_XADC_interpreter_2_0_0;

ARCHITECTURE final_block_XADC_interpreter_2_0_0_arch OF final_block_XADC_interpreter_2_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF final_block_XADC_interpreter_2_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT XADC_interpreter_2 IS
    PORT (
      clk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      drdy_out : IN STD_LOGIC;
      do_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      daddr_in : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
      den_in : OUT STD_LOGIC;
      dwe_in : OUT STD_LOGIC;
      di_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      adc_data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT XADC_interpreter_2;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 40312500, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
BEGIN
  U0 : XADC_interpreter_2
    PORT MAP (
      clk => clk,
      reset => reset,
      drdy_out => drdy_out,
      do_out => do_out,
      daddr_in => daddr_in,
      den_in => den_in,
      dwe_in => dwe_in,
      di_in => di_in,
      adc_data => adc_data
    );
END final_block_XADC_interpreter_2_0_0_arch;
