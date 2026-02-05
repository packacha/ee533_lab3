////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : comparator.vf
// /___/   /\     Timestamp : 01/30/2026 09:51:49
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/lab3/comparator.sch" comparator.vf
//Design Name: comparator
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale  100 ps / 10 ps

module COMP8_HXILINX_comparator (EQ, A, B);
    

   output EQ;

   input  [7:0] A;
   input  [7:0] B;

   assign EQ = (A==B) ;

endmodule
`timescale  100 ps / 10 ps

module AND7_HXILINX_comparator (O, I0, I1, I2, I3, I4, I5, I6);
    

   output O;

   input I0;
   input I1;
   input I2;
   input I3;
   input I4;
   input I5;
   input I6;

assign O = I0 && I1 && I2 && I3 && I4 && I5 && I6;

endmodule
`timescale 1ns / 1ps

module comparator(A, 
                  amask, 
                  B, 
                  match);

    input [55:0] A;
    input [6:0] amask;
    input [55:0] B;
   output match;
   
   wire XLXN_14;
   wire XLXN_15;
   wire XLXN_16;
   wire XLXN_17;
   wire XLXN_18;
   wire XLXN_19;
   wire XLXN_20;
   wire XLXN_21;
   wire XLXN_22;
   wire XLXN_23;
   wire XLXN_24;
   wire XLXN_25;
   wire XLXN_26;
   wire XLXN_27;
   
   COMP8_HXILINX_comparator XLXI_1 (.A(A[55:48]), 
                                    .B(B[55:48]), 
                                    .EQ(XLXN_14));
   // synthesis attribute HU_SET of XLXI_1 is "XLXI_1_0"
   COMP8_HXILINX_comparator XLXI_2 (.A(A[47:40]), 
                                    .B(B[47:40]), 
                                    .EQ(XLXN_15));
   // synthesis attribute HU_SET of XLXI_2 is "XLXI_2_1"
   COMP8_HXILINX_comparator XLXI_3 (.A(A[39:32]), 
                                    .B(B[39:32]), 
                                    .EQ(XLXN_16));
   // synthesis attribute HU_SET of XLXI_3 is "XLXI_3_2"
   COMP8_HXILINX_comparator XLXI_4 (.A(A[31:24]), 
                                    .B(B[31:24]), 
                                    .EQ(XLXN_17));
   // synthesis attribute HU_SET of XLXI_4 is "XLXI_4_3"
   OR2B1 XLXI_5 (.I0(amask[6]), 
                 .I1(XLXN_14), 
                 .O(XLXN_18));
   OR2B1 XLXI_6 (.I0(amask[5]), 
                 .I1(XLXN_15), 
                 .O(XLXN_19));
   OR2B1 XLXI_7 (.I0(amask[4]), 
                 .I1(XLXN_16), 
                 .O(XLXN_20));
   OR2B1 XLXI_8 (.I0(amask[3]), 
                 .I1(XLXN_17), 
                 .O(XLXN_21));
   COMP8_HXILINX_comparator XLXI_9 (.A(A[23:16]), 
                                    .B(B[23:16]), 
                                    .EQ(XLXN_24));
   // synthesis attribute HU_SET of XLXI_9 is "XLXI_9_4"
   COMP8_HXILINX_comparator XLXI_10 (.A(A[15:8]), 
                                     .B(B[15:8]), 
                                     .EQ(XLXN_23));
   // synthesis attribute HU_SET of XLXI_10 is "XLXI_10_5"
   COMP8_HXILINX_comparator XLXI_11 (.A(A[7:0]), 
                                     .B(B[7:0]), 
                                     .EQ(XLXN_22));
   // synthesis attribute HU_SET of XLXI_11 is "XLXI_11_6"
   OR2B1 XLXI_12 (.I0(amask[2]), 
                  .I1(XLXN_24), 
                  .O(XLXN_25));
   OR2B1 XLXI_13 (.I0(amask[1]), 
                  .I1(XLXN_23), 
                  .O(XLXN_26));
   OR2B1 XLXI_14 (.I0(amask[0]), 
                  .I1(XLXN_22), 
                  .O(XLXN_27));
   AND7_HXILINX_comparator XLXI_15 (.I0(XLXN_21), 
                                    .I1(XLXN_20), 
                                    .I2(XLXN_27), 
                                    .I3(XLXN_26), 
                                    .I4(XLXN_25), 
                                    .I5(XLXN_19), 
                                    .I6(XLXN_18), 
                                    .O(match));
   // synthesis attribute HU_SET of XLXI_15 is "XLXI_15_7"
endmodule
