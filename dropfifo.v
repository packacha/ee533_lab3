////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : dropfifo.vf
// /___/   /\     Timestamp : 01/30/2026 16:43:42
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/lab3/dropfifo.sch" dropfifo.vf
//Design Name: dropfifo
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 100 ps / 10 ps

module FD8CE_HXILINX_dropfifo(Q, C, CE, CLR, D);

   
   output [7:0]       Q;

   input 	      C;	
   input 	      CE;	
   input 	      CLR;	
   input  [7:0]       D;
   
   reg    [7:0]       Q;
   
   always @(posedge C or posedge CLR)
     begin
	if (CLR)
	  Q <= 8'b0000_0000;
	else if (CE)
          Q <= D;
     end
   
   
endmodule
`timescale  100 ps / 10 ps

module COMP8_HXILINX_dropfifo (EQ, A, B);
    

   output EQ;

   input  [7:0] A;
   input  [7:0] B;

   assign EQ = (A==B) ;

endmodule
`timescale 100 ps / 10 ps

module CB8CLE_HXILINX_dropfifo(CEO, Q, TC, C, CE, CLR, D, L);
   
   parameter TERMINAL_COUNT = 8'b1111_1111;
   
   output             CEO;
   output [7:0]       Q;
   output             TC;

   input 	      C;	
   input 	      CE;	
   input 	      CLR;	
   input  [7:0]       D;
   input              L;
   
   reg    [7:0]       Q;
   
   always @(posedge C or posedge CLR)
     begin
	if (CLR)
	  Q <= 8'b0000_0000;
        else if (L)
          Q <= D;
	else if (CE)
	  Q <= Q + 1;
     end
   
   assign CEO = TC & CE;
   assign TC = Q == TERMINAL_COUNT;
   
endmodule
`timescale 100 ps / 10 ps

module CB8CE_HXILINX_dropfifo(CEO, Q, TC, C, CE, CLR);
   
   parameter TERMINAL_COUNT = 8'b1111_1111;
   
   output             CEO;
   output [7:0]       Q;
   output             TC;

   input 	      C;	
   input 	      CE;	
   input 	      CLR;	
   
   reg   [7:0]        Q;
   
   always @(posedge C or posedge CLR)
     begin
	if (CLR)
	  Q <= 8'b0000_0000;
	else if (CE)
	  Q <= Q + 1;
     end
   
   assign CEO = TC & CE;
   assign TC = Q == TERMINAL_COUNT;
   
endmodule
`timescale 1ns / 1ps

module dropfifo(clk, 
                drop_pkt, 
                fiforead, 
                fifowrite, 
                firstword, 
                in_fifo, 
                lastword, 
                rst, 
                out_fifo, 
                valid_data);

    input clk;
    input drop_pkt;
    input fiforead;
    input fifowrite;
    input firstword;
    input [71:0] in_fifo;
    input lastword;
    input rst;
   output [71:0] out_fifo;
   output valid_data;
   
   wire XLXN_37;
   wire XLXN_38;
   wire XLXN_41;
   wire [7:0] XLXN_42;
   wire XLXN_43;
   wire XLXN_44;
   wire XLXN_45;
   wire [7:0] XLXN_48;
   wire [7:0] XLXN_50;
   wire XLXN_52;
   wire XLXN_59;
   wire XLXN_62;
   wire [0:0] XLXN_63;
   wire [71:0] XLXN_65;
   
   FD XLXI_1 (.C(clk), 
              .D(firstword), 
              .Q(XLXN_37));
   defparam XLXI_1.INIT = 1'b0;
   FD XLXI_2 (.C(clk), 
              .D(lastword), 
              .Q(XLXN_38));
   defparam XLXI_2.INIT = 1'b0;
   FD XLXI_3 (.C(clk), 
              .D(fifowrite), 
              .Q(XLXN_63[0]));
   defparam XLXI_3.INIT = 1'b0;
   FD8CE_HXILINX_dropfifo XLXI_4 (.C(clk), 
                                  .CE(XLXN_59), 
                                  .CLR(rst), 
                                  .D(XLXN_50[7:0]), 
                                  .Q(XLXN_42[7:0]));
   // synthesis attribute HU_SET of XLXI_4 is "XLXI_4_0"
   FD XLXI_5 (.C(clk), 
              .D(drop_pkt), 
              .Q(XLXN_62));
   defparam XLXI_5.INIT = 1'b0;
   COMP8_HXILINX_dropfifo XLXI_6 (.A(XLXN_50[7:0]), 
                                  .B(XLXN_48[7:0]), 
                                  .EQ(XLXN_43));
   // synthesis attribute HU_SET of XLXI_6 is "XLXI_6_1"
   COMP8_HXILINX_dropfifo XLXI_7 (.A(XLXN_48[7:0]), 
                                  .B(XLXN_42[7:0]), 
                                  .EQ(XLXN_44));
   // synthesis attribute HU_SET of XLXI_7 is "XLXI_7_2"
   OR2 XLXI_8 (.I0(XLXN_38), 
               .I1(XLXN_37), 
               .O(XLXN_41));
   AND2B1 XLXI_9 (.I0(XLXN_62), 
                  .I1(XLXN_41), 
                  .O(XLXN_59));
   AND3B2 XLXI_10 (.I0(XLXN_44), 
                   .I1(XLXN_43), 
                   .I2(fiforead), 
                   .O(XLXN_45));
   FDC XLXI_11 (.C(clk), 
                .CLR(rst), 
                .D(XLXN_45), 
                .Q(valid_data));
   defparam XLXI_11.INIT = 1'b0;
   CB8CE_HXILINX_dropfifo XLXI_12 (.C(clk), 
                                   .CE(XLXN_45), 
                                   .CLR(rst), 
                                   .CEO(), 
                                   .Q(XLXN_48[7:0]), 
                                   .TC());
   // synthesis attribute HU_SET of XLXI_12 is "XLXI_12_3"
   CB8CLE_HXILINX_dropfifo XLXI_13 (.C(clk), 
                                    .CE(XLXN_63[0]), 
                                    .CLR(rst), 
                                    .D(XLXN_42[7:0]), 
                                    .L(XLXN_62), 
                                    .CEO(), 
                                    .Q(XLXN_50[7:0]), 
                                    .TC());
   // synthesis attribute HU_SET of XLXI_13 is "XLXI_13_4"
   reg9B XLXI_14 (.ce(XLXN_52), 
                  .clk(clk), 
                  .clr(rst), 
                  .d(in_fifo[71:0]), 
                  .q(XLXN_65[71:0]));
   VCC XLXI_15 (.P(XLXN_52));
   synch_dual_port_mem_9B XLXI_17 (.addra(XLXN_50[7:0]), 
                                   .addrb(), 
                                   .clka(clk), 
                                   .clkb(clk), 
                                   .dina(XLXN_65[71:0]), 
                                   .wea(XLXN_63[0]), 
                                   .doutb(out_fifo[71:0]));
endmodule
