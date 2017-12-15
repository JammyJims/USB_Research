--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2017 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--    Generated from core with identifier: xilinx.com:ip:xfft:8.0             --
--                                                                            --
--    The Fast Fourier Transform (FFT) is a computationally efficient         --
--    algorithm for computing the Discrete Fourier Transform (DFT). The FFT   --
--    Core can compute 8 to 65536-point forward or inverse complex            --
--    transforms on up to 12 parallel channels. The input data is a vector    --
--    of complex values represented as two's-complement numbers 8 to 34       --
--    bits wide or single precision floating point numbers 32 bits wide.      --
--    The phase factors can be 8 to 34 bits wide. All memory is on-chip       --
--    using either Block RAM or Distributed RAM. Three arithmetic types are   --
--    available: full-precision unscaled, scaled fixed-point, and             --
--    block-floating point. Several parameters are run-time configurable:     --
--    the point size, the choice of forward or inverse transform, and the     --
--    scaling schedule. Four architectures are available to provide a         --
--    tradeoff between size and transform time.                               --
--------------------------------------------------------------------------------
-- Source Code Wrapper
-- This file is provided to wrap around the source code (if appropriate)
-- and is designed for use with XST

-- Interfaces:
--   event_frame_started_intf
--   event_tlast_unexpected_intf
--   event_tlast_missing_intf
--   event_fft_overflow_intf
--   event_status_channel_halt_intf
--   event_data_in_channel_halt_intf
--   event_data_out_channel_halt_intf
--   S_AXIS_DATA
--   aclk_intf
--   aresetn_intf
--   aclken_intf
--   M_AXIS_STATUS
--   M_AXIS_DATA
--   S_AXIS_CONFIG

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

LIBRARY xfft_v8_0;
USE xfft_v8_0.xfft_v8_0;

ENTITY test IS
  PORT (
    aclk : IN STD_LOGIC;
    s_axis_config_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    s_axis_config_tvalid : IN STD_LOGIC;
    s_axis_config_tready : OUT STD_LOGIC;
    s_axis_data_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axis_data_tvalid : IN STD_LOGIC;
    s_axis_data_tready : OUT STD_LOGIC;
    s_axis_data_tlast : IN STD_LOGIC;
    m_axis_data_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axis_data_tvalid : OUT STD_LOGIC;
    m_axis_data_tready : IN STD_LOGIC;
    m_axis_data_tlast : OUT STD_LOGIC;
    event_frame_started : OUT STD_LOGIC;
    event_tlast_unexpected : OUT STD_LOGIC;
    event_tlast_missing : OUT STD_LOGIC;
    event_status_channel_halt : OUT STD_LOGIC;
    event_data_in_channel_halt : OUT STD_LOGIC;
    event_data_out_channel_halt : OUT STD_LOGIC
  );
END test;

ARCHITECTURE spartan6 OF test IS

  COMPONENT xfft_v8_0 IS
    GENERIC (
      C_XDEVICEFAMILY : STRING;
      C_S_AXIS_CONFIG_TDATA_WIDTH : INTEGER;
      C_S_AXIS_DATA_TDATA_WIDTH : INTEGER;
      C_M_AXIS_DATA_TDATA_WIDTH : INTEGER;
      C_M_AXIS_DATA_TUSER_WIDTH : INTEGER;
      C_M_AXIS_STATUS_TDATA_WIDTH : INTEGER;
      C_THROTTLE_SCHEME : INTEGER;
      C_CHANNELS : INTEGER;
      C_NFFT_MAX : INTEGER;
      C_ARCH : INTEGER;
      C_HAS_NFFT : INTEGER;
      C_USE_FLT_PT : INTEGER;
      C_INPUT_WIDTH : INTEGER;
      C_TWIDDLE_WIDTH : INTEGER;
      C_OUTPUT_WIDTH : INTEGER;
      C_HAS_SCALING : INTEGER;
      C_HAS_BFP : INTEGER;
      C_HAS_ROUNDING : INTEGER;
      C_HAS_ACLKEN : INTEGER;
      C_HAS_ARESETN : INTEGER;
      C_HAS_OVFLO : INTEGER;
      C_HAS_NATURAL_INPUT : INTEGER;
      C_HAS_NATURAL_OUTPUT : INTEGER;
      C_HAS_CYCLIC_PREFIX : INTEGER;
      C_HAS_XK_INDEX : INTEGER;
      C_DATA_MEM_TYPE : INTEGER;
      C_TWIDDLE_MEM_TYPE : INTEGER;
      C_BRAM_STAGES : INTEGER;
      C_REORDER_MEM_TYPE : INTEGER;
      C_USE_HYBRID_RAM : INTEGER;
      C_OPTIMIZE_GOAL : INTEGER;
      C_CMPY_TYPE : INTEGER;
      C_BFLY_TYPE : INTEGER
    );
    PORT (
      aclk : IN STD_LOGIC;
      s_axis_config_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      s_axis_config_tvalid : IN STD_LOGIC;
      s_axis_config_tready : OUT STD_LOGIC;
      s_axis_data_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axis_data_tvalid : IN STD_LOGIC;
      s_axis_data_tready : OUT STD_LOGIC;
      s_axis_data_tlast : IN STD_LOGIC;
      m_axis_data_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axis_data_tvalid : OUT STD_LOGIC;
      m_axis_data_tready : IN STD_LOGIC;
      m_axis_data_tlast : OUT STD_LOGIC;
      event_frame_started : OUT STD_LOGIC;
      event_tlast_unexpected : OUT STD_LOGIC;
      event_tlast_missing : OUT STD_LOGIC;
      event_status_channel_halt : OUT STD_LOGIC;
      event_data_in_channel_halt : OUT STD_LOGIC;
      event_data_out_channel_halt : OUT STD_LOGIC
    );
  END COMPONENT xfft_v8_0;

  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF spartan6 : ARCHITECTURE IS "xfft_v8_0, Xilinx CORE Generator 14.7";

  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF spartan6 : ARCHITECTURE IS "test,xfft_v8_0,{}";

  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF spartan6 : ARCHITECTURE IS "test,xfft_v8_0,{C_ARCH=1,C_BFLY_TYPE=0,C_BRAM_STAGES=0,C_CHANNELS=1,C_CMPY_TYPE=1,C_DATA_MEM_TYPE=1,C_HAS_ACLKEN=0,C_HAS_ARESETN=0,C_HAS_BFP=0,C_HAS_CYCLIC_PREFIX=0,C_HAS_NATURAL_INPUT=1,C_HAS_NATURAL_OUTPUT=0,C_HAS_NFFT=0,C_HAS_OVFLO=0,C_HAS_ROUNDING=0,C_HAS_SCALING=1,C_HAS_XK_INDEX=0,C_INPUT_WIDTH=16,C_M_AXIS_DATA_TDATA_WIDTH=32,C_M_AXIS_DATA_TUSER_WIDTH=1,C_M_AXIS_STATUS_TDATA_WIDTH=1,C_NFFT_MAX=10,C_OPTIMIZE_GOAL=0,C_OUTPUT_WIDTH=16,C_REORDER_MEM_TYPE=1,C_S_AXIS_CONFIG_TDATA_WIDTH=16,C_S_AXIS_DATA_TDATA_WIDTH=32,C_THROTTLE_SCHEME=1,C_TWIDDLE_MEM_TYPE=1,C_TWIDDLE_WIDTH=16,C_USE_FLT_PT=0,C_USE_HYBRID_RAM=0,C_XDEVICEFAMILY=spartan6}";

BEGIN

  U0 : xfft_v8_0
    GENERIC MAP (
      C_ARCH => 1,
      C_BFLY_TYPE => 0,
      C_BRAM_STAGES => 0,
      C_CHANNELS => 1,
      C_CMPY_TYPE => 1,
      C_DATA_MEM_TYPE => 1,
      C_HAS_ACLKEN => 0,
      C_HAS_ARESETN => 0,
      C_HAS_BFP => 0,
      C_HAS_CYCLIC_PREFIX => 0,
      C_HAS_NATURAL_INPUT => 1,
      C_HAS_NATURAL_OUTPUT => 0,
      C_HAS_NFFT => 0,
      C_HAS_OVFLO => 0,
      C_HAS_ROUNDING => 0,
      C_HAS_SCALING => 1,
      C_HAS_XK_INDEX => 0,
      C_INPUT_WIDTH => 16,
      C_M_AXIS_DATA_TDATA_WIDTH => 32,
      C_M_AXIS_DATA_TUSER_WIDTH => 1,
      C_M_AXIS_STATUS_TDATA_WIDTH => 1,
      C_NFFT_MAX => 10,
      C_OPTIMIZE_GOAL => 0,
      C_OUTPUT_WIDTH => 16,
      C_REORDER_MEM_TYPE => 1,
      C_S_AXIS_CONFIG_TDATA_WIDTH => 16,
      C_S_AXIS_DATA_TDATA_WIDTH => 32,
      C_THROTTLE_SCHEME => 1,
      C_TWIDDLE_MEM_TYPE => 1,
      C_TWIDDLE_WIDTH => 16,
      C_USE_FLT_PT => 0,
      C_USE_HYBRID_RAM => 0,
      C_XDEVICEFAMILY => "spartan6"
    )
    PORT MAP (
      aclk => aclk,
      s_axis_config_tdata => s_axis_config_tdata,
      s_axis_config_tvalid => s_axis_config_tvalid,
      s_axis_config_tready => s_axis_config_tready,
      s_axis_data_tdata => s_axis_data_tdata,
      s_axis_data_tvalid => s_axis_data_tvalid,
      s_axis_data_tready => s_axis_data_tready,
      s_axis_data_tlast => s_axis_data_tlast,
      m_axis_data_tdata => m_axis_data_tdata,
      m_axis_data_tvalid => m_axis_data_tvalid,
      m_axis_data_tready => m_axis_data_tready,
      m_axis_data_tlast => m_axis_data_tlast,
      event_frame_started => event_frame_started,
      event_tlast_unexpected => event_tlast_unexpected,
      event_tlast_missing => event_tlast_missing,
      event_status_channel_halt => event_status_channel_halt,
      event_data_in_channel_halt => event_data_in_channel_halt,
      event_data_out_channel_halt => event_data_out_channel_halt
    );

END spartan6;
