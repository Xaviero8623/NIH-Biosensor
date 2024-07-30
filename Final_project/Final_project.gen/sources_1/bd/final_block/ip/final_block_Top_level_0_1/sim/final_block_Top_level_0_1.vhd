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

-- IP VLNV: xilinx.com:module_ref:Top_level:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY final_block_Top_level_0_1 IS
  PORT (
    clk_42MHz : IN STD_LOGIC;
    clk_84MHz : IN STD_LOGIC;
    clk_40MHz : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    LED_1 : OUT STD_LOGIC;
    LED_2 : OUT STD_LOGIC;
    LED_3 : OUT STD_LOGIC;
    LED_4 : OUT STD_LOGIC;
    test_signal : OUT STD_LOGIC;
    combined_threshold_output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END final_block_Top_level_0_1;

ARCHITECTURE final_block_Top_level_0_1_arch OF final_block_Top_level_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF final_block_Top_level_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT Top_level IS
    PORT (
      clk_42MHz : IN STD_LOGIC;
      clk_84MHz : IN STD_LOGIC;
      clk_40MHz : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      LED_1 : OUT STD_LOGIC;
      LED_2 : OUT STD_LOGIC;
      LED_3 : OUT STD_LOGIC;
      LED_4 : OUT STD_LOGIC;
      test_signal : OUT STD_LOGIC;
      combined_threshold_output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT Top_level;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset: SIGNAL IS "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset: SIGNAL IS "xilinx.com:signal:reset:1.0 reset RST";
BEGIN
  U0 : Top_level
    PORT MAP (
      clk_42MHz => clk_42MHz,
      clk_84MHz => clk_84MHz,
      clk_40MHz => clk_40MHz,
      reset => reset,
      LED_1 => LED_1,
      LED_2 => LED_2,
      LED_3 => LED_3,
      LED_4 => LED_4,
      test_signal => test_signal,
      combined_threshold_output => combined_threshold_output
    );
END final_block_Top_level_0_1_arch;
