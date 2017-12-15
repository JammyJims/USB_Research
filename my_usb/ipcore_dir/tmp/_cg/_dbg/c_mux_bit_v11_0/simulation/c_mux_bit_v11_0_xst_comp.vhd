-- $RCSfile: c_mux_bit_v11_0_xst_comp.vhd,v $ $Revision: 1.3 $ $Date: 2009/09/08 15:11:46 $
--------------------------------------------------------------------------------
--  (c) Copyright 1995-2005 Xilinx, Inc. All rights reserved.
--
--  This file contains confidential and proprietary information
--  of Xilinx, Inc. and is protected under U.S. and
--  international copyright and other intellectual property
--  laws.
--
--  DISCLAIMER
--  This disclaimer is not a license and does not grant any
--  rights to the materials distributed herewith. Except as
--  otherwise provided in a valid license issued to you by
--  Xilinx, and to the maximum extent permitted by applicable
--  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
--  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
--  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
--  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
--  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
--  (2) Xilinx shall not be liable (whether in contract or tort,
--  including negligence, or under any other theory of
--  liability) for any loss or damage of any kind or nature
--  related to, arising under or in connection with these
--  materials, including for any direct, or any indirect,
--  special, incidental, or consequential loss or damage
--  (including loss of data, profits, goodwill, or any type of
--  loss or damage suffered as a result of any action brought
--  by a third party) even if such damage or loss was
--  reasonably foreseeable or Xilinx had been advised of the
--  possibility of the same.
--
--  CRITICAL APPLICATIONS
--  Xilinx products are not designed or intended to be fail-
--  safe, or for use in any application requiring fail-safe
--  performance, such as life-support or safety devices or
--  systems, Class III medical devices, nuclear facilities,
--  applications related to the deployment of airbags, or any
--  other applications that could lead to death, personal
--  injury, or severe property or environmental damage
--  (individually and collectively, "Critical
--  Applications"). Customer assumes the sole risk and
--  liability of any use of Xilinx products in Critical
--  Applications, subject only to applicable laws and
--  regulations governing limitations on product liability.
--
--  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
--  PART OF THIS FILE AT ALL TIMES. 
--------------------------------------------------------------------------------
-----------------------------------------------------------------------
--
-- Use VHDL package bb_comps to define black box components to be
-- generated by a synthesis tool.
--
-- This file should not be copied over to the export area
-- unless it is specifically required by the synthesis tool.
--
-- Try to ensue that the file-sets processed by XCC and the synthesis
-- tool is disjoint.
--
-----------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

PACKAGE c_mux_bit_v11_0_xst_comp IS

----------------------------------------------------------
-- Insert component declaration of top level xst file here
----------------------------------------------------------
  COMPONENT c_mux_bit_v11_0_xst
  GENERIC (
    c_family        : STRING := "virtex2";  -- Specifies device family being targeted
    c_xdevicefamily : STRING := "virtex2";  -- Specifies device family being targeted
    c_inputs        : INTEGER := 2;  -- Specifies input data bus width to mux
    c_sel_width     : INTEGER := 1;          -- Specifies select bus width
    c_pipe_stages   : INTEGER := 0;  -- Specifies number of pipeline stages in conj. with c_latency (0,1,2)
    c_latency       : INTEGER := 1;          -- Specifies latency of mux (0,1,2,3)
    c_height        : INTEGER := 0;          -- Redundant in VHDL core
    c_ainit_val     : STRING := "0";  -- Async init value, defaults to 0 in the code, init value for registers
    c_sinit_val     : STRING := "0";           -- Sync init value, redundant here
    c_sync_enable   : INTEGER := 0;  -- Priority of CE and sync controls - passed to o/p register
    c_sync_priority : INTEGER := 1;  -- Priority of sync set and clear for output register
    c_has_o         : INTEGER := 0;          -- Unregistered output
    c_has_q         : INTEGER := 1;          -- Registered output
    c_has_ce        : INTEGER := 0;          -- Optional clock enable
    c_has_aclr      : INTEGER := 0;          -- Optional async clear
    c_has_aset      : INTEGER := 0;          -- Optional async set
    c_has_ainit     : INTEGER := 0;  -- Redundant async init - for interface only
    c_has_sclr      : INTEGER := 0;          -- Optional sync clear
    c_has_sset      : INTEGER := 0;          -- Optional sync set
    c_has_sinit     : INTEGER := 0;  -- Redundant sync init - for interface only
    c_enable_rlocs  : INTEGER := 0           -- Redundant in VHDL core
    );
  PORT (
    m     : IN  STD_LOGIC_VECTOR(c_inputs-1 DOWNTO 0)    := (OTHERS => '0');  -- Input vector
    s     : IN  STD_LOGIC_VECTOR(c_sel_width-1 DOWNTO 0) := (OTHERS => '0');  -- Select pin
    clk   : IN  STD_LOGIC                                := '0';  -- Optional clock
    ce    : IN  STD_LOGIC                                := '1';  -- optional clock enable
    aset  : IN  STD_LOGIC                                := '0';  -- Optional asynch set '1'
    aclr  : IN  STD_LOGIC                                := '0';  -- Optional asynch clear to '0'
    ainit : IN  STD_LOGIC                                := '0';  -- Redundant in this version
    sset  : IN  STD_LOGIC                                := '0';  -- Optional synch set to '1'
    sclr  : IN  STD_LOGIC                                := '0';  -- Optional synch clear to '0'
    sinit : IN  STD_LOGIC                                := '0';  -- Redundant in this version
    o     : OUT STD_LOGIC;              -- Output value
    q     : OUT STD_LOGIC               -- Registered output value
    );
  END COMPONENT;


END c_mux_bit_v11_0_xst_comp;


