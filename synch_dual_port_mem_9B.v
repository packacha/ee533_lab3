`timescale 1ns/1ps

module synch_dual_port_mem_9B(
   input         clka,
   input  [71:0] dina,
   input  [7:0]  addra,
   input  [0:0]  wea,
   input         clkb,
   input  [7:0]  addrb,
   output [71:0] doutb
);

// synthesis translate_off
`ifndef SYNTHESIS
   reg [71:0] mem [0:255];
   reg [71:0] doutb_r;
   assign doutb = doutb_r;

   always @(posedge clka) begin
      if (wea[0]) begin
         mem[addra] <= dina;
      end
   end

   always @(posedge clkb) begin
      doutb_r <= mem[addrb];
   end

`else

   BLK_MEM_GEN_V2_7 #(
      .C_ADDRA_WIDTH(8),
      .C_ADDRB_WIDTH(8),
      .C_ALGORITHM(1),
      .C_BYTE_SIZE(9),
      .C_COMMON_CLK(0),
      .C_DEFAULT_DATA("0"),
      .C_DISABLE_WARN_BHV_COLL(0),
      .C_DISABLE_WARN_BHV_RANGE(0),
      .C_FAMILY("spartan3"),
      .C_HAS_ENA(0),
      .C_HAS_ENB(0),
      .C_HAS_MEM_OUTPUT_REGS_A(0),
      .C_HAS_MEM_OUTPUT_REGS_B(0),
      .C_HAS_MUX_OUTPUT_REGS_A(0),
      .C_HAS_MUX_OUTPUT_REGS_B(0),
      .C_HAS_REGCEA(0),
      .C_HAS_REGCEB(0),
      .C_HAS_SSRA(0),
      .C_HAS_SSRB(0),

      .C_INIT_FILE_NAME("no_coe_file_loaded"),
      .C_LOAD_INIT_FILE(0),

      .C_MEM_TYPE(1),
      .C_MUX_PIPELINE_STAGES(0),
      .C_PRIM_TYPE(1),
      .C_READ_DEPTH_A(256),
      .C_READ_DEPTH_B(256),
      .C_READ_WIDTH_A(72),
      .C_READ_WIDTH_B(72),
      .C_SIM_COLLISION_CHECK("ALL"),
      .C_SINITA_VAL("0"),
      .C_SINITB_VAL("0"),
      .C_USE_BYTE_WEA(0),
      .C_USE_BYTE_WEB(0),
      .C_USE_DEFAULT_DATA(0),
      .C_USE_ECC(0),
      .C_USE_RAMB16BWER_RST_BHV(0),
      .C_WEA_WIDTH(1),
      .C_WEB_WIDTH(1),
      .C_WRITE_DEPTH_A(256),
      .C_WRITE_DEPTH_B(256),
      .C_WRITE_MODE_A("READ_FIRST"),
      .C_WRITE_MODE_B("READ_FIRST"),
      .C_WRITE_WIDTH_A(72),
      .C_WRITE_WIDTH_B(72),
      .C_XDEVICEFAMILY("spartan3a")
   ) inst (
      .CLKA(clka),
      .DINA(dina),
      .ADDRA(addra),
      .WEA(wea),
      .CLKB(clkb),
      .ADDRB(addrb),
      .DOUTB(doutb),
      .ENA(),
      .REGCEA(),
      .SSRA(),
      .DOUTA(),
      .DINB(),
      .ENB(),
      .REGCEB(),
      .WEB(),
      .SSRB(),
      .DBITERR(),
      .SBITERR()
   );
`endif

endmodule

