////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : detect7B.vf
// /___/   /\     Timestamp : 01/30/2026 16:43:42
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/lab3/detect7B.sch" detect7B.vf
//Design Name: detect7B
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module detect7B(ce, 
                clk, 
                hwregA, 
                match_en, 
                mrst, 
                pipe1, 
                match);

    input ce;
    input clk;
    input [63:0] hwregA;
    input match_en;
    input mrst;
    input [71:0] pipe1;
   output match;
   
   wire [71:0] pipe0;
   wire XLXN_16;
   wire [111:0] XLXN_17;
   wire XLXN_23;
   wire XLXN_26;
   wire match_DUMMY;
   
   assign match = match_DUMMY;
   FD XLXI_1 (.C(clk), 
              .D(mrst), 
              .Q(XLXN_16));
   defparam XLXI_1.INIT = 1'b0;
   FDCE XLXI_2 (.C(clk), 
                .CE(XLXN_26), 
                .CLR(XLXN_16), 
                .D(XLXN_26), 
                .Q(match_DUMMY));
   defparam XLXI_2.INIT = 1'b0;
   AND3B1 XLXI_3 (.I0(match_DUMMY), 
                  .I1(match_en), 
                  .I2(XLXN_23), 
                  .O(XLXN_26));
   busmerge XLXI_4 (.da(pipe0[47:0]), 
                    .db(pipe1[63:0]), 
                    .q(XLXN_17[111:0]));
   reg9B XLXI_5 (.ce(ce), 
                 .clk(clk), 
                 .clr(XLXN_16), 
                 .d(pipe1[71:0]), 
                 .q(pipe0[71:0]));
   wordmatch XLXI_6 (.datacomp(hwregA[55:0]), 
                     .datain(XLXN_17[111:0]), 
                     .wildcard(hwregA[62:56]), 
                     .match(XLXN_23));
endmodule
