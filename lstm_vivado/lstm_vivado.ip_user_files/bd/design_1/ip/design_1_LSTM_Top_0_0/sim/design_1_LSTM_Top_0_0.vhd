-- (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:LSTM_Top:1.0
-- IP Revision: 2114015277

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_LSTM_Top_0_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    in_r_TVALID : IN STD_LOGIC;
    in_r_TREADY : OUT STD_LOGIC;
    in_r_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in_r_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    in_r_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    in_r_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    in_r_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    in_r_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    in_r_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    out_r_TVALID : OUT STD_LOGIC;
    out_r_TREADY : IN STD_LOGIC;
    out_r_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    out_r_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    out_r_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    out_r_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    out_r_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    out_r_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    out_r_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END design_1_LSTM_Top_0_0;

ARCHITECTURE design_1_LSTM_Top_0_0_arch OF design_1_LSTM_Top_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_LSTM_Top_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT LSTM_Top IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      in_r_TVALID : IN STD_LOGIC;
      in_r_TREADY : OUT STD_LOGIC;
      in_r_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in_r_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      in_r_TKEEP : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      in_r_TSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      in_r_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      in_r_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      in_r_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      out_r_TVALID : OUT STD_LOGIC;
      out_r_TREADY : IN STD_LOGIC;
      out_r_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      out_r_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      out_r_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      out_r_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      out_r_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      out_r_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      out_r_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT LSTM_Top;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_LSTM_Top_0_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF out_r_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 out_r TID";
  ATTRIBUTE X_INTERFACE_INFO OF out_r_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 out_r TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF out_r_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 out_r TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF out_r_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 out_r TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF out_r_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 out_r TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF out_r_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 out_r TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF out_r_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 out_r TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF out_r_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 out_r TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF out_r_TVALID: SIGNAL IS "XIL_INTERFACENAME out_r, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_typ" & 
"e immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} ma" & 
"ximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} TUSER_WIDTH 1}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP " & 
"0";
  ATTRIBUTE X_INTERFACE_INFO OF out_r_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 out_r TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF in_r_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 in_r TID";
  ATTRIBUTE X_INTERFACE_INFO OF in_r_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 in_r TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF in_r_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 in_r TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF in_r_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 in_r TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF in_r_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 in_r TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF in_r_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 in_r TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF in_r_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 in_r TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF in_r_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 in_r TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF in_r_TVALID: SIGNAL IS "XIL_INTERFACENAME in_r, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF in_r_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 in_r TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF in_r:out_r, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN desi" & 
"gn_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
BEGIN
  U0 : LSTM_Top
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      in_r_TVALID => in_r_TVALID,
      in_r_TREADY => in_r_TREADY,
      in_r_TDATA => in_r_TDATA,
      in_r_TDEST => in_r_TDEST,
      in_r_TKEEP => in_r_TKEEP,
      in_r_TSTRB => in_r_TSTRB,
      in_r_TUSER => in_r_TUSER,
      in_r_TLAST => in_r_TLAST,
      in_r_TID => in_r_TID,
      out_r_TVALID => out_r_TVALID,
      out_r_TREADY => out_r_TREADY,
      out_r_TDATA => out_r_TDATA,
      out_r_TDEST => out_r_TDEST,
      out_r_TKEEP => out_r_TKEEP,
      out_r_TSTRB => out_r_TSTRB,
      out_r_TUSER => out_r_TUSER,
      out_r_TLAST => out_r_TLAST,
      out_r_TID => out_r_TID
    );
END design_1_LSTM_Top_0_0_arch;
