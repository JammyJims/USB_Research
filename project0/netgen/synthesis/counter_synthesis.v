////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: counter_synthesis.v
// /___/   /\     Timestamp: Wed Dec  6 10:35:29 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim counter.ngc counter_synthesis.v 
// Device	: xc6slx16-2-csg324
// Input file	: counter.ngc
// Output file	: /media/sf_Red/Xilinx/14.7/ISE_DS/project0/netgen/synthesis/counter_synthesis.v
// # of Modules	: 1
// Design Name	: counter
// Xilinx        : /media/sf_Red/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module counter (
  clk, BTND, Led
);
  input clk;
  input BTND;
  output [3 : 0] Led;
  wire clk_BUFGP_0;
  wire BTND_IBUF_1;
  wire Led_3_2;
  wire Led_2_3;
  wire Led_1_4;
  wire Led_0_5;
  wire BTND_inv;
  wire [31 : 0] count_int;
  wire [31 : 0] Result;
  wire [31 : 0] Mcount_count_int_lut;
  wire [30 : 0] Mcount_count_int_cy;
  FD   Led_0 (
    .C(clk_BUFGP_0),
    .D(count_int[28]),
    .Q(Led_0_5)
  );
  FD   Led_1 (
    .C(clk_BUFGP_0),
    .D(count_int[29]),
    .Q(Led_1_4)
  );
  FD   Led_2 (
    .C(clk_BUFGP_0),
    .D(count_int[30]),
    .Q(Led_2_3)
  );
  FD   Led_3 (
    .C(clk_BUFGP_0),
    .D(count_int[31]),
    .Q(Led_3_2)
  );
  FD   count_int_0 (
    .C(clk_BUFGP_0),
    .D(Result[0]),
    .Q(count_int[0])
  );
  FD   count_int_1 (
    .C(clk_BUFGP_0),
    .D(Result[1]),
    .Q(count_int[1])
  );
  FD   count_int_2 (
    .C(clk_BUFGP_0),
    .D(Result[2]),
    .Q(count_int[2])
  );
  FD   count_int_3 (
    .C(clk_BUFGP_0),
    .D(Result[3]),
    .Q(count_int[3])
  );
  FD   count_int_4 (
    .C(clk_BUFGP_0),
    .D(Result[4]),
    .Q(count_int[4])
  );
  FD   count_int_5 (
    .C(clk_BUFGP_0),
    .D(Result[5]),
    .Q(count_int[5])
  );
  FD   count_int_6 (
    .C(clk_BUFGP_0),
    .D(Result[6]),
    .Q(count_int[6])
  );
  FD   count_int_7 (
    .C(clk_BUFGP_0),
    .D(Result[7]),
    .Q(count_int[7])
  );
  FD   count_int_8 (
    .C(clk_BUFGP_0),
    .D(Result[8]),
    .Q(count_int[8])
  );
  FD   count_int_9 (
    .C(clk_BUFGP_0),
    .D(Result[9]),
    .Q(count_int[9])
  );
  FD   count_int_10 (
    .C(clk_BUFGP_0),
    .D(Result[10]),
    .Q(count_int[10])
  );
  FD   count_int_11 (
    .C(clk_BUFGP_0),
    .D(Result[11]),
    .Q(count_int[11])
  );
  FD   count_int_12 (
    .C(clk_BUFGP_0),
    .D(Result[12]),
    .Q(count_int[12])
  );
  FD   count_int_13 (
    .C(clk_BUFGP_0),
    .D(Result[13]),
    .Q(count_int[13])
  );
  FD   count_int_14 (
    .C(clk_BUFGP_0),
    .D(Result[14]),
    .Q(count_int[14])
  );
  FD   count_int_15 (
    .C(clk_BUFGP_0),
    .D(Result[15]),
    .Q(count_int[15])
  );
  FD   count_int_16 (
    .C(clk_BUFGP_0),
    .D(Result[16]),
    .Q(count_int[16])
  );
  FD   count_int_17 (
    .C(clk_BUFGP_0),
    .D(Result[17]),
    .Q(count_int[17])
  );
  FD   count_int_18 (
    .C(clk_BUFGP_0),
    .D(Result[18]),
    .Q(count_int[18])
  );
  FD   count_int_19 (
    .C(clk_BUFGP_0),
    .D(Result[19]),
    .Q(count_int[19])
  );
  FD   count_int_20 (
    .C(clk_BUFGP_0),
    .D(Result[20]),
    .Q(count_int[20])
  );
  FD   count_int_21 (
    .C(clk_BUFGP_0),
    .D(Result[21]),
    .Q(count_int[21])
  );
  FD   count_int_22 (
    .C(clk_BUFGP_0),
    .D(Result[22]),
    .Q(count_int[22])
  );
  FD   count_int_23 (
    .C(clk_BUFGP_0),
    .D(Result[23]),
    .Q(count_int[23])
  );
  FD   count_int_24 (
    .C(clk_BUFGP_0),
    .D(Result[24]),
    .Q(count_int[24])
  );
  FD   count_int_25 (
    .C(clk_BUFGP_0),
    .D(Result[25]),
    .Q(count_int[25])
  );
  FD   count_int_26 (
    .C(clk_BUFGP_0),
    .D(Result[26]),
    .Q(count_int[26])
  );
  FD   count_int_27 (
    .C(clk_BUFGP_0),
    .D(Result[27]),
    .Q(count_int[27])
  );
  FD   count_int_28 (
    .C(clk_BUFGP_0),
    .D(Result[28]),
    .Q(count_int[28])
  );
  FD   count_int_29 (
    .C(clk_BUFGP_0),
    .D(Result[29]),
    .Q(count_int[29])
  );
  FD   count_int_30 (
    .C(clk_BUFGP_0),
    .D(Result[30]),
    .Q(count_int[30])
  );
  FD   count_int_31 (
    .C(clk_BUFGP_0),
    .D(Result[31]),
    .Q(count_int[31])
  );
  MUXCY   \Mcount_count_int_cy<0>  (
    .CI(BTND_inv),
    .DI(count_int[0]),
    .S(Mcount_count_int_lut[0]),
    .O(Mcount_count_int_cy[0])
  );
  XORCY   \Mcount_count_int_xor<0>  (
    .CI(BTND_inv),
    .LI(Mcount_count_int_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_count_int_cy<1>  (
    .CI(Mcount_count_int_cy[0]),
    .DI(count_int[1]),
    .S(Mcount_count_int_lut[1]),
    .O(Mcount_count_int_cy[1])
  );
  XORCY   \Mcount_count_int_xor<1>  (
    .CI(Mcount_count_int_cy[0]),
    .LI(Mcount_count_int_lut[1]),
    .O(Result[1])
  );
  MUXCY   \Mcount_count_int_cy<2>  (
    .CI(Mcount_count_int_cy[1]),
    .DI(count_int[2]),
    .S(Mcount_count_int_lut[2]),
    .O(Mcount_count_int_cy[2])
  );
  XORCY   \Mcount_count_int_xor<2>  (
    .CI(Mcount_count_int_cy[1]),
    .LI(Mcount_count_int_lut[2]),
    .O(Result[2])
  );
  MUXCY   \Mcount_count_int_cy<3>  (
    .CI(Mcount_count_int_cy[2]),
    .DI(count_int[3]),
    .S(Mcount_count_int_lut[3]),
    .O(Mcount_count_int_cy[3])
  );
  XORCY   \Mcount_count_int_xor<3>  (
    .CI(Mcount_count_int_cy[2]),
    .LI(Mcount_count_int_lut[3]),
    .O(Result[3])
  );
  MUXCY   \Mcount_count_int_cy<4>  (
    .CI(Mcount_count_int_cy[3]),
    .DI(count_int[4]),
    .S(Mcount_count_int_lut[4]),
    .O(Mcount_count_int_cy[4])
  );
  XORCY   \Mcount_count_int_xor<4>  (
    .CI(Mcount_count_int_cy[3]),
    .LI(Mcount_count_int_lut[4]),
    .O(Result[4])
  );
  MUXCY   \Mcount_count_int_cy<5>  (
    .CI(Mcount_count_int_cy[4]),
    .DI(count_int[5]),
    .S(Mcount_count_int_lut[5]),
    .O(Mcount_count_int_cy[5])
  );
  XORCY   \Mcount_count_int_xor<5>  (
    .CI(Mcount_count_int_cy[4]),
    .LI(Mcount_count_int_lut[5]),
    .O(Result[5])
  );
  MUXCY   \Mcount_count_int_cy<6>  (
    .CI(Mcount_count_int_cy[5]),
    .DI(count_int[6]),
    .S(Mcount_count_int_lut[6]),
    .O(Mcount_count_int_cy[6])
  );
  XORCY   \Mcount_count_int_xor<6>  (
    .CI(Mcount_count_int_cy[5]),
    .LI(Mcount_count_int_lut[6]),
    .O(Result[6])
  );
  MUXCY   \Mcount_count_int_cy<7>  (
    .CI(Mcount_count_int_cy[6]),
    .DI(count_int[7]),
    .S(Mcount_count_int_lut[7]),
    .O(Mcount_count_int_cy[7])
  );
  XORCY   \Mcount_count_int_xor<7>  (
    .CI(Mcount_count_int_cy[6]),
    .LI(Mcount_count_int_lut[7]),
    .O(Result[7])
  );
  MUXCY   \Mcount_count_int_cy<8>  (
    .CI(Mcount_count_int_cy[7]),
    .DI(count_int[8]),
    .S(Mcount_count_int_lut[8]),
    .O(Mcount_count_int_cy[8])
  );
  XORCY   \Mcount_count_int_xor<8>  (
    .CI(Mcount_count_int_cy[7]),
    .LI(Mcount_count_int_lut[8]),
    .O(Result[8])
  );
  MUXCY   \Mcount_count_int_cy<9>  (
    .CI(Mcount_count_int_cy[8]),
    .DI(count_int[9]),
    .S(Mcount_count_int_lut[9]),
    .O(Mcount_count_int_cy[9])
  );
  XORCY   \Mcount_count_int_xor<9>  (
    .CI(Mcount_count_int_cy[8]),
    .LI(Mcount_count_int_lut[9]),
    .O(Result[9])
  );
  MUXCY   \Mcount_count_int_cy<10>  (
    .CI(Mcount_count_int_cy[9]),
    .DI(count_int[10]),
    .S(Mcount_count_int_lut[10]),
    .O(Mcount_count_int_cy[10])
  );
  XORCY   \Mcount_count_int_xor<10>  (
    .CI(Mcount_count_int_cy[9]),
    .LI(Mcount_count_int_lut[10]),
    .O(Result[10])
  );
  MUXCY   \Mcount_count_int_cy<11>  (
    .CI(Mcount_count_int_cy[10]),
    .DI(count_int[11]),
    .S(Mcount_count_int_lut[11]),
    .O(Mcount_count_int_cy[11])
  );
  XORCY   \Mcount_count_int_xor<11>  (
    .CI(Mcount_count_int_cy[10]),
    .LI(Mcount_count_int_lut[11]),
    .O(Result[11])
  );
  MUXCY   \Mcount_count_int_cy<12>  (
    .CI(Mcount_count_int_cy[11]),
    .DI(count_int[12]),
    .S(Mcount_count_int_lut[12]),
    .O(Mcount_count_int_cy[12])
  );
  XORCY   \Mcount_count_int_xor<12>  (
    .CI(Mcount_count_int_cy[11]),
    .LI(Mcount_count_int_lut[12]),
    .O(Result[12])
  );
  MUXCY   \Mcount_count_int_cy<13>  (
    .CI(Mcount_count_int_cy[12]),
    .DI(count_int[13]),
    .S(Mcount_count_int_lut[13]),
    .O(Mcount_count_int_cy[13])
  );
  XORCY   \Mcount_count_int_xor<13>  (
    .CI(Mcount_count_int_cy[12]),
    .LI(Mcount_count_int_lut[13]),
    .O(Result[13])
  );
  MUXCY   \Mcount_count_int_cy<14>  (
    .CI(Mcount_count_int_cy[13]),
    .DI(count_int[14]),
    .S(Mcount_count_int_lut[14]),
    .O(Mcount_count_int_cy[14])
  );
  XORCY   \Mcount_count_int_xor<14>  (
    .CI(Mcount_count_int_cy[13]),
    .LI(Mcount_count_int_lut[14]),
    .O(Result[14])
  );
  MUXCY   \Mcount_count_int_cy<15>  (
    .CI(Mcount_count_int_cy[14]),
    .DI(count_int[15]),
    .S(Mcount_count_int_lut[15]),
    .O(Mcount_count_int_cy[15])
  );
  XORCY   \Mcount_count_int_xor<15>  (
    .CI(Mcount_count_int_cy[14]),
    .LI(Mcount_count_int_lut[15]),
    .O(Result[15])
  );
  MUXCY   \Mcount_count_int_cy<16>  (
    .CI(Mcount_count_int_cy[15]),
    .DI(count_int[16]),
    .S(Mcount_count_int_lut[16]),
    .O(Mcount_count_int_cy[16])
  );
  XORCY   \Mcount_count_int_xor<16>  (
    .CI(Mcount_count_int_cy[15]),
    .LI(Mcount_count_int_lut[16]),
    .O(Result[16])
  );
  MUXCY   \Mcount_count_int_cy<17>  (
    .CI(Mcount_count_int_cy[16]),
    .DI(count_int[17]),
    .S(Mcount_count_int_lut[17]),
    .O(Mcount_count_int_cy[17])
  );
  XORCY   \Mcount_count_int_xor<17>  (
    .CI(Mcount_count_int_cy[16]),
    .LI(Mcount_count_int_lut[17]),
    .O(Result[17])
  );
  MUXCY   \Mcount_count_int_cy<18>  (
    .CI(Mcount_count_int_cy[17]),
    .DI(count_int[18]),
    .S(Mcount_count_int_lut[18]),
    .O(Mcount_count_int_cy[18])
  );
  XORCY   \Mcount_count_int_xor<18>  (
    .CI(Mcount_count_int_cy[17]),
    .LI(Mcount_count_int_lut[18]),
    .O(Result[18])
  );
  MUXCY   \Mcount_count_int_cy<19>  (
    .CI(Mcount_count_int_cy[18]),
    .DI(count_int[19]),
    .S(Mcount_count_int_lut[19]),
    .O(Mcount_count_int_cy[19])
  );
  XORCY   \Mcount_count_int_xor<19>  (
    .CI(Mcount_count_int_cy[18]),
    .LI(Mcount_count_int_lut[19]),
    .O(Result[19])
  );
  MUXCY   \Mcount_count_int_cy<20>  (
    .CI(Mcount_count_int_cy[19]),
    .DI(count_int[20]),
    .S(Mcount_count_int_lut[20]),
    .O(Mcount_count_int_cy[20])
  );
  XORCY   \Mcount_count_int_xor<20>  (
    .CI(Mcount_count_int_cy[19]),
    .LI(Mcount_count_int_lut[20]),
    .O(Result[20])
  );
  MUXCY   \Mcount_count_int_cy<21>  (
    .CI(Mcount_count_int_cy[20]),
    .DI(count_int[21]),
    .S(Mcount_count_int_lut[21]),
    .O(Mcount_count_int_cy[21])
  );
  XORCY   \Mcount_count_int_xor<21>  (
    .CI(Mcount_count_int_cy[20]),
    .LI(Mcount_count_int_lut[21]),
    .O(Result[21])
  );
  MUXCY   \Mcount_count_int_cy<22>  (
    .CI(Mcount_count_int_cy[21]),
    .DI(count_int[22]),
    .S(Mcount_count_int_lut[22]),
    .O(Mcount_count_int_cy[22])
  );
  XORCY   \Mcount_count_int_xor<22>  (
    .CI(Mcount_count_int_cy[21]),
    .LI(Mcount_count_int_lut[22]),
    .O(Result[22])
  );
  MUXCY   \Mcount_count_int_cy<23>  (
    .CI(Mcount_count_int_cy[22]),
    .DI(count_int[23]),
    .S(Mcount_count_int_lut[23]),
    .O(Mcount_count_int_cy[23])
  );
  XORCY   \Mcount_count_int_xor<23>  (
    .CI(Mcount_count_int_cy[22]),
    .LI(Mcount_count_int_lut[23]),
    .O(Result[23])
  );
  MUXCY   \Mcount_count_int_cy<24>  (
    .CI(Mcount_count_int_cy[23]),
    .DI(count_int[24]),
    .S(Mcount_count_int_lut[24]),
    .O(Mcount_count_int_cy[24])
  );
  XORCY   \Mcount_count_int_xor<24>  (
    .CI(Mcount_count_int_cy[23]),
    .LI(Mcount_count_int_lut[24]),
    .O(Result[24])
  );
  MUXCY   \Mcount_count_int_cy<25>  (
    .CI(Mcount_count_int_cy[24]),
    .DI(count_int[25]),
    .S(Mcount_count_int_lut[25]),
    .O(Mcount_count_int_cy[25])
  );
  XORCY   \Mcount_count_int_xor<25>  (
    .CI(Mcount_count_int_cy[24]),
    .LI(Mcount_count_int_lut[25]),
    .O(Result[25])
  );
  MUXCY   \Mcount_count_int_cy<26>  (
    .CI(Mcount_count_int_cy[25]),
    .DI(count_int[26]),
    .S(Mcount_count_int_lut[26]),
    .O(Mcount_count_int_cy[26])
  );
  XORCY   \Mcount_count_int_xor<26>  (
    .CI(Mcount_count_int_cy[25]),
    .LI(Mcount_count_int_lut[26]),
    .O(Result[26])
  );
  MUXCY   \Mcount_count_int_cy<27>  (
    .CI(Mcount_count_int_cy[26]),
    .DI(count_int[27]),
    .S(Mcount_count_int_lut[27]),
    .O(Mcount_count_int_cy[27])
  );
  XORCY   \Mcount_count_int_xor<27>  (
    .CI(Mcount_count_int_cy[26]),
    .LI(Mcount_count_int_lut[27]),
    .O(Result[27])
  );
  MUXCY   \Mcount_count_int_cy<28>  (
    .CI(Mcount_count_int_cy[27]),
    .DI(count_int[28]),
    .S(Mcount_count_int_lut[28]),
    .O(Mcount_count_int_cy[28])
  );
  XORCY   \Mcount_count_int_xor<28>  (
    .CI(Mcount_count_int_cy[27]),
    .LI(Mcount_count_int_lut[28]),
    .O(Result[28])
  );
  MUXCY   \Mcount_count_int_cy<29>  (
    .CI(Mcount_count_int_cy[28]),
    .DI(count_int[29]),
    .S(Mcount_count_int_lut[29]),
    .O(Mcount_count_int_cy[29])
  );
  XORCY   \Mcount_count_int_xor<29>  (
    .CI(Mcount_count_int_cy[28]),
    .LI(Mcount_count_int_lut[29]),
    .O(Result[29])
  );
  MUXCY   \Mcount_count_int_cy<30>  (
    .CI(Mcount_count_int_cy[29]),
    .DI(count_int[30]),
    .S(Mcount_count_int_lut[30]),
    .O(Mcount_count_int_cy[30])
  );
  XORCY   \Mcount_count_int_xor<30>  (
    .CI(Mcount_count_int_cy[29]),
    .LI(Mcount_count_int_lut[30]),
    .O(Result[30])
  );
  XORCY   \Mcount_count_int_xor<31>  (
    .CI(Mcount_count_int_cy[30]),
    .LI(Mcount_count_int_lut[31]),
    .O(Result[31])
  );
  IBUF   BTND_IBUF (
    .I(BTND),
    .O(BTND_IBUF_1)
  );
  OBUF   Led_3_OBUF (
    .I(Led_3_2),
    .O(Led[3])
  );
  OBUF   Led_2_OBUF (
    .I(Led_2_3),
    .O(Led[2])
  );
  OBUF   Led_1_OBUF (
    .I(Led_1_4),
    .O(Led[1])
  );
  OBUF   Led_0_OBUF (
    .I(Led_0_5),
    .O(Led[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Mcount_count_int_lut<0>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[0]),
    .O(Mcount_count_int_lut[0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<1>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[1]),
    .O(Mcount_count_int_lut[1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<2>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[2]),
    .O(Mcount_count_int_lut[2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<3>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[3]),
    .O(Mcount_count_int_lut[3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<4>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[4]),
    .O(Mcount_count_int_lut[4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<5>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[5]),
    .O(Mcount_count_int_lut[5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<6>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[6]),
    .O(Mcount_count_int_lut[6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<7>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[7]),
    .O(Mcount_count_int_lut[7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<8>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[8]),
    .O(Mcount_count_int_lut[8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<9>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[9]),
    .O(Mcount_count_int_lut[9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<10>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[10]),
    .O(Mcount_count_int_lut[10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<11>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[11]),
    .O(Mcount_count_int_lut[11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<12>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[12]),
    .O(Mcount_count_int_lut[12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<13>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[13]),
    .O(Mcount_count_int_lut[13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<14>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[14]),
    .O(Mcount_count_int_lut[14])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<15>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[15]),
    .O(Mcount_count_int_lut[15])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<16>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[16]),
    .O(Mcount_count_int_lut[16])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<17>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[17]),
    .O(Mcount_count_int_lut[17])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<18>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[18]),
    .O(Mcount_count_int_lut[18])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<19>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[19]),
    .O(Mcount_count_int_lut[19])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<20>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[20]),
    .O(Mcount_count_int_lut[20])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<21>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[21]),
    .O(Mcount_count_int_lut[21])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<22>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[22]),
    .O(Mcount_count_int_lut[22])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<23>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[23]),
    .O(Mcount_count_int_lut[23])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<24>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[24]),
    .O(Mcount_count_int_lut[24])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<25>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[25]),
    .O(Mcount_count_int_lut[25])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<26>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[26]),
    .O(Mcount_count_int_lut[26])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<27>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[27]),
    .O(Mcount_count_int_lut[27])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<28>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[28]),
    .O(Mcount_count_int_lut[28])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<29>  (
    .I0(BTND_IBUF_1),
    .I1(count_int[29]),
    .O(Mcount_count_int_lut[29])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<30>  (
    .I0(count_int[30]),
    .I1(BTND_IBUF_1),
    .O(Mcount_count_int_lut[30])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcount_count_int_lut<31>  (
    .I0(count_int[31]),
    .I1(BTND_IBUF_1),
    .O(Mcount_count_int_lut[31])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   BTND_inv2_INV_0 (
    .I(BTND_IBUF_1),
    .O(BTND_inv)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

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

endmodule

`endif

