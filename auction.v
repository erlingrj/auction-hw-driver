module SRLQueue(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [7:0]  io_enq_bits_els_0_value,
  input  [10:0] io_enq_bits_els_0_col,
  input  [7:0]  io_enq_bits_els_1_value,
  input  [10:0] io_enq_bits_els_1_col,
  input  [7:0]  io_enq_bits_els_2_value,
  input  [10:0] io_enq_bits_els_2_col,
  input  [7:0]  io_enq_bits_els_3_value,
  input  [10:0] io_enq_bits_els_3_col,
  input  [7:0]  io_enq_bits_els_4_value,
  input  [10:0] io_enq_bits_els_4_col,
  input  [7:0]  io_enq_bits_els_5_value,
  input  [10:0] io_enq_bits_els_5_col,
  input  [7:0]  io_enq_bits_els_6_value,
  input  [10:0] io_enq_bits_els_6_col,
  input  [7:0]  io_enq_bits_els_7_value,
  input  [10:0] io_enq_bits_els_7_col,
  input         io_deq_ready,
  output        io_deq_valid,
  output [7:0]  io_deq_bits_els_0_value,
  output [10:0] io_deq_bits_els_0_col,
  output [7:0]  io_deq_bits_els_1_value,
  output [10:0] io_deq_bits_els_1_col,
  output [7:0]  io_deq_bits_els_2_value,
  output [10:0] io_deq_bits_els_2_col,
  output [7:0]  io_deq_bits_els_3_value,
  output [10:0] io_deq_bits_els_3_col,
  output [7:0]  io_deq_bits_els_4_value,
  output [10:0] io_deq_bits_els_4_col,
  output [7:0]  io_deq_bits_els_5_value,
  output [10:0] io_deq_bits_els_5_col,
  output [7:0]  io_deq_bits_els_6_value,
  output [10:0] io_deq_bits_els_6_col,
  output [7:0]  io_deq_bits_els_7_value,
  output [10:0] io_deq_bits_els_7_col,
  output [3:0]  io_count
);
  wire  Q_srl_i_v; // @[FPGAQueue.scala 70:20]
  wire [151:0] Q_srl_i_d; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_i_b; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_o_v; // @[FPGAQueue.scala 70:20]
  wire [151:0] Q_srl_o_d; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_o_b; // @[FPGAQueue.scala 70:20]
  wire [3:0] Q_srl_count; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_clock; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_reset; // @[FPGAQueue.scala 70:20]
  wire [75:0] lo = {io_enq_bits_els_3_value,io_enq_bits_els_3_col,io_enq_bits_els_2_value,io_enq_bits_els_2_col,
    io_enq_bits_els_1_value,io_enq_bits_els_1_col,io_enq_bits_els_0_value,io_enq_bits_els_0_col}; // @[FPGAQueue.scala 74:27]
  wire [75:0] hi = {io_enq_bits_els_7_value,io_enq_bits_els_7_col,io_enq_bits_els_6_value,io_enq_bits_els_6_col,
    io_enq_bits_els_5_value,io_enq_bits_els_5_col,io_enq_bits_els_4_value,io_enq_bits_els_4_col}; // @[FPGAQueue.scala 74:27]
  wire [151:0] _io_deq_bits_WIRE_1 = Q_srl_o_d;
  Q_srl #(.depth(8), .width(152)) Q_srl ( // @[FPGAQueue.scala 70:20]
    .i_v(Q_srl_i_v),
    .i_d(Q_srl_i_d),
    .i_b(Q_srl_i_b),
    .o_v(Q_srl_o_v),
    .o_d(Q_srl_o_d),
    .o_b(Q_srl_o_b),
    .count(Q_srl_count),
    .clock(Q_srl_clock),
    .reset(Q_srl_reset)
  );
  assign io_enq_ready = ~Q_srl_i_b; // @[FPGAQueue.scala 83:19]
  assign io_deq_valid = Q_srl_o_v; // @[FPGAQueue.scala 78:16]
  assign io_deq_bits_els_0_value = _io_deq_bits_WIRE_1[18:11]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_0_col = _io_deq_bits_WIRE_1[10:0]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_1_value = _io_deq_bits_WIRE_1[37:30]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_1_col = _io_deq_bits_WIRE_1[29:19]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_2_value = _io_deq_bits_WIRE_1[56:49]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_2_col = _io_deq_bits_WIRE_1[48:38]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_3_value = _io_deq_bits_WIRE_1[75:68]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_3_col = _io_deq_bits_WIRE_1[67:57]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_4_value = _io_deq_bits_WIRE_1[94:87]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_4_col = _io_deq_bits_WIRE_1[86:76]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_5_value = _io_deq_bits_WIRE_1[113:106]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_5_col = _io_deq_bits_WIRE_1[105:95]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_6_value = _io_deq_bits_WIRE_1[132:125]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_6_col = _io_deq_bits_WIRE_1[124:114]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_7_value = _io_deq_bits_WIRE_1[151:144]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_7_col = _io_deq_bits_WIRE_1[143:133]; // @[FPGAQueue.scala 79:35]
  assign io_count = Q_srl_count; // @[FPGAQueue.scala 72:12]
  assign Q_srl_i_v = io_enq_valid; // @[FPGAQueue.scala 73:12]
  assign Q_srl_i_d = {hi,lo}; // @[FPGAQueue.scala 74:27]
  assign Q_srl_o_b = ~io_deq_ready; // @[FPGAQueue.scala 82:15]
  assign Q_srl_clock = clock; // @[FPGAQueue.scala 75:14]
  assign Q_srl_reset = reset; // @[FPGAQueue.scala 76:14]
endmodule
module FPGAQueue(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [7:0]  io_enq_bits_els_0_value,
  input  [10:0] io_enq_bits_els_0_col,
  input  [7:0]  io_enq_bits_els_1_value,
  input  [10:0] io_enq_bits_els_1_col,
  input  [7:0]  io_enq_bits_els_2_value,
  input  [10:0] io_enq_bits_els_2_col,
  input  [7:0]  io_enq_bits_els_3_value,
  input  [10:0] io_enq_bits_els_3_col,
  input  [7:0]  io_enq_bits_els_4_value,
  input  [10:0] io_enq_bits_els_4_col,
  input  [7:0]  io_enq_bits_els_5_value,
  input  [10:0] io_enq_bits_els_5_col,
  input  [7:0]  io_enq_bits_els_6_value,
  input  [10:0] io_enq_bits_els_6_col,
  input  [7:0]  io_enq_bits_els_7_value,
  input  [10:0] io_enq_bits_els_7_col,
  input         io_deq_ready,
  output        io_deq_valid,
  output [7:0]  io_deq_bits_els_0_value,
  output [10:0] io_deq_bits_els_0_col,
  output [7:0]  io_deq_bits_els_1_value,
  output [10:0] io_deq_bits_els_1_col,
  output [7:0]  io_deq_bits_els_2_value,
  output [10:0] io_deq_bits_els_2_col,
  output [7:0]  io_deq_bits_els_3_value,
  output [10:0] io_deq_bits_els_3_col,
  output [7:0]  io_deq_bits_els_4_value,
  output [10:0] io_deq_bits_els_4_col,
  output [7:0]  io_deq_bits_els_5_value,
  output [10:0] io_deq_bits_els_5_col,
  output [7:0]  io_deq_bits_els_6_value,
  output [10:0] io_deq_bits_els_6_col,
  output [7:0]  io_deq_bits_els_7_value,
  output [10:0] io_deq_bits_els_7_col,
  output [3:0]  io_count
);
  wire  SRLQueue_clock; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_reset; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_ready; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_valid; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_enq_bits_els_0_value; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_els_0_col; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_enq_bits_els_1_value; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_els_1_col; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_enq_bits_els_2_value; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_els_2_col; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_enq_bits_els_3_value; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_els_3_col; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_enq_bits_els_4_value; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_els_4_col; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_enq_bits_els_5_value; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_els_5_col; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_enq_bits_els_6_value; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_els_6_col; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_enq_bits_els_7_value; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_els_7_col; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_deq_ready; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_deq_valid; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_els_0_value; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_els_0_col; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_els_1_value; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_els_1_col; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_els_2_value; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_els_2_col; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_els_3_value; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_els_3_col; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_els_4_value; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_els_4_col; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_els_5_value; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_els_5_col; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_els_6_value; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_els_6_col; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_els_7_value; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_els_7_col; // @[FPGAQueue.scala 177:26]
  wire [3:0] SRLQueue_io_count; // @[FPGAQueue.scala 177:26]
  SRLQueue SRLQueue ( // @[FPGAQueue.scala 177:26]
    .clock(SRLQueue_clock),
    .reset(SRLQueue_reset),
    .io_enq_ready(SRLQueue_io_enq_ready),
    .io_enq_valid(SRLQueue_io_enq_valid),
    .io_enq_bits_els_0_value(SRLQueue_io_enq_bits_els_0_value),
    .io_enq_bits_els_0_col(SRLQueue_io_enq_bits_els_0_col),
    .io_enq_bits_els_1_value(SRLQueue_io_enq_bits_els_1_value),
    .io_enq_bits_els_1_col(SRLQueue_io_enq_bits_els_1_col),
    .io_enq_bits_els_2_value(SRLQueue_io_enq_bits_els_2_value),
    .io_enq_bits_els_2_col(SRLQueue_io_enq_bits_els_2_col),
    .io_enq_bits_els_3_value(SRLQueue_io_enq_bits_els_3_value),
    .io_enq_bits_els_3_col(SRLQueue_io_enq_bits_els_3_col),
    .io_enq_bits_els_4_value(SRLQueue_io_enq_bits_els_4_value),
    .io_enq_bits_els_4_col(SRLQueue_io_enq_bits_els_4_col),
    .io_enq_bits_els_5_value(SRLQueue_io_enq_bits_els_5_value),
    .io_enq_bits_els_5_col(SRLQueue_io_enq_bits_els_5_col),
    .io_enq_bits_els_6_value(SRLQueue_io_enq_bits_els_6_value),
    .io_enq_bits_els_6_col(SRLQueue_io_enq_bits_els_6_col),
    .io_enq_bits_els_7_value(SRLQueue_io_enq_bits_els_7_value),
    .io_enq_bits_els_7_col(SRLQueue_io_enq_bits_els_7_col),
    .io_deq_ready(SRLQueue_io_deq_ready),
    .io_deq_valid(SRLQueue_io_deq_valid),
    .io_deq_bits_els_0_value(SRLQueue_io_deq_bits_els_0_value),
    .io_deq_bits_els_0_col(SRLQueue_io_deq_bits_els_0_col),
    .io_deq_bits_els_1_value(SRLQueue_io_deq_bits_els_1_value),
    .io_deq_bits_els_1_col(SRLQueue_io_deq_bits_els_1_col),
    .io_deq_bits_els_2_value(SRLQueue_io_deq_bits_els_2_value),
    .io_deq_bits_els_2_col(SRLQueue_io_deq_bits_els_2_col),
    .io_deq_bits_els_3_value(SRLQueue_io_deq_bits_els_3_value),
    .io_deq_bits_els_3_col(SRLQueue_io_deq_bits_els_3_col),
    .io_deq_bits_els_4_value(SRLQueue_io_deq_bits_els_4_value),
    .io_deq_bits_els_4_col(SRLQueue_io_deq_bits_els_4_col),
    .io_deq_bits_els_5_value(SRLQueue_io_deq_bits_els_5_value),
    .io_deq_bits_els_5_col(SRLQueue_io_deq_bits_els_5_col),
    .io_deq_bits_els_6_value(SRLQueue_io_deq_bits_els_6_value),
    .io_deq_bits_els_6_col(SRLQueue_io_deq_bits_els_6_col),
    .io_deq_bits_els_7_value(SRLQueue_io_deq_bits_els_7_value),
    .io_deq_bits_els_7_col(SRLQueue_io_deq_bits_els_7_col),
    .io_count(SRLQueue_io_count)
  );
  assign io_enq_ready = SRLQueue_io_enq_ready; // @[FPGAQueue.scala 179:14]
  assign io_deq_valid = SRLQueue_io_deq_valid; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_0_value = SRLQueue_io_deq_bits_els_0_value; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_0_col = SRLQueue_io_deq_bits_els_0_col; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_1_value = SRLQueue_io_deq_bits_els_1_value; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_1_col = SRLQueue_io_deq_bits_els_1_col; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_2_value = SRLQueue_io_deq_bits_els_2_value; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_2_col = SRLQueue_io_deq_bits_els_2_col; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_3_value = SRLQueue_io_deq_bits_els_3_value; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_3_col = SRLQueue_io_deq_bits_els_3_col; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_4_value = SRLQueue_io_deq_bits_els_4_value; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_4_col = SRLQueue_io_deq_bits_els_4_col; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_5_value = SRLQueue_io_deq_bits_els_5_value; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_5_col = SRLQueue_io_deq_bits_els_5_col; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_6_value = SRLQueue_io_deq_bits_els_6_value; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_6_col = SRLQueue_io_deq_bits_els_6_col; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_7_value = SRLQueue_io_deq_bits_els_7_value; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_7_col = SRLQueue_io_deq_bits_els_7_col; // @[FPGAQueue.scala 179:14]
  assign io_count = SRLQueue_io_count; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_clock = clock;
  assign SRLQueue_reset = reset;
  assign SRLQueue_io_enq_valid = io_enq_valid; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_0_value = io_enq_bits_els_0_value; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_0_col = io_enq_bits_els_0_col; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_1_value = io_enq_bits_els_1_value; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_1_col = io_enq_bits_els_1_col; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_2_value = io_enq_bits_els_2_value; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_2_col = io_enq_bits_els_2_col; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_3_value = io_enq_bits_els_3_value; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_3_col = io_enq_bits_els_3_col; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_4_value = io_enq_bits_els_4_value; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_4_col = io_enq_bits_els_4_col; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_5_value = io_enq_bits_els_5_value; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_5_col = io_enq_bits_els_5_col; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_6_value = io_enq_bits_els_6_value; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_6_col = io_enq_bits_els_6_col; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_7_value = io_enq_bits_els_7_value; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_7_col = io_enq_bits_els_7_col; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_deq_ready = io_deq_ready; // @[FPGAQueue.scala 179:14]
endmodule
module SRLQueue_1(
  input   clock,
  input   reset,
  input   io_enq_valid,
  input   io_enq_bits,
  input   io_deq_ready,
  output  io_deq_bits
);
  wire  Q_srl_i_v; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_i_d; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_i_b; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_o_v; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_o_d; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_o_b; // @[FPGAQueue.scala 70:20]
  wire [3:0] Q_srl_count; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_clock; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_reset; // @[FPGAQueue.scala 70:20]
  Q_srl #(.depth(9), .width(1)) Q_srl ( // @[FPGAQueue.scala 70:20]
    .i_v(Q_srl_i_v),
    .i_d(Q_srl_i_d),
    .i_b(Q_srl_i_b),
    .o_v(Q_srl_o_v),
    .o_d(Q_srl_o_d),
    .o_b(Q_srl_o_b),
    .count(Q_srl_count),
    .clock(Q_srl_clock),
    .reset(Q_srl_reset)
  );
  assign io_deq_bits = Q_srl_o_d; // @[FPGAQueue.scala 79:35 FPGAQueue.scala 79:35]
  assign Q_srl_i_v = io_enq_valid; // @[FPGAQueue.scala 73:12]
  assign Q_srl_i_d = io_enq_bits; // @[FPGAQueue.scala 74:12]
  assign Q_srl_o_b = ~io_deq_ready; // @[FPGAQueue.scala 82:15]
  assign Q_srl_clock = clock; // @[FPGAQueue.scala 75:14]
  assign Q_srl_reset = reset; // @[FPGAQueue.scala 76:14]
endmodule
module FPGAQueue_1(
  input   clock,
  input   reset,
  input   io_enq_valid,
  input   io_enq_bits,
  input   io_deq_ready,
  output  io_deq_bits
);
  wire  SRLQueue_clock; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_reset; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_valid; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_bits; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_deq_ready; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_deq_bits; // @[FPGAQueue.scala 177:26]
  SRLQueue_1 SRLQueue ( // @[FPGAQueue.scala 177:26]
    .clock(SRLQueue_clock),
    .reset(SRLQueue_reset),
    .io_enq_valid(SRLQueue_io_enq_valid),
    .io_enq_bits(SRLQueue_io_enq_bits),
    .io_deq_ready(SRLQueue_io_deq_ready),
    .io_deq_bits(SRLQueue_io_deq_bits)
  );
  assign io_deq_bits = SRLQueue_io_deq_bits; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_clock = clock;
  assign SRLQueue_reset = reset;
  assign SRLQueue_io_enq_valid = io_enq_valid; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits = io_enq_bits; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_deq_ready = io_deq_ready; // @[FPGAQueue.scala 179:14]
endmodule
module BramController(
  input          clock,
  input          reset,
  output         io_unassignedAgents_ready,
  input          io_unassignedAgents_valid,
  input  [10:0]  io_unassignedAgents_bits_agent,
  input          io_requestedAgents_ready,
  output         io_requestedAgents_valid,
  output [10:0]  io_requestedAgents_bits_agent,
  output [10:0]  io_agentRowAddrReq_req_addr,
  input  [21:0]  io_agentRowAddrReq_rsp_readData,
  output [10:0]  io_bramReq_req_addr,
  input  [159:0] io_bramReq_rsp_readData,
  input          io_dataDistOut_ready,
  output         io_dataDistOut_valid,
  output [7:0]   io_dataDistOut_bits_els_0_reward,
  output [10:0]  io_dataDistOut_bits_els_0_idx,
  output [7:0]   io_dataDistOut_bits_els_1_reward,
  output [10:0]  io_dataDistOut_bits_els_1_idx,
  output [7:0]   io_dataDistOut_bits_els_2_reward,
  output [10:0]  io_dataDistOut_bits_els_2_idx,
  output [7:0]   io_dataDistOut_bits_els_3_reward,
  output [10:0]  io_dataDistOut_bits_els_3_idx,
  output [7:0]   io_dataDistOut_bits_els_4_reward,
  output [10:0]  io_dataDistOut_bits_els_4_idx,
  output [7:0]   io_dataDistOut_bits_els_5_reward,
  output [10:0]  io_dataDistOut_bits_els_5_idx,
  output [7:0]   io_dataDistOut_bits_els_6_reward,
  output [10:0]  io_dataDistOut_bits_els_6_idx,
  output [7:0]   io_dataDistOut_bits_els_7_reward,
  output [10:0]  io_dataDistOut_bits_els_7_idx,
  output         io_dataDistOut_bits_valids_0,
  output         io_dataDistOut_bits_valids_1,
  output         io_dataDistOut_bits_valids_2,
  output         io_dataDistOut_bits_valids_3,
  output         io_dataDistOut_bits_valids_4,
  output         io_dataDistOut_bits_valids_5,
  output         io_dataDistOut_bits_valids_6,
  output         io_dataDistOut_bits_valids_7,
  output         io_dataDistOut_bits_last
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire  FPGAQueue_clock; // @[BramController.scala 125:25]
  wire  FPGAQueue_reset; // @[BramController.scala 125:25]
  wire  FPGAQueue_io_enq_ready; // @[BramController.scala 125:25]
  wire  FPGAQueue_io_enq_valid; // @[BramController.scala 125:25]
  wire [7:0] FPGAQueue_io_enq_bits_els_0_value; // @[BramController.scala 125:25]
  wire [10:0] FPGAQueue_io_enq_bits_els_0_col; // @[BramController.scala 125:25]
  wire [7:0] FPGAQueue_io_enq_bits_els_1_value; // @[BramController.scala 125:25]
  wire [10:0] FPGAQueue_io_enq_bits_els_1_col; // @[BramController.scala 125:25]
  wire [7:0] FPGAQueue_io_enq_bits_els_2_value; // @[BramController.scala 125:25]
  wire [10:0] FPGAQueue_io_enq_bits_els_2_col; // @[BramController.scala 125:25]
  wire [7:0] FPGAQueue_io_enq_bits_els_3_value; // @[BramController.scala 125:25]
  wire [10:0] FPGAQueue_io_enq_bits_els_3_col; // @[BramController.scala 125:25]
  wire [7:0] FPGAQueue_io_enq_bits_els_4_value; // @[BramController.scala 125:25]
  wire [10:0] FPGAQueue_io_enq_bits_els_4_col; // @[BramController.scala 125:25]
  wire [7:0] FPGAQueue_io_enq_bits_els_5_value; // @[BramController.scala 125:25]
  wire [10:0] FPGAQueue_io_enq_bits_els_5_col; // @[BramController.scala 125:25]
  wire [7:0] FPGAQueue_io_enq_bits_els_6_value; // @[BramController.scala 125:25]
  wire [10:0] FPGAQueue_io_enq_bits_els_6_col; // @[BramController.scala 125:25]
  wire [7:0] FPGAQueue_io_enq_bits_els_7_value; // @[BramController.scala 125:25]
  wire [10:0] FPGAQueue_io_enq_bits_els_7_col; // @[BramController.scala 125:25]
  wire  FPGAQueue_io_deq_ready; // @[BramController.scala 125:25]
  wire  FPGAQueue_io_deq_valid; // @[BramController.scala 125:25]
  wire [7:0] FPGAQueue_io_deq_bits_els_0_value; // @[BramController.scala 125:25]
  wire [10:0] FPGAQueue_io_deq_bits_els_0_col; // @[BramController.scala 125:25]
  wire [7:0] FPGAQueue_io_deq_bits_els_1_value; // @[BramController.scala 125:25]
  wire [10:0] FPGAQueue_io_deq_bits_els_1_col; // @[BramController.scala 125:25]
  wire [7:0] FPGAQueue_io_deq_bits_els_2_value; // @[BramController.scala 125:25]
  wire [10:0] FPGAQueue_io_deq_bits_els_2_col; // @[BramController.scala 125:25]
  wire [7:0] FPGAQueue_io_deq_bits_els_3_value; // @[BramController.scala 125:25]
  wire [10:0] FPGAQueue_io_deq_bits_els_3_col; // @[BramController.scala 125:25]
  wire [7:0] FPGAQueue_io_deq_bits_els_4_value; // @[BramController.scala 125:25]
  wire [10:0] FPGAQueue_io_deq_bits_els_4_col; // @[BramController.scala 125:25]
  wire [7:0] FPGAQueue_io_deq_bits_els_5_value; // @[BramController.scala 125:25]
  wire [10:0] FPGAQueue_io_deq_bits_els_5_col; // @[BramController.scala 125:25]
  wire [7:0] FPGAQueue_io_deq_bits_els_6_value; // @[BramController.scala 125:25]
  wire [10:0] FPGAQueue_io_deq_bits_els_6_col; // @[BramController.scala 125:25]
  wire [7:0] FPGAQueue_io_deq_bits_els_7_value; // @[BramController.scala 125:25]
  wire [10:0] FPGAQueue_io_deq_bits_els_7_col; // @[BramController.scala 125:25]
  wire [3:0] FPGAQueue_io_count; // @[BramController.scala 125:25]
  wire  FPGAQueue_1_clock; // @[BramController.scala 126:28]
  wire  FPGAQueue_1_reset; // @[BramController.scala 126:28]
  wire  FPGAQueue_1_io_enq_valid; // @[BramController.scala 126:28]
  wire  FPGAQueue_1_io_enq_bits; // @[BramController.scala 126:28]
  wire  FPGAQueue_1_io_deq_ready; // @[BramController.scala 126:28]
  wire  FPGAQueue_1_io_deq_bits; // @[BramController.scala 126:28]
  reg [10:0] regNumBramWordsLeft; // @[BramController.scala 117:36]
  reg [10:0] regAgentRowAddr; // @[BramController.scala 118:32]
  reg  regBramRspValid; // @[BramController.scala 119:32]
  reg [10:0] regAgentReq_agent; // @[BramController.scala 120:28]
  reg [1:0] regState; // @[BramController.scala 140:25]
  wire  _T_16 = 2'h0 == regState; // @[Conditional.scala 37:30]
  wire  _T_17 = FPGAQueue_io_count < 4'h5; // @[BramController.scala 145:25]
  wire  _T_18 = FPGAQueue_io_enq_ready & _T_17; // @[BramController.scala 144:32]
  wire  _T_19 = _T_18 & io_requestedAgents_ready; // @[BramController.scala 145:49]
  wire  _T_20 = io_unassignedAgents_ready & io_unassignedAgents_valid; // @[Decoupled.scala 40:37]
  wire [10:0] _GEN_2 = _T_20 ? io_unassignedAgents_bits_agent : 11'h0; // @[BramController.scala 149:42 BramController.scala 154:39 BramController.scala 102:30]
  wire [10:0] _GEN_7 = _T_19 ? _GEN_2 : 11'h0; // @[BramController.scala 147:9 BramController.scala 102:30]
  wire  _T_21 = 2'h1 == regState; // @[Conditional.scala 37:30]
  wire [10:0] _GEN_34 = _T_21 ? io_agentRowAddrReq_rsp_readData[10:0] : 11'h0; // @[Conditional.scala 39:67 BramController.scala 164:21]
  wire [10:0] wAgentRowInfo_length = _T_16 ? 11'h0 : _GEN_34; // @[Conditional.scala 40:58]
  wire  _T_22 = wAgentRowInfo_length == 11'h1; // @[BramController.scala 170:53]
  wire  _T_23 = wAgentRowInfo_length > 11'h0; // @[BramController.scala 172:33]
  wire [10:0] _regNumBramWordsLeft_T_1 = wAgentRowInfo_length - 11'h1; // @[BramController.scala 173:52]
  wire [10:0] _GEN_35 = _T_21 ? io_agentRowAddrReq_rsp_readData[21:11] : 11'h0; // @[Conditional.scala 39:67 BramController.scala 164:21]
  wire [10:0] wAgentRowInfo_rowAddr = _T_16 ? 11'h0 : _GEN_35; // @[Conditional.scala 40:58]
  wire [10:0] _GEN_12 = wAgentRowInfo_length > 11'h0 ? wAgentRowInfo_rowAddr : 11'h0; // @[BramController.scala 172:40 BramController.scala 178:29 BramController.scala 98:22]
  wire [1:0] _GEN_14 = wAgentRowInfo_length > 11'h0 ? regState : 2'h0; // @[BramController.scala 172:40 BramController.scala 140:25 BramController.scala 183:18]
  wire [1:0] _GEN_15 = wAgentRowInfo_length > 11'h1 ? 2'h2 : _GEN_14; // @[BramController.scala 187:41 BramController.scala 188:18]
  wire  _GEN_16 = wAgentRowInfo_length == 11'h1 | wAgentRowInfo_length == 11'h1; // @[BramController.scala 191:47 BramController.scala 192:35 BramController.scala 170:29]
  wire  _T_26 = 2'h2 == regState; // @[Conditional.scala 37:30]
  wire  _T_28 = io_requestedAgents_ready & FPGAQueue_io_count < 4'h6; // @[BramController.scala 199:37]
  wire [10:0] _io_bramReq_req_addr_T_1 = regAgentRowAddr + 11'h1; // @[BramController.scala 202:48]
  wire [10:0] _regNumBramWordsLeft_T_3 = regNumBramWordsLeft - 11'h1; // @[BramController.scala 206:52]
  wire  _T_29 = regNumBramWordsLeft == 11'h1; // @[BramController.scala 212:36]
  wire [1:0] _GEN_19 = regNumBramWordsLeft == 11'h1 ? 2'h0 : regState; // @[BramController.scala 212:45 BramController.scala 216:20 BramController.scala 140:25]
  wire [10:0] _GEN_21 = io_requestedAgents_ready & FPGAQueue_io_count < 4'h6 ? _io_bramReq_req_addr_T_1 : 11'h0; // @[BramController.scala 199:79 BramController.scala 202:29 BramController.scala 98:22]
  wire [10:0] _GEN_23 = io_requestedAgents_ready & FPGAQueue_io_count < 4'h6 ? _regNumBramWordsLeft_T_3 :
    regNumBramWordsLeft; // @[BramController.scala 199:79 BramController.scala 206:29 BramController.scala 117:36]
  wire [10:0] _GEN_24 = io_requestedAgents_ready & FPGAQueue_io_count < 4'h6 ? _io_bramReq_req_addr_T_1 :
    regAgentRowAddr; // @[BramController.scala 199:79 BramController.scala 207:25 BramController.scala 118:32]
  wire [1:0] _GEN_26 = io_requestedAgents_ready & FPGAQueue_io_count < 4'h6 ? _GEN_19 : regState; // @[BramController.scala 199:79 BramController.scala 140:25]
  wire [10:0] _GEN_28 = _T_26 ? _GEN_21 : 11'h0; // @[Conditional.scala 39:67 BramController.scala 98:22]
  wire  _GEN_29 = _T_26 & _T_28; // @[Conditional.scala 39:67 BramController.scala 121:19]
  wire  _GEN_36 = _T_21 & _T_23; // @[Conditional.scala 39:67 BramController.scala 94:27]
  wire  _GEN_38 = _T_21 ? _T_23 : _GEN_29; // @[Conditional.scala 39:67]
  wire [10:0] _GEN_43 = _T_21 ? _GEN_12 : _GEN_28; // @[Conditional.scala 39:67]
  wire  _T_31 = FPGAQueue_io_deq_ready & FPGAQueue_io_deq_valid; // @[Decoupled.scala 40:37]
  FPGAQueue FPGAQueue ( // @[BramController.scala 125:25]
    .clock(FPGAQueue_clock),
    .reset(FPGAQueue_reset),
    .io_enq_ready(FPGAQueue_io_enq_ready),
    .io_enq_valid(FPGAQueue_io_enq_valid),
    .io_enq_bits_els_0_value(FPGAQueue_io_enq_bits_els_0_value),
    .io_enq_bits_els_0_col(FPGAQueue_io_enq_bits_els_0_col),
    .io_enq_bits_els_1_value(FPGAQueue_io_enq_bits_els_1_value),
    .io_enq_bits_els_1_col(FPGAQueue_io_enq_bits_els_1_col),
    .io_enq_bits_els_2_value(FPGAQueue_io_enq_bits_els_2_value),
    .io_enq_bits_els_2_col(FPGAQueue_io_enq_bits_els_2_col),
    .io_enq_bits_els_3_value(FPGAQueue_io_enq_bits_els_3_value),
    .io_enq_bits_els_3_col(FPGAQueue_io_enq_bits_els_3_col),
    .io_enq_bits_els_4_value(FPGAQueue_io_enq_bits_els_4_value),
    .io_enq_bits_els_4_col(FPGAQueue_io_enq_bits_els_4_col),
    .io_enq_bits_els_5_value(FPGAQueue_io_enq_bits_els_5_value),
    .io_enq_bits_els_5_col(FPGAQueue_io_enq_bits_els_5_col),
    .io_enq_bits_els_6_value(FPGAQueue_io_enq_bits_els_6_value),
    .io_enq_bits_els_6_col(FPGAQueue_io_enq_bits_els_6_col),
    .io_enq_bits_els_7_value(FPGAQueue_io_enq_bits_els_7_value),
    .io_enq_bits_els_7_col(FPGAQueue_io_enq_bits_els_7_col),
    .io_deq_ready(FPGAQueue_io_deq_ready),
    .io_deq_valid(FPGAQueue_io_deq_valid),
    .io_deq_bits_els_0_value(FPGAQueue_io_deq_bits_els_0_value),
    .io_deq_bits_els_0_col(FPGAQueue_io_deq_bits_els_0_col),
    .io_deq_bits_els_1_value(FPGAQueue_io_deq_bits_els_1_value),
    .io_deq_bits_els_1_col(FPGAQueue_io_deq_bits_els_1_col),
    .io_deq_bits_els_2_value(FPGAQueue_io_deq_bits_els_2_value),
    .io_deq_bits_els_2_col(FPGAQueue_io_deq_bits_els_2_col),
    .io_deq_bits_els_3_value(FPGAQueue_io_deq_bits_els_3_value),
    .io_deq_bits_els_3_col(FPGAQueue_io_deq_bits_els_3_col),
    .io_deq_bits_els_4_value(FPGAQueue_io_deq_bits_els_4_value),
    .io_deq_bits_els_4_col(FPGAQueue_io_deq_bits_els_4_col),
    .io_deq_bits_els_5_value(FPGAQueue_io_deq_bits_els_5_value),
    .io_deq_bits_els_5_col(FPGAQueue_io_deq_bits_els_5_col),
    .io_deq_bits_els_6_value(FPGAQueue_io_deq_bits_els_6_value),
    .io_deq_bits_els_6_col(FPGAQueue_io_deq_bits_els_6_col),
    .io_deq_bits_els_7_value(FPGAQueue_io_deq_bits_els_7_value),
    .io_deq_bits_els_7_col(FPGAQueue_io_deq_bits_els_7_col),
    .io_count(FPGAQueue_io_count)
  );
  FPGAQueue_1 FPGAQueue_1 ( // @[BramController.scala 126:28]
    .clock(FPGAQueue_1_clock),
    .reset(FPGAQueue_1_reset),
    .io_enq_valid(FPGAQueue_1_io_enq_valid),
    .io_enq_bits(FPGAQueue_1_io_enq_bits),
    .io_deq_ready(FPGAQueue_1_io_deq_ready),
    .io_deq_bits(FPGAQueue_1_io_deq_bits)
  );
  assign io_unassignedAgents_ready = _T_16 & _T_19; // @[Conditional.scala 40:58 BramController.scala 93:28]
  assign io_requestedAgents_valid = _T_16 ? 1'h0 : _GEN_36; // @[Conditional.scala 40:58 BramController.scala 94:27]
  assign io_requestedAgents_bits_agent = regAgentReq_agent; // @[Conditional.scala 39:67 BramController.scala 167:31]
  assign io_agentRowAddrReq_req_addr = _T_16 ? _GEN_7 : 11'h0; // @[Conditional.scala 40:58 BramController.scala 102:30]
  assign io_bramReq_req_addr = _T_16 ? 11'h0 : _GEN_43; // @[Conditional.scala 40:58 BramController.scala 98:22]
  assign io_dataDistOut_valid = io_dataDistOut_ready & io_requestedAgents_ready & _T_31; // @[BramController.scala 225:59 BramController.scala 134:26]
  assign io_dataDistOut_bits_els_0_reward = FPGAQueue_io_deq_bits_els_0_value; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign io_dataDistOut_bits_els_0_idx = FPGAQueue_io_deq_bits_els_0_col; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign io_dataDistOut_bits_els_1_reward = FPGAQueue_io_deq_bits_els_1_value; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign io_dataDistOut_bits_els_1_idx = FPGAQueue_io_deq_bits_els_1_col; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign io_dataDistOut_bits_els_2_reward = FPGAQueue_io_deq_bits_els_2_value; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign io_dataDistOut_bits_els_2_idx = FPGAQueue_io_deq_bits_els_2_col; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign io_dataDistOut_bits_els_3_reward = FPGAQueue_io_deq_bits_els_3_value; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign io_dataDistOut_bits_els_3_idx = FPGAQueue_io_deq_bits_els_3_col; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign io_dataDistOut_bits_els_4_reward = FPGAQueue_io_deq_bits_els_4_value; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign io_dataDistOut_bits_els_4_idx = FPGAQueue_io_deq_bits_els_4_col; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign io_dataDistOut_bits_els_5_reward = FPGAQueue_io_deq_bits_els_5_value; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign io_dataDistOut_bits_els_5_idx = FPGAQueue_io_deq_bits_els_5_col; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign io_dataDistOut_bits_els_6_reward = FPGAQueue_io_deq_bits_els_6_value; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign io_dataDistOut_bits_els_6_idx = FPGAQueue_io_deq_bits_els_6_col; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign io_dataDistOut_bits_els_7_reward = FPGAQueue_io_deq_bits_els_7_value; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign io_dataDistOut_bits_els_7_idx = FPGAQueue_io_deq_bits_els_7_col; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign io_dataDistOut_bits_valids_0 = FPGAQueue_io_deq_bits_els_0_value > 8'h0; // @[BramController.scala 239:22]
  assign io_dataDistOut_bits_valids_1 = FPGAQueue_io_deq_bits_els_1_value > 8'h0; // @[BramController.scala 239:22]
  assign io_dataDistOut_bits_valids_2 = FPGAQueue_io_deq_bits_els_2_value > 8'h0; // @[BramController.scala 239:22]
  assign io_dataDistOut_bits_valids_3 = FPGAQueue_io_deq_bits_els_3_value > 8'h0; // @[BramController.scala 239:22]
  assign io_dataDistOut_bits_valids_4 = FPGAQueue_io_deq_bits_els_4_value > 8'h0; // @[BramController.scala 239:22]
  assign io_dataDistOut_bits_valids_5 = FPGAQueue_io_deq_bits_els_5_value > 8'h0; // @[BramController.scala 239:22]
  assign io_dataDistOut_bits_valids_6 = FPGAQueue_io_deq_bits_els_6_value > 8'h0; // @[BramController.scala 239:22]
  assign io_dataDistOut_bits_valids_7 = FPGAQueue_io_deq_bits_els_7_value > 8'h0; // @[BramController.scala 239:22]
  assign io_dataDistOut_bits_last = FPGAQueue_1_io_deq_bits; // @[BramController.scala 227:30 BramController.scala 244:27]
  assign FPGAQueue_clock = clock;
  assign FPGAQueue_reset = reset;
  assign FPGAQueue_io_enq_valid = regBramRspValid; // @[BramController.scala 129:23]
  assign FPGAQueue_io_enq_bits_els_0_value = io_bramReq_rsp_readData[18:11]; // @[BramController.scala 128:57]
  assign FPGAQueue_io_enq_bits_els_0_col = io_bramReq_rsp_readData[10:0]; // @[BramController.scala 128:57]
  assign FPGAQueue_io_enq_bits_els_1_value = io_bramReq_rsp_readData[37:30]; // @[BramController.scala 128:57]
  assign FPGAQueue_io_enq_bits_els_1_col = io_bramReq_rsp_readData[29:19]; // @[BramController.scala 128:57]
  assign FPGAQueue_io_enq_bits_els_2_value = io_bramReq_rsp_readData[56:49]; // @[BramController.scala 128:57]
  assign FPGAQueue_io_enq_bits_els_2_col = io_bramReq_rsp_readData[48:38]; // @[BramController.scala 128:57]
  assign FPGAQueue_io_enq_bits_els_3_value = io_bramReq_rsp_readData[75:68]; // @[BramController.scala 128:57]
  assign FPGAQueue_io_enq_bits_els_3_col = io_bramReq_rsp_readData[67:57]; // @[BramController.scala 128:57]
  assign FPGAQueue_io_enq_bits_els_4_value = io_bramReq_rsp_readData[94:87]; // @[BramController.scala 128:57]
  assign FPGAQueue_io_enq_bits_els_4_col = io_bramReq_rsp_readData[86:76]; // @[BramController.scala 128:57]
  assign FPGAQueue_io_enq_bits_els_5_value = io_bramReq_rsp_readData[113:106]; // @[BramController.scala 128:57]
  assign FPGAQueue_io_enq_bits_els_5_col = io_bramReq_rsp_readData[105:95]; // @[BramController.scala 128:57]
  assign FPGAQueue_io_enq_bits_els_6_value = io_bramReq_rsp_readData[132:125]; // @[BramController.scala 128:57]
  assign FPGAQueue_io_enq_bits_els_6_col = io_bramReq_rsp_readData[124:114]; // @[BramController.scala 128:57]
  assign FPGAQueue_io_enq_bits_els_7_value = io_bramReq_rsp_readData[151:144]; // @[BramController.scala 128:57]
  assign FPGAQueue_io_enq_bits_els_7_col = io_bramReq_rsp_readData[143:133]; // @[BramController.scala 128:57]
  assign FPGAQueue_io_deq_ready = io_dataDistOut_ready & io_requestedAgents_ready; // @[BramController.scala 225:30]
  assign FPGAQueue_1_clock = clock;
  assign FPGAQueue_1_reset = reset;
  assign FPGAQueue_1_io_enq_valid = _T_16 ? 1'h0 : _GEN_38; // @[Conditional.scala 40:58 BramController.scala 133:26]
  assign FPGAQueue_1_io_enq_bits = _T_21 ? _GEN_16 : _T_29; // @[Conditional.scala 39:67]
  assign FPGAQueue_1_io_deq_ready = io_dataDistOut_ready & io_requestedAgents_ready & _T_31; // @[BramController.scala 225:59 BramController.scala 134:26]
  always @(posedge clock) begin
    if (reset) begin // @[BramController.scala 117:36]
      regNumBramWordsLeft <= 11'h0; // @[BramController.scala 117:36]
    end else if (!(_T_16)) begin // @[Conditional.scala 40:58]
      if (_T_21) begin // @[Conditional.scala 39:67]
        if (wAgentRowInfo_length > 11'h0) begin // @[BramController.scala 172:40]
          regNumBramWordsLeft <= _regNumBramWordsLeft_T_1; // @[BramController.scala 173:29]
        end
      end else if (_T_26) begin // @[Conditional.scala 39:67]
        regNumBramWordsLeft <= _GEN_23;
      end
    end
    if (reset) begin // @[BramController.scala 118:32]
      regAgentRowAddr <= 11'h0; // @[BramController.scala 118:32]
    end else if (!(_T_16)) begin // @[Conditional.scala 40:58]
      if (_T_21) begin // @[Conditional.scala 39:67]
        if (wAgentRowInfo_length > 11'h0) begin // @[BramController.scala 172:40]
          regAgentRowAddr <= wAgentRowInfo_rowAddr; // @[BramController.scala 174:25]
        end
      end else if (_T_26) begin // @[Conditional.scala 39:67]
        regAgentRowAddr <= _GEN_24;
      end
    end
    if (reset) begin // @[BramController.scala 119:32]
      regBramRspValid <= 1'h0; // @[BramController.scala 119:32]
    end else if (_T_16) begin // @[Conditional.scala 40:58]
      regBramRspValid <= 1'h0; // @[BramController.scala 133:26]
    end else if (_T_21) begin // @[Conditional.scala 39:67]
      regBramRspValid <= _T_23;
    end else begin
      regBramRspValid <= _GEN_29;
    end
    if (reset) begin // @[BramController.scala 120:28]
      regAgentReq_agent <= 11'h0; // @[BramController.scala 120:28]
    end else if (_T_16) begin // @[Conditional.scala 40:58]
      if (_T_19) begin // @[BramController.scala 147:9]
        if (_T_20) begin // @[BramController.scala 149:42]
          regAgentReq_agent <= io_unassignedAgents_bits_agent; // @[BramController.scala 151:23]
        end
      end
    end
    if (reset) begin // @[BramController.scala 140:25]
      regState <= 2'h0; // @[BramController.scala 140:25]
    end else if (_T_16) begin // @[Conditional.scala 40:58]
      if (_T_19) begin // @[BramController.scala 147:9]
        if (_T_20) begin // @[BramController.scala 149:42]
          regState <= 2'h1; // @[BramController.scala 157:20]
        end
      end
    end else if (_T_21) begin // @[Conditional.scala 39:67]
      if (_T_22) begin // @[BramController.scala 191:47]
        regState <= 2'h0; // @[BramController.scala 193:22]
      end else begin
        regState <= _GEN_15;
      end
    end else if (_T_26) begin // @[Conditional.scala 39:67]
      regState <= _GEN_26;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regNumBramWordsLeft = _RAND_0[10:0];
  _RAND_1 = {1{`RANDOM}};
  regAgentRowAddr = _RAND_1[10:0];
  _RAND_2 = {1{`RANDOM}};
  regBramRspValid = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  regAgentReq_agent = _RAND_3[10:0];
  _RAND_4 = {1{`RANDOM}};
  regState = _RAND_4[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SRLQueue_2(
  input         clock,
  input         reset,
  input         io_enq_valid,
  input  [10:0] io_enq_bits_agent,
  input         io_deq_ready,
  output        io_deq_valid,
  output [10:0] io_deq_bits_agent,
  output [1:0]  io_count
);
  wire  Q_srl_i_v; // @[FPGAQueue.scala 70:20]
  wire [10:0] Q_srl_i_d; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_i_b; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_o_v; // @[FPGAQueue.scala 70:20]
  wire [10:0] Q_srl_o_d; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_o_b; // @[FPGAQueue.scala 70:20]
  wire [1:0] Q_srl_count; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_clock; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_reset; // @[FPGAQueue.scala 70:20]
  Q_srl #(.depth(3), .width(11)) Q_srl ( // @[FPGAQueue.scala 70:20]
    .i_v(Q_srl_i_v),
    .i_d(Q_srl_i_d),
    .i_b(Q_srl_i_b),
    .o_v(Q_srl_o_v),
    .o_d(Q_srl_o_d),
    .o_b(Q_srl_o_b),
    .count(Q_srl_count),
    .clock(Q_srl_clock),
    .reset(Q_srl_reset)
  );
  assign io_deq_valid = Q_srl_o_v; // @[FPGAQueue.scala 78:16]
  assign io_deq_bits_agent = Q_srl_o_d; // @[FPGAQueue.scala 79:35]
  assign io_count = Q_srl_count; // @[FPGAQueue.scala 72:12]
  assign Q_srl_i_v = io_enq_valid; // @[FPGAQueue.scala 73:12]
  assign Q_srl_i_d = io_enq_bits_agent; // @[FPGAQueue.scala 74:12]
  assign Q_srl_o_b = ~io_deq_ready; // @[FPGAQueue.scala 82:15]
  assign Q_srl_clock = clock; // @[FPGAQueue.scala 75:14]
  assign Q_srl_reset = reset; // @[FPGAQueue.scala 76:14]
endmodule
module FPGAQueue_2(
  input         clock,
  input         reset,
  input         io_enq_valid,
  input  [10:0] io_enq_bits_agent,
  input         io_deq_ready,
  output        io_deq_valid,
  output [10:0] io_deq_bits_agent,
  output [1:0]  io_count
);
  wire  SRLQueue_clock; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_reset; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_valid; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_agent; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_deq_ready; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_deq_valid; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_agent; // @[FPGAQueue.scala 177:26]
  wire [1:0] SRLQueue_io_count; // @[FPGAQueue.scala 177:26]
  SRLQueue_2 SRLQueue ( // @[FPGAQueue.scala 177:26]
    .clock(SRLQueue_clock),
    .reset(SRLQueue_reset),
    .io_enq_valid(SRLQueue_io_enq_valid),
    .io_enq_bits_agent(SRLQueue_io_enq_bits_agent),
    .io_deq_ready(SRLQueue_io_deq_ready),
    .io_deq_valid(SRLQueue_io_deq_valid),
    .io_deq_bits_agent(SRLQueue_io_deq_bits_agent),
    .io_count(SRLQueue_io_count)
  );
  assign io_deq_valid = SRLQueue_io_deq_valid; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_agent = SRLQueue_io_deq_bits_agent; // @[FPGAQueue.scala 179:14]
  assign io_count = SRLQueue_io_count; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_clock = clock;
  assign SRLQueue_reset = reset;
  assign SRLQueue_io_enq_valid = io_enq_valid; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_agent = io_enq_bits_agent; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_deq_ready = io_deq_ready; // @[FPGAQueue.scala 179:14]
endmodule
module BRAMQueue(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [10:0] io_enq_bits_agent,
  input         io_deq_ready,
  output        io_deq_valid,
  output [10:0] io_deq_bits_agent,
  output [10:0] io_count
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  wire  FPGAQueue_clock; // @[FPGAQueue.scala 105:18]
  wire  FPGAQueue_reset; // @[FPGAQueue.scala 105:18]
  wire  FPGAQueue_io_enq_valid; // @[FPGAQueue.scala 105:18]
  wire [10:0] FPGAQueue_io_enq_bits_agent; // @[FPGAQueue.scala 105:18]
  wire  FPGAQueue_io_deq_ready; // @[FPGAQueue.scala 105:18]
  wire  FPGAQueue_io_deq_valid; // @[FPGAQueue.scala 105:18]
  wire [10:0] FPGAQueue_io_deq_bits_agent; // @[FPGAQueue.scala 105:18]
  wire [1:0] FPGAQueue_io_count; // @[FPGAQueue.scala 105:18]
  wire [10:0] DualPortBRAM_a_addr; // @[FPGAQueue.scala 110:23]
  wire [10:0] DualPortBRAM_a_din; // @[FPGAQueue.scala 110:23]
  wire  DualPortBRAM_a_wr; // @[FPGAQueue.scala 110:23]
  wire [10:0] DualPortBRAM_a_dout; // @[FPGAQueue.scala 110:23]
  wire [10:0] DualPortBRAM_b_addr; // @[FPGAQueue.scala 110:23]
  wire [10:0] DualPortBRAM_b_din; // @[FPGAQueue.scala 110:23]
  wire  DualPortBRAM_b_wr; // @[FPGAQueue.scala 110:23]
  wire [10:0] DualPortBRAM_b_dout; // @[FPGAQueue.scala 110:23]
  wire  DualPortBRAM_clk; // @[FPGAQueue.scala 110:23]
  reg [10:0] value; // @[Counter.scala 60:40]
  reg [10:0] value_1; // @[Counter.scala 60:40]
  reg  maybe_full; // @[FPGAQueue.scala 98:27]
  wire  canPrefetch = FPGAQueue_io_count < 2'h2; // @[FPGAQueue.scala 108:31]
  wire  ptr_match = value == value_1; // @[FPGAQueue.scala 128:33]
  wire  empty = ptr_match & ~maybe_full; // @[FPGAQueue.scala 129:25]
  wire  full = ptr_match & maybe_full; // @[FPGAQueue.scala 130:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[FPGAQueue.scala 132:29]
  wire  do_deq = canPrefetch & ~empty; // @[FPGAQueue.scala 133:28]
  wire  wrap = value == 11'h7ce; // @[Counter.scala 72:24]
  wire [10:0] _value_T_1 = value + 11'h1; // @[Counter.scala 76:24]
  wire  wrap_1 = value_1 == 11'h7ce; // @[Counter.scala 72:24]
  wire [10:0] _value_T_3 = value_1 + 11'h1; // @[Counter.scala 76:24]
  reg  regPfEnqValid; // @[FPGAQueue.scala 147:30]
  wire [10:0] ptr_diff = value - value_1; // @[FPGAQueue.scala 156:32]
  wire [10:0] _io_count_T = maybe_full ? 11'h7cf : 11'h0; // @[FPGAQueue.scala 161:24]
  wire [10:0] _io_count_T_3 = 11'h7cf + ptr_diff; // @[FPGAQueue.scala 164:33]
  wire [10:0] _io_count_T_4 = value_1 > value ? _io_count_T_3 : ptr_diff; // @[FPGAQueue.scala 163:24]
  wire [10:0] _io_count_T_5 = ptr_match ? _io_count_T : _io_count_T_4; // @[FPGAQueue.scala 160:20]
  wire [10:0] _GEN_6 = {{9'd0}, FPGAQueue_io_count}; // @[FPGAQueue.scala 164:56]
  FPGAQueue_2 FPGAQueue ( // @[FPGAQueue.scala 105:18]
    .clock(FPGAQueue_clock),
    .reset(FPGAQueue_reset),
    .io_enq_valid(FPGAQueue_io_enq_valid),
    .io_enq_bits_agent(FPGAQueue_io_enq_bits_agent),
    .io_deq_ready(FPGAQueue_io_deq_ready),
    .io_deq_valid(FPGAQueue_io_deq_valid),
    .io_deq_bits_agent(FPGAQueue_io_deq_bits_agent),
    .io_count(FPGAQueue_io_count)
  );
  DualPortBRAM #(.DATA(11), .ADDR(11)) DualPortBRAM ( // @[FPGAQueue.scala 110:23]
    .a_addr(DualPortBRAM_a_addr),
    .a_din(DualPortBRAM_a_din),
    .a_wr(DualPortBRAM_a_wr),
    .a_dout(DualPortBRAM_a_dout),
    .b_addr(DualPortBRAM_b_addr),
    .b_din(DualPortBRAM_b_din),
    .b_wr(DualPortBRAM_b_wr),
    .b_dout(DualPortBRAM_b_dout),
    .clk(DualPortBRAM_clk)
  );
  assign io_enq_ready = ~full; // @[FPGAQueue.scala 145:19]
  assign io_deq_valid = FPGAQueue_io_deq_valid; // @[FPGAQueue.scala 153:10]
  assign io_deq_bits_agent = FPGAQueue_io_deq_bits_agent; // @[FPGAQueue.scala 153:10]
  assign io_count = _io_count_T_5 + _GEN_6; // @[FPGAQueue.scala 164:56]
  assign FPGAQueue_clock = clock;
  assign FPGAQueue_reset = reset;
  assign FPGAQueue_io_enq_valid = regPfEnqValid; // @[FPGAQueue.scala 150:16]
  assign FPGAQueue_io_enq_bits_agent = DualPortBRAM_b_dout; // @[FPGAQueue.scala 111:18 DualPortBRAM.scala 34:21]
  assign FPGAQueue_io_deq_ready = io_deq_ready; // @[FPGAQueue.scala 153:10]
  assign DualPortBRAM_a_addr = value; // @[FPGAQueue.scala 111:18 FPGAQueue.scala 122:22]
  assign DualPortBRAM_a_din = io_enq_bits_agent; // @[FPGAQueue.scala 111:18 FPGAQueue.scala 120:27]
  assign DualPortBRAM_a_wr = io_enq_ready & io_enq_valid; // @[FPGAQueue.scala 132:29]
  assign DualPortBRAM_b_addr = value_1; // @[FPGAQueue.scala 111:18 FPGAQueue.scala 126:21]
  assign DualPortBRAM_b_din = 11'h0; // @[FPGAQueue.scala 111:18 FPGAQueue.scala 124:26]
  assign DualPortBRAM_b_wr = 1'h0; // @[FPGAQueue.scala 111:18 FPGAQueue.scala 125:24]
  assign DualPortBRAM_clk = clock; // @[FPGAQueue.scala 112:15]
  always @(posedge clock) begin
    if (reset) begin // @[Counter.scala 60:40]
      value <= 11'h0; // @[Counter.scala 60:40]
    end else if (do_enq) begin // @[FPGAQueue.scala 134:17]
      if (wrap) begin // @[Counter.scala 86:20]
        value <= 11'h0; // @[Counter.scala 86:28]
      end else begin
        value <= _value_T_1; // @[Counter.scala 76:15]
      end
    end
    if (reset) begin // @[Counter.scala 60:40]
      value_1 <= 11'h0; // @[Counter.scala 60:40]
    end else if (do_deq) begin // @[FPGAQueue.scala 138:17]
      if (wrap_1) begin // @[Counter.scala 86:20]
        value_1 <= 11'h0; // @[Counter.scala 86:28]
      end else begin
        value_1 <= _value_T_3; // @[Counter.scala 76:15]
      end
    end
    if (reset) begin // @[FPGAQueue.scala 98:27]
      maybe_full <= 1'h0; // @[FPGAQueue.scala 98:27]
    end else if (do_enq != do_deq) begin // @[FPGAQueue.scala 141:28]
      maybe_full <= do_enq; // @[FPGAQueue.scala 142:16]
    end
    if (reset) begin // @[FPGAQueue.scala 147:30]
      regPfEnqValid <= 1'h0; // @[FPGAQueue.scala 147:30]
    end else begin
      regPfEnqValid <= do_deq; // @[FPGAQueue.scala 148:17]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  value = _RAND_0[10:0];
  _RAND_1 = {1{`RANDOM}};
  value_1 = _RAND_1[10:0];
  _RAND_2 = {1{`RANDOM}};
  maybe_full = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  regPfEnqValid = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FPGAQueue_3(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [10:0] io_enq_bits_agent,
  input         io_deq_ready,
  output        io_deq_valid,
  output [10:0] io_deq_bits_agent,
  output [10:0] io_count
);
  wire  BRAMQueue_clock; // @[FPGAQueue.scala 182:26]
  wire  BRAMQueue_reset; // @[FPGAQueue.scala 182:26]
  wire  BRAMQueue_io_enq_ready; // @[FPGAQueue.scala 182:26]
  wire  BRAMQueue_io_enq_valid; // @[FPGAQueue.scala 182:26]
  wire [10:0] BRAMQueue_io_enq_bits_agent; // @[FPGAQueue.scala 182:26]
  wire  BRAMQueue_io_deq_ready; // @[FPGAQueue.scala 182:26]
  wire  BRAMQueue_io_deq_valid; // @[FPGAQueue.scala 182:26]
  wire [10:0] BRAMQueue_io_deq_bits_agent; // @[FPGAQueue.scala 182:26]
  wire [10:0] BRAMQueue_io_count; // @[FPGAQueue.scala 182:26]
  BRAMQueue BRAMQueue ( // @[FPGAQueue.scala 182:26]
    .clock(BRAMQueue_clock),
    .reset(BRAMQueue_reset),
    .io_enq_ready(BRAMQueue_io_enq_ready),
    .io_enq_valid(BRAMQueue_io_enq_valid),
    .io_enq_bits_agent(BRAMQueue_io_enq_bits_agent),
    .io_deq_ready(BRAMQueue_io_deq_ready),
    .io_deq_valid(BRAMQueue_io_deq_valid),
    .io_deq_bits_agent(BRAMQueue_io_deq_bits_agent),
    .io_count(BRAMQueue_io_count)
  );
  assign io_enq_ready = BRAMQueue_io_enq_ready; // @[FPGAQueue.scala 183:14]
  assign io_deq_valid = BRAMQueue_io_deq_valid; // @[FPGAQueue.scala 183:14]
  assign io_deq_bits_agent = BRAMQueue_io_deq_bits_agent; // @[FPGAQueue.scala 183:14]
  assign io_count = BRAMQueue_io_count; // @[FPGAQueue.scala 183:14]
  assign BRAMQueue_clock = clock;
  assign BRAMQueue_reset = reset;
  assign BRAMQueue_io_enq_valid = io_enq_valid; // @[FPGAQueue.scala 183:14]
  assign BRAMQueue_io_enq_bits_agent = io_enq_bits_agent; // @[FPGAQueue.scala 183:14]
  assign BRAMQueue_io_deq_ready = io_deq_ready; // @[FPGAQueue.scala 183:14]
endmodule
module ApplicationController(
  input         clock,
  input         reset,
  output        io_rfCtrl_finished,
  input         io_rfInfo_start,
  input  [63:0] io_rfInfo_baseAddr,
  input  [31:0] io_rfInfo_nAgents,
  input  [31:0] io_rfInfo_nObjects,
  output [21:0] io_nElements,
  output        io_dram2bram_start,
  input         io_dram2bram_finished,
  output [63:0] io_dram2bram_baseAddr,
  output [10:0] io_dram2bram_nRows,
  output [10:0] io_dram2bram_nCols,
  output        io_unassignedAgentsIn_ready,
  input         io_unassignedAgentsIn_valid,
  input  [10:0] io_unassignedAgentsIn_bits_agent,
  input         io_unassignedAgentsOut_ready,
  output        io_unassignedAgentsOut_valid,
  output [10:0] io_unassignedAgentsOut_bits_agent,
  output        io_requestedAgentsIn_ready,
  input         io_requestedAgentsIn_valid,
  input  [10:0] io_requestedAgentsIn_bits_agent,
  input         io_requestedAgentsOut_ready,
  output        io_requestedAgentsOut_valid,
  output [10:0] io_requestedAgentsOut_bits_agent,
  output        io_doWriteBack,
  input         io_writeBackDone,
  output        io_reinit
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
`endif // RANDOMIZE_REG_INIT
  wire  qUnassignedAgents_clock; // @[ApplicationController.scala 93:33]
  wire  qUnassignedAgents_reset; // @[ApplicationController.scala 93:33]
  wire  qUnassignedAgents_io_enq_ready; // @[ApplicationController.scala 93:33]
  wire  qUnassignedAgents_io_enq_valid; // @[ApplicationController.scala 93:33]
  wire [10:0] qUnassignedAgents_io_enq_bits_agent; // @[ApplicationController.scala 93:33]
  wire  qUnassignedAgents_io_deq_ready; // @[ApplicationController.scala 93:33]
  wire  qUnassignedAgents_io_deq_valid; // @[ApplicationController.scala 93:33]
  wire [10:0] qUnassignedAgents_io_deq_bits_agent; // @[ApplicationController.scala 93:33]
  wire [10:0] qUnassignedAgents_io_count; // @[ApplicationController.scala 93:33]
  wire  qRequestedAgents_clock; // @[ApplicationController.scala 94:32]
  wire  qRequestedAgents_reset; // @[ApplicationController.scala 94:32]
  wire  qRequestedAgents_io_enq_ready; // @[ApplicationController.scala 94:32]
  wire  qRequestedAgents_io_enq_valid; // @[ApplicationController.scala 94:32]
  wire [10:0] qRequestedAgents_io_enq_bits_agent; // @[ApplicationController.scala 94:32]
  wire  qRequestedAgents_io_deq_ready; // @[ApplicationController.scala 94:32]
  wire  qRequestedAgents_io_deq_valid; // @[ApplicationController.scala 94:32]
  wire [10:0] qRequestedAgents_io_deq_bits_agent; // @[ApplicationController.scala 94:32]
  wire [10:0] qRequestedAgents_io_count; // @[ApplicationController.scala 94:32]
  reg [2:0] regState; // @[ApplicationController.scala 109:25]
  reg [1:0] regState2; // @[ApplicationController.scala 110:26]
  reg [10:0] regCount; // @[ApplicationController.scala 111:25]
  reg [31:0] regBaseAddr; // @[ApplicationController.scala 113:28]
  reg [10:0] regNCols; // @[ApplicationController.scala 114:25]
  reg [10:0] regNRows; // @[ApplicationController.scala 115:24]
  reg [21:0] regNElements; // @[ApplicationController.scala 116:29]
  wire [21:0] _regNElements_T = regNCols * regNRows; // @[ApplicationController.scala 119:28]
  wire  _T = 3'h0 == regState; // @[Conditional.scala 37:30]
  wire [31:0] _regCount_T_1 = io_rfInfo_nAgents - 32'h1; // @[ApplicationController.scala 127:39]
  wire [31:0] _GEN_1 = io_rfInfo_start ? _regCount_T_1 : {{21'd0}, regCount}; // @[ApplicationController.scala 125:41 ApplicationController.scala 127:18 ApplicationController.scala 111:25]
  wire [63:0] _GEN_2 = io_rfInfo_start ? io_rfInfo_baseAddr : {{32'd0}, regBaseAddr}; // @[ApplicationController.scala 125:41 ApplicationController.scala 128:21 ApplicationController.scala 113:28]
  wire [31:0] _GEN_3 = io_rfInfo_start ? io_rfInfo_nAgents : {{21'd0}, regNRows}; // @[ApplicationController.scala 125:41 ApplicationController.scala 129:18 ApplicationController.scala 115:24]
  wire [31:0] _GEN_4 = io_rfInfo_start ? io_rfInfo_nObjects : {{21'd0}, regNCols}; // @[ApplicationController.scala 125:41 ApplicationController.scala 130:18 ApplicationController.scala 114:25]
  wire  _T_2 = 3'h1 == regState; // @[Conditional.scala 37:30]
  wire  _T_3 = 3'h2 == regState; // @[Conditional.scala 37:30]
  wire  _GEN_5 = io_dram2bram_finished ? 1'h0 : 1'h1; // @[ApplicationController.scala 142:36 ApplicationController.scala 143:28 ApplicationController.scala 140:26]
  wire [2:0] _GEN_6 = io_dram2bram_finished ? 3'h4 : regState; // @[ApplicationController.scala 142:36 ApplicationController.scala 144:18 ApplicationController.scala 109:25]
  wire  _T_4 = 3'h4 == regState; // @[Conditional.scala 37:30]
  reg [10:0] REG; // @[ApplicationController.scala 155:29]
  reg [10:0] REG_1; // @[ApplicationController.scala 155:21]
  reg [10:0] REG_2; // @[ApplicationController.scala 155:77]
  reg [10:0] REG_3; // @[ApplicationController.scala 155:199]
  wire [2:0] _GEN_7 = REG_1 == 11'h0 & REG_2 == 11'h0 & qUnassignedAgents_io_count == 11'h0 & qRequestedAgents_io_count
     == 11'h0 & REG_3 == 11'h0 ? 3'h5 : regState; // @[ApplicationController.scala 155:236 ApplicationController.scala 156:20 ApplicationController.scala 109:25]
  wire  _GEN_9 = regState2 == 2'h2 & qRequestedAgents_io_deq_valid; // @[ApplicationController.scala 150:38 ApplicationController.scala 152:31 ApplicationController.scala 60:30]
  wire  _GEN_10 = regState2 == 2'h2 & io_requestedAgentsOut_ready; // @[ApplicationController.scala 150:38 ApplicationController.scala 152:31 ApplicationController.scala 103:33]
  wire  _GEN_12 = regState2 == 2'h2 & qUnassignedAgents_io_deq_valid; // @[ApplicationController.scala 150:38 ApplicationController.scala 153:32 ApplicationController.scala 63:31]
  wire  _GEN_13 = regState2 == 2'h2 & io_unassignedAgentsOut_ready; // @[ApplicationController.scala 150:38 ApplicationController.scala 153:32 ApplicationController.scala 99:34]
  wire  _GEN_15 = regState2 == 2'h2 & io_unassignedAgentsIn_valid; // @[ApplicationController.scala 150:38 ApplicationController.scala 154:31 ApplicationController.scala 98:34]
  wire  _GEN_16 = regState2 == 2'h2 & qUnassignedAgents_io_enq_ready; // @[ApplicationController.scala 150:38 ApplicationController.scala 154:31 ApplicationController.scala 62:30]
  wire [2:0] _GEN_17 = regState2 == 2'h2 ? _GEN_7 : regState; // @[ApplicationController.scala 150:38 ApplicationController.scala 109:25]
  wire  _T_15 = 3'h5 == regState; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_18 = io_writeBackDone ? 3'h6 : regState; // @[ApplicationController.scala 163:31 ApplicationController.scala 164:18 ApplicationController.scala 109:25]
  wire  _T_16 = 3'h6 == regState; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_20 = io_rfInfo_start ? 3'h0 : regState; // @[ApplicationController.scala 169:30 ApplicationController.scala 171:18 ApplicationController.scala 109:25]
  wire [1:0] _GEN_21 = io_rfInfo_start ? 2'h0 : regState2; // @[ApplicationController.scala 169:30 ApplicationController.scala 172:19 ApplicationController.scala 110:26]
  wire [2:0] _GEN_24 = _T_16 ? _GEN_20 : regState; // @[Conditional.scala 39:67 ApplicationController.scala 109:25]
  wire [1:0] _GEN_25 = _T_16 ? _GEN_21 : regState2; // @[Conditional.scala 39:67 ApplicationController.scala 110:26]
  wire [2:0] _GEN_27 = _T_15 ? _GEN_18 : _GEN_24; // @[Conditional.scala 39:67]
  wire  _GEN_28 = _T_15 ? 1'h0 : _T_16; // @[Conditional.scala 39:67 ApplicationController.scala 70:21]
  wire  _GEN_29 = _T_15 ? 1'h0 : _T_16 & io_rfInfo_start; // @[Conditional.scala 39:67 ApplicationController.scala 75:12]
  wire [1:0] _GEN_30 = _T_15 ? regState2 : _GEN_25; // @[Conditional.scala 39:67 ApplicationController.scala 110:26]
  wire [2:0] _GEN_40 = _T_4 ? _GEN_17 : _GEN_27; // @[Conditional.scala 39:67]
  wire  _GEN_41 = _T_4 ? 1'h0 : _T_15; // @[Conditional.scala 39:67 ApplicationController.scala 68:17]
  wire  _GEN_42 = _T_4 ? 1'h0 : _GEN_28; // @[Conditional.scala 39:67 ApplicationController.scala 70:21]
  wire  _GEN_43 = _T_4 ? 1'h0 : _GEN_29; // @[Conditional.scala 39:67 ApplicationController.scala 75:12]
  wire [1:0] _GEN_44 = _T_4 ? regState2 : _GEN_30; // @[Conditional.scala 39:67 ApplicationController.scala 110:26]
  wire [31:0] _GEN_45 = _T_3 ? regBaseAddr : 32'h0; // @[Conditional.scala 39:67 ApplicationController.scala 137:29 ApplicationController.scala 79:24]
  wire [10:0] _GEN_46 = _T_3 ? regNRows : 11'h0; // @[Conditional.scala 39:67 ApplicationController.scala 138:26 ApplicationController.scala 78:21]
  wire [10:0] _GEN_47 = _T_3 ? regNCols : 11'h0; // @[Conditional.scala 39:67 ApplicationController.scala 139:26 ApplicationController.scala 77:21]
  wire  _GEN_51 = _T_3 ? 1'h0 : _T_4 & _GEN_9; // @[Conditional.scala 39:67 ApplicationController.scala 60:30]
  wire  _GEN_52 = _T_3 ? 1'h0 : _T_4 & _GEN_10; // @[Conditional.scala 39:67 ApplicationController.scala 103:33]
  wire  _GEN_54 = _T_3 ? 1'h0 : _T_4 & _GEN_12; // @[Conditional.scala 39:67 ApplicationController.scala 63:31]
  wire  _GEN_55 = _T_3 ? 1'h0 : _T_4 & _GEN_13; // @[Conditional.scala 39:67 ApplicationController.scala 99:34]
  wire  _GEN_57 = _T_3 ? 1'h0 : _T_4 & _GEN_15; // @[Conditional.scala 39:67 ApplicationController.scala 98:34]
  wire  _GEN_58 = _T_3 ? 1'h0 : _T_4 & _GEN_16; // @[Conditional.scala 39:67 ApplicationController.scala 62:30]
  wire  _GEN_59 = _T_3 ? 1'h0 : _GEN_41; // @[Conditional.scala 39:67 ApplicationController.scala 68:17]
  wire  _GEN_60 = _T_3 ? 1'h0 : _GEN_42; // @[Conditional.scala 39:67 ApplicationController.scala 70:21]
  wire  _GEN_61 = _T_3 ? 1'h0 : _GEN_43; // @[Conditional.scala 39:67 ApplicationController.scala 75:12]
  wire [1:0] _GEN_62 = _T_3 ? regState2 : _GEN_44; // @[Conditional.scala 39:67 ApplicationController.scala 110:26]
  wire [31:0] _GEN_64 = _T_2 ? 32'h0 : _GEN_45; // @[Conditional.scala 39:67 ApplicationController.scala 79:24]
  wire [10:0] _GEN_65 = _T_2 ? 11'h0 : _GEN_46; // @[Conditional.scala 39:67 ApplicationController.scala 78:21]
  wire [10:0] _GEN_66 = _T_2 ? 11'h0 : _GEN_47; // @[Conditional.scala 39:67 ApplicationController.scala 77:21]
  wire  _GEN_67 = _T_2 ? 1'h0 : _T_3 & _GEN_5; // @[Conditional.scala 39:67 ApplicationController.scala 76:21]
  wire  _GEN_69 = _T_2 ? 1'h0 : _GEN_51; // @[Conditional.scala 39:67 ApplicationController.scala 60:30]
  wire  _GEN_70 = _T_2 ? 1'h0 : _GEN_52; // @[Conditional.scala 39:67 ApplicationController.scala 103:33]
  wire  _GEN_72 = _T_2 ? 1'h0 : _GEN_54; // @[Conditional.scala 39:67 ApplicationController.scala 63:31]
  wire  _GEN_73 = _T_2 ? 1'h0 : _GEN_55; // @[Conditional.scala 39:67 ApplicationController.scala 99:34]
  wire  _GEN_75 = _T_2 ? 1'h0 : _GEN_57; // @[Conditional.scala 39:67 ApplicationController.scala 98:34]
  wire  _GEN_76 = _T_2 ? 1'h0 : _GEN_58; // @[Conditional.scala 39:67 ApplicationController.scala 62:30]
  wire  _GEN_77 = _T_2 ? 1'h0 : _GEN_59; // @[Conditional.scala 39:67 ApplicationController.scala 68:17]
  wire  _GEN_78 = _T_2 ? 1'h0 : _GEN_60; // @[Conditional.scala 39:67 ApplicationController.scala 70:21]
  wire  _GEN_79 = _T_2 ? 1'h0 : _GEN_61; // @[Conditional.scala 39:67 ApplicationController.scala 75:12]
  wire [1:0] _GEN_80 = _T_2 ? regState2 : _GEN_62; // @[Conditional.scala 39:67 ApplicationController.scala 110:26]
  wire [31:0] _GEN_82 = _T ? _GEN_1 : {{21'd0}, regCount}; // @[Conditional.scala 40:58 ApplicationController.scala 111:25]
  wire [63:0] _GEN_83 = _T ? _GEN_2 : {{32'd0}, regBaseAddr}; // @[Conditional.scala 40:58 ApplicationController.scala 113:28]
  wire [31:0] _GEN_84 = _T ? _GEN_3 : {{21'd0}, regNRows}; // @[Conditional.scala 40:58 ApplicationController.scala 115:24]
  wire [31:0] _GEN_85 = _T ? _GEN_4 : {{21'd0}, regNCols}; // @[Conditional.scala 40:58 ApplicationController.scala 114:25]
  wire [31:0] _GEN_86 = _T ? 32'h0 : _GEN_64; // @[Conditional.scala 40:58 ApplicationController.scala 79:24]
  wire  _GEN_97 = _T ? 1'h0 : _GEN_75; // @[Conditional.scala 40:58 ApplicationController.scala 98:34]
  wire [1:0] _GEN_102 = _T ? regState2 : _GEN_80; // @[Conditional.scala 40:58 ApplicationController.scala 110:26]
  wire  _T_17 = 2'h0 == regState2; // @[Conditional.scala 37:30]
  wire  _T_18 = 2'h1 == regState2; // @[Conditional.scala 37:30]
  wire  _T_19 = qUnassignedAgents_io_enq_ready & qUnassignedAgents_io_enq_valid; // @[Decoupled.scala 40:37]
  wire [10:0] _regCount_T_3 = regCount - 11'h1; // @[ApplicationController.scala 192:34]
  wire [1:0] _GEN_104 = regCount == 11'h0 ? 2'h2 : _GEN_102; // @[ApplicationController.scala 189:35 ApplicationController.scala 190:23]
  wire [31:0] _GEN_105 = regCount == 11'h0 ? _GEN_82 : {{21'd0}, _regCount_T_3}; // @[ApplicationController.scala 189:35 ApplicationController.scala 192:22]
  wire [31:0] _GEN_107 = _T_19 ? _GEN_105 : _GEN_82; // @[ApplicationController.scala 188:48]
  wire  _GEN_108 = _T_18 | _GEN_97; // @[Conditional.scala 39:67 ApplicationController.scala 186:40]
  wire [10:0] _GEN_109 = _T_18 ? regCount : io_unassignedAgentsIn_bits_agent; // @[Conditional.scala 39:67 ApplicationController.scala 187:45]
  wire [31:0] _GEN_111 = _T_18 ? _GEN_107 : _GEN_82; // @[Conditional.scala 39:67]
  wire [31:0] _GEN_115 = _T_17 ? _GEN_82 : _GEN_111; // @[Conditional.scala 40:58]
  FPGAQueue_3 qUnassignedAgents ( // @[ApplicationController.scala 93:33]
    .clock(qUnassignedAgents_clock),
    .reset(qUnassignedAgents_reset),
    .io_enq_ready(qUnassignedAgents_io_enq_ready),
    .io_enq_valid(qUnassignedAgents_io_enq_valid),
    .io_enq_bits_agent(qUnassignedAgents_io_enq_bits_agent),
    .io_deq_ready(qUnassignedAgents_io_deq_ready),
    .io_deq_valid(qUnassignedAgents_io_deq_valid),
    .io_deq_bits_agent(qUnassignedAgents_io_deq_bits_agent),
    .io_count(qUnassignedAgents_io_count)
  );
  FPGAQueue_3 qRequestedAgents ( // @[ApplicationController.scala 94:32]
    .clock(qRequestedAgents_clock),
    .reset(qRequestedAgents_reset),
    .io_enq_ready(qRequestedAgents_io_enq_ready),
    .io_enq_valid(qRequestedAgents_io_enq_valid),
    .io_enq_bits_agent(qRequestedAgents_io_enq_bits_agent),
    .io_deq_ready(qRequestedAgents_io_deq_ready),
    .io_deq_valid(qRequestedAgents_io_deq_valid),
    .io_deq_bits_agent(qRequestedAgents_io_deq_bits_agent),
    .io_count(qRequestedAgents_io_count)
  );
  assign io_rfCtrl_finished = _T ? 1'h0 : _GEN_78; // @[Conditional.scala 40:58 ApplicationController.scala 70:21]
  assign io_nElements = regNElements; // @[ApplicationController.scala 120:16]
  assign io_dram2bram_start = _T ? 1'h0 : _GEN_67; // @[Conditional.scala 40:58 ApplicationController.scala 76:21]
  assign io_dram2bram_baseAddr = {{32'd0}, _GEN_86}; // @[Conditional.scala 40:58 ApplicationController.scala 79:24]
  assign io_dram2bram_nRows = _T ? 11'h0 : _GEN_65; // @[Conditional.scala 40:58 ApplicationController.scala 78:21]
  assign io_dram2bram_nCols = _T ? 11'h0 : _GEN_66; // @[Conditional.scala 40:58 ApplicationController.scala 77:21]
  assign io_unassignedAgentsIn_ready = _T ? 1'h0 : _GEN_76; // @[Conditional.scala 40:58 ApplicationController.scala 62:30]
  assign io_unassignedAgentsOut_valid = _T ? 1'h0 : _GEN_72; // @[Conditional.scala 40:58 ApplicationController.scala 63:31]
  assign io_unassignedAgentsOut_bits_agent = qUnassignedAgents_io_deq_bits_agent; // @[ApplicationController.scala 150:38 ApplicationController.scala 153:32]
  assign io_requestedAgentsIn_ready = qRequestedAgents_io_enq_ready; // @[ApplicationController.scala 106:24]
  assign io_requestedAgentsOut_valid = _T ? 1'h0 : _GEN_69; // @[Conditional.scala 40:58 ApplicationController.scala 60:30]
  assign io_requestedAgentsOut_bits_agent = qRequestedAgents_io_deq_bits_agent; // @[ApplicationController.scala 150:38 ApplicationController.scala 152:31]
  assign io_doWriteBack = _T ? 1'h0 : _GEN_77; // @[Conditional.scala 40:58 ApplicationController.scala 68:17]
  assign io_reinit = _T ? 1'h0 : _GEN_79; // @[Conditional.scala 40:58 ApplicationController.scala 75:12]
  assign qUnassignedAgents_clock = clock;
  assign qUnassignedAgents_reset = reset;
  assign qUnassignedAgents_io_enq_valid = _T_17 ? _GEN_97 : _GEN_108; // @[Conditional.scala 40:58]
  assign qUnassignedAgents_io_enq_bits_agent = _T_17 ? io_unassignedAgentsIn_bits_agent : _GEN_109; // @[Conditional.scala 40:58]
  assign qUnassignedAgents_io_deq_ready = _T ? 1'h0 : _GEN_73; // @[Conditional.scala 40:58 ApplicationController.scala 99:34]
  assign qRequestedAgents_clock = clock;
  assign qRequestedAgents_reset = reset;
  assign qRequestedAgents_io_enq_valid = io_requestedAgentsIn_valid; // @[ApplicationController.scala 106:24]
  assign qRequestedAgents_io_enq_bits_agent = io_requestedAgentsIn_bits_agent; // @[ApplicationController.scala 106:24]
  assign qRequestedAgents_io_deq_ready = _T ? 1'h0 : _GEN_70; // @[Conditional.scala 40:58 ApplicationController.scala 103:33]
  always @(posedge clock) begin
    if (reset) begin // @[ApplicationController.scala 109:25]
      regState <= 3'h0; // @[ApplicationController.scala 109:25]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_rfInfo_start) begin // @[ApplicationController.scala 125:41]
        regState <= 3'h1; // @[ApplicationController.scala 126:18]
      end
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      regState <= 3'h2; // @[ApplicationController.scala 134:16]
    end else if (_T_3) begin // @[Conditional.scala 39:67]
      regState <= _GEN_6;
    end else begin
      regState <= _GEN_40;
    end
    if (reset) begin // @[ApplicationController.scala 110:26]
      regState2 <= 2'h0; // @[ApplicationController.scala 110:26]
    end else if (_T_17) begin // @[Conditional.scala 40:58]
      if (io_rfInfo_start) begin // @[ApplicationController.scala 180:30]
        regState2 <= 2'h1; // @[ApplicationController.scala 181:19]
      end else begin
        regState2 <= _GEN_102;
      end
    end else if (_T_18) begin // @[Conditional.scala 39:67]
      if (_T_19) begin // @[ApplicationController.scala 188:48]
        regState2 <= _GEN_104;
      end else begin
        regState2 <= _GEN_102;
      end
    end else begin
      regState2 <= _GEN_102;
    end
    if (reset) begin // @[ApplicationController.scala 111:25]
      regCount <= 11'h0; // @[ApplicationController.scala 111:25]
    end else begin
      regCount <= _GEN_115[10:0];
    end
    if (reset) begin // @[ApplicationController.scala 113:28]
      regBaseAddr <= 32'h0; // @[ApplicationController.scala 113:28]
    end else begin
      regBaseAddr <= _GEN_83[31:0];
    end
    if (reset) begin // @[ApplicationController.scala 114:25]
      regNCols <= 11'h0; // @[ApplicationController.scala 114:25]
    end else begin
      regNCols <= _GEN_85[10:0];
    end
    if (reset) begin // @[ApplicationController.scala 115:24]
      regNRows <= 11'h0; // @[ApplicationController.scala 115:24]
    end else begin
      regNRows <= _GEN_84[10:0];
    end
    if (reset) begin // @[ApplicationController.scala 116:29]
      regNElements <= 22'h0; // @[ApplicationController.scala 116:29]
    end else begin
      regNElements <= _regNElements_T; // @[ApplicationController.scala 119:16]
    end
    REG <= qUnassignedAgents_io_count; // @[ApplicationController.scala 155:29]
    REG_1 <= REG; // @[ApplicationController.scala 155:21]
    REG_2 <= qUnassignedAgents_io_count; // @[ApplicationController.scala 155:77]
    REG_3 <= qRequestedAgents_io_count; // @[ApplicationController.scala 155:199]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regState = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  regState2 = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  regCount = _RAND_2[10:0];
  _RAND_3 = {1{`RANDOM}};
  regBaseAddr = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  regNCols = _RAND_4[10:0];
  _RAND_5 = {1{`RANDOM}};
  regNRows = _RAND_5[10:0];
  _RAND_6 = {1{`RANDOM}};
  regNElements = _RAND_6[21:0];
  _RAND_7 = {1{`RANDOM}};
  REG = _RAND_7[10:0];
  _RAND_8 = {1{`RANDOM}};
  REG_1 = _RAND_8[10:0];
  _RAND_9 = {1{`RANDOM}};
  REG_2 = _RAND_9[10:0];
  _RAND_10 = {1{`RANDOM}};
  REG_3 = _RAND_10[10:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SimpleDualPortBRAM(
  input         clock,
  input  [10:0] io_read_req_addr,
  output [11:0] io_read_rsp_readData,
  input  [10:0] io_write_req_addr,
  input  [11:0] io_write_req_writeData,
  input         io_write_req_writeEn
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [11:0] mem [0:2047]; // @[SimpleDualPortBRAM.scala 20:24]
  wire [11:0] mem_rdPort_data; // @[SimpleDualPortBRAM.scala 20:24]
  wire [10:0] mem_rdPort_addr; // @[SimpleDualPortBRAM.scala 20:24]
  wire [11:0] mem_MPORT_data; // @[SimpleDualPortBRAM.scala 20:24]
  wire [10:0] mem_MPORT_addr; // @[SimpleDualPortBRAM.scala 20:24]
  wire  mem_MPORT_mask; // @[SimpleDualPortBRAM.scala 20:24]
  wire  mem_MPORT_en; // @[SimpleDualPortBRAM.scala 20:24]
  reg [10:0] mem_rdPort_addr_pipe_0;
  assign mem_rdPort_addr = mem_rdPort_addr_pipe_0;
  assign mem_rdPort_data = mem[mem_rdPort_addr]; // @[SimpleDualPortBRAM.scala 20:24]
  assign mem_MPORT_data = io_write_req_writeData;
  assign mem_MPORT_addr = io_write_req_addr;
  assign mem_MPORT_mask = 1'h1;
  assign mem_MPORT_en = io_write_req_writeEn;
  assign io_read_rsp_readData = mem_rdPort_data; // @[SimpleDualPortBRAM.scala 24:24]
  always @(posedge clock) begin
    if(mem_MPORT_en & mem_MPORT_mask) begin
      mem[mem_MPORT_addr] <= mem_MPORT_data; // @[SimpleDualPortBRAM.scala 20:24]
    end
    mem_rdPort_addr_pipe_0 <= io_read_req_addr;
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2048; initvar = initvar+1)
    mem[initvar] = _RAND_0[11:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_rdPort_addr_pipe_0 = _RAND_1[10:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AssignmentEngine(
  input         clock,
  input         reset,
  output        io_searchResultIn_ready,
  input         io_searchResultIn_valid,
  input  [10:0] io_searchResultIn_bits_winner,
  input  [7:0]  io_searchResultIn_bits_bid,
  input         io_unassignedAgents_ready,
  output        io_unassignedAgents_valid,
  output [7:0]  io_unassignedAgents_bits_agent,
  output        io_requestedAgents_ready,
  input         io_requestedAgents_valid,
  input  [7:0]  io_requestedAgents_bits_agent,
  input         io_rfInfo_start,
  input  [31:0] io_rfInfo_nObjects,
  input  [63:0] io_rfInfo_baseAddrRes,
  input         io_doWriteBack,
  output        io_writeBackDone,
  output        io_writeBackStream_start,
  input         io_writeBackStream_wrData_ready,
  output        io_writeBackStream_wrData_valid,
  output [63:0] io_writeBackStream_wrData_bits,
  input         io_writeBackStream_finished,
  output [31:0] io_writeBackStream_baseAddr,
  output [31:0] io_writeBackStream_byteCount,
  output [10:0] io_bramStoreReadAddr,
  input  [7:0]  io_bramStoreReadData,
  output [10:0] io_bramStoreWriteAddr,
  output [7:0]  io_bramStoreWriteData,
  output        io_bramStoreWriteDataValid,
  output        io_bramStoreDump_ready,
  input         io_bramStoreDump_valid,
  input  [7:0]  io_bramStoreDump_bits,
  output        io_bramStoreDumpStart,
  output        io_miss
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  wire  bramAssignments_clock; // @[AssignmentEngine.scala 107:31]
  wire [10:0] bramAssignments_io_read_req_addr; // @[AssignmentEngine.scala 107:31]
  wire [11:0] bramAssignments_io_read_rsp_readData; // @[AssignmentEngine.scala 107:31]
  wire [10:0] bramAssignments_io_write_req_addr; // @[AssignmentEngine.scala 107:31]
  wire [11:0] bramAssignments_io_write_req_writeData; // @[AssignmentEngine.scala 107:31]
  wire  bramAssignments_io_write_req_writeEn; // @[AssignmentEngine.scala 107:31]
  reg [10:0] s1_agent; // @[AssignmentEngine.scala 118:25]
  reg [10:0] s1_object; // @[AssignmentEngine.scala 119:26]
  reg [7:0] s1_bid; // @[AssignmentEngine.scala 121:23]
  reg  s1_valid; // @[AssignmentEngine.scala 123:25]
  reg [2:0] regWBState; // @[AssignmentEngine.scala 137:27]
  reg [10:0] regWBCount; // @[AssignmentEngine.scala 138:27]
  reg [31:0] regNCols; // @[AssignmentEngine.scala 142:25]
  reg [31:0] regBaseAddr; // @[AssignmentEngine.scala 143:28]
  reg [31:0] regByteCount; // @[AssignmentEngine.scala 144:29]
  wire  stall = ~io_unassignedAgents_ready; // @[AssignmentEngine.scala 146:15]
  wire  _T = 3'h0 == regWBState; // @[Conditional.scala 37:30]
  wire [36:0] _regByteCount_T = io_rfInfo_nObjects * 5'h10; // @[AssignmentEngine.scala 154:44]
  wire [63:0] _GEN_2 = io_rfInfo_start ? io_rfInfo_baseAddrRes : {{32'd0}, regBaseAddr}; // @[AssignmentEngine.scala 150:30 AssignmentEngine.scala 153:21 AssignmentEngine.scala 143:28]
  wire [36:0] _GEN_3 = io_rfInfo_start ? _regByteCount_T : {{5'd0}, regByteCount}; // @[AssignmentEngine.scala 150:30 AssignmentEngine.scala 154:22 AssignmentEngine.scala 144:29]
  wire  _T_1 = ~stall; // @[AssignmentEngine.scala 157:10]
  wire  fire = io_searchResultIn_ready & io_searchResultIn_valid; // @[Decoupled.scala 40:37]
  wire  _T_5 = s1_bid > io_bramStoreReadData; // @[AssignmentEngine.scala 179:21]
  wire [11:0] _io_unassignedAgents_valid_WIRE_1 = bramAssignments_io_read_rsp_readData;
  wire [11:0] _bramAssignments_io_write_req_writeData_T = {s1_agent,1'h1}; // @[AssignmentEngine.scala 192:58]
  wire  _T_6 = s1_bid > 8'h0; // @[AssignmentEngine.scala 197:27]
  wire  _GEN_12 = s1_bid > io_bramStoreReadData ? _io_unassignedAgents_valid_WIRE_1[0] : _T_6; // @[AssignmentEngine.scala 179:37 AssignmentEngine.scala 183:37]
  wire [10:0] _GEN_13 = s1_bid > io_bramStoreReadData ? _io_unassignedAgents_valid_WIRE_1[11:1] : s1_agent; // @[AssignmentEngine.scala 179:37 AssignmentEngine.scala 184:42]
  wire  _GEN_18 = s1_bid > io_bramStoreReadData ? 1'h0 : _T_6; // @[AssignmentEngine.scala 179:37 AssignmentEngine.scala 96:10]
  wire  _GEN_19 = s1_valid & _GEN_12; // @[AssignmentEngine.scala 178:22 AssignmentEngine.scala 80:28]
  wire  _GEN_21 = s1_valid & _T_5; // @[AssignmentEngine.scala 178:22 AssignmentEngine.scala 112:40]
  wire  _GEN_25 = s1_valid & _GEN_18; // @[AssignmentEngine.scala 178:22 AssignmentEngine.scala 96:10]
  wire  _GEN_28 = ~stall & fire; // @[AssignmentEngine.scala 157:18 AssignmentEngine.scala 82:27]
  wire  _GEN_34 = ~stall & _GEN_19; // @[AssignmentEngine.scala 157:18 AssignmentEngine.scala 80:28]
  wire  _GEN_36 = ~stall & _GEN_21; // @[AssignmentEngine.scala 157:18 AssignmentEngine.scala 112:40]
  wire  _GEN_40 = ~stall & _GEN_25; // @[AssignmentEngine.scala 157:18 AssignmentEngine.scala 96:10]
  wire [63:0] _GEN_43 = _T ? _GEN_2 : {{32'd0}, regBaseAddr}; // @[Conditional.scala 40:58 AssignmentEngine.scala 143:28]
  wire [36:0] _GEN_44 = _T ? _GEN_3 : {{5'd0}, regByteCount}; // @[Conditional.scala 40:58 AssignmentEngine.scala 144:29]
  wire  _GEN_45 = _T & _T_1; // @[Conditional.scala 40:58 AssignmentEngine.scala 79:26]
  wire  _GEN_55 = _T & _GEN_36; // @[Conditional.scala 40:58 AssignmentEngine.scala 112:40]
  wire [10:0] _GEN_61 = io_doWriteBack ? 11'h0 : io_searchResultIn_bits_winner; // @[AssignmentEngine.scala 213:29 AssignmentEngine.scala 215:42]
  wire  _T_8 = 3'h1 == regWBState; // @[Conditional.scala 37:30]
  wire  _T_9 = io_writeBackStream_wrData_ready & io_writeBackStream_wrData_valid; // @[Decoupled.scala 40:37]
  wire [31:0] _T_11 = regNCols - 32'h1; // @[AssignmentEngine.scala 230:39]
  wire [31:0] _GEN_116 = {{21'd0}, regWBCount}; // @[AssignmentEngine.scala 230:28]
  wire [10:0] _regWBCount_T_1 = regWBCount + 11'h1; // @[AssignmentEngine.scala 231:38]
  wire [10:0] _GEN_62 = _GEN_116 < _T_11 ? _regWBCount_T_1 : 11'h0; // @[AssignmentEngine.scala 230:46 AssignmentEngine.scala 231:24 AssignmentEngine.scala 235:24]
  wire [10:0] _GEN_63 = _GEN_116 < _T_11 ? _regWBCount_T_1 : regWBCount; // @[AssignmentEngine.scala 230:46 AssignmentEngine.scala 232:46 AssignmentEngine.scala 220:42]
  wire [2:0] _GEN_64 = _GEN_116 < _T_11 ? regWBState : 3'h2; // @[AssignmentEngine.scala 230:46 AssignmentEngine.scala 137:27 AssignmentEngine.scala 234:24]
  wire [10:0] _GEN_65 = _T_9 ? regWBCount : s1_object; // @[AssignmentEngine.scala 225:48 AssignmentEngine.scala 226:45]
  wire  _GEN_66 = _T_9 | _GEN_55; // @[AssignmentEngine.scala 225:48 AssignmentEngine.scala 227:48]
  wire [11:0] _GEN_67 = _T_9 ? 12'h0 : _bramAssignments_io_write_req_writeData_T; // @[AssignmentEngine.scala 225:48 AssignmentEngine.scala 228:50]
  wire [10:0] _GEN_69 = _T_9 ? _GEN_63 : regWBCount; // @[AssignmentEngine.scala 225:48 AssignmentEngine.scala 220:42]
  wire  _T_13 = 3'h2 == regWBState; // @[Conditional.scala 37:30]
  wire  _T_14 = io_bramStoreDump_ready & io_bramStoreDump_valid; // @[Decoupled.scala 40:37]
  wire [10:0] _GEN_71 = _GEN_116 == _T_11 ? 11'h0 : _regWBCount_T_1; // @[AssignmentEngine.scala 247:44 AssignmentEngine.scala 248:22 AssignmentEngine.scala 246:19]
  wire [2:0] _GEN_72 = _GEN_116 == _T_11 ? 3'h4 : regWBState; // @[AssignmentEngine.scala 247:44 AssignmentEngine.scala 249:22 AssignmentEngine.scala 137:27]
  wire [10:0] _GEN_73 = _T_14 ? _GEN_71 : regWBCount; // @[AssignmentEngine.scala 245:38 AssignmentEngine.scala 138:27]
  wire [2:0] _GEN_74 = _T_14 ? _GEN_72 : regWBState; // @[AssignmentEngine.scala 245:38 AssignmentEngine.scala 137:27]
  wire  _T_18 = 3'h4 == regWBState; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_75 = io_writeBackStream_finished ? 3'h0 : regWBState; // @[AssignmentEngine.scala 257:53 AssignmentEngine.scala 258:20 AssignmentEngine.scala 137:27]
  wire [2:0] _GEN_78 = _T_18 ? _GEN_75 : regWBState; // @[Conditional.scala 39:67 AssignmentEngine.scala 137:27]
  wire  _GEN_81 = _T_13 | _T_18; // @[Conditional.scala 39:67 AssignmentEngine.scala 242:32]
  wire  _GEN_83 = _T_13 & io_bramStoreDump_valid; // @[Conditional.scala 39:67 AssignmentEngine.scala 243:33 AssignmentEngine.scala 85:34]
  wire  _GEN_84 = _T_13 & io_writeBackStream_wrData_ready; // @[Conditional.scala 39:67 AssignmentEngine.scala 243:33 AssignmentEngine.scala 94:25]
  wire  _GEN_87 = _T_13 ? 1'h0 : _T_18 & io_writeBackStream_finished; // @[Conditional.scala 39:67 AssignmentEngine.scala 83:19]
  wire  _GEN_88 = _T_8 | _GEN_81; // @[Conditional.scala 39:67 AssignmentEngine.scala 219:32]
  wire [10:0] _GEN_89 = _T_8 ? _GEN_69 : io_searchResultIn_bits_winner; // @[Conditional.scala 39:67]
  wire  _GEN_90 = _T_8 | _GEN_83; // @[Conditional.scala 39:67 AssignmentEngine.scala 221:41]
  wire [10:0] _GEN_91 = _T_8 ? _io_unassignedAgents_valid_WIRE_1[11:1] : {{3'd0}, io_bramStoreDump_bits}; // @[Conditional.scala 39:67 AssignmentEngine.scala 222:40]
  wire [10:0] _GEN_94 = _T_8 ? _GEN_65 : s1_object; // @[Conditional.scala 39:67]
  wire  _GEN_95 = _T_8 ? _GEN_66 : _GEN_55; // @[Conditional.scala 39:67]
  wire [11:0] _GEN_96 = _T_8 ? _GEN_67 : _bramAssignments_io_write_req_writeData_T; // @[Conditional.scala 39:67]
  wire  _GEN_99 = _T_8 ? 1'h0 : _T_13; // @[Conditional.scala 39:67 AssignmentEngine.scala 95:24]
  wire  _GEN_100 = _T_8 ? 1'h0 : _GEN_84; // @[Conditional.scala 39:67 AssignmentEngine.scala 94:25]
  wire  _GEN_101 = _T_8 ? 1'h0 : _GEN_87; // @[Conditional.scala 39:67 AssignmentEngine.scala 83:19]
  SimpleDualPortBRAM bramAssignments ( // @[AssignmentEngine.scala 107:31]
    .clock(bramAssignments_clock),
    .io_read_req_addr(bramAssignments_io_read_req_addr),
    .io_read_rsp_readData(bramAssignments_io_read_rsp_readData),
    .io_write_req_addr(bramAssignments_io_write_req_addr),
    .io_write_req_writeData(bramAssignments_io_write_req_writeData),
    .io_write_req_writeEn(bramAssignments_io_write_req_writeEn)
  );
  assign io_searchResultIn_ready = _T & _T_1; // @[Conditional.scala 40:58 AssignmentEngine.scala 79:26]
  assign io_unassignedAgents_valid = _T & _GEN_34; // @[Conditional.scala 40:58 AssignmentEngine.scala 80:28]
  assign io_unassignedAgents_bits_agent = _GEN_13[7:0];
  assign io_requestedAgents_ready = _T & _GEN_28; // @[Conditional.scala 40:58 AssignmentEngine.scala 82:27]
  assign io_writeBackDone = _T ? 1'h0 : _GEN_101; // @[Conditional.scala 40:58 AssignmentEngine.scala 83:19]
  assign io_writeBackStream_start = _T ? 1'h0 : _GEN_88; // @[Conditional.scala 40:58 AssignmentEngine.scala 84:27]
  assign io_writeBackStream_wrData_valid = _T ? 1'h0 : _GEN_90; // @[Conditional.scala 40:58 AssignmentEngine.scala 85:34]
  assign io_writeBackStream_wrData_bits = {{53'd0}, _GEN_91}; // @[Conditional.scala 39:67 AssignmentEngine.scala 222:40]
  assign io_writeBackStream_baseAddr = regBaseAddr; // @[Conditional.scala 39:67 AssignmentEngine.scala 223:37]
  assign io_writeBackStream_byteCount = regByteCount; // @[Conditional.scala 39:67 AssignmentEngine.scala 224:38]
  assign io_bramStoreReadAddr = io_searchResultIn_bits_winner; // @[AssignmentEngine.scala 162:18 AssignmentEngine.scala 167:23]
  assign io_bramStoreWriteAddr = s1_object; // @[AssignmentEngine.scala 179:37 AssignmentEngine.scala 191:45]
  assign io_bramStoreWriteData = s1_bid; // @[AssignmentEngine.scala 179:37 AssignmentEngine.scala 194:33]
  assign io_bramStoreWriteDataValid = _T & _GEN_36; // @[Conditional.scala 40:58 AssignmentEngine.scala 112:40]
  assign io_bramStoreDump_ready = _T ? 1'h0 : _GEN_100; // @[Conditional.scala 40:58 AssignmentEngine.scala 94:25]
  assign io_bramStoreDumpStart = _T ? 1'h0 : _GEN_99; // @[Conditional.scala 40:58 AssignmentEngine.scala 95:24]
  assign io_miss = _T & _GEN_40; // @[Conditional.scala 40:58 AssignmentEngine.scala 96:10]
  assign bramAssignments_clock = clock;
  assign bramAssignments_io_read_req_addr = _T ? _GEN_61 : _GEN_89; // @[Conditional.scala 40:58]
  assign bramAssignments_io_write_req_addr = _T ? s1_object : _GEN_94; // @[Conditional.scala 40:58]
  assign bramAssignments_io_write_req_writeData = _T ? _bramAssignments_io_write_req_writeData_T : _GEN_96; // @[Conditional.scala 40:58]
  assign bramAssignments_io_write_req_writeEn = _T ? _GEN_55 : _GEN_95; // @[Conditional.scala 40:58]
  always @(posedge clock) begin
    if (reset) begin // @[AssignmentEngine.scala 118:25]
      s1_agent <= 11'h0; // @[AssignmentEngine.scala 118:25]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (~stall) begin // @[AssignmentEngine.scala 157:18]
        if (fire) begin // @[AssignmentEngine.scala 162:18]
          s1_agent <= {{3'd0}, io_requestedAgents_bits_agent}; // @[AssignmentEngine.scala 171:18]
        end
      end
    end
    if (reset) begin // @[AssignmentEngine.scala 119:26]
      s1_object <= 11'h0; // @[AssignmentEngine.scala 119:26]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (~stall) begin // @[AssignmentEngine.scala 157:18]
        if (fire) begin // @[AssignmentEngine.scala 162:18]
          s1_object <= io_searchResultIn_bits_winner; // @[AssignmentEngine.scala 169:19]
        end
      end
    end
    if (reset) begin // @[AssignmentEngine.scala 121:23]
      s1_bid <= 8'h0; // @[AssignmentEngine.scala 121:23]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (~stall) begin // @[AssignmentEngine.scala 157:18]
        if (fire) begin // @[AssignmentEngine.scala 162:18]
          s1_bid <= io_searchResultIn_bits_bid; // @[AssignmentEngine.scala 170:16]
        end
      end
    end
    if (reset) begin // @[AssignmentEngine.scala 123:25]
      s1_valid <= 1'h0; // @[AssignmentEngine.scala 123:25]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (~stall) begin // @[AssignmentEngine.scala 157:18]
        s1_valid <= fire; // @[AssignmentEngine.scala 161:16]
      end
    end
    if (reset) begin // @[AssignmentEngine.scala 137:27]
      regWBState <= 3'h0; // @[AssignmentEngine.scala 137:27]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_doWriteBack) begin // @[AssignmentEngine.scala 213:29]
        regWBState <= 3'h1; // @[AssignmentEngine.scala 214:20]
      end
    end else if (_T_8) begin // @[Conditional.scala 39:67]
      if (_T_9) begin // @[AssignmentEngine.scala 225:48]
        regWBState <= _GEN_64;
      end
    end else if (_T_13) begin // @[Conditional.scala 39:67]
      regWBState <= _GEN_74;
    end else begin
      regWBState <= _GEN_78;
    end
    if (reset) begin // @[AssignmentEngine.scala 138:27]
      regWBCount <= 11'h0; // @[AssignmentEngine.scala 138:27]
    end else if (_T) begin // @[Conditional.scala 40:58]
      regWBCount <= 11'h0; // @[AssignmentEngine.scala 212:18]
    end else if (_T_8) begin // @[Conditional.scala 39:67]
      if (_T_9) begin // @[AssignmentEngine.scala 225:48]
        regWBCount <= _GEN_62;
      end
    end else if (_T_13) begin // @[Conditional.scala 39:67]
      regWBCount <= _GEN_73;
    end
    if (reset) begin // @[AssignmentEngine.scala 142:25]
      regNCols <= 32'h0; // @[AssignmentEngine.scala 142:25]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_rfInfo_start) begin // @[AssignmentEngine.scala 150:30]
        regNCols <= io_rfInfo_nObjects; // @[AssignmentEngine.scala 152:18]
      end
    end
    if (reset) begin // @[AssignmentEngine.scala 143:28]
      regBaseAddr <= 32'h0; // @[AssignmentEngine.scala 143:28]
    end else begin
      regBaseAddr <= _GEN_43[31:0];
    end
    if (reset) begin // @[AssignmentEngine.scala 144:29]
      regByteCount <= 32'h0; // @[AssignmentEngine.scala 144:29]
    end else begin
      regByteCount <= _GEN_44[31:0];
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_45 & fire & ~(io_requestedAgents_valid | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at AssignmentEngine.scala:163 assert(io.requestedAgents.valid)\n"
            ); // @[AssignmentEngine.scala 163:15]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_45 & fire & ~(io_requestedAgents_valid | reset)) begin
          $fatal; // @[AssignmentEngine.scala 163:15]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  s1_agent = _RAND_0[10:0];
  _RAND_1 = {1{`RANDOM}};
  s1_object = _RAND_1[10:0];
  _RAND_2 = {1{`RANDOM}};
  s1_bid = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  s1_valid = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  regWBState = _RAND_4[2:0];
  _RAND_5 = {1{`RANDOM}};
  regWBCount = _RAND_5[10:0];
  _RAND_6 = {1{`RANDOM}};
  regNCols = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  regBaseAddr = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  regByteCount = _RAND_8[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SRLQueue_4(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [7:0]  io_enq_bits_els_0_reward,
  input  [10:0] io_enq_bits_els_0_idx,
  input  [7:0]  io_enq_bits_els_1_reward,
  input  [10:0] io_enq_bits_els_1_idx,
  input  [7:0]  io_enq_bits_els_2_reward,
  input  [10:0] io_enq_bits_els_2_idx,
  input  [7:0]  io_enq_bits_els_3_reward,
  input  [10:0] io_enq_bits_els_3_idx,
  input  [7:0]  io_enq_bits_els_4_reward,
  input  [10:0] io_enq_bits_els_4_idx,
  input  [7:0]  io_enq_bits_els_5_reward,
  input  [10:0] io_enq_bits_els_5_idx,
  input  [7:0]  io_enq_bits_els_6_reward,
  input  [10:0] io_enq_bits_els_6_idx,
  input  [7:0]  io_enq_bits_els_7_reward,
  input  [10:0] io_enq_bits_els_7_idx,
  input         io_enq_bits_valids_0,
  input         io_enq_bits_valids_1,
  input         io_enq_bits_valids_2,
  input         io_enq_bits_valids_3,
  input         io_enq_bits_valids_4,
  input         io_enq_bits_valids_5,
  input         io_enq_bits_valids_6,
  input         io_enq_bits_valids_7,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [7:0]  io_deq_bits_els_0_reward,
  output [10:0] io_deq_bits_els_0_idx,
  output [7:0]  io_deq_bits_els_1_reward,
  output [10:0] io_deq_bits_els_1_idx,
  output [7:0]  io_deq_bits_els_2_reward,
  output [10:0] io_deq_bits_els_2_idx,
  output [7:0]  io_deq_bits_els_3_reward,
  output [10:0] io_deq_bits_els_3_idx,
  output [7:0]  io_deq_bits_els_4_reward,
  output [10:0] io_deq_bits_els_4_idx,
  output [7:0]  io_deq_bits_els_5_reward,
  output [10:0] io_deq_bits_els_5_idx,
  output [7:0]  io_deq_bits_els_6_reward,
  output [10:0] io_deq_bits_els_6_idx,
  output [7:0]  io_deq_bits_els_7_reward,
  output [10:0] io_deq_bits_els_7_idx,
  output        io_deq_bits_last
);
  wire  Q_srl_i_v; // @[FPGAQueue.scala 70:20]
  wire [160:0] Q_srl_i_d; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_i_b; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_o_v; // @[FPGAQueue.scala 70:20]
  wire [160:0] Q_srl_o_d; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_o_b; // @[FPGAQueue.scala 70:20]
  wire [1:0] Q_srl_count; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_clock; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_reset; // @[FPGAQueue.scala 70:20]
  wire [5:0] lo_lo = {io_enq_bits_valids_4,io_enq_bits_valids_3,io_enq_bits_valids_2,io_enq_bits_valids_1,
    io_enq_bits_valids_0,io_enq_bits_last}; // @[FPGAQueue.scala 74:27]
  wire [38:0] lo = {io_enq_bits_els_1_idx,io_enq_bits_els_0_reward,io_enq_bits_els_0_idx,io_enq_bits_valids_7,
    io_enq_bits_valids_6,io_enq_bits_valids_5,lo_lo}; // @[FPGAQueue.scala 74:27]
  wire [56:0] hi_lo = {io_enq_bits_els_4_idx,io_enq_bits_els_3_reward,io_enq_bits_els_3_idx,io_enq_bits_els_2_reward,
    io_enq_bits_els_2_idx,io_enq_bits_els_1_reward}; // @[FPGAQueue.scala 74:27]
  wire [121:0] hi = {io_enq_bits_els_7_reward,io_enq_bits_els_7_idx,io_enq_bits_els_6_reward,io_enq_bits_els_6_idx,
    io_enq_bits_els_5_reward,io_enq_bits_els_5_idx,io_enq_bits_els_4_reward,hi_lo}; // @[FPGAQueue.scala 74:27]
  wire [160:0] _io_deq_bits_WIRE_1 = Q_srl_o_d;
  Q_srl #(.depth(2), .width(161)) Q_srl ( // @[FPGAQueue.scala 70:20]
    .i_v(Q_srl_i_v),
    .i_d(Q_srl_i_d),
    .i_b(Q_srl_i_b),
    .o_v(Q_srl_o_v),
    .o_d(Q_srl_o_d),
    .o_b(Q_srl_o_b),
    .count(Q_srl_count),
    .clock(Q_srl_clock),
    .reset(Q_srl_reset)
  );
  assign io_enq_ready = ~Q_srl_i_b; // @[FPGAQueue.scala 83:19]
  assign io_deq_valid = Q_srl_o_v; // @[FPGAQueue.scala 78:16]
  assign io_deq_bits_els_0_reward = _io_deq_bits_WIRE_1[27:20]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_0_idx = _io_deq_bits_WIRE_1[19:9]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_1_reward = _io_deq_bits_WIRE_1[46:39]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_1_idx = _io_deq_bits_WIRE_1[38:28]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_2_reward = _io_deq_bits_WIRE_1[65:58]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_2_idx = _io_deq_bits_WIRE_1[57:47]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_3_reward = _io_deq_bits_WIRE_1[84:77]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_3_idx = _io_deq_bits_WIRE_1[76:66]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_4_reward = _io_deq_bits_WIRE_1[103:96]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_4_idx = _io_deq_bits_WIRE_1[95:85]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_5_reward = _io_deq_bits_WIRE_1[122:115]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_5_idx = _io_deq_bits_WIRE_1[114:104]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_6_reward = _io_deq_bits_WIRE_1[141:134]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_6_idx = _io_deq_bits_WIRE_1[133:123]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_7_reward = _io_deq_bits_WIRE_1[160:153]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_els_7_idx = _io_deq_bits_WIRE_1[152:142]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_last = _io_deq_bits_WIRE_1[0]; // @[FPGAQueue.scala 79:35]
  assign Q_srl_i_v = io_enq_valid; // @[FPGAQueue.scala 73:12]
  assign Q_srl_i_d = {hi,lo}; // @[FPGAQueue.scala 74:27]
  assign Q_srl_o_b = ~io_deq_ready; // @[FPGAQueue.scala 82:15]
  assign Q_srl_clock = clock; // @[FPGAQueue.scala 75:14]
  assign Q_srl_reset = reset; // @[FPGAQueue.scala 76:14]
endmodule
module FPGAQueue_6(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [7:0]  io_enq_bits_els_0_reward,
  input  [10:0] io_enq_bits_els_0_idx,
  input  [7:0]  io_enq_bits_els_1_reward,
  input  [10:0] io_enq_bits_els_1_idx,
  input  [7:0]  io_enq_bits_els_2_reward,
  input  [10:0] io_enq_bits_els_2_idx,
  input  [7:0]  io_enq_bits_els_3_reward,
  input  [10:0] io_enq_bits_els_3_idx,
  input  [7:0]  io_enq_bits_els_4_reward,
  input  [10:0] io_enq_bits_els_4_idx,
  input  [7:0]  io_enq_bits_els_5_reward,
  input  [10:0] io_enq_bits_els_5_idx,
  input  [7:0]  io_enq_bits_els_6_reward,
  input  [10:0] io_enq_bits_els_6_idx,
  input  [7:0]  io_enq_bits_els_7_reward,
  input  [10:0] io_enq_bits_els_7_idx,
  input         io_enq_bits_valids_0,
  input         io_enq_bits_valids_1,
  input         io_enq_bits_valids_2,
  input         io_enq_bits_valids_3,
  input         io_enq_bits_valids_4,
  input         io_enq_bits_valids_5,
  input         io_enq_bits_valids_6,
  input         io_enq_bits_valids_7,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [7:0]  io_deq_bits_els_0_reward,
  output [10:0] io_deq_bits_els_0_idx,
  output [7:0]  io_deq_bits_els_1_reward,
  output [10:0] io_deq_bits_els_1_idx,
  output [7:0]  io_deq_bits_els_2_reward,
  output [10:0] io_deq_bits_els_2_idx,
  output [7:0]  io_deq_bits_els_3_reward,
  output [10:0] io_deq_bits_els_3_idx,
  output [7:0]  io_deq_bits_els_4_reward,
  output [10:0] io_deq_bits_els_4_idx,
  output [7:0]  io_deq_bits_els_5_reward,
  output [10:0] io_deq_bits_els_5_idx,
  output [7:0]  io_deq_bits_els_6_reward,
  output [10:0] io_deq_bits_els_6_idx,
  output [7:0]  io_deq_bits_els_7_reward,
  output [10:0] io_deq_bits_els_7_idx,
  output        io_deq_bits_last
);
  wire  SRLQueue_clock; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_reset; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_ready; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_valid; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_enq_bits_els_0_reward; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_els_0_idx; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_enq_bits_els_1_reward; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_els_1_idx; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_enq_bits_els_2_reward; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_els_2_idx; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_enq_bits_els_3_reward; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_els_3_idx; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_enq_bits_els_4_reward; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_els_4_idx; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_enq_bits_els_5_reward; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_els_5_idx; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_enq_bits_els_6_reward; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_els_6_idx; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_enq_bits_els_7_reward; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_enq_bits_els_7_idx; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_bits_valids_0; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_bits_valids_1; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_bits_valids_2; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_bits_valids_3; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_bits_valids_4; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_bits_valids_5; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_bits_valids_6; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_bits_valids_7; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_bits_last; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_deq_ready; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_deq_valid; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_els_0_reward; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_els_0_idx; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_els_1_reward; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_els_1_idx; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_els_2_reward; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_els_2_idx; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_els_3_reward; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_els_3_idx; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_els_4_reward; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_els_4_idx; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_els_5_reward; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_els_5_idx; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_els_6_reward; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_els_6_idx; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_els_7_reward; // @[FPGAQueue.scala 177:26]
  wire [10:0] SRLQueue_io_deq_bits_els_7_idx; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_deq_bits_last; // @[FPGAQueue.scala 177:26]
  SRLQueue_4 SRLQueue ( // @[FPGAQueue.scala 177:26]
    .clock(SRLQueue_clock),
    .reset(SRLQueue_reset),
    .io_enq_ready(SRLQueue_io_enq_ready),
    .io_enq_valid(SRLQueue_io_enq_valid),
    .io_enq_bits_els_0_reward(SRLQueue_io_enq_bits_els_0_reward),
    .io_enq_bits_els_0_idx(SRLQueue_io_enq_bits_els_0_idx),
    .io_enq_bits_els_1_reward(SRLQueue_io_enq_bits_els_1_reward),
    .io_enq_bits_els_1_idx(SRLQueue_io_enq_bits_els_1_idx),
    .io_enq_bits_els_2_reward(SRLQueue_io_enq_bits_els_2_reward),
    .io_enq_bits_els_2_idx(SRLQueue_io_enq_bits_els_2_idx),
    .io_enq_bits_els_3_reward(SRLQueue_io_enq_bits_els_3_reward),
    .io_enq_bits_els_3_idx(SRLQueue_io_enq_bits_els_3_idx),
    .io_enq_bits_els_4_reward(SRLQueue_io_enq_bits_els_4_reward),
    .io_enq_bits_els_4_idx(SRLQueue_io_enq_bits_els_4_idx),
    .io_enq_bits_els_5_reward(SRLQueue_io_enq_bits_els_5_reward),
    .io_enq_bits_els_5_idx(SRLQueue_io_enq_bits_els_5_idx),
    .io_enq_bits_els_6_reward(SRLQueue_io_enq_bits_els_6_reward),
    .io_enq_bits_els_6_idx(SRLQueue_io_enq_bits_els_6_idx),
    .io_enq_bits_els_7_reward(SRLQueue_io_enq_bits_els_7_reward),
    .io_enq_bits_els_7_idx(SRLQueue_io_enq_bits_els_7_idx),
    .io_enq_bits_valids_0(SRLQueue_io_enq_bits_valids_0),
    .io_enq_bits_valids_1(SRLQueue_io_enq_bits_valids_1),
    .io_enq_bits_valids_2(SRLQueue_io_enq_bits_valids_2),
    .io_enq_bits_valids_3(SRLQueue_io_enq_bits_valids_3),
    .io_enq_bits_valids_4(SRLQueue_io_enq_bits_valids_4),
    .io_enq_bits_valids_5(SRLQueue_io_enq_bits_valids_5),
    .io_enq_bits_valids_6(SRLQueue_io_enq_bits_valids_6),
    .io_enq_bits_valids_7(SRLQueue_io_enq_bits_valids_7),
    .io_enq_bits_last(SRLQueue_io_enq_bits_last),
    .io_deq_ready(SRLQueue_io_deq_ready),
    .io_deq_valid(SRLQueue_io_deq_valid),
    .io_deq_bits_els_0_reward(SRLQueue_io_deq_bits_els_0_reward),
    .io_deq_bits_els_0_idx(SRLQueue_io_deq_bits_els_0_idx),
    .io_deq_bits_els_1_reward(SRLQueue_io_deq_bits_els_1_reward),
    .io_deq_bits_els_1_idx(SRLQueue_io_deq_bits_els_1_idx),
    .io_deq_bits_els_2_reward(SRLQueue_io_deq_bits_els_2_reward),
    .io_deq_bits_els_2_idx(SRLQueue_io_deq_bits_els_2_idx),
    .io_deq_bits_els_3_reward(SRLQueue_io_deq_bits_els_3_reward),
    .io_deq_bits_els_3_idx(SRLQueue_io_deq_bits_els_3_idx),
    .io_deq_bits_els_4_reward(SRLQueue_io_deq_bits_els_4_reward),
    .io_deq_bits_els_4_idx(SRLQueue_io_deq_bits_els_4_idx),
    .io_deq_bits_els_5_reward(SRLQueue_io_deq_bits_els_5_reward),
    .io_deq_bits_els_5_idx(SRLQueue_io_deq_bits_els_5_idx),
    .io_deq_bits_els_6_reward(SRLQueue_io_deq_bits_els_6_reward),
    .io_deq_bits_els_6_idx(SRLQueue_io_deq_bits_els_6_idx),
    .io_deq_bits_els_7_reward(SRLQueue_io_deq_bits_els_7_reward),
    .io_deq_bits_els_7_idx(SRLQueue_io_deq_bits_els_7_idx),
    .io_deq_bits_last(SRLQueue_io_deq_bits_last)
  );
  assign io_enq_ready = SRLQueue_io_enq_ready; // @[FPGAQueue.scala 179:14]
  assign io_deq_valid = SRLQueue_io_deq_valid; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_0_reward = SRLQueue_io_deq_bits_els_0_reward; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_0_idx = SRLQueue_io_deq_bits_els_0_idx; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_1_reward = SRLQueue_io_deq_bits_els_1_reward; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_1_idx = SRLQueue_io_deq_bits_els_1_idx; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_2_reward = SRLQueue_io_deq_bits_els_2_reward; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_2_idx = SRLQueue_io_deq_bits_els_2_idx; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_3_reward = SRLQueue_io_deq_bits_els_3_reward; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_3_idx = SRLQueue_io_deq_bits_els_3_idx; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_4_reward = SRLQueue_io_deq_bits_els_4_reward; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_4_idx = SRLQueue_io_deq_bits_els_4_idx; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_5_reward = SRLQueue_io_deq_bits_els_5_reward; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_5_idx = SRLQueue_io_deq_bits_els_5_idx; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_6_reward = SRLQueue_io_deq_bits_els_6_reward; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_6_idx = SRLQueue_io_deq_bits_els_6_idx; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_7_reward = SRLQueue_io_deq_bits_els_7_reward; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_els_7_idx = SRLQueue_io_deq_bits_els_7_idx; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_last = SRLQueue_io_deq_bits_last; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_clock = clock;
  assign SRLQueue_reset = reset;
  assign SRLQueue_io_enq_valid = io_enq_valid; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_0_reward = io_enq_bits_els_0_reward; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_0_idx = io_enq_bits_els_0_idx; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_1_reward = io_enq_bits_els_1_reward; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_1_idx = io_enq_bits_els_1_idx; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_2_reward = io_enq_bits_els_2_reward; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_2_idx = io_enq_bits_els_2_idx; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_3_reward = io_enq_bits_els_3_reward; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_3_idx = io_enq_bits_els_3_idx; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_4_reward = io_enq_bits_els_4_reward; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_4_idx = io_enq_bits_els_4_idx; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_5_reward = io_enq_bits_els_5_reward; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_5_idx = io_enq_bits_els_5_idx; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_6_reward = io_enq_bits_els_6_reward; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_6_idx = io_enq_bits_els_6_idx; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_7_reward = io_enq_bits_els_7_reward; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_els_7_idx = io_enq_bits_els_7_idx; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_valids_0 = io_enq_bits_valids_0; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_valids_1 = io_enq_bits_valids_1; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_valids_2 = io_enq_bits_valids_2; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_valids_3 = io_enq_bits_valids_3; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_valids_4 = io_enq_bits_valids_4; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_valids_5 = io_enq_bits_valids_5; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_valids_6 = io_enq_bits_valids_6; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_valids_7 = io_enq_bits_valids_7; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_last = io_enq_bits_last; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_deq_ready = io_deq_ready; // @[FPGAQueue.scala 179:14]
endmodule
module DataMux(
  input         clock,
  input         reset,
  output        io_bramWordIn_ready,
  input         io_bramWordIn_valid,
  input  [7:0]  io_bramWordIn_bits_els_0_reward,
  input  [10:0] io_bramWordIn_bits_els_0_idx,
  input  [7:0]  io_bramWordIn_bits_els_1_reward,
  input  [10:0] io_bramWordIn_bits_els_1_idx,
  input  [7:0]  io_bramWordIn_bits_els_2_reward,
  input  [10:0] io_bramWordIn_bits_els_2_idx,
  input  [7:0]  io_bramWordIn_bits_els_3_reward,
  input  [10:0] io_bramWordIn_bits_els_3_idx,
  input  [7:0]  io_bramWordIn_bits_els_4_reward,
  input  [10:0] io_bramWordIn_bits_els_4_idx,
  input  [7:0]  io_bramWordIn_bits_els_5_reward,
  input  [10:0] io_bramWordIn_bits_els_5_idx,
  input  [7:0]  io_bramWordIn_bits_els_6_reward,
  input  [10:0] io_bramWordIn_bits_els_6_idx,
  input  [7:0]  io_bramWordIn_bits_els_7_reward,
  input  [10:0] io_bramWordIn_bits_els_7_idx,
  input         io_bramWordIn_bits_valids_0,
  input         io_bramWordIn_bits_valids_1,
  input         io_bramWordIn_bits_valids_2,
  input         io_bramWordIn_bits_valids_3,
  input         io_bramWordIn_bits_valids_4,
  input         io_bramWordIn_bits_valids_5,
  input         io_bramWordIn_bits_valids_6,
  input         io_bramWordIn_bits_valids_7,
  input         io_bramWordIn_bits_last,
  input         io_peOut_0_ready,
  output        io_peOut_0_valid,
  output [7:0]  io_peOut_0_bits_reward,
  output [10:0] io_peOut_0_bits_idx,
  output        io_peOut_0_bits_last,
  output        io_peOut_1_valid,
  output [7:0]  io_peOut_1_bits_reward,
  output [10:0] io_peOut_1_bits_idx,
  output        io_peOut_1_bits_last,
  output        io_peOut_2_valid,
  output [7:0]  io_peOut_2_bits_reward,
  output [10:0] io_peOut_2_bits_idx,
  output        io_peOut_2_bits_last,
  output        io_peOut_3_valid,
  output [7:0]  io_peOut_3_bits_reward,
  output [10:0] io_peOut_3_bits_idx,
  output        io_peOut_3_bits_last,
  output        io_peOut_4_valid,
  output [7:0]  io_peOut_4_bits_reward,
  output [10:0] io_peOut_4_bits_idx,
  output        io_peOut_4_bits_last,
  output        io_peOut_5_valid,
  output [7:0]  io_peOut_5_bits_reward,
  output [10:0] io_peOut_5_bits_idx,
  output        io_peOut_5_bits_last,
  output        io_peOut_6_valid,
  output [7:0]  io_peOut_6_bits_reward,
  output [10:0] io_peOut_6_bits_idx,
  output        io_peOut_6_bits_last,
  output        io_peOut_7_valid,
  output [7:0]  io_peOut_7_bits_reward,
  output [10:0] io_peOut_7_bits_idx,
  output        io_peOut_7_bits_last
);
  wire  qData_clock; // @[DataMux.scala 49:21]
  wire  qData_reset; // @[DataMux.scala 49:21]
  wire  qData_io_enq_ready; // @[DataMux.scala 49:21]
  wire  qData_io_enq_valid; // @[DataMux.scala 49:21]
  wire [7:0] qData_io_enq_bits_els_0_reward; // @[DataMux.scala 49:21]
  wire [10:0] qData_io_enq_bits_els_0_idx; // @[DataMux.scala 49:21]
  wire [7:0] qData_io_enq_bits_els_1_reward; // @[DataMux.scala 49:21]
  wire [10:0] qData_io_enq_bits_els_1_idx; // @[DataMux.scala 49:21]
  wire [7:0] qData_io_enq_bits_els_2_reward; // @[DataMux.scala 49:21]
  wire [10:0] qData_io_enq_bits_els_2_idx; // @[DataMux.scala 49:21]
  wire [7:0] qData_io_enq_bits_els_3_reward; // @[DataMux.scala 49:21]
  wire [10:0] qData_io_enq_bits_els_3_idx; // @[DataMux.scala 49:21]
  wire [7:0] qData_io_enq_bits_els_4_reward; // @[DataMux.scala 49:21]
  wire [10:0] qData_io_enq_bits_els_4_idx; // @[DataMux.scala 49:21]
  wire [7:0] qData_io_enq_bits_els_5_reward; // @[DataMux.scala 49:21]
  wire [10:0] qData_io_enq_bits_els_5_idx; // @[DataMux.scala 49:21]
  wire [7:0] qData_io_enq_bits_els_6_reward; // @[DataMux.scala 49:21]
  wire [10:0] qData_io_enq_bits_els_6_idx; // @[DataMux.scala 49:21]
  wire [7:0] qData_io_enq_bits_els_7_reward; // @[DataMux.scala 49:21]
  wire [10:0] qData_io_enq_bits_els_7_idx; // @[DataMux.scala 49:21]
  wire  qData_io_enq_bits_valids_0; // @[DataMux.scala 49:21]
  wire  qData_io_enq_bits_valids_1; // @[DataMux.scala 49:21]
  wire  qData_io_enq_bits_valids_2; // @[DataMux.scala 49:21]
  wire  qData_io_enq_bits_valids_3; // @[DataMux.scala 49:21]
  wire  qData_io_enq_bits_valids_4; // @[DataMux.scala 49:21]
  wire  qData_io_enq_bits_valids_5; // @[DataMux.scala 49:21]
  wire  qData_io_enq_bits_valids_6; // @[DataMux.scala 49:21]
  wire  qData_io_enq_bits_valids_7; // @[DataMux.scala 49:21]
  wire  qData_io_enq_bits_last; // @[DataMux.scala 49:21]
  wire  qData_io_deq_ready; // @[DataMux.scala 49:21]
  wire  qData_io_deq_valid; // @[DataMux.scala 49:21]
  wire [7:0] qData_io_deq_bits_els_0_reward; // @[DataMux.scala 49:21]
  wire [10:0] qData_io_deq_bits_els_0_idx; // @[DataMux.scala 49:21]
  wire [7:0] qData_io_deq_bits_els_1_reward; // @[DataMux.scala 49:21]
  wire [10:0] qData_io_deq_bits_els_1_idx; // @[DataMux.scala 49:21]
  wire [7:0] qData_io_deq_bits_els_2_reward; // @[DataMux.scala 49:21]
  wire [10:0] qData_io_deq_bits_els_2_idx; // @[DataMux.scala 49:21]
  wire [7:0] qData_io_deq_bits_els_3_reward; // @[DataMux.scala 49:21]
  wire [10:0] qData_io_deq_bits_els_3_idx; // @[DataMux.scala 49:21]
  wire [7:0] qData_io_deq_bits_els_4_reward; // @[DataMux.scala 49:21]
  wire [10:0] qData_io_deq_bits_els_4_idx; // @[DataMux.scala 49:21]
  wire [7:0] qData_io_deq_bits_els_5_reward; // @[DataMux.scala 49:21]
  wire [10:0] qData_io_deq_bits_els_5_idx; // @[DataMux.scala 49:21]
  wire [7:0] qData_io_deq_bits_els_6_reward; // @[DataMux.scala 49:21]
  wire [10:0] qData_io_deq_bits_els_6_idx; // @[DataMux.scala 49:21]
  wire [7:0] qData_io_deq_bits_els_7_reward; // @[DataMux.scala 49:21]
  wire [10:0] qData_io_deq_bits_els_7_idx; // @[DataMux.scala 49:21]
  wire  qData_io_deq_bits_last; // @[DataMux.scala 49:21]
  FPGAQueue_6 qData ( // @[DataMux.scala 49:21]
    .clock(qData_clock),
    .reset(qData_reset),
    .io_enq_ready(qData_io_enq_ready),
    .io_enq_valid(qData_io_enq_valid),
    .io_enq_bits_els_0_reward(qData_io_enq_bits_els_0_reward),
    .io_enq_bits_els_0_idx(qData_io_enq_bits_els_0_idx),
    .io_enq_bits_els_1_reward(qData_io_enq_bits_els_1_reward),
    .io_enq_bits_els_1_idx(qData_io_enq_bits_els_1_idx),
    .io_enq_bits_els_2_reward(qData_io_enq_bits_els_2_reward),
    .io_enq_bits_els_2_idx(qData_io_enq_bits_els_2_idx),
    .io_enq_bits_els_3_reward(qData_io_enq_bits_els_3_reward),
    .io_enq_bits_els_3_idx(qData_io_enq_bits_els_3_idx),
    .io_enq_bits_els_4_reward(qData_io_enq_bits_els_4_reward),
    .io_enq_bits_els_4_idx(qData_io_enq_bits_els_4_idx),
    .io_enq_bits_els_5_reward(qData_io_enq_bits_els_5_reward),
    .io_enq_bits_els_5_idx(qData_io_enq_bits_els_5_idx),
    .io_enq_bits_els_6_reward(qData_io_enq_bits_els_6_reward),
    .io_enq_bits_els_6_idx(qData_io_enq_bits_els_6_idx),
    .io_enq_bits_els_7_reward(qData_io_enq_bits_els_7_reward),
    .io_enq_bits_els_7_idx(qData_io_enq_bits_els_7_idx),
    .io_enq_bits_valids_0(qData_io_enq_bits_valids_0),
    .io_enq_bits_valids_1(qData_io_enq_bits_valids_1),
    .io_enq_bits_valids_2(qData_io_enq_bits_valids_2),
    .io_enq_bits_valids_3(qData_io_enq_bits_valids_3),
    .io_enq_bits_valids_4(qData_io_enq_bits_valids_4),
    .io_enq_bits_valids_5(qData_io_enq_bits_valids_5),
    .io_enq_bits_valids_6(qData_io_enq_bits_valids_6),
    .io_enq_bits_valids_7(qData_io_enq_bits_valids_7),
    .io_enq_bits_last(qData_io_enq_bits_last),
    .io_deq_ready(qData_io_deq_ready),
    .io_deq_valid(qData_io_deq_valid),
    .io_deq_bits_els_0_reward(qData_io_deq_bits_els_0_reward),
    .io_deq_bits_els_0_idx(qData_io_deq_bits_els_0_idx),
    .io_deq_bits_els_1_reward(qData_io_deq_bits_els_1_reward),
    .io_deq_bits_els_1_idx(qData_io_deq_bits_els_1_idx),
    .io_deq_bits_els_2_reward(qData_io_deq_bits_els_2_reward),
    .io_deq_bits_els_2_idx(qData_io_deq_bits_els_2_idx),
    .io_deq_bits_els_3_reward(qData_io_deq_bits_els_3_reward),
    .io_deq_bits_els_3_idx(qData_io_deq_bits_els_3_idx),
    .io_deq_bits_els_4_reward(qData_io_deq_bits_els_4_reward),
    .io_deq_bits_els_4_idx(qData_io_deq_bits_els_4_idx),
    .io_deq_bits_els_5_reward(qData_io_deq_bits_els_5_reward),
    .io_deq_bits_els_5_idx(qData_io_deq_bits_els_5_idx),
    .io_deq_bits_els_6_reward(qData_io_deq_bits_els_6_reward),
    .io_deq_bits_els_6_idx(qData_io_deq_bits_els_6_idx),
    .io_deq_bits_els_7_reward(qData_io_deq_bits_els_7_reward),
    .io_deq_bits_els_7_idx(qData_io_deq_bits_els_7_idx),
    .io_deq_bits_last(qData_io_deq_bits_last)
  );
  assign io_bramWordIn_ready = qData_io_enq_ready; // @[DataMux.scala 50:17]
  assign io_peOut_0_valid = qData_io_deq_valid; // @[DataMux.scala 58:16]
  assign io_peOut_0_bits_reward = qData_io_deq_bits_els_0_reward; // @[DataMux.scala 59:22]
  assign io_peOut_0_bits_idx = qData_io_deq_bits_els_0_idx; // @[DataMux.scala 60:19]
  assign io_peOut_0_bits_last = qData_io_deq_bits_last; // @[DataMux.scala 61:20]
  assign io_peOut_1_valid = qData_io_deq_valid; // @[DataMux.scala 58:16]
  assign io_peOut_1_bits_reward = qData_io_deq_bits_els_1_reward; // @[DataMux.scala 59:22]
  assign io_peOut_1_bits_idx = qData_io_deq_bits_els_1_idx; // @[DataMux.scala 60:19]
  assign io_peOut_1_bits_last = qData_io_deq_bits_last; // @[DataMux.scala 61:20]
  assign io_peOut_2_valid = qData_io_deq_valid; // @[DataMux.scala 58:16]
  assign io_peOut_2_bits_reward = qData_io_deq_bits_els_2_reward; // @[DataMux.scala 59:22]
  assign io_peOut_2_bits_idx = qData_io_deq_bits_els_2_idx; // @[DataMux.scala 60:19]
  assign io_peOut_2_bits_last = qData_io_deq_bits_last; // @[DataMux.scala 61:20]
  assign io_peOut_3_valid = qData_io_deq_valid; // @[DataMux.scala 58:16]
  assign io_peOut_3_bits_reward = qData_io_deq_bits_els_3_reward; // @[DataMux.scala 59:22]
  assign io_peOut_3_bits_idx = qData_io_deq_bits_els_3_idx; // @[DataMux.scala 60:19]
  assign io_peOut_3_bits_last = qData_io_deq_bits_last; // @[DataMux.scala 61:20]
  assign io_peOut_4_valid = qData_io_deq_valid; // @[DataMux.scala 58:16]
  assign io_peOut_4_bits_reward = qData_io_deq_bits_els_4_reward; // @[DataMux.scala 59:22]
  assign io_peOut_4_bits_idx = qData_io_deq_bits_els_4_idx; // @[DataMux.scala 60:19]
  assign io_peOut_4_bits_last = qData_io_deq_bits_last; // @[DataMux.scala 61:20]
  assign io_peOut_5_valid = qData_io_deq_valid; // @[DataMux.scala 58:16]
  assign io_peOut_5_bits_reward = qData_io_deq_bits_els_5_reward; // @[DataMux.scala 59:22]
  assign io_peOut_5_bits_idx = qData_io_deq_bits_els_5_idx; // @[DataMux.scala 60:19]
  assign io_peOut_5_bits_last = qData_io_deq_bits_last; // @[DataMux.scala 61:20]
  assign io_peOut_6_valid = qData_io_deq_valid; // @[DataMux.scala 58:16]
  assign io_peOut_6_bits_reward = qData_io_deq_bits_els_6_reward; // @[DataMux.scala 59:22]
  assign io_peOut_6_bits_idx = qData_io_deq_bits_els_6_idx; // @[DataMux.scala 60:19]
  assign io_peOut_6_bits_last = qData_io_deq_bits_last; // @[DataMux.scala 61:20]
  assign io_peOut_7_valid = qData_io_deq_valid; // @[DataMux.scala 58:16]
  assign io_peOut_7_bits_reward = qData_io_deq_bits_els_7_reward; // @[DataMux.scala 59:22]
  assign io_peOut_7_bits_idx = qData_io_deq_bits_els_7_idx; // @[DataMux.scala 60:19]
  assign io_peOut_7_bits_last = qData_io_deq_bits_last; // @[DataMux.scala 61:20]
  assign qData_clock = clock;
  assign qData_reset = reset;
  assign qData_io_enq_valid = io_bramWordIn_valid; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_els_0_reward = io_bramWordIn_bits_els_0_reward; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_els_0_idx = io_bramWordIn_bits_els_0_idx; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_els_1_reward = io_bramWordIn_bits_els_1_reward; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_els_1_idx = io_bramWordIn_bits_els_1_idx; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_els_2_reward = io_bramWordIn_bits_els_2_reward; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_els_2_idx = io_bramWordIn_bits_els_2_idx; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_els_3_reward = io_bramWordIn_bits_els_3_reward; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_els_3_idx = io_bramWordIn_bits_els_3_idx; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_els_4_reward = io_bramWordIn_bits_els_4_reward; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_els_4_idx = io_bramWordIn_bits_els_4_idx; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_els_5_reward = io_bramWordIn_bits_els_5_reward; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_els_5_idx = io_bramWordIn_bits_els_5_idx; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_els_6_reward = io_bramWordIn_bits_els_6_reward; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_els_6_idx = io_bramWordIn_bits_els_6_idx; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_els_7_reward = io_bramWordIn_bits_els_7_reward; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_els_7_idx = io_bramWordIn_bits_els_7_idx; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_valids_0 = io_bramWordIn_bits_valids_0; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_valids_1 = io_bramWordIn_bits_valids_1; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_valids_2 = io_bramWordIn_bits_valids_2; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_valids_3 = io_bramWordIn_bits_valids_3; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_valids_4 = io_bramWordIn_bits_valids_4; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_valids_5 = io_bramWordIn_bits_valids_5; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_valids_6 = io_bramWordIn_bits_valids_6; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_valids_7 = io_bramWordIn_bits_valids_7; // @[DataMux.scala 50:17]
  assign qData_io_enq_bits_last = io_bramWordIn_bits_last; // @[DataMux.scala 50:17]
  assign qData_io_deq_ready = io_peOut_0_ready; // @[DataMux.scala 53:22]
endmodule
module SimpleDualPortBRAM_1(
  input          clock,
  input  [10:0]  io_read_req_addr,
  output [159:0] io_read_rsp_readData,
  input  [10:0]  io_write_req_addr,
  input  [159:0] io_write_req_writeData,
  input          io_write_req_writeEn
);
`ifdef RANDOMIZE_MEM_INIT
  reg [159:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [159:0] mem [0:2047]; // @[SimpleDualPortBRAM.scala 20:24]
  wire [159:0] mem_rdPort_data; // @[SimpleDualPortBRAM.scala 20:24]
  wire [10:0] mem_rdPort_addr; // @[SimpleDualPortBRAM.scala 20:24]
  wire [159:0] mem_MPORT_data; // @[SimpleDualPortBRAM.scala 20:24]
  wire [10:0] mem_MPORT_addr; // @[SimpleDualPortBRAM.scala 20:24]
  wire  mem_MPORT_mask; // @[SimpleDualPortBRAM.scala 20:24]
  wire  mem_MPORT_en; // @[SimpleDualPortBRAM.scala 20:24]
  reg [10:0] mem_rdPort_addr_pipe_0;
  assign mem_rdPort_addr = mem_rdPort_addr_pipe_0;
  assign mem_rdPort_data = mem[mem_rdPort_addr]; // @[SimpleDualPortBRAM.scala 20:24]
  assign mem_MPORT_data = io_write_req_writeData;
  assign mem_MPORT_addr = io_write_req_addr;
  assign mem_MPORT_mask = 1'h1;
  assign mem_MPORT_en = io_write_req_writeEn;
  assign io_read_rsp_readData = mem_rdPort_data; // @[SimpleDualPortBRAM.scala 24:24]
  always @(posedge clock) begin
    if(mem_MPORT_en & mem_MPORT_mask) begin
      mem[mem_MPORT_addr] <= mem_MPORT_data; // @[SimpleDualPortBRAM.scala 20:24]
    end
    mem_rdPort_addr_pipe_0 <= io_read_req_addr;
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {5{`RANDOM}};
  for (initvar = 0; initvar < 2048; initvar = initvar+1)
    mem[initvar] = _RAND_0[159:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_rdPort_addr_pipe_0 = _RAND_1[10:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SimpleDualPortBRAM_2(
  input         clock,
  input  [10:0] io_read_req_addr,
  output [21:0] io_read_rsp_readData,
  input  [10:0] io_write_req_addr,
  input  [21:0] io_write_req_writeData,
  input         io_write_req_writeEn
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [21:0] mem [0:2047]; // @[SimpleDualPortBRAM.scala 20:24]
  wire [21:0] mem_rdPort_data; // @[SimpleDualPortBRAM.scala 20:24]
  wire [10:0] mem_rdPort_addr; // @[SimpleDualPortBRAM.scala 20:24]
  wire [21:0] mem_MPORT_data; // @[SimpleDualPortBRAM.scala 20:24]
  wire [10:0] mem_MPORT_addr; // @[SimpleDualPortBRAM.scala 20:24]
  wire  mem_MPORT_mask; // @[SimpleDualPortBRAM.scala 20:24]
  wire  mem_MPORT_en; // @[SimpleDualPortBRAM.scala 20:24]
  reg [10:0] mem_rdPort_addr_pipe_0;
  assign mem_rdPort_addr = mem_rdPort_addr_pipe_0;
  assign mem_rdPort_data = mem[mem_rdPort_addr]; // @[SimpleDualPortBRAM.scala 20:24]
  assign mem_MPORT_data = io_write_req_writeData;
  assign mem_MPORT_addr = io_write_req_addr;
  assign mem_MPORT_mask = 1'h1;
  assign mem_MPORT_en = io_write_req_writeEn;
  assign io_read_rsp_readData = mem_rdPort_data; // @[SimpleDualPortBRAM.scala 24:24]
  always @(posedge clock) begin
    if(mem_MPORT_en & mem_MPORT_mask) begin
      mem[mem_MPORT_addr] <= mem_MPORT_data; // @[SimpleDualPortBRAM.scala 20:24]
    end
    mem_rdPort_addr_pipe_0 <= io_read_req_addr;
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2048; initvar = initvar+1)
    mem[initvar] = _RAND_0[21:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_rdPort_addr_pipe_0 = _RAND_1[10:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SimpleDualPortBRAM_3(
  input         clock,
  input  [10:0] io_read_req_addr,
  output [7:0]  io_read_rsp_readData,
  input  [10:0] io_write_req_addr,
  input  [7:0]  io_write_req_writeData,
  input         io_write_req_writeEn
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] mem [0:2047]; // @[SimpleDualPortBRAM.scala 20:24]
  wire [7:0] mem_rdPort_data; // @[SimpleDualPortBRAM.scala 20:24]
  wire [10:0] mem_rdPort_addr; // @[SimpleDualPortBRAM.scala 20:24]
  wire [7:0] mem_MPORT_data; // @[SimpleDualPortBRAM.scala 20:24]
  wire [10:0] mem_MPORT_addr; // @[SimpleDualPortBRAM.scala 20:24]
  wire  mem_MPORT_mask; // @[SimpleDualPortBRAM.scala 20:24]
  wire  mem_MPORT_en; // @[SimpleDualPortBRAM.scala 20:24]
  reg [10:0] mem_rdPort_addr_pipe_0;
  assign mem_rdPort_addr = mem_rdPort_addr_pipe_0;
  assign mem_rdPort_data = mem[mem_rdPort_addr]; // @[SimpleDualPortBRAM.scala 20:24]
  assign mem_MPORT_data = io_write_req_writeData;
  assign mem_MPORT_addr = io_write_req_addr;
  assign mem_MPORT_mask = 1'h1;
  assign mem_MPORT_en = io_write_req_writeEn;
  assign io_read_rsp_readData = mem_rdPort_data; // @[SimpleDualPortBRAM.scala 24:24]
  always @(posedge clock) begin
    if(mem_MPORT_en & mem_MPORT_mask) begin
      mem[mem_MPORT_addr] <= mem_MPORT_data; // @[SimpleDualPortBRAM.scala 20:24]
    end
    mem_rdPort_addr_pipe_0 <= io_read_req_addr;
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 2048; initvar = initvar+1)
    mem[initvar] = _RAND_0[7:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_rdPort_addr_pipe_0 = _RAND_1[10:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module BramStore(
  input         clock,
  input         reset,
  input  [10:0] io_peReadReq_0,
  input  [10:0] io_peReadReq_1,
  input  [10:0] io_peReadReq_2,
  input  [10:0] io_peReadReq_3,
  input  [10:0] io_peReadReq_4,
  input  [10:0] io_peReadReq_5,
  input  [10:0] io_peReadReq_6,
  input  [10:0] io_peReadReq_7,
  output [7:0]  io_peReadRsp_0,
  output [7:0]  io_peReadRsp_1,
  output [7:0]  io_peReadRsp_2,
  output [7:0]  io_peReadRsp_3,
  output [7:0]  io_peReadRsp_4,
  output [7:0]  io_peReadRsp_5,
  output [7:0]  io_peReadRsp_6,
  output [7:0]  io_peReadRsp_7,
  input  [10:0] io_assReadReq,
  output [7:0]  io_assReadRsp,
  output        io_assWriteReq_ready,
  input         io_assWriteReq_valid,
  input  [10:0] io_assWriteReq_bits_addr,
  input  [7:0]  io_assWriteReq_bits_data,
  input         io_dump,
  input         io_dumpOut_ready,
  output        io_dumpOut_valid,
  output [7:0]  io_dumpOut_bits
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_REG_INIT
  wire  mems_0_clock; // @[BramStore.scala 56:11]
  wire [10:0] mems_0_io_read_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_0_io_read_rsp_readData; // @[BramStore.scala 56:11]
  wire [10:0] mems_0_io_write_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_0_io_write_req_writeData; // @[BramStore.scala 56:11]
  wire  mems_0_io_write_req_writeEn; // @[BramStore.scala 56:11]
  wire  mems_1_clock; // @[BramStore.scala 56:11]
  wire [10:0] mems_1_io_read_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_1_io_read_rsp_readData; // @[BramStore.scala 56:11]
  wire [10:0] mems_1_io_write_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_1_io_write_req_writeData; // @[BramStore.scala 56:11]
  wire  mems_1_io_write_req_writeEn; // @[BramStore.scala 56:11]
  wire  mems_2_clock; // @[BramStore.scala 56:11]
  wire [10:0] mems_2_io_read_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_2_io_read_rsp_readData; // @[BramStore.scala 56:11]
  wire [10:0] mems_2_io_write_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_2_io_write_req_writeData; // @[BramStore.scala 56:11]
  wire  mems_2_io_write_req_writeEn; // @[BramStore.scala 56:11]
  wire  mems_3_clock; // @[BramStore.scala 56:11]
  wire [10:0] mems_3_io_read_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_3_io_read_rsp_readData; // @[BramStore.scala 56:11]
  wire [10:0] mems_3_io_write_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_3_io_write_req_writeData; // @[BramStore.scala 56:11]
  wire  mems_3_io_write_req_writeEn; // @[BramStore.scala 56:11]
  wire  mems_4_clock; // @[BramStore.scala 56:11]
  wire [10:0] mems_4_io_read_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_4_io_read_rsp_readData; // @[BramStore.scala 56:11]
  wire [10:0] mems_4_io_write_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_4_io_write_req_writeData; // @[BramStore.scala 56:11]
  wire  mems_4_io_write_req_writeEn; // @[BramStore.scala 56:11]
  wire  mems_5_clock; // @[BramStore.scala 56:11]
  wire [10:0] mems_5_io_read_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_5_io_read_rsp_readData; // @[BramStore.scala 56:11]
  wire [10:0] mems_5_io_write_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_5_io_write_req_writeData; // @[BramStore.scala 56:11]
  wire  mems_5_io_write_req_writeEn; // @[BramStore.scala 56:11]
  wire  mems_6_clock; // @[BramStore.scala 56:11]
  wire [10:0] mems_6_io_read_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_6_io_read_rsp_readData; // @[BramStore.scala 56:11]
  wire [10:0] mems_6_io_write_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_6_io_write_req_writeData; // @[BramStore.scala 56:11]
  wire  mems_6_io_write_req_writeEn; // @[BramStore.scala 56:11]
  wire  mems_7_clock; // @[BramStore.scala 56:11]
  wire [10:0] mems_7_io_read_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_7_io_read_rsp_readData; // @[BramStore.scala 56:11]
  wire [10:0] mems_7_io_write_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_7_io_write_req_writeData; // @[BramStore.scala 56:11]
  wire  mems_7_io_write_req_writeEn; // @[BramStore.scala 56:11]
  wire  mems_8_clock; // @[BramStore.scala 56:11]
  wire [10:0] mems_8_io_read_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_8_io_read_rsp_readData; // @[BramStore.scala 56:11]
  wire [10:0] mems_8_io_write_req_addr; // @[BramStore.scala 56:11]
  wire [7:0] mems_8_io_write_req_writeData; // @[BramStore.scala 56:11]
  wire  mems_8_io_write_req_writeEn; // @[BramStore.scala 56:11]
  reg [10:0] regReadReqs_0; // @[BramStore.scala 59:28]
  reg [10:0] regReadReqs_1; // @[BramStore.scala 59:28]
  reg [10:0] regReadReqs_2; // @[BramStore.scala 59:28]
  reg [10:0] regReadReqs_3; // @[BramStore.scala 59:28]
  reg [10:0] regReadReqs_4; // @[BramStore.scala 59:28]
  reg [10:0] regReadReqs_5; // @[BramStore.scala 59:28]
  reg [10:0] regReadReqs_6; // @[BramStore.scala 59:28]
  reg [10:0] regReadReqs_7; // @[BramStore.scala 59:28]
  reg [10:0] dumpCnt; // @[BramStore.scala 79:24]
  reg  regState; // @[BramStore.scala 83:25]
  wire  _T = ~regState; // @[Conditional.scala 37:30]
  wire  _T_17 = io_assWriteReq_ready & io_assWriteReq_valid; // @[Decoupled.scala 40:37]
  wire [10:0] _GEN_9 = _T_17 ? io_assWriteReq_bits_addr : 11'h0; // @[BramStore.scala 109:35 BramStore.scala 111:20]
  wire  _T_19 = io_dumpOut_ready & io_dumpOut_valid; // @[Decoupled.scala 40:37]
  wire  _T_20 = dumpCnt < 11'h7cf; // @[BramStore.scala 136:22]
  wire [10:0] _GEN_18 = dumpCnt < 11'h7cf ? dumpCnt : 11'h0; // @[BramStore.scala 136:50 BramStore.scala 141:22]
  wire [10:0] _GEN_23 = _T_19 ? _GEN_18 : 11'h0; // @[BramStore.scala 134:31]
  wire [10:0] _GEN_32 = regState ? _GEN_23 : 11'h0; // @[Conditional.scala 39:67]
  wire [10:0] wWriteAddr = _T ? _GEN_9 : _GEN_32; // @[Conditional.scala 40:58]
  wire  _GEN_21 = _T_19 & _T_20; // @[BramStore.scala 134:31]
  wire  _GEN_30 = regState & _GEN_21; // @[Conditional.scala 39:67]
  wire  wWriteEn = _T ? _T_17 : _GEN_30; // @[Conditional.scala 40:58]
  wire [7:0] _GEN_10 = _T_17 ? io_assWriteReq_bits_data : 8'h0; // @[BramStore.scala 109:35 BramStore.scala 112:20]
  wire [7:0] wWriteData = _T ? _GEN_10 : 8'h0; // @[Conditional.scala 40:58]
  wire [7:0] _GEN_0 = wWriteEn & regReadReqs_0 == wWriteAddr ? wWriteData : mems_0_io_read_rsp_readData; // @[BramStore.scala 97:57 BramStore.scala 99:27 BramStore.scala 101:27]
  wire [7:0] _GEN_1 = wWriteEn & regReadReqs_1 == wWriteAddr ? wWriteData : mems_1_io_read_rsp_readData; // @[BramStore.scala 97:57 BramStore.scala 99:27 BramStore.scala 101:27]
  wire [7:0] _GEN_2 = wWriteEn & regReadReqs_2 == wWriteAddr ? wWriteData : mems_2_io_read_rsp_readData; // @[BramStore.scala 97:57 BramStore.scala 99:27 BramStore.scala 101:27]
  wire [7:0] _GEN_3 = wWriteEn & regReadReqs_3 == wWriteAddr ? wWriteData : mems_3_io_read_rsp_readData; // @[BramStore.scala 97:57 BramStore.scala 99:27 BramStore.scala 101:27]
  wire [7:0] _GEN_4 = wWriteEn & regReadReqs_4 == wWriteAddr ? wWriteData : mems_4_io_read_rsp_readData; // @[BramStore.scala 97:57 BramStore.scala 99:27 BramStore.scala 101:27]
  wire [7:0] _GEN_5 = wWriteEn & regReadReqs_5 == wWriteAddr ? wWriteData : mems_5_io_read_rsp_readData; // @[BramStore.scala 97:57 BramStore.scala 99:27 BramStore.scala 101:27]
  wire [7:0] _GEN_6 = wWriteEn & regReadReqs_6 == wWriteAddr ? wWriteData : mems_6_io_read_rsp_readData; // @[BramStore.scala 97:57 BramStore.scala 99:27 BramStore.scala 101:27]
  wire [7:0] _GEN_7 = wWriteEn & regReadReqs_7 == wWriteAddr ? wWriteData : mems_7_io_read_rsp_readData; // @[BramStore.scala 97:57 BramStore.scala 99:27 BramStore.scala 101:27]
  wire  _GEN_12 = io_dump | regState; // @[BramStore.scala 116:21 BramStore.scala 118:18 BramStore.scala 83:25]
  wire [10:0] _GEN_13 = io_dump ? 11'h0 : io_assReadReq; // @[BramStore.scala 116:21 BramStore.scala 119:36 BramStore.scala 93:32]
  wire [10:0] _dumpCnt_T_1 = dumpCnt + 11'h1; // @[BramStore.scala 137:30]
  wire [10:0] _GEN_14 = dumpCnt < 11'h7cf ? _dumpCnt_T_1 : dumpCnt; // @[BramStore.scala 136:50 BramStore.scala 137:19 BramStore.scala 79:24]
  wire [10:0] _GEN_19 = _T_19 ? _GEN_14 : dumpCnt; // @[BramStore.scala 134:31 BramStore.scala 79:24]
  SimpleDualPortBRAM_3 mems_0 ( // @[BramStore.scala 56:11]
    .clock(mems_0_clock),
    .io_read_req_addr(mems_0_io_read_req_addr),
    .io_read_rsp_readData(mems_0_io_read_rsp_readData),
    .io_write_req_addr(mems_0_io_write_req_addr),
    .io_write_req_writeData(mems_0_io_write_req_writeData),
    .io_write_req_writeEn(mems_0_io_write_req_writeEn)
  );
  SimpleDualPortBRAM_3 mems_1 ( // @[BramStore.scala 56:11]
    .clock(mems_1_clock),
    .io_read_req_addr(mems_1_io_read_req_addr),
    .io_read_rsp_readData(mems_1_io_read_rsp_readData),
    .io_write_req_addr(mems_1_io_write_req_addr),
    .io_write_req_writeData(mems_1_io_write_req_writeData),
    .io_write_req_writeEn(mems_1_io_write_req_writeEn)
  );
  SimpleDualPortBRAM_3 mems_2 ( // @[BramStore.scala 56:11]
    .clock(mems_2_clock),
    .io_read_req_addr(mems_2_io_read_req_addr),
    .io_read_rsp_readData(mems_2_io_read_rsp_readData),
    .io_write_req_addr(mems_2_io_write_req_addr),
    .io_write_req_writeData(mems_2_io_write_req_writeData),
    .io_write_req_writeEn(mems_2_io_write_req_writeEn)
  );
  SimpleDualPortBRAM_3 mems_3 ( // @[BramStore.scala 56:11]
    .clock(mems_3_clock),
    .io_read_req_addr(mems_3_io_read_req_addr),
    .io_read_rsp_readData(mems_3_io_read_rsp_readData),
    .io_write_req_addr(mems_3_io_write_req_addr),
    .io_write_req_writeData(mems_3_io_write_req_writeData),
    .io_write_req_writeEn(mems_3_io_write_req_writeEn)
  );
  SimpleDualPortBRAM_3 mems_4 ( // @[BramStore.scala 56:11]
    .clock(mems_4_clock),
    .io_read_req_addr(mems_4_io_read_req_addr),
    .io_read_rsp_readData(mems_4_io_read_rsp_readData),
    .io_write_req_addr(mems_4_io_write_req_addr),
    .io_write_req_writeData(mems_4_io_write_req_writeData),
    .io_write_req_writeEn(mems_4_io_write_req_writeEn)
  );
  SimpleDualPortBRAM_3 mems_5 ( // @[BramStore.scala 56:11]
    .clock(mems_5_clock),
    .io_read_req_addr(mems_5_io_read_req_addr),
    .io_read_rsp_readData(mems_5_io_read_rsp_readData),
    .io_write_req_addr(mems_5_io_write_req_addr),
    .io_write_req_writeData(mems_5_io_write_req_writeData),
    .io_write_req_writeEn(mems_5_io_write_req_writeEn)
  );
  SimpleDualPortBRAM_3 mems_6 ( // @[BramStore.scala 56:11]
    .clock(mems_6_clock),
    .io_read_req_addr(mems_6_io_read_req_addr),
    .io_read_rsp_readData(mems_6_io_read_rsp_readData),
    .io_write_req_addr(mems_6_io_write_req_addr),
    .io_write_req_writeData(mems_6_io_write_req_writeData),
    .io_write_req_writeEn(mems_6_io_write_req_writeEn)
  );
  SimpleDualPortBRAM_3 mems_7 ( // @[BramStore.scala 56:11]
    .clock(mems_7_clock),
    .io_read_req_addr(mems_7_io_read_req_addr),
    .io_read_rsp_readData(mems_7_io_read_rsp_readData),
    .io_write_req_addr(mems_7_io_write_req_addr),
    .io_write_req_writeData(mems_7_io_write_req_writeData),
    .io_write_req_writeEn(mems_7_io_write_req_writeEn)
  );
  SimpleDualPortBRAM_3 mems_8 ( // @[BramStore.scala 56:11]
    .clock(mems_8_clock),
    .io_read_req_addr(mems_8_io_read_req_addr),
    .io_read_rsp_readData(mems_8_io_read_rsp_readData),
    .io_write_req_addr(mems_8_io_write_req_addr),
    .io_write_req_writeData(mems_8_io_write_req_writeData),
    .io_write_req_writeEn(mems_8_io_write_req_writeEn)
  );
  assign io_peReadRsp_0 = _T ? _GEN_0 : 8'h0; // @[Conditional.scala 40:58 BramStore.scala 73:22]
  assign io_peReadRsp_1 = _T ? _GEN_1 : 8'h0; // @[Conditional.scala 40:58 BramStore.scala 73:22]
  assign io_peReadRsp_2 = _T ? _GEN_2 : 8'h0; // @[Conditional.scala 40:58 BramStore.scala 73:22]
  assign io_peReadRsp_3 = _T ? _GEN_3 : 8'h0; // @[Conditional.scala 40:58 BramStore.scala 73:22]
  assign io_peReadRsp_4 = _T ? _GEN_4 : 8'h0; // @[Conditional.scala 40:58 BramStore.scala 73:22]
  assign io_peReadRsp_5 = _T ? _GEN_5 : 8'h0; // @[Conditional.scala 40:58 BramStore.scala 73:22]
  assign io_peReadRsp_6 = _T ? _GEN_6 : 8'h0; // @[Conditional.scala 40:58 BramStore.scala 73:22]
  assign io_peReadRsp_7 = _T ? _GEN_7 : 8'h0; // @[Conditional.scala 40:58 BramStore.scala 73:22]
  assign io_assReadRsp = _T ? mems_8_io_read_rsp_readData : 8'h0; // @[Conditional.scala 40:58 BramStore.scala 104:21 BramStore.scala 74:17]
  assign io_assWriteReq_ready = ~regState; // @[Conditional.scala 37:30]
  assign io_dumpOut_valid = _T ? 1'h0 : regState; // @[Conditional.scala 40:58 BramStore.scala 77:20]
  assign io_dumpOut_bits = mems_8_io_read_rsp_readData; // @[Conditional.scala 39:67 BramStore.scala 131:23]
  assign mems_0_clock = clock;
  assign mems_0_io_read_req_addr = io_peReadReq_0; // @[Conditional.scala 40:58 BramStore.scala 90:36]
  assign mems_0_io_write_req_addr = _T ? _GEN_9 : _GEN_32; // @[Conditional.scala 40:58]
  assign mems_0_io_write_req_writeData = _T ? _GEN_10 : 8'h0; // @[Conditional.scala 40:58]
  assign mems_0_io_write_req_writeEn = _T ? _T_17 : _GEN_30; // @[Conditional.scala 40:58]
  assign mems_1_clock = clock;
  assign mems_1_io_read_req_addr = io_peReadReq_1; // @[Conditional.scala 40:58 BramStore.scala 90:36]
  assign mems_1_io_write_req_addr = _T ? _GEN_9 : _GEN_32; // @[Conditional.scala 40:58]
  assign mems_1_io_write_req_writeData = _T ? _GEN_10 : 8'h0; // @[Conditional.scala 40:58]
  assign mems_1_io_write_req_writeEn = _T ? _T_17 : _GEN_30; // @[Conditional.scala 40:58]
  assign mems_2_clock = clock;
  assign mems_2_io_read_req_addr = io_peReadReq_2; // @[Conditional.scala 40:58 BramStore.scala 90:36]
  assign mems_2_io_write_req_addr = _T ? _GEN_9 : _GEN_32; // @[Conditional.scala 40:58]
  assign mems_2_io_write_req_writeData = _T ? _GEN_10 : 8'h0; // @[Conditional.scala 40:58]
  assign mems_2_io_write_req_writeEn = _T ? _T_17 : _GEN_30; // @[Conditional.scala 40:58]
  assign mems_3_clock = clock;
  assign mems_3_io_read_req_addr = io_peReadReq_3; // @[Conditional.scala 40:58 BramStore.scala 90:36]
  assign mems_3_io_write_req_addr = _T ? _GEN_9 : _GEN_32; // @[Conditional.scala 40:58]
  assign mems_3_io_write_req_writeData = _T ? _GEN_10 : 8'h0; // @[Conditional.scala 40:58]
  assign mems_3_io_write_req_writeEn = _T ? _T_17 : _GEN_30; // @[Conditional.scala 40:58]
  assign mems_4_clock = clock;
  assign mems_4_io_read_req_addr = io_peReadReq_4; // @[Conditional.scala 40:58 BramStore.scala 90:36]
  assign mems_4_io_write_req_addr = _T ? _GEN_9 : _GEN_32; // @[Conditional.scala 40:58]
  assign mems_4_io_write_req_writeData = _T ? _GEN_10 : 8'h0; // @[Conditional.scala 40:58]
  assign mems_4_io_write_req_writeEn = _T ? _T_17 : _GEN_30; // @[Conditional.scala 40:58]
  assign mems_5_clock = clock;
  assign mems_5_io_read_req_addr = io_peReadReq_5; // @[Conditional.scala 40:58 BramStore.scala 90:36]
  assign mems_5_io_write_req_addr = _T ? _GEN_9 : _GEN_32; // @[Conditional.scala 40:58]
  assign mems_5_io_write_req_writeData = _T ? _GEN_10 : 8'h0; // @[Conditional.scala 40:58]
  assign mems_5_io_write_req_writeEn = _T ? _T_17 : _GEN_30; // @[Conditional.scala 40:58]
  assign mems_6_clock = clock;
  assign mems_6_io_read_req_addr = io_peReadReq_6; // @[Conditional.scala 40:58 BramStore.scala 90:36]
  assign mems_6_io_write_req_addr = _T ? _GEN_9 : _GEN_32; // @[Conditional.scala 40:58]
  assign mems_6_io_write_req_writeData = _T ? _GEN_10 : 8'h0; // @[Conditional.scala 40:58]
  assign mems_6_io_write_req_writeEn = _T ? _T_17 : _GEN_30; // @[Conditional.scala 40:58]
  assign mems_7_clock = clock;
  assign mems_7_io_read_req_addr = io_peReadReq_7; // @[Conditional.scala 40:58 BramStore.scala 90:36]
  assign mems_7_io_write_req_addr = _T ? _GEN_9 : _GEN_32; // @[Conditional.scala 40:58]
  assign mems_7_io_write_req_writeData = _T ? _GEN_10 : 8'h0; // @[Conditional.scala 40:58]
  assign mems_7_io_write_req_writeEn = _T ? _T_17 : _GEN_30; // @[Conditional.scala 40:58]
  assign mems_8_clock = clock;
  assign mems_8_io_read_req_addr = _T ? _GEN_13 : _GEN_19; // @[Conditional.scala 40:58]
  assign mems_8_io_write_req_addr = _T ? _GEN_9 : _GEN_32; // @[Conditional.scala 40:58]
  assign mems_8_io_write_req_writeData = _T ? _GEN_10 : 8'h0; // @[Conditional.scala 40:58]
  assign mems_8_io_write_req_writeEn = _T ? _T_17 : _GEN_30; // @[Conditional.scala 40:58]
  always @(posedge clock) begin
    if (reset) begin // @[BramStore.scala 59:28]
      regReadReqs_0 <= 11'h0; // @[BramStore.scala 59:28]
    end else if (_T) begin // @[Conditional.scala 40:58]
      regReadReqs_0 <= io_peReadReq_0; // @[BramStore.scala 91:26]
    end
    if (reset) begin // @[BramStore.scala 59:28]
      regReadReqs_1 <= 11'h0; // @[BramStore.scala 59:28]
    end else if (_T) begin // @[Conditional.scala 40:58]
      regReadReqs_1 <= io_peReadReq_1; // @[BramStore.scala 91:26]
    end
    if (reset) begin // @[BramStore.scala 59:28]
      regReadReqs_2 <= 11'h0; // @[BramStore.scala 59:28]
    end else if (_T) begin // @[Conditional.scala 40:58]
      regReadReqs_2 <= io_peReadReq_2; // @[BramStore.scala 91:26]
    end
    if (reset) begin // @[BramStore.scala 59:28]
      regReadReqs_3 <= 11'h0; // @[BramStore.scala 59:28]
    end else if (_T) begin // @[Conditional.scala 40:58]
      regReadReqs_3 <= io_peReadReq_3; // @[BramStore.scala 91:26]
    end
    if (reset) begin // @[BramStore.scala 59:28]
      regReadReqs_4 <= 11'h0; // @[BramStore.scala 59:28]
    end else if (_T) begin // @[Conditional.scala 40:58]
      regReadReqs_4 <= io_peReadReq_4; // @[BramStore.scala 91:26]
    end
    if (reset) begin // @[BramStore.scala 59:28]
      regReadReqs_5 <= 11'h0; // @[BramStore.scala 59:28]
    end else if (_T) begin // @[Conditional.scala 40:58]
      regReadReqs_5 <= io_peReadReq_5; // @[BramStore.scala 91:26]
    end
    if (reset) begin // @[BramStore.scala 59:28]
      regReadReqs_6 <= 11'h0; // @[BramStore.scala 59:28]
    end else if (_T) begin // @[Conditional.scala 40:58]
      regReadReqs_6 <= io_peReadReq_6; // @[BramStore.scala 91:26]
    end
    if (reset) begin // @[BramStore.scala 59:28]
      regReadReqs_7 <= 11'h0; // @[BramStore.scala 59:28]
    end else if (_T) begin // @[Conditional.scala 40:58]
      regReadReqs_7 <= io_peReadReq_7; // @[BramStore.scala 91:26]
    end
    if (reset) begin // @[BramStore.scala 79:24]
      dumpCnt <= 11'h0; // @[BramStore.scala 79:24]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_dump) begin // @[BramStore.scala 116:21]
        dumpCnt <= 11'h0; // @[BramStore.scala 117:17]
      end
    end else if (regState) begin // @[Conditional.scala 39:67]
      if (_T_19) begin // @[BramStore.scala 134:31]
        dumpCnt <= _GEN_14;
      end
    end
    if (reset) begin // @[BramStore.scala 83:25]
      regState <= 1'h0; // @[BramStore.scala 83:25]
    end else if (_T) begin // @[Conditional.scala 40:58]
      regState <= _GEN_12;
    end else if (regState) begin // @[Conditional.scala 39:67]
      if (~io_dump) begin // @[BramStore.scala 145:23]
        regState <= 1'h0; // @[BramStore.scala 146:18]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regReadReqs_0 = _RAND_0[10:0];
  _RAND_1 = {1{`RANDOM}};
  regReadReqs_1 = _RAND_1[10:0];
  _RAND_2 = {1{`RANDOM}};
  regReadReqs_2 = _RAND_2[10:0];
  _RAND_3 = {1{`RANDOM}};
  regReadReqs_3 = _RAND_3[10:0];
  _RAND_4 = {1{`RANDOM}};
  regReadReqs_4 = _RAND_4[10:0];
  _RAND_5 = {1{`RANDOM}};
  regReadReqs_5 = _RAND_5[10:0];
  _RAND_6 = {1{`RANDOM}};
  regReadReqs_6 = _RAND_6[10:0];
  _RAND_7 = {1{`RANDOM}};
  regReadReqs_7 = _RAND_7[10:0];
  _RAND_8 = {1{`RANDOM}};
  dumpCnt = _RAND_8[10:0];
  _RAND_9 = {1{`RANDOM}};
  regState = _RAND_9[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ReadReqGen(
  input         clock,
  input         reset,
  input         io_ctrl_start,
  input  [31:0] io_ctrl_baseAddr,
  input  [31:0] io_ctrl_byteCount,
  input         io_reqs_ready,
  output        io_reqs_valid,
  output [31:0] io_reqs_bits_addr,
  output [7:0]  io_reqs_bits_numBytes
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] regState; // @[MemReqGen.scala 40:25]
  reg [31:0] regAddr; // @[MemReqGen.scala 41:24]
  reg [31:0] regBytesLeft; // @[MemReqGen.scala 42:29]
  wire  doBurst = regBytesLeft >= 32'h40; // @[MemReqGen.scala 53:31]
  wire [6:0] burstLen = doBurst ? 7'h40 : 7'h8; // @[MemReqGen.scala 54:21]
  wire  unalignedAddr = io_ctrl_baseAddr[5:0] != 6'h0; // @[MemReqGen.scala 59:63]
  wire  unalignedSize = io_ctrl_byteCount[2:0] != 3'h0; // @[MemReqGen.scala 62:64]
  wire  isUnaligned = unalignedSize | unalignedAddr; // @[MemReqGen.scala 63:35]
  wire  _T = 2'h0 == regState; // @[Conditional.scala 37:30]
  wire  _T_1 = 2'h1 == regState; // @[Conditional.scala 37:30]
  wire [31:0] _GEN_27 = {{25'd0}, burstLen}; // @[MemReqGen.scala 79:32]
  wire [31:0] _regAddr_T_1 = regAddr + _GEN_27; // @[MemReqGen.scala 79:32]
  wire [31:0] _regBytesLeft_T_1 = regBytesLeft - _GEN_27; // @[MemReqGen.scala 80:42]
  wire [31:0] _GEN_1 = io_reqs_ready ? _regAddr_T_1 : regAddr; // @[MemReqGen.scala 77:32 MemReqGen.scala 79:21 MemReqGen.scala 41:24]
  wire [31:0] _GEN_2 = io_reqs_ready ? _regBytesLeft_T_1 : regBytesLeft; // @[MemReqGen.scala 77:32 MemReqGen.scala 80:26 MemReqGen.scala 42:29]
  wire  _GEN_7 = regBytesLeft == 32'h0 ? 1'h0 : 1'h1; // @[MemReqGen.scala 73:37 MemReqGen.scala 47:17]
  wire  _T_4 = 2'h2 == regState; // @[Conditional.scala 37:30]
  wire [1:0] _GEN_10 = ~io_ctrl_start ? 2'h0 : regState; // @[MemReqGen.scala 87:31 MemReqGen.scala 87:42 MemReqGen.scala 40:25]
  wire  _T_6 = 2'h3 == regState; // @[Conditional.scala 37:30]
  wire  _T_8 = ~reset; // @[MemReqGen.scala 93:15]
  wire  _GEN_16 = _T_1 & _GEN_7; // @[Conditional.scala 39:67 MemReqGen.scala 47:17]
  wire  _GEN_35 = ~_T & ~_T_1 & ~_T_4 & _T_6; // @[MemReqGen.scala 93:15]
  assign io_reqs_valid = _T ? 1'h0 : _GEN_16; // @[Conditional.scala 40:58 MemReqGen.scala 47:17]
  assign io_reqs_bits_addr = regAddr; // @[MemReqGen.scala 50:21]
  assign io_reqs_bits_numBytes = {{1'd0}, burstLen}; // @[MemReqGen.scala 54:21]
  always @(posedge clock) begin
    if (reset) begin // @[MemReqGen.scala 40:25]
      regState <= 2'h0; // @[MemReqGen.scala 40:25]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_ctrl_start) begin // @[MemReqGen.scala 69:30]
        if (isUnaligned) begin // @[MemReqGen.scala 69:47]
          regState <= 2'h3;
        end else begin
          regState <= 2'h1;
        end
      end
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      if (regBytesLeft == 32'h0) begin // @[MemReqGen.scala 73:37]
        regState <= 2'h2; // @[MemReqGen.scala 73:48]
      end
    end else if (_T_4) begin // @[Conditional.scala 39:67]
      regState <= _GEN_10;
    end
    if (reset) begin // @[MemReqGen.scala 41:24]
      regAddr <= 32'h0; // @[MemReqGen.scala 41:24]
    end else if (_T) begin // @[Conditional.scala 40:58]
      regAddr <= io_ctrl_baseAddr; // @[MemReqGen.scala 67:17]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      if (!(regBytesLeft == 32'h0)) begin // @[MemReqGen.scala 73:37]
        regAddr <= _GEN_1;
      end
    end
    if (reset) begin // @[MemReqGen.scala 42:29]
      regBytesLeft <= 32'h0; // @[MemReqGen.scala 42:29]
    end else if (_T) begin // @[Conditional.scala 40:58]
      regBytesLeft <= io_ctrl_byteCount; // @[MemReqGen.scala 68:22]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      if (!(regBytesLeft == 32'h0)) begin // @[MemReqGen.scala 73:37]
        regBytesLeft <= _GEN_2;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~_T & ~_T_1 & ~_T_4 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,"Error in MemReqGen! regAddr = %x byteCount = %d \n",regAddr,io_ctrl_byteCount); // @[MemReqGen.scala 93:15]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_35 & _T_8) begin
          $fwrite(32'h80000002,"Unaligned addr? %d size? %d \n",unalignedAddr,unalignedSize); // @[MemReqGen.scala 94:15]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regState = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  regAddr = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  regBytesLeft = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SRLQueue_5(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [5:0]  io_enq_bits_channelID,
  input  [63:0] io_enq_bits_readData,
  input         io_enq_bits_isLast,
  input         io_deq_ready,
  output        io_deq_valid,
  output [63:0] io_deq_bits_readData
);
  wire  Q_srl_i_v; // @[FPGAQueue.scala 70:20]
  wire [72:0] Q_srl_i_d; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_i_b; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_o_v; // @[FPGAQueue.scala 70:20]
  wire [72:0] Q_srl_o_d; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_o_b; // @[FPGAQueue.scala 70:20]
  wire [1:0] Q_srl_count; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_clock; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_reset; // @[FPGAQueue.scala 70:20]
  wire [1:0] lo = {io_enq_bits_isLast,1'h0}; // @[FPGAQueue.scala 74:27]
  wire [70:0] hi = {io_enq_bits_channelID,io_enq_bits_readData,1'h0}; // @[FPGAQueue.scala 74:27]
  wire [72:0] _io_deq_bits_WIRE_1 = Q_srl_o_d;
  Q_srl #(.depth(2), .width(73)) Q_srl ( // @[FPGAQueue.scala 70:20]
    .i_v(Q_srl_i_v),
    .i_d(Q_srl_i_d),
    .i_b(Q_srl_i_b),
    .o_v(Q_srl_o_v),
    .o_d(Q_srl_o_d),
    .o_b(Q_srl_o_b),
    .count(Q_srl_count),
    .clock(Q_srl_clock),
    .reset(Q_srl_reset)
  );
  assign io_enq_ready = ~Q_srl_i_b; // @[FPGAQueue.scala 83:19]
  assign io_deq_valid = Q_srl_o_v; // @[FPGAQueue.scala 78:16]
  assign io_deq_bits_readData = _io_deq_bits_WIRE_1[66:3]; // @[FPGAQueue.scala 79:35]
  assign Q_srl_i_v = io_enq_valid; // @[FPGAQueue.scala 73:12]
  assign Q_srl_i_d = {hi,lo}; // @[FPGAQueue.scala 74:27]
  assign Q_srl_o_b = ~io_deq_ready; // @[FPGAQueue.scala 82:15]
  assign Q_srl_clock = clock; // @[FPGAQueue.scala 75:14]
  assign Q_srl_reset = reset; // @[FPGAQueue.scala 76:14]
endmodule
module FPGAQueue_7(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [5:0]  io_enq_bits_channelID,
  input  [63:0] io_enq_bits_readData,
  input         io_enq_bits_isLast,
  input         io_deq_ready,
  output        io_deq_valid,
  output [63:0] io_deq_bits_readData
);
  wire  SRLQueue_clock; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_reset; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_ready; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_valid; // @[FPGAQueue.scala 177:26]
  wire [5:0] SRLQueue_io_enq_bits_channelID; // @[FPGAQueue.scala 177:26]
  wire [63:0] SRLQueue_io_enq_bits_readData; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_bits_isLast; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_deq_ready; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_deq_valid; // @[FPGAQueue.scala 177:26]
  wire [63:0] SRLQueue_io_deq_bits_readData; // @[FPGAQueue.scala 177:26]
  SRLQueue_5 SRLQueue ( // @[FPGAQueue.scala 177:26]
    .clock(SRLQueue_clock),
    .reset(SRLQueue_reset),
    .io_enq_ready(SRLQueue_io_enq_ready),
    .io_enq_valid(SRLQueue_io_enq_valid),
    .io_enq_bits_channelID(SRLQueue_io_enq_bits_channelID),
    .io_enq_bits_readData(SRLQueue_io_enq_bits_readData),
    .io_enq_bits_isLast(SRLQueue_io_enq_bits_isLast),
    .io_deq_ready(SRLQueue_io_deq_ready),
    .io_deq_valid(SRLQueue_io_deq_valid),
    .io_deq_bits_readData(SRLQueue_io_deq_bits_readData)
  );
  assign io_enq_ready = SRLQueue_io_enq_ready; // @[FPGAQueue.scala 179:14]
  assign io_deq_valid = SRLQueue_io_deq_valid; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_readData = SRLQueue_io_deq_bits_readData; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_clock = clock;
  assign SRLQueue_reset = reset;
  assign SRLQueue_io_enq_valid = io_enq_valid; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_channelID = io_enq_bits_channelID; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_readData = io_enq_bits_readData; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_isLast = io_enq_bits_isLast; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_deq_ready = io_deq_ready; // @[FPGAQueue.scala 179:14]
endmodule
module Dram2Bram2(
  input          clock,
  input          reset,
  input          io_dramReq_ready,
  output         io_dramReq_valid,
  output [31:0]  io_dramReq_bits_addr,
  output [7:0]   io_dramReq_bits_numBytes,
  output         io_dramRsp_ready,
  input          io_dramRsp_valid,
  input  [5:0]   io_dramRsp_bits_channelID,
  input  [63:0]  io_dramRsp_bits_readData,
  input          io_dramRsp_bits_isLast,
  output [10:0]  io_bramCmd_req_addr,
  output [159:0] io_bramCmd_req_writeData,
  output         io_bramCmd_req_writeEn,
  input          io_start,
  output         io_finished,
  input  [63:0]  io_baseAddr,
  input  [10:0]  io_nRows,
  input  [10:0]  io_nCols,
  input  [21:0]  io_nElements,
  output [10:0]  io_agentRowAddress_req_addr,
  output [21:0]  io_agentRowAddress_req_writeData,
  output         io_agentRowAddress_req_writeEn
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
`endif // RANDOMIZE_REG_INIT
  wire  rg_clock; // @[Dram2Bram.scala 75:18]
  wire  rg_reset; // @[Dram2Bram.scala 75:18]
  wire  rg_io_ctrl_start; // @[Dram2Bram.scala 75:18]
  wire [31:0] rg_io_ctrl_baseAddr; // @[Dram2Bram.scala 75:18]
  wire [31:0] rg_io_ctrl_byteCount; // @[Dram2Bram.scala 75:18]
  wire  rg_io_reqs_ready; // @[Dram2Bram.scala 75:18]
  wire  rg_io_reqs_valid; // @[Dram2Bram.scala 75:18]
  wire [31:0] rg_io_reqs_bits_addr; // @[Dram2Bram.scala 75:18]
  wire [7:0] rg_io_reqs_bits_numBytes; // @[Dram2Bram.scala 75:18]
  wire  FPGAQueue_clock; // @[Dram2Bram.scala 82:20]
  wire  FPGAQueue_reset; // @[Dram2Bram.scala 82:20]
  wire  FPGAQueue_io_enq_ready; // @[Dram2Bram.scala 82:20]
  wire  FPGAQueue_io_enq_valid; // @[Dram2Bram.scala 82:20]
  wire [5:0] FPGAQueue_io_enq_bits_channelID; // @[Dram2Bram.scala 82:20]
  wire [63:0] FPGAQueue_io_enq_bits_readData; // @[Dram2Bram.scala 82:20]
  wire  FPGAQueue_io_enq_bits_isLast; // @[Dram2Bram.scala 82:20]
  wire  FPGAQueue_io_deq_ready; // @[Dram2Bram.scala 82:20]
  wire  FPGAQueue_io_deq_valid; // @[Dram2Bram.scala 82:20]
  wire [63:0] FPGAQueue_io_deq_bits_readData; // @[Dram2Bram.scala 82:20]
  reg [1:0] regState; // @[Dram2Bram.scala 87:25]
  reg [7:0] regBramLine_els_0_value; // @[Dram2Bram.scala 89:28]
  reg [10:0] regBramLine_els_0_col; // @[Dram2Bram.scala 89:28]
  reg [7:0] regBramLine_els_1_value; // @[Dram2Bram.scala 89:28]
  reg [10:0] regBramLine_els_1_col; // @[Dram2Bram.scala 89:28]
  reg [7:0] regBramLine_els_2_value; // @[Dram2Bram.scala 89:28]
  reg [10:0] regBramLine_els_2_col; // @[Dram2Bram.scala 89:28]
  reg [7:0] regBramLine_els_3_value; // @[Dram2Bram.scala 89:28]
  reg [10:0] regBramLine_els_3_col; // @[Dram2Bram.scala 89:28]
  reg [7:0] regBramLine_els_4_value; // @[Dram2Bram.scala 89:28]
  reg [10:0] regBramLine_els_4_col; // @[Dram2Bram.scala 89:28]
  reg [7:0] regBramLine_els_5_value; // @[Dram2Bram.scala 89:28]
  reg [10:0] regBramLine_els_5_col; // @[Dram2Bram.scala 89:28]
  reg [7:0] regBramLine_els_6_value; // @[Dram2Bram.scala 89:28]
  reg [10:0] regBramLine_els_6_col; // @[Dram2Bram.scala 89:28]
  reg [7:0] regBramLine_els_7_value; // @[Dram2Bram.scala 89:28]
  reg [10:0] regBramLine_els_7_col; // @[Dram2Bram.scala 89:28]
  reg [2:0] regBramLineIdx; // @[Dram2Bram.scala 90:31]
  reg [10:0] regDramRowCnt; // @[Dram2Bram.scala 93:30]
  reg [10:0] regDramColCnt; // @[Dram2Bram.scala 94:30]
  reg [10:0] regBramAddr; // @[Dram2Bram.scala 96:28]
  reg [10:0] regAgentRowInfo_rowAddr; // @[Dram2Bram.scala 97:32]
  reg [10:0] regAgentRowInfo_length; // @[Dram2Bram.scala 97:32]
  reg  regAgentHasValid; // @[Dram2Bram.scala 98:33]
  reg  regRowDone; // @[Dram2Bram.scala 99:27]
  reg [31:0] regNElements; // @[Dram2Bram.scala 100:29]
  reg [10:0] regNRows; // @[Dram2Bram.scala 102:25]
  reg [10:0] regNCols; // @[Dram2Bram.scala 103:25]
  wire  _T = 2'h0 == regState; // @[Conditional.scala 37:30]
  wire  _T_1 = 2'h1 == regState; // @[Conditional.scala 37:30]
  wire [34:0] byteCount = {regNElements, 3'h0}; // @[Dram2Bram.scala 131:39]
  wire  _T_2 = 2'h2 == regState; // @[Conditional.scala 37:30]
  wire  _T_3 = FPGAQueue_io_deq_ready & FPGAQueue_io_deq_valid; // @[Decoupled.scala 40:37]
  wire  _T_4 = FPGAQueue_io_deq_bits_readData > 64'h0; // @[Dram2Bram.scala 148:20]
  wire [10:0] _GEN_12 = 3'h0 == regBramLineIdx ? regDramColCnt : regBramLine_els_0_col; // @[Dram2Bram.scala 149:47 Dram2Bram.scala 149:47 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_13 = 3'h1 == regBramLineIdx ? regDramColCnt : regBramLine_els_1_col; // @[Dram2Bram.scala 149:47 Dram2Bram.scala 149:47 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_14 = 3'h2 == regBramLineIdx ? regDramColCnt : regBramLine_els_2_col; // @[Dram2Bram.scala 149:47 Dram2Bram.scala 149:47 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_15 = 3'h3 == regBramLineIdx ? regDramColCnt : regBramLine_els_3_col; // @[Dram2Bram.scala 149:47 Dram2Bram.scala 149:47 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_16 = 3'h4 == regBramLineIdx ? regDramColCnt : regBramLine_els_4_col; // @[Dram2Bram.scala 149:47 Dram2Bram.scala 149:47 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_17 = 3'h5 == regBramLineIdx ? regDramColCnt : regBramLine_els_5_col; // @[Dram2Bram.scala 149:47 Dram2Bram.scala 149:47 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_18 = 3'h6 == regBramLineIdx ? regDramColCnt : regBramLine_els_6_col; // @[Dram2Bram.scala 149:47 Dram2Bram.scala 149:47 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_19 = 3'h7 == regBramLineIdx ? regDramColCnt : regBramLine_els_7_col; // @[Dram2Bram.scala 149:47 Dram2Bram.scala 149:47 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_20 = 3'h0 == regBramLineIdx ? FPGAQueue_io_deq_bits_readData[7:0] : regBramLine_els_0_value; // @[Dram2Bram.scala 150:49 Dram2Bram.scala 150:49 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_21 = 3'h1 == regBramLineIdx ? FPGAQueue_io_deq_bits_readData[7:0] : regBramLine_els_1_value; // @[Dram2Bram.scala 150:49 Dram2Bram.scala 150:49 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_22 = 3'h2 == regBramLineIdx ? FPGAQueue_io_deq_bits_readData[7:0] : regBramLine_els_2_value; // @[Dram2Bram.scala 150:49 Dram2Bram.scala 150:49 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_23 = 3'h3 == regBramLineIdx ? FPGAQueue_io_deq_bits_readData[7:0] : regBramLine_els_3_value; // @[Dram2Bram.scala 150:49 Dram2Bram.scala 150:49 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_24 = 3'h4 == regBramLineIdx ? FPGAQueue_io_deq_bits_readData[7:0] : regBramLine_els_4_value; // @[Dram2Bram.scala 150:49 Dram2Bram.scala 150:49 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_25 = 3'h5 == regBramLineIdx ? FPGAQueue_io_deq_bits_readData[7:0] : regBramLine_els_5_value; // @[Dram2Bram.scala 150:49 Dram2Bram.scala 150:49 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_26 = 3'h6 == regBramLineIdx ? FPGAQueue_io_deq_bits_readData[7:0] : regBramLine_els_6_value; // @[Dram2Bram.scala 150:49 Dram2Bram.scala 150:49 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_27 = 3'h7 == regBramLineIdx ? FPGAQueue_io_deq_bits_readData[7:0] : regBramLine_els_7_value; // @[Dram2Bram.scala 150:49 Dram2Bram.scala 150:49 Dram2Bram.scala 89:28]
  wire [2:0] _regBramLineIdx_T_1 = regBramLineIdx + 3'h1; // @[Dram2Bram.scala 154:44]
  wire [10:0] _GEN_28 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _GEN_12 : regBramLine_els_0_col; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_29 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _GEN_13 : regBramLine_els_1_col; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_30 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _GEN_14 : regBramLine_els_2_col; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_31 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _GEN_15 : regBramLine_els_3_col; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_32 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _GEN_16 : regBramLine_els_4_col; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_33 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _GEN_17 : regBramLine_els_5_col; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_34 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _GEN_18 : regBramLine_els_6_col; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_35 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _GEN_19 : regBramLine_els_7_col; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_36 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _GEN_20 : regBramLine_els_0_value; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_37 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _GEN_21 : regBramLine_els_1_value; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_38 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _GEN_22 : regBramLine_els_2_value; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_39 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _GEN_23 : regBramLine_els_3_value; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_40 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _GEN_24 : regBramLine_els_4_value; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_41 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _GEN_25 : regBramLine_els_5_value; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_42 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _GEN_26 : regBramLine_els_6_value; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_43 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _GEN_27 : regBramLine_els_7_value; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 89:28]
  wire  _GEN_44 = FPGAQueue_io_deq_bits_readData > 64'h0 | regAgentHasValid; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 151:28 Dram2Bram.scala 98:33]
  wire  bramLineFull = FPGAQueue_io_deq_bits_readData > 64'h0 & regBramLineIdx == 3'h7; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 153:24]
  wire [2:0] _GEN_46 = FPGAQueue_io_deq_bits_readData > 64'h0 ? _regBramLineIdx_T_1 : regBramLineIdx; // @[Dram2Bram.scala 148:27 Dram2Bram.scala 154:26 Dram2Bram.scala 90:31]
  wire [10:0] _regDramColCnt_T_1 = regDramColCnt + 11'h1; // @[Dram2Bram.scala 157:40]
  wire [10:0] _dramRowDone_T_1 = regNCols - 11'h1; // @[Dram2Bram.scala 159:55]
  wire  dramRowDone = regDramColCnt == _dramRowDone_T_1; // @[Dram2Bram.scala 159:41]
  wire [10:0] _regAgentRowInfo_length_T_1 = regAgentRowInfo_length + 11'h1; // @[Dram2Bram.scala 163:60]
  wire [1:0] _GEN_47 = bramLineFull ? 2'h3 : regState; // @[Dram2Bram.scala 161:28 Dram2Bram.scala 162:20 Dram2Bram.scala 87:25]
  wire [10:0] _GEN_48 = bramLineFull ? _regAgentRowInfo_length_T_1 : regAgentRowInfo_length; // @[Dram2Bram.scala 161:28 Dram2Bram.scala 163:34 Dram2Bram.scala 97:32]
  wire  _GEN_49 = bramLineFull ? 1'h0 : regRowDone; // @[Dram2Bram.scala 161:28 Dram2Bram.scala 164:22 Dram2Bram.scala 99:27]
  wire  _T_6 = regAgentHasValid | _T_4; // @[Dram2Bram.scala 168:33]
  wire [10:0] _regDramRowCnt_T_1 = regDramRowCnt + 11'h1; // @[Dram2Bram.scala 173:44]
  wire [10:0] _T_12 = regNRows - 11'h1; // @[Dram2Bram.scala 176:45]
  wire  _T_13 = regDramRowCnt == _T_12; // @[Dram2Bram.scala 176:32]
  wire [1:0] _GEN_51 = regDramRowCnt == _T_12 ? 2'h0 : _GEN_47; // @[Dram2Bram.scala 176:52 Dram2Bram.scala 178:24]
  wire [1:0] _GEN_52 = regAgentHasValid | _T_4 ? 2'h3 : _GEN_51; // @[Dram2Bram.scala 168:49 Dram2Bram.scala 169:22]
  wire  _GEN_53 = regAgentHasValid | _T_4 | _GEN_49; // @[Dram2Bram.scala 168:49 Dram2Bram.scala 170:24]
  wire [10:0] _GEN_54 = regAgentHasValid | _T_4 ? _regAgentRowInfo_length_T_1 : _GEN_48; // @[Dram2Bram.scala 168:49 Dram2Bram.scala 171:36]
  wire [10:0] _GEN_55 = regAgentHasValid | _T_4 ? regDramRowCnt : _regDramRowCnt_T_1; // @[Dram2Bram.scala 168:49 Dram2Bram.scala 93:30 Dram2Bram.scala 173:27]
  wire  _GEN_56 = regAgentHasValid | _T_4 ? 1'h0 : _T_13; // @[Dram2Bram.scala 168:49 Dram2Bram.scala 63:14]
  wire [1:0] _GEN_57 = dramRowDone ? _GEN_52 : _GEN_47; // @[Dram2Bram.scala 167:27]
  wire  _GEN_58 = dramRowDone ? _GEN_53 : _GEN_49; // @[Dram2Bram.scala 167:27]
  wire [10:0] _GEN_59 = dramRowDone ? _GEN_54 : _GEN_48; // @[Dram2Bram.scala 167:27]
  wire [10:0] _GEN_60 = dramRowDone ? _GEN_55 : regDramRowCnt; // @[Dram2Bram.scala 167:27 Dram2Bram.scala 93:30]
  wire  _GEN_61 = dramRowDone & _GEN_56; // @[Dram2Bram.scala 167:27 Dram2Bram.scala 63:14]
  wire [10:0] _GEN_62 = dramRowDone ? 11'h0 : _regDramColCnt_T_1; // @[Dram2Bram.scala 167:27 Dram2Bram.scala 181:25 Dram2Bram.scala 157:23]
  wire [10:0] _GEN_63 = _T_3 ? _GEN_28 : regBramLine_els_0_col; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_64 = _T_3 ? _GEN_29 : regBramLine_els_1_col; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_65 = _T_3 ? _GEN_30 : regBramLine_els_2_col; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_66 = _T_3 ? _GEN_31 : regBramLine_els_3_col; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_67 = _T_3 ? _GEN_32 : regBramLine_els_4_col; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_68 = _T_3 ? _GEN_33 : regBramLine_els_5_col; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_69 = _T_3 ? _GEN_34 : regBramLine_els_6_col; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_70 = _T_3 ? _GEN_35 : regBramLine_els_7_col; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_71 = _T_3 ? _GEN_36 : regBramLine_els_0_value; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_72 = _T_3 ? _GEN_37 : regBramLine_els_1_value; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_73 = _T_3 ? _GEN_38 : regBramLine_els_2_value; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_74 = _T_3 ? _GEN_39 : regBramLine_els_3_value; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_75 = _T_3 ? _GEN_40 : regBramLine_els_4_value; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_76 = _T_3 ? _GEN_41 : regBramLine_els_5_value; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_77 = _T_3 ? _GEN_42 : regBramLine_els_6_value; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_78 = _T_3 ? _GEN_43 : regBramLine_els_7_value; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 89:28]
  wire  _GEN_79 = _T_3 ? _GEN_44 : regAgentHasValid; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 98:33]
  wire [2:0] _GEN_80 = _T_3 ? _GEN_46 : regBramLineIdx; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 90:31]
  wire [10:0] _GEN_81 = _T_3 ? _GEN_62 : regDramColCnt; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 94:30]
  wire [1:0] _GEN_82 = _T_3 ? _GEN_57 : regState; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 87:25]
  wire [10:0] _GEN_83 = _T_3 ? _GEN_59 : regAgentRowInfo_length; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 97:32]
  wire  _GEN_84 = _T_3 ? _GEN_58 : regRowDone; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 99:27]
  wire [10:0] _GEN_85 = _T_3 ? _GEN_60 : regDramRowCnt; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 93:30]
  wire  _GEN_86 = _T_3 & _GEN_61; // @[Dram2Bram.scala 144:29 Dram2Bram.scala 63:14]
  wire  _T_14 = 2'h3 == regState; // @[Conditional.scala 37:30]
  wire [75:0] io_bramCmd_req_writeData_lo = {regBramLine_els_3_value,regBramLine_els_3_col,regBramLine_els_2_value,
    regBramLine_els_2_col,regBramLine_els_1_value,regBramLine_els_1_col,regBramLine_els_0_value,regBramLine_els_0_col}; // @[Dram2Bram.scala 190:53]
  wire [151:0] _io_bramCmd_req_writeData_T = {regBramLine_els_7_value,regBramLine_els_7_col,regBramLine_els_6_value,
    regBramLine_els_6_col,regBramLine_els_5_value,regBramLine_els_5_col,regBramLine_els_4_value,regBramLine_els_4_col,
    io_bramCmd_req_writeData_lo}; // @[Dram2Bram.scala 190:53]
  wire [10:0] _regBramAddr_T_1 = regBramAddr + 11'h1; // @[Dram2Bram.scala 193:34]
  wire [1:0] _GEN_87 = _T_13 ? 2'h0 : 2'h2; // @[Dram2Bram.scala 211:48 Dram2Bram.scala 212:20 Dram2Bram.scala 197:16]
  wire  _GEN_92 = regRowDone ? 1'h0 : regAgentHasValid; // @[Dram2Bram.scala 200:24 Dram2Bram.scala 207:26 Dram2Bram.scala 98:33]
  wire [10:0] _GEN_93 = regRowDone ? 11'h0 : regAgentRowInfo_length; // @[Dram2Bram.scala 200:24 Dram2Bram.scala 208:32 Dram2Bram.scala 97:32]
  wire [10:0] _GEN_94 = regRowDone ? _regBramAddr_T_1 : regAgentRowInfo_rowAddr; // @[Dram2Bram.scala 200:24 Dram2Bram.scala 209:33 Dram2Bram.scala 97:32]
  wire [10:0] _GEN_95 = regRowDone ? _regDramRowCnt_T_1 : regDramRowCnt; // @[Dram2Bram.scala 200:24 Dram2Bram.scala 210:23 Dram2Bram.scala 93:30]
  wire [1:0] _GEN_96 = regRowDone ? _GEN_87 : 2'h2; // @[Dram2Bram.scala 200:24 Dram2Bram.scala 197:16]
  wire  _GEN_97 = regRowDone & _T_13; // @[Dram2Bram.scala 200:24 Dram2Bram.scala 63:14]
  wire [10:0] _GEN_101 = _T_14 ? _regBramAddr_T_1 : regBramAddr; // @[Conditional.scala 39:67 Dram2Bram.scala 193:19 Dram2Bram.scala 96:28]
  wire [10:0] _GEN_102 = _T_14 ? 11'h0 : regBramLine_els_0_col; // @[Conditional.scala 39:67 Dram2Bram.scala 194:19 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_103 = _T_14 ? 8'h0 : regBramLine_els_0_value; // @[Conditional.scala 39:67 Dram2Bram.scala 194:19 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_104 = _T_14 ? 11'h0 : regBramLine_els_1_col; // @[Conditional.scala 39:67 Dram2Bram.scala 194:19 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_105 = _T_14 ? 8'h0 : regBramLine_els_1_value; // @[Conditional.scala 39:67 Dram2Bram.scala 194:19 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_106 = _T_14 ? 11'h0 : regBramLine_els_2_col; // @[Conditional.scala 39:67 Dram2Bram.scala 194:19 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_107 = _T_14 ? 8'h0 : regBramLine_els_2_value; // @[Conditional.scala 39:67 Dram2Bram.scala 194:19 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_108 = _T_14 ? 11'h0 : regBramLine_els_3_col; // @[Conditional.scala 39:67 Dram2Bram.scala 194:19 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_109 = _T_14 ? 8'h0 : regBramLine_els_3_value; // @[Conditional.scala 39:67 Dram2Bram.scala 194:19 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_110 = _T_14 ? 11'h0 : regBramLine_els_4_col; // @[Conditional.scala 39:67 Dram2Bram.scala 194:19 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_111 = _T_14 ? 8'h0 : regBramLine_els_4_value; // @[Conditional.scala 39:67 Dram2Bram.scala 194:19 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_112 = _T_14 ? 11'h0 : regBramLine_els_5_col; // @[Conditional.scala 39:67 Dram2Bram.scala 194:19 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_113 = _T_14 ? 8'h0 : regBramLine_els_5_value; // @[Conditional.scala 39:67 Dram2Bram.scala 194:19 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_114 = _T_14 ? 11'h0 : regBramLine_els_6_col; // @[Conditional.scala 39:67 Dram2Bram.scala 194:19 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_115 = _T_14 ? 8'h0 : regBramLine_els_6_value; // @[Conditional.scala 39:67 Dram2Bram.scala 194:19 Dram2Bram.scala 89:28]
  wire [10:0] _GEN_116 = _T_14 ? 11'h0 : regBramLine_els_7_col; // @[Conditional.scala 39:67 Dram2Bram.scala 194:19 Dram2Bram.scala 89:28]
  wire [7:0] _GEN_117 = _T_14 ? 8'h0 : regBramLine_els_7_value; // @[Conditional.scala 39:67 Dram2Bram.scala 194:19 Dram2Bram.scala 89:28]
  wire [2:0] _GEN_118 = _T_14 ? 3'h0 : regBramLineIdx; // @[Conditional.scala 39:67 Dram2Bram.scala 195:22 Dram2Bram.scala 90:31]
  wire [1:0] _GEN_119 = _T_14 ? _GEN_96 : regState; // @[Conditional.scala 39:67 Dram2Bram.scala 87:25]
  wire  _GEN_120 = _T_14 ? 1'h0 : regRowDone; // @[Conditional.scala 39:67 Dram2Bram.scala 198:18 Dram2Bram.scala 99:27]
  wire  _GEN_124 = _T_14 ? _GEN_92 : regAgentHasValid; // @[Conditional.scala 39:67 Dram2Bram.scala 98:33]
  wire [10:0] _GEN_125 = _T_14 ? _GEN_93 : regAgentRowInfo_length; // @[Conditional.scala 39:67 Dram2Bram.scala 97:32]
  wire [10:0] _GEN_126 = _T_14 ? _GEN_94 : regAgentRowInfo_rowAddr; // @[Conditional.scala 39:67 Dram2Bram.scala 97:32]
  wire [10:0] _GEN_127 = _T_14 ? _GEN_95 : regDramRowCnt; // @[Conditional.scala 39:67 Dram2Bram.scala 93:30]
  wire  _GEN_128 = _T_14 & _GEN_97; // @[Conditional.scala 39:67 Dram2Bram.scala 63:14]
  wire  _GEN_153 = _T_2 ? _GEN_86 : _GEN_128; // @[Conditional.scala 39:67]
  wire  _GEN_154 = _T_2 ? 1'h0 : _T_14; // @[Conditional.scala 39:67 Dram2Bram.scala 60:25]
  wire  _GEN_158 = _T_2 ? 1'h0 : _T_14 & regRowDone; // @[Conditional.scala 39:67 Dram2Bram.scala 62:33]
  wire  _GEN_183 = _T_1 ? 1'h0 : _T_2; // @[Conditional.scala 39:67 Dram2Bram.scala 84:18]
  wire  _GEN_190 = _T_1 ? 1'h0 : _GEN_153; // @[Conditional.scala 39:67 Dram2Bram.scala 63:14]
  wire  _GEN_191 = _T_1 ? 1'h0 : _GEN_154; // @[Conditional.scala 39:67 Dram2Bram.scala 60:25]
  wire  _GEN_195 = _T_1 ? 1'h0 : _GEN_158; // @[Conditional.scala 39:67 Dram2Bram.scala 62:33]
  wire  _GEN_242 = ~_T & ~_T_1; // @[Dram2Bram.scala 174:19]
  ReadReqGen rg ( // @[Dram2Bram.scala 75:18]
    .clock(rg_clock),
    .reset(rg_reset),
    .io_ctrl_start(rg_io_ctrl_start),
    .io_ctrl_baseAddr(rg_io_ctrl_baseAddr),
    .io_ctrl_byteCount(rg_io_ctrl_byteCount),
    .io_reqs_ready(rg_io_reqs_ready),
    .io_reqs_valid(rg_io_reqs_valid),
    .io_reqs_bits_addr(rg_io_reqs_bits_addr),
    .io_reqs_bits_numBytes(rg_io_reqs_bits_numBytes)
  );
  FPGAQueue_7 FPGAQueue ( // @[Dram2Bram.scala 82:20]
    .clock(FPGAQueue_clock),
    .reset(FPGAQueue_reset),
    .io_enq_ready(FPGAQueue_io_enq_ready),
    .io_enq_valid(FPGAQueue_io_enq_valid),
    .io_enq_bits_channelID(FPGAQueue_io_enq_bits_channelID),
    .io_enq_bits_readData(FPGAQueue_io_enq_bits_readData),
    .io_enq_bits_isLast(FPGAQueue_io_enq_bits_isLast),
    .io_deq_ready(FPGAQueue_io_deq_ready),
    .io_deq_valid(FPGAQueue_io_deq_valid),
    .io_deq_bits_readData(FPGAQueue_io_deq_bits_readData)
  );
  assign io_dramReq_valid = rg_io_reqs_valid; // @[Dram2Bram.scala 76:14]
  assign io_dramReq_bits_addr = rg_io_reqs_bits_addr; // @[Dram2Bram.scala 76:14]
  assign io_dramReq_bits_numBytes = rg_io_reqs_bits_numBytes; // @[Dram2Bram.scala 76:14]
  assign io_dramRsp_ready = FPGAQueue_io_enq_ready; // @[Dram2Bram.scala 83:14]
  assign io_bramCmd_req_addr = regBramAddr; // @[Conditional.scala 39:67 Dram2Bram.scala 191:27]
  assign io_bramCmd_req_writeData = {{8'd0}, _io_bramCmd_req_writeData_T}; // @[Dram2Bram.scala 190:53]
  assign io_bramCmd_req_writeEn = _T ? 1'h0 : _GEN_191; // @[Conditional.scala 40:58 Dram2Bram.scala 60:25]
  assign io_finished = _T ? 1'h0 : _GEN_190; // @[Conditional.scala 40:58 Dram2Bram.scala 108:19]
  assign io_agentRowAddress_req_addr = regDramRowCnt; // @[Dram2Bram.scala 200:24 Dram2Bram.scala 204:36]
  assign io_agentRowAddress_req_writeData = {regAgentRowInfo_rowAddr,regAgentRowInfo_length}; // @[Dram2Bram.scala 205:67]
  assign io_agentRowAddress_req_writeEn = _T ? 1'h0 : _GEN_195; // @[Conditional.scala 40:58 Dram2Bram.scala 62:33]
  assign rg_clock = clock;
  assign rg_reset = reset;
  assign rg_io_ctrl_start = _T ? 1'h0 : _T_1; // @[Conditional.scala 40:58 Dram2Bram.scala 107:24]
  assign rg_io_ctrl_baseAddr = io_baseAddr[31:0];
  assign rg_io_ctrl_byteCount = byteCount[31:0];
  assign rg_io_reqs_ready = io_dramReq_ready; // @[Dram2Bram.scala 76:14]
  assign FPGAQueue_clock = clock;
  assign FPGAQueue_reset = reset;
  assign FPGAQueue_io_enq_valid = io_dramRsp_valid; // @[Dram2Bram.scala 83:14]
  assign FPGAQueue_io_enq_bits_channelID = io_dramRsp_bits_channelID; // @[Dram2Bram.scala 83:14]
  assign FPGAQueue_io_enq_bits_readData = io_dramRsp_bits_readData; // @[Dram2Bram.scala 83:14]
  assign FPGAQueue_io_enq_bits_isLast = io_dramRsp_bits_isLast; // @[Dram2Bram.scala 83:14]
  assign FPGAQueue_io_deq_ready = _T ? 1'h0 : _GEN_183; // @[Conditional.scala 40:58 Dram2Bram.scala 84:18]
  always @(posedge clock) begin
    if (reset) begin // @[Dram2Bram.scala 87:25]
      regState <= 2'h0; // @[Dram2Bram.scala 87:25]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_start) begin // @[Dram2Bram.scala 109:22]
        regState <= 2'h1; // @[Dram2Bram.scala 115:18]
      end
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      regState <= 2'h2; // @[Dram2Bram.scala 135:18]
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      regState <= _GEN_82;
    end else begin
      regState <= _GEN_119;
    end
    if (reset) begin // @[Dram2Bram.scala 89:28]
      regBramLine_els_0_value <= 8'h0; // @[Dram2Bram.scala 89:28]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regBramLine_els_0_value <= 8'h0; // @[Dram2Bram.scala 139:21]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLine_els_0_value <= _GEN_71;
      end else begin
        regBramLine_els_0_value <= _GEN_103;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 89:28]
      regBramLine_els_0_col <= 11'h0; // @[Dram2Bram.scala 89:28]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regBramLine_els_0_col <= 11'h0; // @[Dram2Bram.scala 139:21]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLine_els_0_col <= _GEN_63;
      end else begin
        regBramLine_els_0_col <= _GEN_102;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 89:28]
      regBramLine_els_1_value <= 8'h0; // @[Dram2Bram.scala 89:28]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regBramLine_els_1_value <= 8'h0; // @[Dram2Bram.scala 139:21]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLine_els_1_value <= _GEN_72;
      end else begin
        regBramLine_els_1_value <= _GEN_105;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 89:28]
      regBramLine_els_1_col <= 11'h0; // @[Dram2Bram.scala 89:28]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regBramLine_els_1_col <= 11'h0; // @[Dram2Bram.scala 139:21]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLine_els_1_col <= _GEN_64;
      end else begin
        regBramLine_els_1_col <= _GEN_104;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 89:28]
      regBramLine_els_2_value <= 8'h0; // @[Dram2Bram.scala 89:28]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regBramLine_els_2_value <= 8'h0; // @[Dram2Bram.scala 139:21]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLine_els_2_value <= _GEN_73;
      end else begin
        regBramLine_els_2_value <= _GEN_107;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 89:28]
      regBramLine_els_2_col <= 11'h0; // @[Dram2Bram.scala 89:28]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regBramLine_els_2_col <= 11'h0; // @[Dram2Bram.scala 139:21]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLine_els_2_col <= _GEN_65;
      end else begin
        regBramLine_els_2_col <= _GEN_106;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 89:28]
      regBramLine_els_3_value <= 8'h0; // @[Dram2Bram.scala 89:28]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regBramLine_els_3_value <= 8'h0; // @[Dram2Bram.scala 139:21]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLine_els_3_value <= _GEN_74;
      end else begin
        regBramLine_els_3_value <= _GEN_109;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 89:28]
      regBramLine_els_3_col <= 11'h0; // @[Dram2Bram.scala 89:28]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regBramLine_els_3_col <= 11'h0; // @[Dram2Bram.scala 139:21]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLine_els_3_col <= _GEN_66;
      end else begin
        regBramLine_els_3_col <= _GEN_108;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 89:28]
      regBramLine_els_4_value <= 8'h0; // @[Dram2Bram.scala 89:28]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regBramLine_els_4_value <= 8'h0; // @[Dram2Bram.scala 139:21]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLine_els_4_value <= _GEN_75;
      end else begin
        regBramLine_els_4_value <= _GEN_111;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 89:28]
      regBramLine_els_4_col <= 11'h0; // @[Dram2Bram.scala 89:28]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regBramLine_els_4_col <= 11'h0; // @[Dram2Bram.scala 139:21]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLine_els_4_col <= _GEN_67;
      end else begin
        regBramLine_els_4_col <= _GEN_110;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 89:28]
      regBramLine_els_5_value <= 8'h0; // @[Dram2Bram.scala 89:28]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regBramLine_els_5_value <= 8'h0; // @[Dram2Bram.scala 139:21]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLine_els_5_value <= _GEN_76;
      end else begin
        regBramLine_els_5_value <= _GEN_113;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 89:28]
      regBramLine_els_5_col <= 11'h0; // @[Dram2Bram.scala 89:28]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regBramLine_els_5_col <= 11'h0; // @[Dram2Bram.scala 139:21]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLine_els_5_col <= _GEN_68;
      end else begin
        regBramLine_els_5_col <= _GEN_112;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 89:28]
      regBramLine_els_6_value <= 8'h0; // @[Dram2Bram.scala 89:28]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regBramLine_els_6_value <= 8'h0; // @[Dram2Bram.scala 139:21]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLine_els_6_value <= _GEN_77;
      end else begin
        regBramLine_els_6_value <= _GEN_115;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 89:28]
      regBramLine_els_6_col <= 11'h0; // @[Dram2Bram.scala 89:28]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regBramLine_els_6_col <= 11'h0; // @[Dram2Bram.scala 139:21]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLine_els_6_col <= _GEN_69;
      end else begin
        regBramLine_els_6_col <= _GEN_114;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 89:28]
      regBramLine_els_7_value <= 8'h0; // @[Dram2Bram.scala 89:28]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regBramLine_els_7_value <= 8'h0; // @[Dram2Bram.scala 139:21]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLine_els_7_value <= _GEN_78;
      end else begin
        regBramLine_els_7_value <= _GEN_117;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 89:28]
      regBramLine_els_7_col <= 11'h0; // @[Dram2Bram.scala 89:28]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regBramLine_els_7_col <= 11'h0; // @[Dram2Bram.scala 139:21]
      end else if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLine_els_7_col <= _GEN_70;
      end else begin
        regBramLine_els_7_col <= _GEN_116;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 90:31]
      regBramLineIdx <= 3'h0; // @[Dram2Bram.scala 90:31]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_start) begin // @[Dram2Bram.scala 109:22]
        regBramLineIdx <= 3'h0; // @[Dram2Bram.scala 117:24]
      end
    end else if (!(_T_1)) begin // @[Conditional.scala 39:67]
      if (_T_2) begin // @[Conditional.scala 39:67]
        regBramLineIdx <= _GEN_80;
      end else begin
        regBramLineIdx <= _GEN_118;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 93:30]
      regDramRowCnt <= 11'h0; // @[Dram2Bram.scala 93:30]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_start) begin // @[Dram2Bram.scala 109:22]
        regDramRowCnt <= 11'h0; // @[Dram2Bram.scala 118:23]
      end
    end else if (!(_T_1)) begin // @[Conditional.scala 39:67]
      if (_T_2) begin // @[Conditional.scala 39:67]
        regDramRowCnt <= _GEN_85;
      end else begin
        regDramRowCnt <= _GEN_127;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 94:30]
      regDramColCnt <= 11'h0; // @[Dram2Bram.scala 94:30]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_start) begin // @[Dram2Bram.scala 109:22]
        regDramColCnt <= 11'h0; // @[Dram2Bram.scala 119:23]
      end
    end else if (!(_T_1)) begin // @[Conditional.scala 39:67]
      if (_T_2) begin // @[Conditional.scala 39:67]
        regDramColCnt <= _GEN_81;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 96:28]
      regBramAddr <= 11'h0; // @[Dram2Bram.scala 96:28]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_start) begin // @[Dram2Bram.scala 109:22]
        regBramAddr <= 11'h0; // @[Dram2Bram.scala 122:21]
      end
    end else if (!(_T_1)) begin // @[Conditional.scala 39:67]
      if (!(_T_2)) begin // @[Conditional.scala 39:67]
        regBramAddr <= _GEN_101;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 97:32]
      regAgentRowInfo_rowAddr <= 11'h0; // @[Dram2Bram.scala 97:32]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_start) begin // @[Dram2Bram.scala 109:22]
        regAgentRowInfo_rowAddr <= 11'h0; // @[Dram2Bram.scala 124:33]
      end
    end else if (!(_T_1)) begin // @[Conditional.scala 39:67]
      if (!(_T_2)) begin // @[Conditional.scala 39:67]
        regAgentRowInfo_rowAddr <= _GEN_126;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 97:32]
      regAgentRowInfo_length <= 11'h0; // @[Dram2Bram.scala 97:32]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_start) begin // @[Dram2Bram.scala 109:22]
        regAgentRowInfo_length <= 11'h0; // @[Dram2Bram.scala 125:32]
      end
    end else if (!(_T_1)) begin // @[Conditional.scala 39:67]
      if (_T_2) begin // @[Conditional.scala 39:67]
        regAgentRowInfo_length <= _GEN_83;
      end else begin
        regAgentRowInfo_length <= _GEN_125;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 98:33]
      regAgentHasValid <= 1'h0; // @[Dram2Bram.scala 98:33]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_start) begin // @[Dram2Bram.scala 109:22]
        regAgentHasValid <= 1'h0; // @[Dram2Bram.scala 127:26]
      end
    end else if (!(_T_1)) begin // @[Conditional.scala 39:67]
      if (_T_2) begin // @[Conditional.scala 39:67]
        regAgentHasValid <= _GEN_79;
      end else begin
        regAgentHasValid <= _GEN_124;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 99:27]
      regRowDone <= 1'h0; // @[Dram2Bram.scala 99:27]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_start) begin // @[Dram2Bram.scala 109:22]
        regRowDone <= 1'h0; // @[Dram2Bram.scala 121:20]
      end
    end else if (!(_T_1)) begin // @[Conditional.scala 39:67]
      if (_T_2) begin // @[Conditional.scala 39:67]
        regRowDone <= _GEN_84;
      end else begin
        regRowDone <= _GEN_120;
      end
    end
    if (reset) begin // @[Dram2Bram.scala 100:29]
      regNElements <= 32'h0; // @[Dram2Bram.scala 100:29]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_start) begin // @[Dram2Bram.scala 109:22]
        regNElements <= {{10'd0}, io_nElements}; // @[Dram2Bram.scala 113:22]
      end
    end
    if (reset) begin // @[Dram2Bram.scala 102:25]
      regNRows <= 11'h0; // @[Dram2Bram.scala 102:25]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regNRows <= io_nRows; // @[Dram2Bram.scala 138:18]
      end
    end
    if (reset) begin // @[Dram2Bram.scala 103:25]
      regNCols <= 11'h0; // @[Dram2Bram.scala 103:25]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[Conditional.scala 39:67]
        regNCols <= io_nCols; // @[Dram2Bram.scala 137:18]
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~_T & ~_T_1 & _T_2 & _T_3 & dramRowDone & ~_T_6 & ~(regBramLineIdx == 3'h0 | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Dram2Bram.scala:174 assert(regBramLineIdx === 0.U)\n"); // @[Dram2Bram.scala 174:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (~_T & ~_T_1 & _T_2 & _T_3 & dramRowDone & ~_T_6 & ~(regBramLineIdx == 3'h0 | reset)) begin
          $fatal; // @[Dram2Bram.scala 174:19]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_242 & ~_T_2 & _T_14 & regRowDone & ~(regAgentHasValid | reset)) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Dram2Bram.scala:201 assert(regAgentHasValid === true.B)\n"); // @[Dram2Bram.scala 201:15]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_242 & ~_T_2 & _T_14 & regRowDone & ~(regAgentHasValid | reset)) begin
          $fatal; // @[Dram2Bram.scala 201:15]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regState = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  regBramLine_els_0_value = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  regBramLine_els_0_col = _RAND_2[10:0];
  _RAND_3 = {1{`RANDOM}};
  regBramLine_els_1_value = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  regBramLine_els_1_col = _RAND_4[10:0];
  _RAND_5 = {1{`RANDOM}};
  regBramLine_els_2_value = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  regBramLine_els_2_col = _RAND_6[10:0];
  _RAND_7 = {1{`RANDOM}};
  regBramLine_els_3_value = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  regBramLine_els_3_col = _RAND_8[10:0];
  _RAND_9 = {1{`RANDOM}};
  regBramLine_els_4_value = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  regBramLine_els_4_col = _RAND_10[10:0];
  _RAND_11 = {1{`RANDOM}};
  regBramLine_els_5_value = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  regBramLine_els_5_col = _RAND_12[10:0];
  _RAND_13 = {1{`RANDOM}};
  regBramLine_els_6_value = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  regBramLine_els_6_col = _RAND_14[10:0];
  _RAND_15 = {1{`RANDOM}};
  regBramLine_els_7_value = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  regBramLine_els_7_col = _RAND_16[10:0];
  _RAND_17 = {1{`RANDOM}};
  regBramLineIdx = _RAND_17[2:0];
  _RAND_18 = {1{`RANDOM}};
  regDramRowCnt = _RAND_18[10:0];
  _RAND_19 = {1{`RANDOM}};
  regDramColCnt = _RAND_19[10:0];
  _RAND_20 = {1{`RANDOM}};
  regBramAddr = _RAND_20[10:0];
  _RAND_21 = {1{`RANDOM}};
  regAgentRowInfo_rowAddr = _RAND_21[10:0];
  _RAND_22 = {1{`RANDOM}};
  regAgentRowInfo_length = _RAND_22[10:0];
  _RAND_23 = {1{`RANDOM}};
  regAgentHasValid = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  regRowDone = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  regNElements = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  regNRows = _RAND_26[10:0];
  _RAND_27 = {1{`RANDOM}};
  regNCols = _RAND_27[10:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module WriteReqGen(
  input         clock,
  input         reset,
  input         io_ctrl_start,
  input  [31:0] io_ctrl_baseAddr,
  input  [31:0] io_ctrl_byteCount,
  input         io_reqs_ready,
  output        io_reqs_valid,
  output [31:0] io_reqs_bits_addr
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [1:0] regState; // @[MemReqGen.scala 40:25]
  reg [31:0] regAddr; // @[MemReqGen.scala 41:24]
  reg [31:0] regBytesLeft; // @[MemReqGen.scala 42:29]
  wire  unalignedAddr = io_ctrl_baseAddr[2:0] != 3'h0; // @[MemReqGen.scala 59:63]
  wire  unalignedSize = io_ctrl_byteCount[2:0] != 3'h0; // @[MemReqGen.scala 62:64]
  wire  isUnaligned = unalignedSize | unalignedAddr; // @[MemReqGen.scala 63:35]
  wire  _T = 2'h0 == regState; // @[Conditional.scala 37:30]
  wire  _T_1 = 2'h1 == regState; // @[Conditional.scala 37:30]
  wire [31:0] _regAddr_T_1 = regAddr + 32'h8; // @[MemReqGen.scala 79:32]
  wire [31:0] _regBytesLeft_T_1 = regBytesLeft - 32'h8; // @[MemReqGen.scala 80:42]
  wire [31:0] _GEN_1 = io_reqs_ready ? _regAddr_T_1 : regAddr; // @[MemReqGen.scala 77:32 MemReqGen.scala 79:21 MemReqGen.scala 41:24]
  wire [31:0] _GEN_2 = io_reqs_ready ? _regBytesLeft_T_1 : regBytesLeft; // @[MemReqGen.scala 77:32 MemReqGen.scala 80:26 MemReqGen.scala 42:29]
  wire  _GEN_7 = regBytesLeft == 32'h0 ? 1'h0 : 1'h1; // @[MemReqGen.scala 73:37 MemReqGen.scala 47:17]
  wire  _T_4 = 2'h2 == regState; // @[Conditional.scala 37:30]
  wire [1:0] _GEN_10 = ~io_ctrl_start ? 2'h0 : regState; // @[MemReqGen.scala 87:31 MemReqGen.scala 87:42 MemReqGen.scala 40:25]
  wire  _T_6 = 2'h3 == regState; // @[Conditional.scala 37:30]
  wire  _T_8 = ~reset; // @[MemReqGen.scala 93:15]
  wire  _GEN_16 = _T_1 & _GEN_7; // @[Conditional.scala 39:67 MemReqGen.scala 47:17]
  wire  _GEN_32 = ~_T & ~_T_1 & ~_T_4 & _T_6; // @[MemReqGen.scala 93:15]
  assign io_reqs_valid = _T ? 1'h0 : _GEN_16; // @[Conditional.scala 40:58 MemReqGen.scala 47:17]
  assign io_reqs_bits_addr = regAddr; // @[MemReqGen.scala 50:21]
  always @(posedge clock) begin
    if (reset) begin // @[MemReqGen.scala 40:25]
      regState <= 2'h0; // @[MemReqGen.scala 40:25]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (io_ctrl_start) begin // @[MemReqGen.scala 69:30]
        if (isUnaligned) begin // @[MemReqGen.scala 69:47]
          regState <= 2'h3;
        end else begin
          regState <= 2'h1;
        end
      end
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      if (regBytesLeft == 32'h0) begin // @[MemReqGen.scala 73:37]
        regState <= 2'h2; // @[MemReqGen.scala 73:48]
      end
    end else if (_T_4) begin // @[Conditional.scala 39:67]
      regState <= _GEN_10;
    end
    if (reset) begin // @[MemReqGen.scala 41:24]
      regAddr <= 32'h0; // @[MemReqGen.scala 41:24]
    end else if (_T) begin // @[Conditional.scala 40:58]
      regAddr <= io_ctrl_baseAddr; // @[MemReqGen.scala 67:17]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      if (!(regBytesLeft == 32'h0)) begin // @[MemReqGen.scala 73:37]
        regAddr <= _GEN_1;
      end
    end
    if (reset) begin // @[MemReqGen.scala 42:29]
      regBytesLeft <= 32'h0; // @[MemReqGen.scala 42:29]
    end else if (_T) begin // @[Conditional.scala 40:58]
      regBytesLeft <= io_ctrl_byteCount; // @[MemReqGen.scala 68:22]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      if (!(regBytesLeft == 32'h0)) begin // @[MemReqGen.scala 73:37]
        regBytesLeft <= _GEN_2;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~_T & ~_T_1 & ~_T_4 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,"Error in MemReqGen! regAddr = %x byteCount = %d \n",regAddr,io_ctrl_byteCount); // @[MemReqGen.scala 93:15]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_32 & _T_8) begin
          $fwrite(32'h80000002,"Unaligned addr? %d size? %d \n",unalignedAddr,unalignedSize); // @[MemReqGen.scala 94:15]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regState = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  regAddr = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  regBytesLeft = _RAND_2[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module StreamWriter(
  input         clock,
  input         reset,
  input         io_start,
  output        io_finished,
  input  [31:0] io_baseAddr,
  input  [31:0] io_byteCount,
  output        io_in_ready,
  input         io_in_valid,
  input  [63:0] io_in_bits,
  input         io_req_ready,
  output        io_req_valid,
  output [31:0] io_req_bits_addr,
  output [7:0]  io_req_bits_numBytes,
  input         io_wdat_ready,
  output        io_wdat_valid,
  output [63:0] io_wdat_bits,
  output        io_rsp_ready,
  input         io_rsp_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  WriteReqGen_clock; // @[StreamWriter.scala 60:18]
  wire  WriteReqGen_reset; // @[StreamWriter.scala 60:18]
  wire  WriteReqGen_io_ctrl_start; // @[StreamWriter.scala 60:18]
  wire [31:0] WriteReqGen_io_ctrl_baseAddr; // @[StreamWriter.scala 60:18]
  wire [31:0] WriteReqGen_io_ctrl_byteCount; // @[StreamWriter.scala 60:18]
  wire  WriteReqGen_io_reqs_ready; // @[StreamWriter.scala 60:18]
  wire  WriteReqGen_io_reqs_valid; // @[StreamWriter.scala 60:18]
  wire [31:0] WriteReqGen_io_reqs_bits_addr; // @[StreamWriter.scala 60:18]
  reg [31:0] regNumPendingReqs; // @[StreamWriter.scala 41:34]
  reg [31:0] regRequestedBytes; // @[StreamWriter.scala 42:34]
  wire  reqFired = io_req_valid & io_req_ready; // @[StreamWriter.scala 47:33]
  wire  rspFired = io_rsp_valid & io_rsp_ready; // @[StreamWriter.scala 48:33]
  wire [7:0] _regRequestedBytes_T = reqFired ? io_req_bits_numBytes : 8'h0; // @[StreamWriter.scala 49:49]
  wire [31:0] _GEN_4 = {{24'd0}, _regRequestedBytes_T}; // @[StreamWriter.scala 49:44]
  wire [31:0] _regRequestedBytes_T_2 = regRequestedBytes + _GEN_4; // @[StreamWriter.scala 49:44]
  wire [31:0] _regNumPendingReqs_T_1 = regNumPendingReqs + 32'h1; // @[StreamWriter.scala 50:74]
  wire [31:0] _regNumPendingReqs_T_3 = regNumPendingReqs - 32'h1; // @[StreamWriter.scala 51:79]
  wire  fin = regRequestedBytes == io_byteCount & regNumPendingReqs == 32'h0; // @[StreamWriter.scala 56:50]
  WriteReqGen WriteReqGen ( // @[StreamWriter.scala 60:18]
    .clock(WriteReqGen_clock),
    .reset(WriteReqGen_reset),
    .io_ctrl_start(WriteReqGen_io_ctrl_start),
    .io_ctrl_baseAddr(WriteReqGen_io_ctrl_baseAddr),
    .io_ctrl_byteCount(WriteReqGen_io_ctrl_byteCount),
    .io_reqs_ready(WriteReqGen_io_reqs_ready),
    .io_reqs_valid(WriteReqGen_io_reqs_valid),
    .io_reqs_bits_addr(WriteReqGen_io_reqs_bits_addr)
  );
  assign io_finished = io_start & fin; // @[StreamWriter.scala 57:27]
  assign io_in_ready = io_wdat_ready; // @[StreamWriter.scala 72:47]
  assign io_req_valid = WriteReqGen_io_reqs_valid; // @[StreamWriter.scala 69:11]
  assign io_req_bits_addr = WriteReqGen_io_reqs_bits_addr; // @[StreamWriter.scala 69:11]
  assign io_req_bits_numBytes = 8'h8; // @[StreamWriter.scala 69:11]
  assign io_wdat_valid = io_in_valid; // @[StreamWriter.scala 72:47]
  assign io_wdat_bits = io_in_bits; // @[StreamWriter.scala 72:47]
  assign io_rsp_ready = 1'h1; // @[StreamWriter.scala 39:16]
  assign WriteReqGen_clock = clock;
  assign WriteReqGen_reset = reset;
  assign WriteReqGen_io_ctrl_start = io_start; // @[StreamWriter.scala 61:17]
  assign WriteReqGen_io_ctrl_baseAddr = io_baseAddr; // @[StreamWriter.scala 62:20]
  assign WriteReqGen_io_ctrl_byteCount = io_byteCount; // @[StreamWriter.scala 63:21]
  assign WriteReqGen_io_reqs_ready = io_req_ready; // @[StreamWriter.scala 69:11]
  always @(posedge clock) begin
    if (reset) begin // @[StreamWriter.scala 41:34]
      regNumPendingReqs <= 32'h0; // @[StreamWriter.scala 41:34]
    end else if (~io_start) begin // @[StreamWriter.scala 43:19]
      regNumPendingReqs <= 32'h0; // @[StreamWriter.scala 44:23]
    end else if (reqFired & ~rspFired) begin // @[StreamWriter.scala 50:33]
      regNumPendingReqs <= _regNumPendingReqs_T_1; // @[StreamWriter.scala 50:53]
    end else if (~reqFired & rspFired) begin // @[StreamWriter.scala 51:38]
      regNumPendingReqs <= _regNumPendingReqs_T_3; // @[StreamWriter.scala 51:58]
    end
    if (reset) begin // @[StreamWriter.scala 42:34]
      regRequestedBytes <= 32'h0; // @[StreamWriter.scala 42:34]
    end else if (~io_start) begin // @[StreamWriter.scala 43:19]
      regRequestedBytes <= 32'h0; // @[StreamWriter.scala 45:23]
    end else begin
      regRequestedBytes <= _regRequestedBytes_T_2; // @[StreamWriter.scala 49:23]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regNumPendingReqs = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  regRequestedBytes = _RAND_1[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ProcessingElement(
  input         clock,
  input         reset,
  input  [7:0]  io_price,
  output [10:0] io_agentIdx,
  output        io_rewardIn_ready,
  input         io_rewardIn_valid,
  input  [7:0]  io_rewardIn_bits_reward,
  input  [10:0] io_rewardIn_bits_idx,
  input         io_rewardIn_bits_last,
  input         io_PEResultOut_ready,
  output        io_PEResultOut_valid,
  output [7:0]  io_PEResultOut_bits_benefit,
  output [7:0]  io_PEResultOut_bits_oldPrice,
  output [10:0] io_PEResultOut_bits_id,
  output        io_PEResultOut_bits_last
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] s1_last; // @[ProcessingElement.scala 61:24]
  reg [7:0] s1_reward; // @[ProcessingElement.scala 62:26]
  reg [7:0] s1_idx; // @[ProcessingElement.scala 63:23]
  reg  s1_valid; // @[ProcessingElement.scala 64:25]
  reg [7:0] s2_price; // @[ProcessingElement.scala 66:25]
  reg [7:0] s2_idx; // @[ProcessingElement.scala 67:23]
  reg  s2_last; // @[ProcessingElement.scala 68:24]
  reg  s2_valid; // @[ProcessingElement.scala 69:25]
  reg [7:0] s2_reward; // @[ProcessingElement.scala 70:26]
  reg [7:0] s3_benefit; // @[ProcessingElement.scala 72:27]
  reg [7:0] s3_oldPrice; // @[ProcessingElement.scala 73:28]
  reg  s3_valid; // @[ProcessingElement.scala 74:25]
  reg [7:0] s3_last; // @[ProcessingElement.scala 75:24]
  reg [7:0] s3_idx; // @[ProcessingElement.scala 76:23]
  wire  stall = ~io_PEResultOut_ready; // @[ProcessingElement.scala 80:15]
  wire  fire = io_rewardIn_ready & io_rewardIn_valid; // @[Decoupled.scala 40:37]
  wire [10:0] _GEN_2 = fire ? io_rewardIn_bits_idx : {{3'd0}, s1_idx}; // @[ProcessingElement.scala 87:17 ProcessingElement.scala 90:14 ProcessingElement.scala 63:23]
  wire [8:0] _diff_T = {1'b0,$signed(s2_reward)}; // @[ProcessingElement.scala 103:30]
  wire [8:0] _diff_T_1 = {1'b0,$signed(s2_price)}; // @[ProcessingElement.scala 103:48]
  wire [8:0] diff = $signed(_diff_T) - $signed(_diff_T_1); // @[ProcessingElement.scala 103:33]
  wire [10:0] _GEN_9 = ~stall ? _GEN_2 : {{3'd0}, s1_idx}; // @[ProcessingElement.scala 82:16 ProcessingElement.scala 63:23]
  wire [7:0] _GEN_14 = ~stall ? s1_last : {{7'd0}, s2_last}; // @[ProcessingElement.scala 82:16 ProcessingElement.scala 98:13 ProcessingElement.scala 68:24]
  assign io_agentIdx = io_rewardIn_bits_idx; // @[ProcessingElement.scala 87:17 ProcessingElement.scala 88:19]
  assign io_rewardIn_ready = ~stall; // @[ProcessingElement.scala 82:8]
  assign io_PEResultOut_valid = s3_valid; // @[ProcessingElement.scala 111:24]
  assign io_PEResultOut_bits_benefit = s3_benefit; // @[ProcessingElement.scala 114:31]
  assign io_PEResultOut_bits_oldPrice = s3_oldPrice; // @[ProcessingElement.scala 115:32]
  assign io_PEResultOut_bits_id = {{3'd0}, s3_idx}; // @[ProcessingElement.scala 113:26]
  assign io_PEResultOut_bits_last = s3_last[0]; // @[ProcessingElement.scala 112:28]
  always @(posedge clock) begin
    if (reset) begin // @[ProcessingElement.scala 61:24]
      s1_last <= 8'h0; // @[ProcessingElement.scala 61:24]
    end else if (~stall) begin // @[ProcessingElement.scala 82:16]
      if (fire) begin // @[ProcessingElement.scala 87:17]
        s1_last <= {{7'd0}, io_rewardIn_bits_last}; // @[ProcessingElement.scala 91:15]
      end
    end
    if (reset) begin // @[ProcessingElement.scala 62:26]
      s1_reward <= 8'h0; // @[ProcessingElement.scala 62:26]
    end else if (~stall) begin // @[ProcessingElement.scala 82:16]
      if (fire) begin // @[ProcessingElement.scala 87:17]
        s1_reward <= io_rewardIn_bits_reward; // @[ProcessingElement.scala 92:17]
      end
    end
    if (reset) begin // @[ProcessingElement.scala 63:23]
      s1_idx <= 8'h0; // @[ProcessingElement.scala 63:23]
    end else begin
      s1_idx <= _GEN_9[7:0];
    end
    if (reset) begin // @[ProcessingElement.scala 64:25]
      s1_valid <= 1'h0; // @[ProcessingElement.scala 64:25]
    end else if (~stall) begin // @[ProcessingElement.scala 82:16]
      s1_valid <= fire; // @[ProcessingElement.scala 86:14]
    end
    if (reset) begin // @[ProcessingElement.scala 66:25]
      s2_price <= 8'h0; // @[ProcessingElement.scala 66:25]
    end else if (~stall) begin // @[ProcessingElement.scala 82:16]
      s2_price <= io_price; // @[ProcessingElement.scala 100:14]
    end
    if (reset) begin // @[ProcessingElement.scala 67:23]
      s2_idx <= 8'h0; // @[ProcessingElement.scala 67:23]
    end else if (~stall) begin // @[ProcessingElement.scala 82:16]
      s2_idx <= s1_idx; // @[ProcessingElement.scala 97:12]
    end
    if (reset) begin // @[ProcessingElement.scala 68:24]
      s2_last <= 1'h0; // @[ProcessingElement.scala 68:24]
    end else begin
      s2_last <= _GEN_14[0];
    end
    if (reset) begin // @[ProcessingElement.scala 69:25]
      s2_valid <= 1'h0; // @[ProcessingElement.scala 69:25]
    end else if (~stall) begin // @[ProcessingElement.scala 82:16]
      s2_valid <= s1_valid; // @[ProcessingElement.scala 96:14]
    end
    if (reset) begin // @[ProcessingElement.scala 70:26]
      s2_reward <= 8'h0; // @[ProcessingElement.scala 70:26]
    end else if (~stall) begin // @[ProcessingElement.scala 82:16]
      s2_reward <= s1_reward; // @[ProcessingElement.scala 99:15]
    end
    if (reset) begin // @[ProcessingElement.scala 72:27]
      s3_benefit <= 8'h0; // @[ProcessingElement.scala 72:27]
    end else if (~stall) begin // @[ProcessingElement.scala 82:16]
      if (diff[8]) begin // @[ProcessingElement.scala 104:23]
        s3_benefit <= 8'h0;
      end else begin
        s3_benefit <= diff[7:0];
      end
    end
    if (reset) begin // @[ProcessingElement.scala 73:28]
      s3_oldPrice <= 8'h0; // @[ProcessingElement.scala 73:28]
    end else if (~stall) begin // @[ProcessingElement.scala 82:16]
      s3_oldPrice <= s2_price; // @[ProcessingElement.scala 105:17]
    end
    if (reset) begin // @[ProcessingElement.scala 74:25]
      s3_valid <= 1'h0; // @[ProcessingElement.scala 74:25]
    end else if (~stall) begin // @[ProcessingElement.scala 82:16]
      s3_valid <= s2_valid; // @[ProcessingElement.scala 106:14]
    end
    if (reset) begin // @[ProcessingElement.scala 75:24]
      s3_last <= 8'h0; // @[ProcessingElement.scala 75:24]
    end else if (~stall) begin // @[ProcessingElement.scala 82:16]
      s3_last <= {{7'd0}, s2_last}; // @[ProcessingElement.scala 107:13]
    end
    if (reset) begin // @[ProcessingElement.scala 76:23]
      s3_idx <= 8'h0; // @[ProcessingElement.scala 76:23]
    end else if (~stall) begin // @[ProcessingElement.scala 82:16]
      s3_idx <= s2_idx; // @[ProcessingElement.scala 108:12]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  s1_last = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  s1_reward = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  s1_idx = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  s1_valid = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  s2_price = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  s2_idx = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  s2_last = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s2_valid = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  s2_reward = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  s3_benefit = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  s3_oldPrice = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  s3_valid = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  s3_last = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  s3_idx = _RAND_13[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SearchTask(
  input         clock,
  input         reset,
  output        io_benefitIn_0_ready,
  input         io_benefitIn_0_valid,
  input  [7:0]  io_benefitIn_0_bits_benefit,
  input  [7:0]  io_benefitIn_0_bits_oldPrice,
  input  [10:0] io_benefitIn_0_bits_id,
  input         io_benefitIn_0_bits_last,
  output        io_benefitIn_1_ready,
  input         io_benefitIn_1_valid,
  input  [7:0]  io_benefitIn_1_bits_benefit,
  input  [7:0]  io_benefitIn_1_bits_oldPrice,
  input  [10:0] io_benefitIn_1_bits_id,
  output        io_benefitIn_2_ready,
  input         io_benefitIn_2_valid,
  input  [7:0]  io_benefitIn_2_bits_benefit,
  input  [7:0]  io_benefitIn_2_bits_oldPrice,
  input  [10:0] io_benefitIn_2_bits_id,
  output        io_benefitIn_3_ready,
  input         io_benefitIn_3_valid,
  input  [7:0]  io_benefitIn_3_bits_benefit,
  input  [7:0]  io_benefitIn_3_bits_oldPrice,
  input  [10:0] io_benefitIn_3_bits_id,
  output        io_benefitIn_4_ready,
  input         io_benefitIn_4_valid,
  input  [7:0]  io_benefitIn_4_bits_benefit,
  input  [7:0]  io_benefitIn_4_bits_oldPrice,
  input  [10:0] io_benefitIn_4_bits_id,
  output        io_benefitIn_5_ready,
  input         io_benefitIn_5_valid,
  input  [7:0]  io_benefitIn_5_bits_benefit,
  input  [7:0]  io_benefitIn_5_bits_oldPrice,
  input  [10:0] io_benefitIn_5_bits_id,
  output        io_benefitIn_6_ready,
  input         io_benefitIn_6_valid,
  input  [7:0]  io_benefitIn_6_bits_benefit,
  input  [7:0]  io_benefitIn_6_bits_oldPrice,
  input  [10:0] io_benefitIn_6_bits_id,
  output        io_benefitIn_7_ready,
  input         io_benefitIn_7_valid,
  input  [7:0]  io_benefitIn_7_bits_benefit,
  input  [7:0]  io_benefitIn_7_bits_oldPrice,
  input  [10:0] io_benefitIn_7_bits_id,
  input         io_resultOut_ready,
  output        io_resultOut_valid,
  output [10:0] io_resultOut_bits_winner,
  output [7:0]  io_resultOut_bits_bid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
`endif // RANDOMIZE_REG_INIT
  reg  s_valid_0; // @[SearchTask.scala 79:24]
  reg  s_valid_1; // @[SearchTask.scala 79:24]
  reg  s_valid_2; // @[SearchTask.scala 79:24]
  reg  s_valid_3; // @[SearchTask.scala 79:24]
  reg  s_last_0; // @[SearchTask.scala 80:23]
  reg  s_last_1; // @[SearchTask.scala 80:23]
  reg  s_last_2; // @[SearchTask.scala 80:23]
  reg  s_last_3; // @[SearchTask.scala 80:23]
  reg [7:0] compRegs_0_0_benefit; // @[SearchTask.scala 88:12]
  reg [10:0] compRegs_0_0_id; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_0_runningBid; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_0_oldPrice; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_1_benefit; // @[SearchTask.scala 88:12]
  reg [10:0] compRegs_0_1_id; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_1_runningBid; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_1_oldPrice; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_2_benefit; // @[SearchTask.scala 88:12]
  reg [10:0] compRegs_0_2_id; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_2_runningBid; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_2_oldPrice; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_3_benefit; // @[SearchTask.scala 88:12]
  reg [10:0] compRegs_0_3_id; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_3_runningBid; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_3_oldPrice; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_4_benefit; // @[SearchTask.scala 88:12]
  reg [10:0] compRegs_0_4_id; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_4_runningBid; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_4_oldPrice; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_5_benefit; // @[SearchTask.scala 88:12]
  reg [10:0] compRegs_0_5_id; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_5_runningBid; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_5_oldPrice; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_6_benefit; // @[SearchTask.scala 88:12]
  reg [10:0] compRegs_0_6_id; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_6_runningBid; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_6_oldPrice; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_7_benefit; // @[SearchTask.scala 88:12]
  reg [10:0] compRegs_0_7_id; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_7_runningBid; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_0_7_oldPrice; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_1_0_benefit; // @[SearchTask.scala 88:12]
  reg [10:0] compRegs_1_0_id; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_1_0_runningBid; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_1_0_oldPrice; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_1_1_benefit; // @[SearchTask.scala 88:12]
  reg [10:0] compRegs_1_1_id; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_1_1_runningBid; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_1_1_oldPrice; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_1_2_benefit; // @[SearchTask.scala 88:12]
  reg [10:0] compRegs_1_2_id; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_1_2_runningBid; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_1_2_oldPrice; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_1_3_benefit; // @[SearchTask.scala 88:12]
  reg [10:0] compRegs_1_3_id; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_1_3_runningBid; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_1_3_oldPrice; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_2_0_benefit; // @[SearchTask.scala 88:12]
  reg [10:0] compRegs_2_0_id; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_2_0_runningBid; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_2_0_oldPrice; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_2_1_benefit; // @[SearchTask.scala 88:12]
  reg [10:0] compRegs_2_1_id; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_2_1_runningBid; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_2_1_oldPrice; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_3_0_benefit; // @[SearchTask.scala 88:12]
  reg [10:0] compRegs_3_0_id; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_3_0_runningBid; // @[SearchTask.scala 88:12]
  reg [7:0] compRegs_3_0_oldPrice; // @[SearchTask.scala 88:12]
  reg [7:0] slast_runningWinner_benefit; // @[SearchTask.scala 90:36]
  reg [10:0] slast_runningWinner_id; // @[SearchTask.scala 90:36]
  reg [7:0] slast_runningWinner_runningBid; // @[SearchTask.scala 90:36]
  reg [7:0] slast_runningWinner_oldPrice; // @[SearchTask.scala 90:36]
  reg  slast_valid; // @[SearchTask.scala 91:28]
  reg  slast_last; // @[SearchTask.scala 92:27]
  wire  stall = ~io_resultOut_ready & slast_valid; // @[SearchTask.scala 94:35]
  wire  _fire_T = io_benefitIn_0_ready & io_benefitIn_0_valid; // @[Decoupled.scala 40:37]
  wire  _fire_T_1 = io_benefitIn_1_ready & io_benefitIn_1_valid; // @[Decoupled.scala 40:37]
  wire  _fire_T_2 = io_benefitIn_2_ready & io_benefitIn_2_valid; // @[Decoupled.scala 40:37]
  wire  _fire_T_3 = io_benefitIn_3_ready & io_benefitIn_3_valid; // @[Decoupled.scala 40:37]
  wire  _fire_T_4 = io_benefitIn_4_ready & io_benefitIn_4_valid; // @[Decoupled.scala 40:37]
  wire  _fire_T_5 = io_benefitIn_5_ready & io_benefitIn_5_valid; // @[Decoupled.scala 40:37]
  wire  _fire_T_6 = io_benefitIn_6_ready & io_benefitIn_6_valid; // @[Decoupled.scala 40:37]
  wire  _fire_T_7 = io_benefitIn_7_ready & io_benefitIn_7_valid; // @[Decoupled.scala 40:37]
  wire  fire = _fire_T | _fire_T_1 | _fire_T_2 | _fire_T_3 | _fire_T_4 | _fire_T_5 | _fire_T_6 | _fire_T_7; // @[SearchTask.scala 99:61]
  wire [7:0] hypoBid = compRegs_0_0_benefit - compRegs_0_1_benefit; // @[SearchTask.scala 131:46]
  wire [7:0] hypoBid_1 = compRegs_0_1_benefit - compRegs_0_0_benefit; // @[SearchTask.scala 138:47]
  wire [7:0] hypoBid_2 = compRegs_0_2_benefit - compRegs_0_3_benefit; // @[SearchTask.scala 131:46]
  wire [7:0] hypoBid_3 = compRegs_0_3_benefit - compRegs_0_2_benefit; // @[SearchTask.scala 138:47]
  wire [7:0] hypoBid_4 = compRegs_0_4_benefit - compRegs_0_5_benefit; // @[SearchTask.scala 131:46]
  wire [7:0] hypoBid_5 = compRegs_0_5_benefit - compRegs_0_4_benefit; // @[SearchTask.scala 138:47]
  wire [7:0] hypoBid_6 = compRegs_0_6_benefit - compRegs_0_7_benefit; // @[SearchTask.scala 131:46]
  wire [7:0] hypoBid_7 = compRegs_0_7_benefit - compRegs_0_6_benefit; // @[SearchTask.scala 138:47]
  wire [7:0] hypoBid_8 = compRegs_1_0_benefit - compRegs_1_1_benefit; // @[SearchTask.scala 131:46]
  wire [7:0] hypoBid_9 = compRegs_1_1_benefit - compRegs_1_0_benefit; // @[SearchTask.scala 138:47]
  wire [7:0] hypoBid_10 = compRegs_1_2_benefit - compRegs_1_3_benefit; // @[SearchTask.scala 131:46]
  wire [7:0] hypoBid_11 = compRegs_1_3_benefit - compRegs_1_2_benefit; // @[SearchTask.scala 138:47]
  wire [7:0] hypoBid_12 = compRegs_2_0_benefit - compRegs_2_1_benefit; // @[SearchTask.scala 131:46]
  wire [7:0] hypoBid_13 = compRegs_2_1_benefit - compRegs_2_0_benefit; // @[SearchTask.scala 138:47]
  wire [7:0] hypoBid_14 = compRegs_3_0_benefit - slast_runningWinner_benefit; // @[SearchTask.scala 153:47]
  wire [7:0] _slast_runningWinner_runningBid_T_1 = hypoBid_14 < compRegs_3_0_runningBid ? hypoBid_14 :
    compRegs_3_0_runningBid; // @[SearchTask.scala 154:48]
  wire [7:0] hypoBid_15 = slast_runningWinner_benefit - compRegs_3_0_benefit; // @[SearchTask.scala 156:53]
  wire [7:0] _slast_runningWinner_runningBid_T_3 = hypoBid_15 < slast_runningWinner_runningBid ? hypoBid_15 :
    slast_runningWinner_runningBid; // @[SearchTask.scala 157:48]
  wire [7:0] _io_resultOut_bits_bid_T_1 = slast_runningWinner_oldPrice + 8'h1; // @[SearchTask.scala 169:59]
  wire [7:0] _io_resultOut_bits_bid_T_3 = slast_runningWinner_runningBid + slast_runningWinner_oldPrice; // @[SearchTask.scala 173:61]
  wire [7:0] _GEN_152 = slast_runningWinner_benefit == 8'h0 ? 8'h0 : _io_resultOut_bits_bid_T_3; // @[SearchTask.scala 170:51 SearchTask.scala 171:27 SearchTask.scala 173:27]
  assign io_benefitIn_0_ready = ~stall; // @[SearchTask.scala 97:9]
  assign io_benefitIn_1_ready = ~stall; // @[SearchTask.scala 97:9]
  assign io_benefitIn_2_ready = ~stall; // @[SearchTask.scala 97:9]
  assign io_benefitIn_3_ready = ~stall; // @[SearchTask.scala 97:9]
  assign io_benefitIn_4_ready = ~stall; // @[SearchTask.scala 97:9]
  assign io_benefitIn_5_ready = ~stall; // @[SearchTask.scala 97:9]
  assign io_benefitIn_6_ready = ~stall; // @[SearchTask.scala 97:9]
  assign io_benefitIn_7_ready = ~stall; // @[SearchTask.scala 97:9]
  assign io_resultOut_valid = slast_valid & slast_last; // @[SearchTask.scala 166:39]
  assign io_resultOut_bits_winner = slast_runningWinner_id; // @[SearchTask.scala 167:28]
  assign io_resultOut_bits_bid = slast_runningWinner_runningBid == 8'h0 & slast_runningWinner_benefit > 8'h0 ?
    _io_resultOut_bits_bid_T_1 : _GEN_152; // @[SearchTask.scala 168:86 SearchTask.scala 169:27]
  always @(posedge clock) begin
    if (reset) begin // @[SearchTask.scala 79:24]
      s_valid_0 <= 1'h0; // @[SearchTask.scala 79:24]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      s_valid_0 <= fire; // @[SearchTask.scala 100:16]
    end
    if (reset) begin // @[SearchTask.scala 79:24]
      s_valid_1 <= 1'h0; // @[SearchTask.scala 79:24]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      s_valid_1 <= s_valid_0; // @[SearchTask.scala 119:20]
    end
    if (reset) begin // @[SearchTask.scala 79:24]
      s_valid_2 <= 1'h0; // @[SearchTask.scala 79:24]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      s_valid_2 <= s_valid_1; // @[SearchTask.scala 119:20]
    end
    if (reset) begin // @[SearchTask.scala 79:24]
      s_valid_3 <= 1'h0; // @[SearchTask.scala 79:24]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      s_valid_3 <= s_valid_2; // @[SearchTask.scala 119:20]
    end
    if (reset) begin // @[SearchTask.scala 80:23]
      s_last_0 <= 1'h0; // @[SearchTask.scala 80:23]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        s_last_0 <= io_benefitIn_0_bits_last; // @[SearchTask.scala 104:17]
      end
    end
    if (reset) begin // @[SearchTask.scala 80:23]
      s_last_1 <= 1'h0; // @[SearchTask.scala 80:23]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      s_last_1 <= s_last_0; // @[SearchTask.scala 120:19]
    end
    if (reset) begin // @[SearchTask.scala 80:23]
      s_last_2 <= 1'h0; // @[SearchTask.scala 80:23]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      s_last_2 <= s_last_1; // @[SearchTask.scala 120:19]
    end
    if (reset) begin // @[SearchTask.scala 80:23]
      s_last_3 <= 1'h0; // @[SearchTask.scala 80:23]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      s_last_3 <= s_last_2; // @[SearchTask.scala 120:19]
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_0_benefit <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        if (_fire_T) begin // @[SearchTask.scala 109:38]
          compRegs_0_0_benefit <= io_benefitIn_0_bits_benefit; // @[SearchTask.scala 110:34]
        end else begin
          compRegs_0_0_benefit <= 8'h0; // @[SearchTask.scala 112:34]
        end
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_0_id <= 11'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_0_id <= io_benefitIn_0_bits_id; // @[SearchTask.scala 107:27]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_0_runningBid <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_0_runningBid <= 8'hff; // @[SearchTask.scala 108:35]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_0_oldPrice <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_0_oldPrice <= io_benefitIn_0_bits_oldPrice; // @[SearchTask.scala 106:33]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_1_benefit <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        if (_fire_T_1) begin // @[SearchTask.scala 109:38]
          compRegs_0_1_benefit <= io_benefitIn_1_bits_benefit; // @[SearchTask.scala 110:34]
        end else begin
          compRegs_0_1_benefit <= 8'h0; // @[SearchTask.scala 112:34]
        end
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_1_id <= 11'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_1_id <= io_benefitIn_1_bits_id; // @[SearchTask.scala 107:27]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_1_runningBid <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_1_runningBid <= 8'hff; // @[SearchTask.scala 108:35]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_1_oldPrice <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_1_oldPrice <= io_benefitIn_1_bits_oldPrice; // @[SearchTask.scala 106:33]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_2_benefit <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        if (_fire_T_2) begin // @[SearchTask.scala 109:38]
          compRegs_0_2_benefit <= io_benefitIn_2_bits_benefit; // @[SearchTask.scala 110:34]
        end else begin
          compRegs_0_2_benefit <= 8'h0; // @[SearchTask.scala 112:34]
        end
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_2_id <= 11'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_2_id <= io_benefitIn_2_bits_id; // @[SearchTask.scala 107:27]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_2_runningBid <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_2_runningBid <= 8'hff; // @[SearchTask.scala 108:35]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_2_oldPrice <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_2_oldPrice <= io_benefitIn_2_bits_oldPrice; // @[SearchTask.scala 106:33]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_3_benefit <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        if (_fire_T_3) begin // @[SearchTask.scala 109:38]
          compRegs_0_3_benefit <= io_benefitIn_3_bits_benefit; // @[SearchTask.scala 110:34]
        end else begin
          compRegs_0_3_benefit <= 8'h0; // @[SearchTask.scala 112:34]
        end
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_3_id <= 11'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_3_id <= io_benefitIn_3_bits_id; // @[SearchTask.scala 107:27]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_3_runningBid <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_3_runningBid <= 8'hff; // @[SearchTask.scala 108:35]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_3_oldPrice <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_3_oldPrice <= io_benefitIn_3_bits_oldPrice; // @[SearchTask.scala 106:33]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_4_benefit <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        if (_fire_T_4) begin // @[SearchTask.scala 109:38]
          compRegs_0_4_benefit <= io_benefitIn_4_bits_benefit; // @[SearchTask.scala 110:34]
        end else begin
          compRegs_0_4_benefit <= 8'h0; // @[SearchTask.scala 112:34]
        end
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_4_id <= 11'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_4_id <= io_benefitIn_4_bits_id; // @[SearchTask.scala 107:27]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_4_runningBid <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_4_runningBid <= 8'hff; // @[SearchTask.scala 108:35]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_4_oldPrice <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_4_oldPrice <= io_benefitIn_4_bits_oldPrice; // @[SearchTask.scala 106:33]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_5_benefit <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        if (_fire_T_5) begin // @[SearchTask.scala 109:38]
          compRegs_0_5_benefit <= io_benefitIn_5_bits_benefit; // @[SearchTask.scala 110:34]
        end else begin
          compRegs_0_5_benefit <= 8'h0; // @[SearchTask.scala 112:34]
        end
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_5_id <= 11'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_5_id <= io_benefitIn_5_bits_id; // @[SearchTask.scala 107:27]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_5_runningBid <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_5_runningBid <= 8'hff; // @[SearchTask.scala 108:35]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_5_oldPrice <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_5_oldPrice <= io_benefitIn_5_bits_oldPrice; // @[SearchTask.scala 106:33]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_6_benefit <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        if (_fire_T_6) begin // @[SearchTask.scala 109:38]
          compRegs_0_6_benefit <= io_benefitIn_6_bits_benefit; // @[SearchTask.scala 110:34]
        end else begin
          compRegs_0_6_benefit <= 8'h0; // @[SearchTask.scala 112:34]
        end
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_6_id <= 11'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_6_id <= io_benefitIn_6_bits_id; // @[SearchTask.scala 107:27]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_6_runningBid <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_6_runningBid <= 8'hff; // @[SearchTask.scala 108:35]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_6_oldPrice <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_6_oldPrice <= io_benefitIn_6_bits_oldPrice; // @[SearchTask.scala 106:33]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_7_benefit <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        if (_fire_T_7) begin // @[SearchTask.scala 109:38]
          compRegs_0_7_benefit <= io_benefitIn_7_bits_benefit; // @[SearchTask.scala 110:34]
        end else begin
          compRegs_0_7_benefit <= 8'h0; // @[SearchTask.scala 112:34]
        end
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_7_id <= 11'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_7_id <= io_benefitIn_7_bits_id; // @[SearchTask.scala 107:27]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_7_runningBid <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_7_runningBid <= 8'hff; // @[SearchTask.scala 108:35]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_0_7_oldPrice <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (fire) begin // @[SearchTask.scala 102:16]
        compRegs_0_7_oldPrice <= io_benefitIn_7_bits_oldPrice; // @[SearchTask.scala 106:33]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_1_0_benefit <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_0_0_benefit >= compRegs_0_1_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_1_0_benefit <= compRegs_0_0_benefit; // @[SearchTask.scala 129:36]
      end else begin
        compRegs_1_0_benefit <= compRegs_0_1_benefit; // @[SearchTask.scala 136:36]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_1_0_id <= 11'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_0_0_benefit >= compRegs_0_1_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_1_0_id <= compRegs_0_0_id; // @[SearchTask.scala 128:31]
      end else begin
        compRegs_1_0_id <= compRegs_0_1_id; // @[SearchTask.scala 135:31]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_1_0_runningBid <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_0_0_benefit >= compRegs_0_1_benefit) begin // @[SearchTask.scala 126:59]
        if (hypoBid < compRegs_0_0_runningBid) begin // @[SearchTask.scala 132:45]
          compRegs_1_0_runningBid <= hypoBid;
        end else begin
          compRegs_1_0_runningBid <= compRegs_0_0_runningBid;
        end
      end else if (hypoBid_1 < compRegs_0_1_runningBid) begin // @[SearchTask.scala 139:45]
        compRegs_1_0_runningBid <= hypoBid_1;
      end else begin
        compRegs_1_0_runningBid <= compRegs_0_1_runningBid;
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_1_0_oldPrice <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_0_0_benefit >= compRegs_0_1_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_1_0_oldPrice <= compRegs_0_0_oldPrice; // @[SearchTask.scala 130:37]
      end else begin
        compRegs_1_0_oldPrice <= compRegs_0_1_oldPrice; // @[SearchTask.scala 137:37]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_1_1_benefit <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_0_2_benefit >= compRegs_0_3_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_1_1_benefit <= compRegs_0_2_benefit; // @[SearchTask.scala 129:36]
      end else begin
        compRegs_1_1_benefit <= compRegs_0_3_benefit; // @[SearchTask.scala 136:36]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_1_1_id <= 11'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_0_2_benefit >= compRegs_0_3_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_1_1_id <= compRegs_0_2_id; // @[SearchTask.scala 128:31]
      end else begin
        compRegs_1_1_id <= compRegs_0_3_id; // @[SearchTask.scala 135:31]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_1_1_runningBid <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_0_2_benefit >= compRegs_0_3_benefit) begin // @[SearchTask.scala 126:59]
        if (hypoBid_2 < compRegs_0_2_runningBid) begin // @[SearchTask.scala 132:45]
          compRegs_1_1_runningBid <= hypoBid_2;
        end else begin
          compRegs_1_1_runningBid <= compRegs_0_2_runningBid;
        end
      end else if (hypoBid_3 < compRegs_0_3_runningBid) begin // @[SearchTask.scala 139:45]
        compRegs_1_1_runningBid <= hypoBid_3;
      end else begin
        compRegs_1_1_runningBid <= compRegs_0_3_runningBid;
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_1_1_oldPrice <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_0_2_benefit >= compRegs_0_3_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_1_1_oldPrice <= compRegs_0_2_oldPrice; // @[SearchTask.scala 130:37]
      end else begin
        compRegs_1_1_oldPrice <= compRegs_0_3_oldPrice; // @[SearchTask.scala 137:37]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_1_2_benefit <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_0_4_benefit >= compRegs_0_5_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_1_2_benefit <= compRegs_0_4_benefit; // @[SearchTask.scala 129:36]
      end else begin
        compRegs_1_2_benefit <= compRegs_0_5_benefit; // @[SearchTask.scala 136:36]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_1_2_id <= 11'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_0_4_benefit >= compRegs_0_5_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_1_2_id <= compRegs_0_4_id; // @[SearchTask.scala 128:31]
      end else begin
        compRegs_1_2_id <= compRegs_0_5_id; // @[SearchTask.scala 135:31]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_1_2_runningBid <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_0_4_benefit >= compRegs_0_5_benefit) begin // @[SearchTask.scala 126:59]
        if (hypoBid_4 < compRegs_0_4_runningBid) begin // @[SearchTask.scala 132:45]
          compRegs_1_2_runningBid <= hypoBid_4;
        end else begin
          compRegs_1_2_runningBid <= compRegs_0_4_runningBid;
        end
      end else if (hypoBid_5 < compRegs_0_5_runningBid) begin // @[SearchTask.scala 139:45]
        compRegs_1_2_runningBid <= hypoBid_5;
      end else begin
        compRegs_1_2_runningBid <= compRegs_0_5_runningBid;
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_1_2_oldPrice <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_0_4_benefit >= compRegs_0_5_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_1_2_oldPrice <= compRegs_0_4_oldPrice; // @[SearchTask.scala 130:37]
      end else begin
        compRegs_1_2_oldPrice <= compRegs_0_5_oldPrice; // @[SearchTask.scala 137:37]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_1_3_benefit <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_0_6_benefit >= compRegs_0_7_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_1_3_benefit <= compRegs_0_6_benefit; // @[SearchTask.scala 129:36]
      end else begin
        compRegs_1_3_benefit <= compRegs_0_7_benefit; // @[SearchTask.scala 136:36]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_1_3_id <= 11'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_0_6_benefit >= compRegs_0_7_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_1_3_id <= compRegs_0_6_id; // @[SearchTask.scala 128:31]
      end else begin
        compRegs_1_3_id <= compRegs_0_7_id; // @[SearchTask.scala 135:31]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_1_3_runningBid <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_0_6_benefit >= compRegs_0_7_benefit) begin // @[SearchTask.scala 126:59]
        if (hypoBid_6 < compRegs_0_6_runningBid) begin // @[SearchTask.scala 132:45]
          compRegs_1_3_runningBid <= hypoBid_6;
        end else begin
          compRegs_1_3_runningBid <= compRegs_0_6_runningBid;
        end
      end else if (hypoBid_7 < compRegs_0_7_runningBid) begin // @[SearchTask.scala 139:45]
        compRegs_1_3_runningBid <= hypoBid_7;
      end else begin
        compRegs_1_3_runningBid <= compRegs_0_7_runningBid;
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_1_3_oldPrice <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_0_6_benefit >= compRegs_0_7_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_1_3_oldPrice <= compRegs_0_6_oldPrice; // @[SearchTask.scala 130:37]
      end else begin
        compRegs_1_3_oldPrice <= compRegs_0_7_oldPrice; // @[SearchTask.scala 137:37]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_2_0_benefit <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_1_0_benefit >= compRegs_1_1_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_2_0_benefit <= compRegs_1_0_benefit; // @[SearchTask.scala 129:36]
      end else begin
        compRegs_2_0_benefit <= compRegs_1_1_benefit; // @[SearchTask.scala 136:36]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_2_0_id <= 11'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_1_0_benefit >= compRegs_1_1_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_2_0_id <= compRegs_1_0_id; // @[SearchTask.scala 128:31]
      end else begin
        compRegs_2_0_id <= compRegs_1_1_id; // @[SearchTask.scala 135:31]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_2_0_runningBid <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_1_0_benefit >= compRegs_1_1_benefit) begin // @[SearchTask.scala 126:59]
        if (hypoBid_8 < compRegs_1_0_runningBid) begin // @[SearchTask.scala 132:45]
          compRegs_2_0_runningBid <= hypoBid_8;
        end else begin
          compRegs_2_0_runningBid <= compRegs_1_0_runningBid;
        end
      end else if (hypoBid_9 < compRegs_1_1_runningBid) begin // @[SearchTask.scala 139:45]
        compRegs_2_0_runningBid <= hypoBid_9;
      end else begin
        compRegs_2_0_runningBid <= compRegs_1_1_runningBid;
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_2_0_oldPrice <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_1_0_benefit >= compRegs_1_1_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_2_0_oldPrice <= compRegs_1_0_oldPrice; // @[SearchTask.scala 130:37]
      end else begin
        compRegs_2_0_oldPrice <= compRegs_1_1_oldPrice; // @[SearchTask.scala 137:37]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_2_1_benefit <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_1_2_benefit >= compRegs_1_3_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_2_1_benefit <= compRegs_1_2_benefit; // @[SearchTask.scala 129:36]
      end else begin
        compRegs_2_1_benefit <= compRegs_1_3_benefit; // @[SearchTask.scala 136:36]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_2_1_id <= 11'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_1_2_benefit >= compRegs_1_3_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_2_1_id <= compRegs_1_2_id; // @[SearchTask.scala 128:31]
      end else begin
        compRegs_2_1_id <= compRegs_1_3_id; // @[SearchTask.scala 135:31]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_2_1_runningBid <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_1_2_benefit >= compRegs_1_3_benefit) begin // @[SearchTask.scala 126:59]
        if (hypoBid_10 < compRegs_1_2_runningBid) begin // @[SearchTask.scala 132:45]
          compRegs_2_1_runningBid <= hypoBid_10;
        end else begin
          compRegs_2_1_runningBid <= compRegs_1_2_runningBid;
        end
      end else if (hypoBid_11 < compRegs_1_3_runningBid) begin // @[SearchTask.scala 139:45]
        compRegs_2_1_runningBid <= hypoBid_11;
      end else begin
        compRegs_2_1_runningBid <= compRegs_1_3_runningBid;
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_2_1_oldPrice <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_1_2_benefit >= compRegs_1_3_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_2_1_oldPrice <= compRegs_1_2_oldPrice; // @[SearchTask.scala 130:37]
      end else begin
        compRegs_2_1_oldPrice <= compRegs_1_3_oldPrice; // @[SearchTask.scala 137:37]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_3_0_benefit <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_2_0_benefit >= compRegs_2_1_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_3_0_benefit <= compRegs_2_0_benefit; // @[SearchTask.scala 129:36]
      end else begin
        compRegs_3_0_benefit <= compRegs_2_1_benefit; // @[SearchTask.scala 136:36]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_3_0_id <= 11'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_2_0_benefit >= compRegs_2_1_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_3_0_id <= compRegs_2_0_id; // @[SearchTask.scala 128:31]
      end else begin
        compRegs_3_0_id <= compRegs_2_1_id; // @[SearchTask.scala 135:31]
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_3_0_runningBid <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_2_0_benefit >= compRegs_2_1_benefit) begin // @[SearchTask.scala 126:59]
        if (hypoBid_12 < compRegs_2_0_runningBid) begin // @[SearchTask.scala 132:45]
          compRegs_3_0_runningBid <= hypoBid_12;
        end else begin
          compRegs_3_0_runningBid <= compRegs_2_0_runningBid;
        end
      end else if (hypoBid_13 < compRegs_2_1_runningBid) begin // @[SearchTask.scala 139:45]
        compRegs_3_0_runningBid <= hypoBid_13;
      end else begin
        compRegs_3_0_runningBid <= compRegs_2_1_runningBid;
      end
    end
    if (reset) begin // @[SearchTask.scala 88:12]
      compRegs_3_0_oldPrice <= 8'h0; // @[SearchTask.scala 88:12]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (compRegs_2_0_benefit >= compRegs_2_1_benefit) begin // @[SearchTask.scala 126:59]
        compRegs_3_0_oldPrice <= compRegs_2_0_oldPrice; // @[SearchTask.scala 130:37]
      end else begin
        compRegs_3_0_oldPrice <= compRegs_2_1_oldPrice; // @[SearchTask.scala 137:37]
      end
    end
    if (reset) begin // @[SearchTask.scala 90:36]
      slast_runningWinner_benefit <= 8'h0; // @[SearchTask.scala 90:36]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (slast_last | ~slast_valid) begin // @[SearchTask.scala 146:41]
        slast_runningWinner_benefit <= compRegs_3_0_benefit; // @[SearchTask.scala 147:29]
      end else if (compRegs_3_0_benefit > slast_runningWinner_benefit) begin // @[SearchTask.scala 149:67]
        slast_runningWinner_benefit <= compRegs_3_0_benefit; // @[SearchTask.scala 151:39]
      end
    end
    if (reset) begin // @[SearchTask.scala 90:36]
      slast_runningWinner_id <= 11'h0; // @[SearchTask.scala 90:36]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (slast_last | ~slast_valid) begin // @[SearchTask.scala 146:41]
        slast_runningWinner_id <= compRegs_3_0_id; // @[SearchTask.scala 147:29]
      end else if (compRegs_3_0_benefit > slast_runningWinner_benefit) begin // @[SearchTask.scala 149:67]
        slast_runningWinner_id <= compRegs_3_0_id; // @[SearchTask.scala 150:34]
      end
    end
    if (reset) begin // @[SearchTask.scala 90:36]
      slast_runningWinner_runningBid <= 8'h0; // @[SearchTask.scala 90:36]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (slast_last | ~slast_valid) begin // @[SearchTask.scala 146:41]
        slast_runningWinner_runningBid <= compRegs_3_0_runningBid; // @[SearchTask.scala 147:29]
      end else if (compRegs_3_0_benefit > slast_runningWinner_benefit) begin // @[SearchTask.scala 149:67]
        slast_runningWinner_runningBid <= _slast_runningWinner_runningBid_T_1; // @[SearchTask.scala 154:42]
      end else begin
        slast_runningWinner_runningBid <= _slast_runningWinner_runningBid_T_3; // @[SearchTask.scala 157:42]
      end
    end
    if (reset) begin // @[SearchTask.scala 90:36]
      slast_runningWinner_oldPrice <= 8'h0; // @[SearchTask.scala 90:36]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      if (slast_last | ~slast_valid) begin // @[SearchTask.scala 146:41]
        slast_runningWinner_oldPrice <= compRegs_3_0_oldPrice; // @[SearchTask.scala 147:29]
      end else if (compRegs_3_0_benefit > slast_runningWinner_benefit) begin // @[SearchTask.scala 149:67]
        slast_runningWinner_oldPrice <= compRegs_3_0_oldPrice; // @[SearchTask.scala 152:40]
      end
    end
    if (reset) begin // @[SearchTask.scala 91:28]
      slast_valid <= 1'h0; // @[SearchTask.scala 91:28]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      slast_valid <= s_valid_3; // @[SearchTask.scala 161:19]
    end
    if (reset) begin // @[SearchTask.scala 92:27]
      slast_last <= 1'h0; // @[SearchTask.scala 92:27]
    end else if (~stall) begin // @[SearchTask.scala 97:17]
      slast_last <= s_last_3; // @[SearchTask.scala 162:18]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  s_valid_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  s_valid_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  s_valid_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  s_valid_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  s_last_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  s_last_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  s_last_2 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  s_last_3 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  compRegs_0_0_benefit = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  compRegs_0_0_id = _RAND_9[10:0];
  _RAND_10 = {1{`RANDOM}};
  compRegs_0_0_runningBid = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  compRegs_0_0_oldPrice = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  compRegs_0_1_benefit = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  compRegs_0_1_id = _RAND_13[10:0];
  _RAND_14 = {1{`RANDOM}};
  compRegs_0_1_runningBid = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  compRegs_0_1_oldPrice = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  compRegs_0_2_benefit = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  compRegs_0_2_id = _RAND_17[10:0];
  _RAND_18 = {1{`RANDOM}};
  compRegs_0_2_runningBid = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  compRegs_0_2_oldPrice = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  compRegs_0_3_benefit = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  compRegs_0_3_id = _RAND_21[10:0];
  _RAND_22 = {1{`RANDOM}};
  compRegs_0_3_runningBid = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  compRegs_0_3_oldPrice = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  compRegs_0_4_benefit = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  compRegs_0_4_id = _RAND_25[10:0];
  _RAND_26 = {1{`RANDOM}};
  compRegs_0_4_runningBid = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  compRegs_0_4_oldPrice = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  compRegs_0_5_benefit = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  compRegs_0_5_id = _RAND_29[10:0];
  _RAND_30 = {1{`RANDOM}};
  compRegs_0_5_runningBid = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  compRegs_0_5_oldPrice = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  compRegs_0_6_benefit = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  compRegs_0_6_id = _RAND_33[10:0];
  _RAND_34 = {1{`RANDOM}};
  compRegs_0_6_runningBid = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  compRegs_0_6_oldPrice = _RAND_35[7:0];
  _RAND_36 = {1{`RANDOM}};
  compRegs_0_7_benefit = _RAND_36[7:0];
  _RAND_37 = {1{`RANDOM}};
  compRegs_0_7_id = _RAND_37[10:0];
  _RAND_38 = {1{`RANDOM}};
  compRegs_0_7_runningBid = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  compRegs_0_7_oldPrice = _RAND_39[7:0];
  _RAND_40 = {1{`RANDOM}};
  compRegs_1_0_benefit = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  compRegs_1_0_id = _RAND_41[10:0];
  _RAND_42 = {1{`RANDOM}};
  compRegs_1_0_runningBid = _RAND_42[7:0];
  _RAND_43 = {1{`RANDOM}};
  compRegs_1_0_oldPrice = _RAND_43[7:0];
  _RAND_44 = {1{`RANDOM}};
  compRegs_1_1_benefit = _RAND_44[7:0];
  _RAND_45 = {1{`RANDOM}};
  compRegs_1_1_id = _RAND_45[10:0];
  _RAND_46 = {1{`RANDOM}};
  compRegs_1_1_runningBid = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  compRegs_1_1_oldPrice = _RAND_47[7:0];
  _RAND_48 = {1{`RANDOM}};
  compRegs_1_2_benefit = _RAND_48[7:0];
  _RAND_49 = {1{`RANDOM}};
  compRegs_1_2_id = _RAND_49[10:0];
  _RAND_50 = {1{`RANDOM}};
  compRegs_1_2_runningBid = _RAND_50[7:0];
  _RAND_51 = {1{`RANDOM}};
  compRegs_1_2_oldPrice = _RAND_51[7:0];
  _RAND_52 = {1{`RANDOM}};
  compRegs_1_3_benefit = _RAND_52[7:0];
  _RAND_53 = {1{`RANDOM}};
  compRegs_1_3_id = _RAND_53[10:0];
  _RAND_54 = {1{`RANDOM}};
  compRegs_1_3_runningBid = _RAND_54[7:0];
  _RAND_55 = {1{`RANDOM}};
  compRegs_1_3_oldPrice = _RAND_55[7:0];
  _RAND_56 = {1{`RANDOM}};
  compRegs_2_0_benefit = _RAND_56[7:0];
  _RAND_57 = {1{`RANDOM}};
  compRegs_2_0_id = _RAND_57[10:0];
  _RAND_58 = {1{`RANDOM}};
  compRegs_2_0_runningBid = _RAND_58[7:0];
  _RAND_59 = {1{`RANDOM}};
  compRegs_2_0_oldPrice = _RAND_59[7:0];
  _RAND_60 = {1{`RANDOM}};
  compRegs_2_1_benefit = _RAND_60[7:0];
  _RAND_61 = {1{`RANDOM}};
  compRegs_2_1_id = _RAND_61[10:0];
  _RAND_62 = {1{`RANDOM}};
  compRegs_2_1_runningBid = _RAND_62[7:0];
  _RAND_63 = {1{`RANDOM}};
  compRegs_2_1_oldPrice = _RAND_63[7:0];
  _RAND_64 = {1{`RANDOM}};
  compRegs_3_0_benefit = _RAND_64[7:0];
  _RAND_65 = {1{`RANDOM}};
  compRegs_3_0_id = _RAND_65[10:0];
  _RAND_66 = {1{`RANDOM}};
  compRegs_3_0_runningBid = _RAND_66[7:0];
  _RAND_67 = {1{`RANDOM}};
  compRegs_3_0_oldPrice = _RAND_67[7:0];
  _RAND_68 = {1{`RANDOM}};
  slast_runningWinner_benefit = _RAND_68[7:0];
  _RAND_69 = {1{`RANDOM}};
  slast_runningWinner_id = _RAND_69[10:0];
  _RAND_70 = {1{`RANDOM}};
  slast_runningWinner_runningBid = _RAND_70[7:0];
  _RAND_71 = {1{`RANDOM}};
  slast_runningWinner_oldPrice = _RAND_71[7:0];
  _RAND_72 = {1{`RANDOM}};
  slast_valid = _RAND_72[0:0];
  _RAND_73 = {1{`RANDOM}};
  slast_last = _RAND_73[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Auction(
  input         clock,
  input         reset,
  input         io_memPort_0_memRdReq_ready,
  output        io_memPort_0_memRdReq_valid,
  output [31:0] io_memPort_0_memRdReq_bits_addr,
  output [7:0]  io_memPort_0_memRdReq_bits_numBytes,
  output        io_memPort_0_memRdRsp_ready,
  input         io_memPort_0_memRdRsp_valid,
  input  [5:0]  io_memPort_0_memRdRsp_bits_channelID,
  input  [63:0] io_memPort_0_memRdRsp_bits_readData,
  input         io_memPort_0_memRdRsp_bits_isLast,
  input         io_memPort_0_memWrReq_ready,
  output        io_memPort_0_memWrReq_valid,
  output [31:0] io_memPort_0_memWrReq_bits_addr,
  input         io_memPort_0_memWrDat_ready,
  output        io_memPort_0_memWrDat_valid,
  output [63:0] io_memPort_0_memWrDat_bits,
  input         io_memPort_0_memWrRsp_valid,
  output        io_rfOut_finished,
  output [31:0] io_rfOut_cycleCount,
  output [31:0] io_rfOut_missCount,
  output [31:0] io_rfOut_iterCount,
  input         io_rfIn_start,
  input  [63:0] io_rfIn_baseAddr,
  input  [31:0] io_rfIn_nAgents,
  input  [31:0] io_rfIn_nObjects,
  input  [63:0] io_rfIn_baseAddrRes
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  wire  memController_clock; // @[Auction.scala 77:29]
  wire  memController_reset; // @[Auction.scala 77:29]
  wire  memController_io_unassignedAgents_ready; // @[Auction.scala 77:29]
  wire  memController_io_unassignedAgents_valid; // @[Auction.scala 77:29]
  wire [10:0] memController_io_unassignedAgents_bits_agent; // @[Auction.scala 77:29]
  wire  memController_io_requestedAgents_ready; // @[Auction.scala 77:29]
  wire  memController_io_requestedAgents_valid; // @[Auction.scala 77:29]
  wire [10:0] memController_io_requestedAgents_bits_agent; // @[Auction.scala 77:29]
  wire [10:0] memController_io_agentRowAddrReq_req_addr; // @[Auction.scala 77:29]
  wire [21:0] memController_io_agentRowAddrReq_rsp_readData; // @[Auction.scala 77:29]
  wire [10:0] memController_io_bramReq_req_addr; // @[Auction.scala 77:29]
  wire [159:0] memController_io_bramReq_rsp_readData; // @[Auction.scala 77:29]
  wire  memController_io_dataDistOut_ready; // @[Auction.scala 77:29]
  wire  memController_io_dataDistOut_valid; // @[Auction.scala 77:29]
  wire [7:0] memController_io_dataDistOut_bits_els_0_reward; // @[Auction.scala 77:29]
  wire [10:0] memController_io_dataDistOut_bits_els_0_idx; // @[Auction.scala 77:29]
  wire [7:0] memController_io_dataDistOut_bits_els_1_reward; // @[Auction.scala 77:29]
  wire [10:0] memController_io_dataDistOut_bits_els_1_idx; // @[Auction.scala 77:29]
  wire [7:0] memController_io_dataDistOut_bits_els_2_reward; // @[Auction.scala 77:29]
  wire [10:0] memController_io_dataDistOut_bits_els_2_idx; // @[Auction.scala 77:29]
  wire [7:0] memController_io_dataDistOut_bits_els_3_reward; // @[Auction.scala 77:29]
  wire [10:0] memController_io_dataDistOut_bits_els_3_idx; // @[Auction.scala 77:29]
  wire [7:0] memController_io_dataDistOut_bits_els_4_reward; // @[Auction.scala 77:29]
  wire [10:0] memController_io_dataDistOut_bits_els_4_idx; // @[Auction.scala 77:29]
  wire [7:0] memController_io_dataDistOut_bits_els_5_reward; // @[Auction.scala 77:29]
  wire [10:0] memController_io_dataDistOut_bits_els_5_idx; // @[Auction.scala 77:29]
  wire [7:0] memController_io_dataDistOut_bits_els_6_reward; // @[Auction.scala 77:29]
  wire [10:0] memController_io_dataDistOut_bits_els_6_idx; // @[Auction.scala 77:29]
  wire [7:0] memController_io_dataDistOut_bits_els_7_reward; // @[Auction.scala 77:29]
  wire [10:0] memController_io_dataDistOut_bits_els_7_idx; // @[Auction.scala 77:29]
  wire  memController_io_dataDistOut_bits_valids_0; // @[Auction.scala 77:29]
  wire  memController_io_dataDistOut_bits_valids_1; // @[Auction.scala 77:29]
  wire  memController_io_dataDistOut_bits_valids_2; // @[Auction.scala 77:29]
  wire  memController_io_dataDistOut_bits_valids_3; // @[Auction.scala 77:29]
  wire  memController_io_dataDistOut_bits_valids_4; // @[Auction.scala 77:29]
  wire  memController_io_dataDistOut_bits_valids_5; // @[Auction.scala 77:29]
  wire  memController_io_dataDistOut_bits_valids_6; // @[Auction.scala 77:29]
  wire  memController_io_dataDistOut_bits_valids_7; // @[Auction.scala 77:29]
  wire  memController_io_dataDistOut_bits_last; // @[Auction.scala 77:29]
  wire  controller_clock; // @[Auction.scala 82:26]
  wire  controller_reset; // @[Auction.scala 82:26]
  wire  controller_io_rfCtrl_finished; // @[Auction.scala 82:26]
  wire  controller_io_rfInfo_start; // @[Auction.scala 82:26]
  wire [63:0] controller_io_rfInfo_baseAddr; // @[Auction.scala 82:26]
  wire [31:0] controller_io_rfInfo_nAgents; // @[Auction.scala 82:26]
  wire [31:0] controller_io_rfInfo_nObjects; // @[Auction.scala 82:26]
  wire [21:0] controller_io_nElements; // @[Auction.scala 82:26]
  wire  controller_io_dram2bram_start; // @[Auction.scala 82:26]
  wire  controller_io_dram2bram_finished; // @[Auction.scala 82:26]
  wire [63:0] controller_io_dram2bram_baseAddr; // @[Auction.scala 82:26]
  wire [10:0] controller_io_dram2bram_nRows; // @[Auction.scala 82:26]
  wire [10:0] controller_io_dram2bram_nCols; // @[Auction.scala 82:26]
  wire  controller_io_unassignedAgentsIn_ready; // @[Auction.scala 82:26]
  wire  controller_io_unassignedAgentsIn_valid; // @[Auction.scala 82:26]
  wire [10:0] controller_io_unassignedAgentsIn_bits_agent; // @[Auction.scala 82:26]
  wire  controller_io_unassignedAgentsOut_ready; // @[Auction.scala 82:26]
  wire  controller_io_unassignedAgentsOut_valid; // @[Auction.scala 82:26]
  wire [10:0] controller_io_unassignedAgentsOut_bits_agent; // @[Auction.scala 82:26]
  wire  controller_io_requestedAgentsIn_ready; // @[Auction.scala 82:26]
  wire  controller_io_requestedAgentsIn_valid; // @[Auction.scala 82:26]
  wire [10:0] controller_io_requestedAgentsIn_bits_agent; // @[Auction.scala 82:26]
  wire  controller_io_requestedAgentsOut_ready; // @[Auction.scala 82:26]
  wire  controller_io_requestedAgentsOut_valid; // @[Auction.scala 82:26]
  wire [10:0] controller_io_requestedAgentsOut_bits_agent; // @[Auction.scala 82:26]
  wire  controller_io_doWriteBack; // @[Auction.scala 82:26]
  wire  controller_io_writeBackDone; // @[Auction.scala 82:26]
  wire  controller_io_reinit; // @[Auction.scala 82:26]
  wire  accountant_clock; // @[Auction.scala 87:26]
  wire  accountant_reset; // @[Auction.scala 87:26]
  wire  accountant_io_searchResultIn_ready; // @[Auction.scala 87:26]
  wire  accountant_io_searchResultIn_valid; // @[Auction.scala 87:26]
  wire [10:0] accountant_io_searchResultIn_bits_winner; // @[Auction.scala 87:26]
  wire [7:0] accountant_io_searchResultIn_bits_bid; // @[Auction.scala 87:26]
  wire  accountant_io_unassignedAgents_ready; // @[Auction.scala 87:26]
  wire  accountant_io_unassignedAgents_valid; // @[Auction.scala 87:26]
  wire [7:0] accountant_io_unassignedAgents_bits_agent; // @[Auction.scala 87:26]
  wire  accountant_io_requestedAgents_ready; // @[Auction.scala 87:26]
  wire  accountant_io_requestedAgents_valid; // @[Auction.scala 87:26]
  wire [7:0] accountant_io_requestedAgents_bits_agent; // @[Auction.scala 87:26]
  wire  accountant_io_rfInfo_start; // @[Auction.scala 87:26]
  wire [31:0] accountant_io_rfInfo_nObjects; // @[Auction.scala 87:26]
  wire [63:0] accountant_io_rfInfo_baseAddrRes; // @[Auction.scala 87:26]
  wire  accountant_io_doWriteBack; // @[Auction.scala 87:26]
  wire  accountant_io_writeBackDone; // @[Auction.scala 87:26]
  wire  accountant_io_writeBackStream_start; // @[Auction.scala 87:26]
  wire  accountant_io_writeBackStream_wrData_ready; // @[Auction.scala 87:26]
  wire  accountant_io_writeBackStream_wrData_valid; // @[Auction.scala 87:26]
  wire [63:0] accountant_io_writeBackStream_wrData_bits; // @[Auction.scala 87:26]
  wire  accountant_io_writeBackStream_finished; // @[Auction.scala 87:26]
  wire [31:0] accountant_io_writeBackStream_baseAddr; // @[Auction.scala 87:26]
  wire [31:0] accountant_io_writeBackStream_byteCount; // @[Auction.scala 87:26]
  wire [10:0] accountant_io_bramStoreReadAddr; // @[Auction.scala 87:26]
  wire [7:0] accountant_io_bramStoreReadData; // @[Auction.scala 87:26]
  wire [10:0] accountant_io_bramStoreWriteAddr; // @[Auction.scala 87:26]
  wire [7:0] accountant_io_bramStoreWriteData; // @[Auction.scala 87:26]
  wire  accountant_io_bramStoreWriteDataValid; // @[Auction.scala 87:26]
  wire  accountant_io_bramStoreDump_ready; // @[Auction.scala 87:26]
  wire  accountant_io_bramStoreDump_valid; // @[Auction.scala 87:26]
  wire [7:0] accountant_io_bramStoreDump_bits; // @[Auction.scala 87:26]
  wire  accountant_io_bramStoreDumpStart; // @[Auction.scala 87:26]
  wire  accountant_io_miss; // @[Auction.scala 87:26]
  wire  dataMux_clock; // @[Auction.scala 92:23]
  wire  dataMux_reset; // @[Auction.scala 92:23]
  wire  dataMux_io_bramWordIn_ready; // @[Auction.scala 92:23]
  wire  dataMux_io_bramWordIn_valid; // @[Auction.scala 92:23]
  wire [7:0] dataMux_io_bramWordIn_bits_els_0_reward; // @[Auction.scala 92:23]
  wire [10:0] dataMux_io_bramWordIn_bits_els_0_idx; // @[Auction.scala 92:23]
  wire [7:0] dataMux_io_bramWordIn_bits_els_1_reward; // @[Auction.scala 92:23]
  wire [10:0] dataMux_io_bramWordIn_bits_els_1_idx; // @[Auction.scala 92:23]
  wire [7:0] dataMux_io_bramWordIn_bits_els_2_reward; // @[Auction.scala 92:23]
  wire [10:0] dataMux_io_bramWordIn_bits_els_2_idx; // @[Auction.scala 92:23]
  wire [7:0] dataMux_io_bramWordIn_bits_els_3_reward; // @[Auction.scala 92:23]
  wire [10:0] dataMux_io_bramWordIn_bits_els_3_idx; // @[Auction.scala 92:23]
  wire [7:0] dataMux_io_bramWordIn_bits_els_4_reward; // @[Auction.scala 92:23]
  wire [10:0] dataMux_io_bramWordIn_bits_els_4_idx; // @[Auction.scala 92:23]
  wire [7:0] dataMux_io_bramWordIn_bits_els_5_reward; // @[Auction.scala 92:23]
  wire [10:0] dataMux_io_bramWordIn_bits_els_5_idx; // @[Auction.scala 92:23]
  wire [7:0] dataMux_io_bramWordIn_bits_els_6_reward; // @[Auction.scala 92:23]
  wire [10:0] dataMux_io_bramWordIn_bits_els_6_idx; // @[Auction.scala 92:23]
  wire [7:0] dataMux_io_bramWordIn_bits_els_7_reward; // @[Auction.scala 92:23]
  wire [10:0] dataMux_io_bramWordIn_bits_els_7_idx; // @[Auction.scala 92:23]
  wire  dataMux_io_bramWordIn_bits_valids_0; // @[Auction.scala 92:23]
  wire  dataMux_io_bramWordIn_bits_valids_1; // @[Auction.scala 92:23]
  wire  dataMux_io_bramWordIn_bits_valids_2; // @[Auction.scala 92:23]
  wire  dataMux_io_bramWordIn_bits_valids_3; // @[Auction.scala 92:23]
  wire  dataMux_io_bramWordIn_bits_valids_4; // @[Auction.scala 92:23]
  wire  dataMux_io_bramWordIn_bits_valids_5; // @[Auction.scala 92:23]
  wire  dataMux_io_bramWordIn_bits_valids_6; // @[Auction.scala 92:23]
  wire  dataMux_io_bramWordIn_bits_valids_7; // @[Auction.scala 92:23]
  wire  dataMux_io_bramWordIn_bits_last; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_0_ready; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_0_valid; // @[Auction.scala 92:23]
  wire [7:0] dataMux_io_peOut_0_bits_reward; // @[Auction.scala 92:23]
  wire [10:0] dataMux_io_peOut_0_bits_idx; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_0_bits_last; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_1_valid; // @[Auction.scala 92:23]
  wire [7:0] dataMux_io_peOut_1_bits_reward; // @[Auction.scala 92:23]
  wire [10:0] dataMux_io_peOut_1_bits_idx; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_1_bits_last; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_2_valid; // @[Auction.scala 92:23]
  wire [7:0] dataMux_io_peOut_2_bits_reward; // @[Auction.scala 92:23]
  wire [10:0] dataMux_io_peOut_2_bits_idx; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_2_bits_last; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_3_valid; // @[Auction.scala 92:23]
  wire [7:0] dataMux_io_peOut_3_bits_reward; // @[Auction.scala 92:23]
  wire [10:0] dataMux_io_peOut_3_bits_idx; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_3_bits_last; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_4_valid; // @[Auction.scala 92:23]
  wire [7:0] dataMux_io_peOut_4_bits_reward; // @[Auction.scala 92:23]
  wire [10:0] dataMux_io_peOut_4_bits_idx; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_4_bits_last; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_5_valid; // @[Auction.scala 92:23]
  wire [7:0] dataMux_io_peOut_5_bits_reward; // @[Auction.scala 92:23]
  wire [10:0] dataMux_io_peOut_5_bits_idx; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_5_bits_last; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_6_valid; // @[Auction.scala 92:23]
  wire [7:0] dataMux_io_peOut_6_bits_reward; // @[Auction.scala 92:23]
  wire [10:0] dataMux_io_peOut_6_bits_idx; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_6_bits_last; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_7_valid; // @[Auction.scala 92:23]
  wire [7:0] dataMux_io_peOut_7_bits_reward; // @[Auction.scala 92:23]
  wire [10:0] dataMux_io_peOut_7_bits_idx; // @[Auction.scala 92:23]
  wire  dataMux_io_peOut_7_bits_last; // @[Auction.scala 92:23]
  wire  bram_clock; // @[Auction.scala 98:20]
  wire [10:0] bram_io_read_req_addr; // @[Auction.scala 98:20]
  wire [159:0] bram_io_read_rsp_readData; // @[Auction.scala 98:20]
  wire [10:0] bram_io_write_req_addr; // @[Auction.scala 98:20]
  wire [159:0] bram_io_write_req_writeData; // @[Auction.scala 98:20]
  wire  bram_io_write_req_writeEn; // @[Auction.scala 98:20]
  wire  agentRowStore_clock; // @[Auction.scala 100:29]
  wire [10:0] agentRowStore_io_read_req_addr; // @[Auction.scala 100:29]
  wire [21:0] agentRowStore_io_read_rsp_readData; // @[Auction.scala 100:29]
  wire [10:0] agentRowStore_io_write_req_addr; // @[Auction.scala 100:29]
  wire [21:0] agentRowStore_io_write_req_writeData; // @[Auction.scala 100:29]
  wire  agentRowStore_io_write_req_writeEn; // @[Auction.scala 100:29]
  wire  priceStore_clock; // @[Auction.scala 104:26]
  wire  priceStore_reset; // @[Auction.scala 104:26]
  wire [10:0] priceStore_io_peReadReq_0; // @[Auction.scala 104:26]
  wire [10:0] priceStore_io_peReadReq_1; // @[Auction.scala 104:26]
  wire [10:0] priceStore_io_peReadReq_2; // @[Auction.scala 104:26]
  wire [10:0] priceStore_io_peReadReq_3; // @[Auction.scala 104:26]
  wire [10:0] priceStore_io_peReadReq_4; // @[Auction.scala 104:26]
  wire [10:0] priceStore_io_peReadReq_5; // @[Auction.scala 104:26]
  wire [10:0] priceStore_io_peReadReq_6; // @[Auction.scala 104:26]
  wire [10:0] priceStore_io_peReadReq_7; // @[Auction.scala 104:26]
  wire [7:0] priceStore_io_peReadRsp_0; // @[Auction.scala 104:26]
  wire [7:0] priceStore_io_peReadRsp_1; // @[Auction.scala 104:26]
  wire [7:0] priceStore_io_peReadRsp_2; // @[Auction.scala 104:26]
  wire [7:0] priceStore_io_peReadRsp_3; // @[Auction.scala 104:26]
  wire [7:0] priceStore_io_peReadRsp_4; // @[Auction.scala 104:26]
  wire [7:0] priceStore_io_peReadRsp_5; // @[Auction.scala 104:26]
  wire [7:0] priceStore_io_peReadRsp_6; // @[Auction.scala 104:26]
  wire [7:0] priceStore_io_peReadRsp_7; // @[Auction.scala 104:26]
  wire [10:0] priceStore_io_assReadReq; // @[Auction.scala 104:26]
  wire [7:0] priceStore_io_assReadRsp; // @[Auction.scala 104:26]
  wire  priceStore_io_assWriteReq_ready; // @[Auction.scala 104:26]
  wire  priceStore_io_assWriteReq_valid; // @[Auction.scala 104:26]
  wire [10:0] priceStore_io_assWriteReq_bits_addr; // @[Auction.scala 104:26]
  wire [7:0] priceStore_io_assWriteReq_bits_data; // @[Auction.scala 104:26]
  wire  priceStore_io_dump; // @[Auction.scala 104:26]
  wire  priceStore_io_dumpOut_ready; // @[Auction.scala 104:26]
  wire  priceStore_io_dumpOut_valid; // @[Auction.scala 104:26]
  wire [7:0] priceStore_io_dumpOut_bits; // @[Auction.scala 104:26]
  wire  dram2bram_clock; // @[Auction.scala 112:25]
  wire  dram2bram_reset; // @[Auction.scala 112:25]
  wire  dram2bram_io_dramReq_ready; // @[Auction.scala 112:25]
  wire  dram2bram_io_dramReq_valid; // @[Auction.scala 112:25]
  wire [31:0] dram2bram_io_dramReq_bits_addr; // @[Auction.scala 112:25]
  wire [7:0] dram2bram_io_dramReq_bits_numBytes; // @[Auction.scala 112:25]
  wire  dram2bram_io_dramRsp_ready; // @[Auction.scala 112:25]
  wire  dram2bram_io_dramRsp_valid; // @[Auction.scala 112:25]
  wire [5:0] dram2bram_io_dramRsp_bits_channelID; // @[Auction.scala 112:25]
  wire [63:0] dram2bram_io_dramRsp_bits_readData; // @[Auction.scala 112:25]
  wire  dram2bram_io_dramRsp_bits_isLast; // @[Auction.scala 112:25]
  wire [10:0] dram2bram_io_bramCmd_req_addr; // @[Auction.scala 112:25]
  wire [159:0] dram2bram_io_bramCmd_req_writeData; // @[Auction.scala 112:25]
  wire  dram2bram_io_bramCmd_req_writeEn; // @[Auction.scala 112:25]
  wire  dram2bram_io_start; // @[Auction.scala 112:25]
  wire  dram2bram_io_finished; // @[Auction.scala 112:25]
  wire [63:0] dram2bram_io_baseAddr; // @[Auction.scala 112:25]
  wire [10:0] dram2bram_io_nRows; // @[Auction.scala 112:25]
  wire [10:0] dram2bram_io_nCols; // @[Auction.scala 112:25]
  wire [21:0] dram2bram_io_nElements; // @[Auction.scala 112:25]
  wire [10:0] dram2bram_io_agentRowAddress_req_addr; // @[Auction.scala 112:25]
  wire [21:0] dram2bram_io_agentRowAddress_req_writeData; // @[Auction.scala 112:25]
  wire  dram2bram_io_agentRowAddress_req_writeEn; // @[Auction.scala 112:25]
  wire  memWriter_clock; // @[Auction.scala 133:25]
  wire  memWriter_reset; // @[Auction.scala 133:25]
  wire  memWriter_io_start; // @[Auction.scala 133:25]
  wire  memWriter_io_finished; // @[Auction.scala 133:25]
  wire [31:0] memWriter_io_baseAddr; // @[Auction.scala 133:25]
  wire [31:0] memWriter_io_byteCount; // @[Auction.scala 133:25]
  wire  memWriter_io_in_ready; // @[Auction.scala 133:25]
  wire  memWriter_io_in_valid; // @[Auction.scala 133:25]
  wire [63:0] memWriter_io_in_bits; // @[Auction.scala 133:25]
  wire  memWriter_io_req_ready; // @[Auction.scala 133:25]
  wire  memWriter_io_req_valid; // @[Auction.scala 133:25]
  wire [31:0] memWriter_io_req_bits_addr; // @[Auction.scala 133:25]
  wire [7:0] memWriter_io_req_bits_numBytes; // @[Auction.scala 133:25]
  wire  memWriter_io_wdat_ready; // @[Auction.scala 133:25]
  wire  memWriter_io_wdat_valid; // @[Auction.scala 133:25]
  wire [63:0] memWriter_io_wdat_bits; // @[Auction.scala 133:25]
  wire  memWriter_io_rsp_ready; // @[Auction.scala 133:25]
  wire  memWriter_io_rsp_valid; // @[Auction.scala 133:25]
  wire  pes_0_clock; // @[Auction.scala 149:11]
  wire  pes_0_reset; // @[Auction.scala 149:11]
  wire [7:0] pes_0_io_price; // @[Auction.scala 149:11]
  wire [10:0] pes_0_io_agentIdx; // @[Auction.scala 149:11]
  wire  pes_0_io_rewardIn_ready; // @[Auction.scala 149:11]
  wire  pes_0_io_rewardIn_valid; // @[Auction.scala 149:11]
  wire [7:0] pes_0_io_rewardIn_bits_reward; // @[Auction.scala 149:11]
  wire [10:0] pes_0_io_rewardIn_bits_idx; // @[Auction.scala 149:11]
  wire  pes_0_io_rewardIn_bits_last; // @[Auction.scala 149:11]
  wire  pes_0_io_PEResultOut_ready; // @[Auction.scala 149:11]
  wire  pes_0_io_PEResultOut_valid; // @[Auction.scala 149:11]
  wire [7:0] pes_0_io_PEResultOut_bits_benefit; // @[Auction.scala 149:11]
  wire [7:0] pes_0_io_PEResultOut_bits_oldPrice; // @[Auction.scala 149:11]
  wire [10:0] pes_0_io_PEResultOut_bits_id; // @[Auction.scala 149:11]
  wire  pes_0_io_PEResultOut_bits_last; // @[Auction.scala 149:11]
  wire  pes_1_clock; // @[Auction.scala 149:11]
  wire  pes_1_reset; // @[Auction.scala 149:11]
  wire [7:0] pes_1_io_price; // @[Auction.scala 149:11]
  wire [10:0] pes_1_io_agentIdx; // @[Auction.scala 149:11]
  wire  pes_1_io_rewardIn_ready; // @[Auction.scala 149:11]
  wire  pes_1_io_rewardIn_valid; // @[Auction.scala 149:11]
  wire [7:0] pes_1_io_rewardIn_bits_reward; // @[Auction.scala 149:11]
  wire [10:0] pes_1_io_rewardIn_bits_idx; // @[Auction.scala 149:11]
  wire  pes_1_io_rewardIn_bits_last; // @[Auction.scala 149:11]
  wire  pes_1_io_PEResultOut_ready; // @[Auction.scala 149:11]
  wire  pes_1_io_PEResultOut_valid; // @[Auction.scala 149:11]
  wire [7:0] pes_1_io_PEResultOut_bits_benefit; // @[Auction.scala 149:11]
  wire [7:0] pes_1_io_PEResultOut_bits_oldPrice; // @[Auction.scala 149:11]
  wire [10:0] pes_1_io_PEResultOut_bits_id; // @[Auction.scala 149:11]
  wire  pes_1_io_PEResultOut_bits_last; // @[Auction.scala 149:11]
  wire  pes_2_clock; // @[Auction.scala 149:11]
  wire  pes_2_reset; // @[Auction.scala 149:11]
  wire [7:0] pes_2_io_price; // @[Auction.scala 149:11]
  wire [10:0] pes_2_io_agentIdx; // @[Auction.scala 149:11]
  wire  pes_2_io_rewardIn_ready; // @[Auction.scala 149:11]
  wire  pes_2_io_rewardIn_valid; // @[Auction.scala 149:11]
  wire [7:0] pes_2_io_rewardIn_bits_reward; // @[Auction.scala 149:11]
  wire [10:0] pes_2_io_rewardIn_bits_idx; // @[Auction.scala 149:11]
  wire  pes_2_io_rewardIn_bits_last; // @[Auction.scala 149:11]
  wire  pes_2_io_PEResultOut_ready; // @[Auction.scala 149:11]
  wire  pes_2_io_PEResultOut_valid; // @[Auction.scala 149:11]
  wire [7:0] pes_2_io_PEResultOut_bits_benefit; // @[Auction.scala 149:11]
  wire [7:0] pes_2_io_PEResultOut_bits_oldPrice; // @[Auction.scala 149:11]
  wire [10:0] pes_2_io_PEResultOut_bits_id; // @[Auction.scala 149:11]
  wire  pes_2_io_PEResultOut_bits_last; // @[Auction.scala 149:11]
  wire  pes_3_clock; // @[Auction.scala 149:11]
  wire  pes_3_reset; // @[Auction.scala 149:11]
  wire [7:0] pes_3_io_price; // @[Auction.scala 149:11]
  wire [10:0] pes_3_io_agentIdx; // @[Auction.scala 149:11]
  wire  pes_3_io_rewardIn_ready; // @[Auction.scala 149:11]
  wire  pes_3_io_rewardIn_valid; // @[Auction.scala 149:11]
  wire [7:0] pes_3_io_rewardIn_bits_reward; // @[Auction.scala 149:11]
  wire [10:0] pes_3_io_rewardIn_bits_idx; // @[Auction.scala 149:11]
  wire  pes_3_io_rewardIn_bits_last; // @[Auction.scala 149:11]
  wire  pes_3_io_PEResultOut_ready; // @[Auction.scala 149:11]
  wire  pes_3_io_PEResultOut_valid; // @[Auction.scala 149:11]
  wire [7:0] pes_3_io_PEResultOut_bits_benefit; // @[Auction.scala 149:11]
  wire [7:0] pes_3_io_PEResultOut_bits_oldPrice; // @[Auction.scala 149:11]
  wire [10:0] pes_3_io_PEResultOut_bits_id; // @[Auction.scala 149:11]
  wire  pes_3_io_PEResultOut_bits_last; // @[Auction.scala 149:11]
  wire  pes_4_clock; // @[Auction.scala 149:11]
  wire  pes_4_reset; // @[Auction.scala 149:11]
  wire [7:0] pes_4_io_price; // @[Auction.scala 149:11]
  wire [10:0] pes_4_io_agentIdx; // @[Auction.scala 149:11]
  wire  pes_4_io_rewardIn_ready; // @[Auction.scala 149:11]
  wire  pes_4_io_rewardIn_valid; // @[Auction.scala 149:11]
  wire [7:0] pes_4_io_rewardIn_bits_reward; // @[Auction.scala 149:11]
  wire [10:0] pes_4_io_rewardIn_bits_idx; // @[Auction.scala 149:11]
  wire  pes_4_io_rewardIn_bits_last; // @[Auction.scala 149:11]
  wire  pes_4_io_PEResultOut_ready; // @[Auction.scala 149:11]
  wire  pes_4_io_PEResultOut_valid; // @[Auction.scala 149:11]
  wire [7:0] pes_4_io_PEResultOut_bits_benefit; // @[Auction.scala 149:11]
  wire [7:0] pes_4_io_PEResultOut_bits_oldPrice; // @[Auction.scala 149:11]
  wire [10:0] pes_4_io_PEResultOut_bits_id; // @[Auction.scala 149:11]
  wire  pes_4_io_PEResultOut_bits_last; // @[Auction.scala 149:11]
  wire  pes_5_clock; // @[Auction.scala 149:11]
  wire  pes_5_reset; // @[Auction.scala 149:11]
  wire [7:0] pes_5_io_price; // @[Auction.scala 149:11]
  wire [10:0] pes_5_io_agentIdx; // @[Auction.scala 149:11]
  wire  pes_5_io_rewardIn_ready; // @[Auction.scala 149:11]
  wire  pes_5_io_rewardIn_valid; // @[Auction.scala 149:11]
  wire [7:0] pes_5_io_rewardIn_bits_reward; // @[Auction.scala 149:11]
  wire [10:0] pes_5_io_rewardIn_bits_idx; // @[Auction.scala 149:11]
  wire  pes_5_io_rewardIn_bits_last; // @[Auction.scala 149:11]
  wire  pes_5_io_PEResultOut_ready; // @[Auction.scala 149:11]
  wire  pes_5_io_PEResultOut_valid; // @[Auction.scala 149:11]
  wire [7:0] pes_5_io_PEResultOut_bits_benefit; // @[Auction.scala 149:11]
  wire [7:0] pes_5_io_PEResultOut_bits_oldPrice; // @[Auction.scala 149:11]
  wire [10:0] pes_5_io_PEResultOut_bits_id; // @[Auction.scala 149:11]
  wire  pes_5_io_PEResultOut_bits_last; // @[Auction.scala 149:11]
  wire  pes_6_clock; // @[Auction.scala 149:11]
  wire  pes_6_reset; // @[Auction.scala 149:11]
  wire [7:0] pes_6_io_price; // @[Auction.scala 149:11]
  wire [10:0] pes_6_io_agentIdx; // @[Auction.scala 149:11]
  wire  pes_6_io_rewardIn_ready; // @[Auction.scala 149:11]
  wire  pes_6_io_rewardIn_valid; // @[Auction.scala 149:11]
  wire [7:0] pes_6_io_rewardIn_bits_reward; // @[Auction.scala 149:11]
  wire [10:0] pes_6_io_rewardIn_bits_idx; // @[Auction.scala 149:11]
  wire  pes_6_io_rewardIn_bits_last; // @[Auction.scala 149:11]
  wire  pes_6_io_PEResultOut_ready; // @[Auction.scala 149:11]
  wire  pes_6_io_PEResultOut_valid; // @[Auction.scala 149:11]
  wire [7:0] pes_6_io_PEResultOut_bits_benefit; // @[Auction.scala 149:11]
  wire [7:0] pes_6_io_PEResultOut_bits_oldPrice; // @[Auction.scala 149:11]
  wire [10:0] pes_6_io_PEResultOut_bits_id; // @[Auction.scala 149:11]
  wire  pes_6_io_PEResultOut_bits_last; // @[Auction.scala 149:11]
  wire  pes_7_clock; // @[Auction.scala 149:11]
  wire  pes_7_reset; // @[Auction.scala 149:11]
  wire [7:0] pes_7_io_price; // @[Auction.scala 149:11]
  wire [10:0] pes_7_io_agentIdx; // @[Auction.scala 149:11]
  wire  pes_7_io_rewardIn_ready; // @[Auction.scala 149:11]
  wire  pes_7_io_rewardIn_valid; // @[Auction.scala 149:11]
  wire [7:0] pes_7_io_rewardIn_bits_reward; // @[Auction.scala 149:11]
  wire [10:0] pes_7_io_rewardIn_bits_idx; // @[Auction.scala 149:11]
  wire  pes_7_io_rewardIn_bits_last; // @[Auction.scala 149:11]
  wire  pes_7_io_PEResultOut_ready; // @[Auction.scala 149:11]
  wire  pes_7_io_PEResultOut_valid; // @[Auction.scala 149:11]
  wire [7:0] pes_7_io_PEResultOut_bits_benefit; // @[Auction.scala 149:11]
  wire [7:0] pes_7_io_PEResultOut_bits_oldPrice; // @[Auction.scala 149:11]
  wire [10:0] pes_7_io_PEResultOut_bits_id; // @[Auction.scala 149:11]
  wire  pes_7_io_PEResultOut_bits_last; // @[Auction.scala 149:11]
  wire  search_clock; // @[Auction.scala 155:22]
  wire  search_reset; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_0_ready; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_0_valid; // @[Auction.scala 155:22]
  wire [7:0] search_io_benefitIn_0_bits_benefit; // @[Auction.scala 155:22]
  wire [7:0] search_io_benefitIn_0_bits_oldPrice; // @[Auction.scala 155:22]
  wire [10:0] search_io_benefitIn_0_bits_id; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_0_bits_last; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_1_ready; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_1_valid; // @[Auction.scala 155:22]
  wire [7:0] search_io_benefitIn_1_bits_benefit; // @[Auction.scala 155:22]
  wire [7:0] search_io_benefitIn_1_bits_oldPrice; // @[Auction.scala 155:22]
  wire [10:0] search_io_benefitIn_1_bits_id; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_2_ready; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_2_valid; // @[Auction.scala 155:22]
  wire [7:0] search_io_benefitIn_2_bits_benefit; // @[Auction.scala 155:22]
  wire [7:0] search_io_benefitIn_2_bits_oldPrice; // @[Auction.scala 155:22]
  wire [10:0] search_io_benefitIn_2_bits_id; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_3_ready; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_3_valid; // @[Auction.scala 155:22]
  wire [7:0] search_io_benefitIn_3_bits_benefit; // @[Auction.scala 155:22]
  wire [7:0] search_io_benefitIn_3_bits_oldPrice; // @[Auction.scala 155:22]
  wire [10:0] search_io_benefitIn_3_bits_id; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_4_ready; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_4_valid; // @[Auction.scala 155:22]
  wire [7:0] search_io_benefitIn_4_bits_benefit; // @[Auction.scala 155:22]
  wire [7:0] search_io_benefitIn_4_bits_oldPrice; // @[Auction.scala 155:22]
  wire [10:0] search_io_benefitIn_4_bits_id; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_5_ready; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_5_valid; // @[Auction.scala 155:22]
  wire [7:0] search_io_benefitIn_5_bits_benefit; // @[Auction.scala 155:22]
  wire [7:0] search_io_benefitIn_5_bits_oldPrice; // @[Auction.scala 155:22]
  wire [10:0] search_io_benefitIn_5_bits_id; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_6_ready; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_6_valid; // @[Auction.scala 155:22]
  wire [7:0] search_io_benefitIn_6_bits_benefit; // @[Auction.scala 155:22]
  wire [7:0] search_io_benefitIn_6_bits_oldPrice; // @[Auction.scala 155:22]
  wire [10:0] search_io_benefitIn_6_bits_id; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_7_ready; // @[Auction.scala 155:22]
  wire  search_io_benefitIn_7_valid; // @[Auction.scala 155:22]
  wire [7:0] search_io_benefitIn_7_bits_benefit; // @[Auction.scala 155:22]
  wire [7:0] search_io_benefitIn_7_bits_oldPrice; // @[Auction.scala 155:22]
  wire [10:0] search_io_benefitIn_7_bits_id; // @[Auction.scala 155:22]
  wire  search_io_resultOut_ready; // @[Auction.scala 155:22]
  wire  search_io_resultOut_valid; // @[Auction.scala 155:22]
  wire [10:0] search_io_resultOut_bits_winner; // @[Auction.scala 155:22]
  wire [7:0] search_io_resultOut_bits_bid; // @[Auction.scala 155:22]
  reg  dataMovementDone; // @[Auction.scala 199:33]
  reg  calcDone; // @[Auction.scala 200:25]
  reg  running; // @[Auction.scala 201:24]
  reg [31:0] regCycleCount; // @[Auction.scala 202:30]
  reg [31:0] regSpecMissCount; // @[Auction.scala 203:33]
  reg [31:0] regIterCount; // @[Auction.scala 204:29]
  wire [31:0] _regCycleCount_T_1 = regCycleCount + 32'h1; // @[Auction.scala 212:36]
  wire  _T_3 = ~running; // @[Auction.scala 213:14]
  wire  _T_5 = controller_io_requestedAgentsIn_ready & controller_io_requestedAgentsIn_valid; // @[Decoupled.scala 40:37]
  wire [31:0] _regIterCount_T_1 = regIterCount + 32'h1; // @[Auction.scala 220:34]
  wire [31:0] _regSpecMissCount_T_1 = regSpecMissCount + 32'h1; // @[Auction.scala 224:42]
  wire  _running_T = ~controller_io_rfCtrl_finished; // @[Auction.scala 230:16]
  BramController memController ( // @[Auction.scala 77:29]
    .clock(memController_clock),
    .reset(memController_reset),
    .io_unassignedAgents_ready(memController_io_unassignedAgents_ready),
    .io_unassignedAgents_valid(memController_io_unassignedAgents_valid),
    .io_unassignedAgents_bits_agent(memController_io_unassignedAgents_bits_agent),
    .io_requestedAgents_ready(memController_io_requestedAgents_ready),
    .io_requestedAgents_valid(memController_io_requestedAgents_valid),
    .io_requestedAgents_bits_agent(memController_io_requestedAgents_bits_agent),
    .io_agentRowAddrReq_req_addr(memController_io_agentRowAddrReq_req_addr),
    .io_agentRowAddrReq_rsp_readData(memController_io_agentRowAddrReq_rsp_readData),
    .io_bramReq_req_addr(memController_io_bramReq_req_addr),
    .io_bramReq_rsp_readData(memController_io_bramReq_rsp_readData),
    .io_dataDistOut_ready(memController_io_dataDistOut_ready),
    .io_dataDistOut_valid(memController_io_dataDistOut_valid),
    .io_dataDistOut_bits_els_0_reward(memController_io_dataDistOut_bits_els_0_reward),
    .io_dataDistOut_bits_els_0_idx(memController_io_dataDistOut_bits_els_0_idx),
    .io_dataDistOut_bits_els_1_reward(memController_io_dataDistOut_bits_els_1_reward),
    .io_dataDistOut_bits_els_1_idx(memController_io_dataDistOut_bits_els_1_idx),
    .io_dataDistOut_bits_els_2_reward(memController_io_dataDistOut_bits_els_2_reward),
    .io_dataDistOut_bits_els_2_idx(memController_io_dataDistOut_bits_els_2_idx),
    .io_dataDistOut_bits_els_3_reward(memController_io_dataDistOut_bits_els_3_reward),
    .io_dataDistOut_bits_els_3_idx(memController_io_dataDistOut_bits_els_3_idx),
    .io_dataDistOut_bits_els_4_reward(memController_io_dataDistOut_bits_els_4_reward),
    .io_dataDistOut_bits_els_4_idx(memController_io_dataDistOut_bits_els_4_idx),
    .io_dataDistOut_bits_els_5_reward(memController_io_dataDistOut_bits_els_5_reward),
    .io_dataDistOut_bits_els_5_idx(memController_io_dataDistOut_bits_els_5_idx),
    .io_dataDistOut_bits_els_6_reward(memController_io_dataDistOut_bits_els_6_reward),
    .io_dataDistOut_bits_els_6_idx(memController_io_dataDistOut_bits_els_6_idx),
    .io_dataDistOut_bits_els_7_reward(memController_io_dataDistOut_bits_els_7_reward),
    .io_dataDistOut_bits_els_7_idx(memController_io_dataDistOut_bits_els_7_idx),
    .io_dataDistOut_bits_valids_0(memController_io_dataDistOut_bits_valids_0),
    .io_dataDistOut_bits_valids_1(memController_io_dataDistOut_bits_valids_1),
    .io_dataDistOut_bits_valids_2(memController_io_dataDistOut_bits_valids_2),
    .io_dataDistOut_bits_valids_3(memController_io_dataDistOut_bits_valids_3),
    .io_dataDistOut_bits_valids_4(memController_io_dataDistOut_bits_valids_4),
    .io_dataDistOut_bits_valids_5(memController_io_dataDistOut_bits_valids_5),
    .io_dataDistOut_bits_valids_6(memController_io_dataDistOut_bits_valids_6),
    .io_dataDistOut_bits_valids_7(memController_io_dataDistOut_bits_valids_7),
    .io_dataDistOut_bits_last(memController_io_dataDistOut_bits_last)
  );
  ApplicationController controller ( // @[Auction.scala 82:26]
    .clock(controller_clock),
    .reset(controller_reset),
    .io_rfCtrl_finished(controller_io_rfCtrl_finished),
    .io_rfInfo_start(controller_io_rfInfo_start),
    .io_rfInfo_baseAddr(controller_io_rfInfo_baseAddr),
    .io_rfInfo_nAgents(controller_io_rfInfo_nAgents),
    .io_rfInfo_nObjects(controller_io_rfInfo_nObjects),
    .io_nElements(controller_io_nElements),
    .io_dram2bram_start(controller_io_dram2bram_start),
    .io_dram2bram_finished(controller_io_dram2bram_finished),
    .io_dram2bram_baseAddr(controller_io_dram2bram_baseAddr),
    .io_dram2bram_nRows(controller_io_dram2bram_nRows),
    .io_dram2bram_nCols(controller_io_dram2bram_nCols),
    .io_unassignedAgentsIn_ready(controller_io_unassignedAgentsIn_ready),
    .io_unassignedAgentsIn_valid(controller_io_unassignedAgentsIn_valid),
    .io_unassignedAgentsIn_bits_agent(controller_io_unassignedAgentsIn_bits_agent),
    .io_unassignedAgentsOut_ready(controller_io_unassignedAgentsOut_ready),
    .io_unassignedAgentsOut_valid(controller_io_unassignedAgentsOut_valid),
    .io_unassignedAgentsOut_bits_agent(controller_io_unassignedAgentsOut_bits_agent),
    .io_requestedAgentsIn_ready(controller_io_requestedAgentsIn_ready),
    .io_requestedAgentsIn_valid(controller_io_requestedAgentsIn_valid),
    .io_requestedAgentsIn_bits_agent(controller_io_requestedAgentsIn_bits_agent),
    .io_requestedAgentsOut_ready(controller_io_requestedAgentsOut_ready),
    .io_requestedAgentsOut_valid(controller_io_requestedAgentsOut_valid),
    .io_requestedAgentsOut_bits_agent(controller_io_requestedAgentsOut_bits_agent),
    .io_doWriteBack(controller_io_doWriteBack),
    .io_writeBackDone(controller_io_writeBackDone),
    .io_reinit(controller_io_reinit)
  );
  AssignmentEngine accountant ( // @[Auction.scala 87:26]
    .clock(accountant_clock),
    .reset(accountant_reset),
    .io_searchResultIn_ready(accountant_io_searchResultIn_ready),
    .io_searchResultIn_valid(accountant_io_searchResultIn_valid),
    .io_searchResultIn_bits_winner(accountant_io_searchResultIn_bits_winner),
    .io_searchResultIn_bits_bid(accountant_io_searchResultIn_bits_bid),
    .io_unassignedAgents_ready(accountant_io_unassignedAgents_ready),
    .io_unassignedAgents_valid(accountant_io_unassignedAgents_valid),
    .io_unassignedAgents_bits_agent(accountant_io_unassignedAgents_bits_agent),
    .io_requestedAgents_ready(accountant_io_requestedAgents_ready),
    .io_requestedAgents_valid(accountant_io_requestedAgents_valid),
    .io_requestedAgents_bits_agent(accountant_io_requestedAgents_bits_agent),
    .io_rfInfo_start(accountant_io_rfInfo_start),
    .io_rfInfo_nObjects(accountant_io_rfInfo_nObjects),
    .io_rfInfo_baseAddrRes(accountant_io_rfInfo_baseAddrRes),
    .io_doWriteBack(accountant_io_doWriteBack),
    .io_writeBackDone(accountant_io_writeBackDone),
    .io_writeBackStream_start(accountant_io_writeBackStream_start),
    .io_writeBackStream_wrData_ready(accountant_io_writeBackStream_wrData_ready),
    .io_writeBackStream_wrData_valid(accountant_io_writeBackStream_wrData_valid),
    .io_writeBackStream_wrData_bits(accountant_io_writeBackStream_wrData_bits),
    .io_writeBackStream_finished(accountant_io_writeBackStream_finished),
    .io_writeBackStream_baseAddr(accountant_io_writeBackStream_baseAddr),
    .io_writeBackStream_byteCount(accountant_io_writeBackStream_byteCount),
    .io_bramStoreReadAddr(accountant_io_bramStoreReadAddr),
    .io_bramStoreReadData(accountant_io_bramStoreReadData),
    .io_bramStoreWriteAddr(accountant_io_bramStoreWriteAddr),
    .io_bramStoreWriteData(accountant_io_bramStoreWriteData),
    .io_bramStoreWriteDataValid(accountant_io_bramStoreWriteDataValid),
    .io_bramStoreDump_ready(accountant_io_bramStoreDump_ready),
    .io_bramStoreDump_valid(accountant_io_bramStoreDump_valid),
    .io_bramStoreDump_bits(accountant_io_bramStoreDump_bits),
    .io_bramStoreDumpStart(accountant_io_bramStoreDumpStart),
    .io_miss(accountant_io_miss)
  );
  DataMux dataMux ( // @[Auction.scala 92:23]
    .clock(dataMux_clock),
    .reset(dataMux_reset),
    .io_bramWordIn_ready(dataMux_io_bramWordIn_ready),
    .io_bramWordIn_valid(dataMux_io_bramWordIn_valid),
    .io_bramWordIn_bits_els_0_reward(dataMux_io_bramWordIn_bits_els_0_reward),
    .io_bramWordIn_bits_els_0_idx(dataMux_io_bramWordIn_bits_els_0_idx),
    .io_bramWordIn_bits_els_1_reward(dataMux_io_bramWordIn_bits_els_1_reward),
    .io_bramWordIn_bits_els_1_idx(dataMux_io_bramWordIn_bits_els_1_idx),
    .io_bramWordIn_bits_els_2_reward(dataMux_io_bramWordIn_bits_els_2_reward),
    .io_bramWordIn_bits_els_2_idx(dataMux_io_bramWordIn_bits_els_2_idx),
    .io_bramWordIn_bits_els_3_reward(dataMux_io_bramWordIn_bits_els_3_reward),
    .io_bramWordIn_bits_els_3_idx(dataMux_io_bramWordIn_bits_els_3_idx),
    .io_bramWordIn_bits_els_4_reward(dataMux_io_bramWordIn_bits_els_4_reward),
    .io_bramWordIn_bits_els_4_idx(dataMux_io_bramWordIn_bits_els_4_idx),
    .io_bramWordIn_bits_els_5_reward(dataMux_io_bramWordIn_bits_els_5_reward),
    .io_bramWordIn_bits_els_5_idx(dataMux_io_bramWordIn_bits_els_5_idx),
    .io_bramWordIn_bits_els_6_reward(dataMux_io_bramWordIn_bits_els_6_reward),
    .io_bramWordIn_bits_els_6_idx(dataMux_io_bramWordIn_bits_els_6_idx),
    .io_bramWordIn_bits_els_7_reward(dataMux_io_bramWordIn_bits_els_7_reward),
    .io_bramWordIn_bits_els_7_idx(dataMux_io_bramWordIn_bits_els_7_idx),
    .io_bramWordIn_bits_valids_0(dataMux_io_bramWordIn_bits_valids_0),
    .io_bramWordIn_bits_valids_1(dataMux_io_bramWordIn_bits_valids_1),
    .io_bramWordIn_bits_valids_2(dataMux_io_bramWordIn_bits_valids_2),
    .io_bramWordIn_bits_valids_3(dataMux_io_bramWordIn_bits_valids_3),
    .io_bramWordIn_bits_valids_4(dataMux_io_bramWordIn_bits_valids_4),
    .io_bramWordIn_bits_valids_5(dataMux_io_bramWordIn_bits_valids_5),
    .io_bramWordIn_bits_valids_6(dataMux_io_bramWordIn_bits_valids_6),
    .io_bramWordIn_bits_valids_7(dataMux_io_bramWordIn_bits_valids_7),
    .io_bramWordIn_bits_last(dataMux_io_bramWordIn_bits_last),
    .io_peOut_0_ready(dataMux_io_peOut_0_ready),
    .io_peOut_0_valid(dataMux_io_peOut_0_valid),
    .io_peOut_0_bits_reward(dataMux_io_peOut_0_bits_reward),
    .io_peOut_0_bits_idx(dataMux_io_peOut_0_bits_idx),
    .io_peOut_0_bits_last(dataMux_io_peOut_0_bits_last),
    .io_peOut_1_valid(dataMux_io_peOut_1_valid),
    .io_peOut_1_bits_reward(dataMux_io_peOut_1_bits_reward),
    .io_peOut_1_bits_idx(dataMux_io_peOut_1_bits_idx),
    .io_peOut_1_bits_last(dataMux_io_peOut_1_bits_last),
    .io_peOut_2_valid(dataMux_io_peOut_2_valid),
    .io_peOut_2_bits_reward(dataMux_io_peOut_2_bits_reward),
    .io_peOut_2_bits_idx(dataMux_io_peOut_2_bits_idx),
    .io_peOut_2_bits_last(dataMux_io_peOut_2_bits_last),
    .io_peOut_3_valid(dataMux_io_peOut_3_valid),
    .io_peOut_3_bits_reward(dataMux_io_peOut_3_bits_reward),
    .io_peOut_3_bits_idx(dataMux_io_peOut_3_bits_idx),
    .io_peOut_3_bits_last(dataMux_io_peOut_3_bits_last),
    .io_peOut_4_valid(dataMux_io_peOut_4_valid),
    .io_peOut_4_bits_reward(dataMux_io_peOut_4_bits_reward),
    .io_peOut_4_bits_idx(dataMux_io_peOut_4_bits_idx),
    .io_peOut_4_bits_last(dataMux_io_peOut_4_bits_last),
    .io_peOut_5_valid(dataMux_io_peOut_5_valid),
    .io_peOut_5_bits_reward(dataMux_io_peOut_5_bits_reward),
    .io_peOut_5_bits_idx(dataMux_io_peOut_5_bits_idx),
    .io_peOut_5_bits_last(dataMux_io_peOut_5_bits_last),
    .io_peOut_6_valid(dataMux_io_peOut_6_valid),
    .io_peOut_6_bits_reward(dataMux_io_peOut_6_bits_reward),
    .io_peOut_6_bits_idx(dataMux_io_peOut_6_bits_idx),
    .io_peOut_6_bits_last(dataMux_io_peOut_6_bits_last),
    .io_peOut_7_valid(dataMux_io_peOut_7_valid),
    .io_peOut_7_bits_reward(dataMux_io_peOut_7_bits_reward),
    .io_peOut_7_bits_idx(dataMux_io_peOut_7_bits_idx),
    .io_peOut_7_bits_last(dataMux_io_peOut_7_bits_last)
  );
  SimpleDualPortBRAM_1 bram ( // @[Auction.scala 98:20]
    .clock(bram_clock),
    .io_read_req_addr(bram_io_read_req_addr),
    .io_read_rsp_readData(bram_io_read_rsp_readData),
    .io_write_req_addr(bram_io_write_req_addr),
    .io_write_req_writeData(bram_io_write_req_writeData),
    .io_write_req_writeEn(bram_io_write_req_writeEn)
  );
  SimpleDualPortBRAM_2 agentRowStore ( // @[Auction.scala 100:29]
    .clock(agentRowStore_clock),
    .io_read_req_addr(agentRowStore_io_read_req_addr),
    .io_read_rsp_readData(agentRowStore_io_read_rsp_readData),
    .io_write_req_addr(agentRowStore_io_write_req_addr),
    .io_write_req_writeData(agentRowStore_io_write_req_writeData),
    .io_write_req_writeEn(agentRowStore_io_write_req_writeEn)
  );
  BramStore priceStore ( // @[Auction.scala 104:26]
    .clock(priceStore_clock),
    .reset(priceStore_reset),
    .io_peReadReq_0(priceStore_io_peReadReq_0),
    .io_peReadReq_1(priceStore_io_peReadReq_1),
    .io_peReadReq_2(priceStore_io_peReadReq_2),
    .io_peReadReq_3(priceStore_io_peReadReq_3),
    .io_peReadReq_4(priceStore_io_peReadReq_4),
    .io_peReadReq_5(priceStore_io_peReadReq_5),
    .io_peReadReq_6(priceStore_io_peReadReq_6),
    .io_peReadReq_7(priceStore_io_peReadReq_7),
    .io_peReadRsp_0(priceStore_io_peReadRsp_0),
    .io_peReadRsp_1(priceStore_io_peReadRsp_1),
    .io_peReadRsp_2(priceStore_io_peReadRsp_2),
    .io_peReadRsp_3(priceStore_io_peReadRsp_3),
    .io_peReadRsp_4(priceStore_io_peReadRsp_4),
    .io_peReadRsp_5(priceStore_io_peReadRsp_5),
    .io_peReadRsp_6(priceStore_io_peReadRsp_6),
    .io_peReadRsp_7(priceStore_io_peReadRsp_7),
    .io_assReadReq(priceStore_io_assReadReq),
    .io_assReadRsp(priceStore_io_assReadRsp),
    .io_assWriteReq_ready(priceStore_io_assWriteReq_ready),
    .io_assWriteReq_valid(priceStore_io_assWriteReq_valid),
    .io_assWriteReq_bits_addr(priceStore_io_assWriteReq_bits_addr),
    .io_assWriteReq_bits_data(priceStore_io_assWriteReq_bits_data),
    .io_dump(priceStore_io_dump),
    .io_dumpOut_ready(priceStore_io_dumpOut_ready),
    .io_dumpOut_valid(priceStore_io_dumpOut_valid),
    .io_dumpOut_bits(priceStore_io_dumpOut_bits)
  );
  Dram2Bram2 dram2bram ( // @[Auction.scala 112:25]
    .clock(dram2bram_clock),
    .reset(dram2bram_reset),
    .io_dramReq_ready(dram2bram_io_dramReq_ready),
    .io_dramReq_valid(dram2bram_io_dramReq_valid),
    .io_dramReq_bits_addr(dram2bram_io_dramReq_bits_addr),
    .io_dramReq_bits_numBytes(dram2bram_io_dramReq_bits_numBytes),
    .io_dramRsp_ready(dram2bram_io_dramRsp_ready),
    .io_dramRsp_valid(dram2bram_io_dramRsp_valid),
    .io_dramRsp_bits_channelID(dram2bram_io_dramRsp_bits_channelID),
    .io_dramRsp_bits_readData(dram2bram_io_dramRsp_bits_readData),
    .io_dramRsp_bits_isLast(dram2bram_io_dramRsp_bits_isLast),
    .io_bramCmd_req_addr(dram2bram_io_bramCmd_req_addr),
    .io_bramCmd_req_writeData(dram2bram_io_bramCmd_req_writeData),
    .io_bramCmd_req_writeEn(dram2bram_io_bramCmd_req_writeEn),
    .io_start(dram2bram_io_start),
    .io_finished(dram2bram_io_finished),
    .io_baseAddr(dram2bram_io_baseAddr),
    .io_nRows(dram2bram_io_nRows),
    .io_nCols(dram2bram_io_nCols),
    .io_nElements(dram2bram_io_nElements),
    .io_agentRowAddress_req_addr(dram2bram_io_agentRowAddress_req_addr),
    .io_agentRowAddress_req_writeData(dram2bram_io_agentRowAddress_req_writeData),
    .io_agentRowAddress_req_writeEn(dram2bram_io_agentRowAddress_req_writeEn)
  );
  StreamWriter memWriter ( // @[Auction.scala 133:25]
    .clock(memWriter_clock),
    .reset(memWriter_reset),
    .io_start(memWriter_io_start),
    .io_finished(memWriter_io_finished),
    .io_baseAddr(memWriter_io_baseAddr),
    .io_byteCount(memWriter_io_byteCount),
    .io_in_ready(memWriter_io_in_ready),
    .io_in_valid(memWriter_io_in_valid),
    .io_in_bits(memWriter_io_in_bits),
    .io_req_ready(memWriter_io_req_ready),
    .io_req_valid(memWriter_io_req_valid),
    .io_req_bits_addr(memWriter_io_req_bits_addr),
    .io_req_bits_numBytes(memWriter_io_req_bits_numBytes),
    .io_wdat_ready(memWriter_io_wdat_ready),
    .io_wdat_valid(memWriter_io_wdat_valid),
    .io_wdat_bits(memWriter_io_wdat_bits),
    .io_rsp_ready(memWriter_io_rsp_ready),
    .io_rsp_valid(memWriter_io_rsp_valid)
  );
  ProcessingElement pes_0 ( // @[Auction.scala 149:11]
    .clock(pes_0_clock),
    .reset(pes_0_reset),
    .io_price(pes_0_io_price),
    .io_agentIdx(pes_0_io_agentIdx),
    .io_rewardIn_ready(pes_0_io_rewardIn_ready),
    .io_rewardIn_valid(pes_0_io_rewardIn_valid),
    .io_rewardIn_bits_reward(pes_0_io_rewardIn_bits_reward),
    .io_rewardIn_bits_idx(pes_0_io_rewardIn_bits_idx),
    .io_rewardIn_bits_last(pes_0_io_rewardIn_bits_last),
    .io_PEResultOut_ready(pes_0_io_PEResultOut_ready),
    .io_PEResultOut_valid(pes_0_io_PEResultOut_valid),
    .io_PEResultOut_bits_benefit(pes_0_io_PEResultOut_bits_benefit),
    .io_PEResultOut_bits_oldPrice(pes_0_io_PEResultOut_bits_oldPrice),
    .io_PEResultOut_bits_id(pes_0_io_PEResultOut_bits_id),
    .io_PEResultOut_bits_last(pes_0_io_PEResultOut_bits_last)
  );
  ProcessingElement pes_1 ( // @[Auction.scala 149:11]
    .clock(pes_1_clock),
    .reset(pes_1_reset),
    .io_price(pes_1_io_price),
    .io_agentIdx(pes_1_io_agentIdx),
    .io_rewardIn_ready(pes_1_io_rewardIn_ready),
    .io_rewardIn_valid(pes_1_io_rewardIn_valid),
    .io_rewardIn_bits_reward(pes_1_io_rewardIn_bits_reward),
    .io_rewardIn_bits_idx(pes_1_io_rewardIn_bits_idx),
    .io_rewardIn_bits_last(pes_1_io_rewardIn_bits_last),
    .io_PEResultOut_ready(pes_1_io_PEResultOut_ready),
    .io_PEResultOut_valid(pes_1_io_PEResultOut_valid),
    .io_PEResultOut_bits_benefit(pes_1_io_PEResultOut_bits_benefit),
    .io_PEResultOut_bits_oldPrice(pes_1_io_PEResultOut_bits_oldPrice),
    .io_PEResultOut_bits_id(pes_1_io_PEResultOut_bits_id),
    .io_PEResultOut_bits_last(pes_1_io_PEResultOut_bits_last)
  );
  ProcessingElement pes_2 ( // @[Auction.scala 149:11]
    .clock(pes_2_clock),
    .reset(pes_2_reset),
    .io_price(pes_2_io_price),
    .io_agentIdx(pes_2_io_agentIdx),
    .io_rewardIn_ready(pes_2_io_rewardIn_ready),
    .io_rewardIn_valid(pes_2_io_rewardIn_valid),
    .io_rewardIn_bits_reward(pes_2_io_rewardIn_bits_reward),
    .io_rewardIn_bits_idx(pes_2_io_rewardIn_bits_idx),
    .io_rewardIn_bits_last(pes_2_io_rewardIn_bits_last),
    .io_PEResultOut_ready(pes_2_io_PEResultOut_ready),
    .io_PEResultOut_valid(pes_2_io_PEResultOut_valid),
    .io_PEResultOut_bits_benefit(pes_2_io_PEResultOut_bits_benefit),
    .io_PEResultOut_bits_oldPrice(pes_2_io_PEResultOut_bits_oldPrice),
    .io_PEResultOut_bits_id(pes_2_io_PEResultOut_bits_id),
    .io_PEResultOut_bits_last(pes_2_io_PEResultOut_bits_last)
  );
  ProcessingElement pes_3 ( // @[Auction.scala 149:11]
    .clock(pes_3_clock),
    .reset(pes_3_reset),
    .io_price(pes_3_io_price),
    .io_agentIdx(pes_3_io_agentIdx),
    .io_rewardIn_ready(pes_3_io_rewardIn_ready),
    .io_rewardIn_valid(pes_3_io_rewardIn_valid),
    .io_rewardIn_bits_reward(pes_3_io_rewardIn_bits_reward),
    .io_rewardIn_bits_idx(pes_3_io_rewardIn_bits_idx),
    .io_rewardIn_bits_last(pes_3_io_rewardIn_bits_last),
    .io_PEResultOut_ready(pes_3_io_PEResultOut_ready),
    .io_PEResultOut_valid(pes_3_io_PEResultOut_valid),
    .io_PEResultOut_bits_benefit(pes_3_io_PEResultOut_bits_benefit),
    .io_PEResultOut_bits_oldPrice(pes_3_io_PEResultOut_bits_oldPrice),
    .io_PEResultOut_bits_id(pes_3_io_PEResultOut_bits_id),
    .io_PEResultOut_bits_last(pes_3_io_PEResultOut_bits_last)
  );
  ProcessingElement pes_4 ( // @[Auction.scala 149:11]
    .clock(pes_4_clock),
    .reset(pes_4_reset),
    .io_price(pes_4_io_price),
    .io_agentIdx(pes_4_io_agentIdx),
    .io_rewardIn_ready(pes_4_io_rewardIn_ready),
    .io_rewardIn_valid(pes_4_io_rewardIn_valid),
    .io_rewardIn_bits_reward(pes_4_io_rewardIn_bits_reward),
    .io_rewardIn_bits_idx(pes_4_io_rewardIn_bits_idx),
    .io_rewardIn_bits_last(pes_4_io_rewardIn_bits_last),
    .io_PEResultOut_ready(pes_4_io_PEResultOut_ready),
    .io_PEResultOut_valid(pes_4_io_PEResultOut_valid),
    .io_PEResultOut_bits_benefit(pes_4_io_PEResultOut_bits_benefit),
    .io_PEResultOut_bits_oldPrice(pes_4_io_PEResultOut_bits_oldPrice),
    .io_PEResultOut_bits_id(pes_4_io_PEResultOut_bits_id),
    .io_PEResultOut_bits_last(pes_4_io_PEResultOut_bits_last)
  );
  ProcessingElement pes_5 ( // @[Auction.scala 149:11]
    .clock(pes_5_clock),
    .reset(pes_5_reset),
    .io_price(pes_5_io_price),
    .io_agentIdx(pes_5_io_agentIdx),
    .io_rewardIn_ready(pes_5_io_rewardIn_ready),
    .io_rewardIn_valid(pes_5_io_rewardIn_valid),
    .io_rewardIn_bits_reward(pes_5_io_rewardIn_bits_reward),
    .io_rewardIn_bits_idx(pes_5_io_rewardIn_bits_idx),
    .io_rewardIn_bits_last(pes_5_io_rewardIn_bits_last),
    .io_PEResultOut_ready(pes_5_io_PEResultOut_ready),
    .io_PEResultOut_valid(pes_5_io_PEResultOut_valid),
    .io_PEResultOut_bits_benefit(pes_5_io_PEResultOut_bits_benefit),
    .io_PEResultOut_bits_oldPrice(pes_5_io_PEResultOut_bits_oldPrice),
    .io_PEResultOut_bits_id(pes_5_io_PEResultOut_bits_id),
    .io_PEResultOut_bits_last(pes_5_io_PEResultOut_bits_last)
  );
  ProcessingElement pes_6 ( // @[Auction.scala 149:11]
    .clock(pes_6_clock),
    .reset(pes_6_reset),
    .io_price(pes_6_io_price),
    .io_agentIdx(pes_6_io_agentIdx),
    .io_rewardIn_ready(pes_6_io_rewardIn_ready),
    .io_rewardIn_valid(pes_6_io_rewardIn_valid),
    .io_rewardIn_bits_reward(pes_6_io_rewardIn_bits_reward),
    .io_rewardIn_bits_idx(pes_6_io_rewardIn_bits_idx),
    .io_rewardIn_bits_last(pes_6_io_rewardIn_bits_last),
    .io_PEResultOut_ready(pes_6_io_PEResultOut_ready),
    .io_PEResultOut_valid(pes_6_io_PEResultOut_valid),
    .io_PEResultOut_bits_benefit(pes_6_io_PEResultOut_bits_benefit),
    .io_PEResultOut_bits_oldPrice(pes_6_io_PEResultOut_bits_oldPrice),
    .io_PEResultOut_bits_id(pes_6_io_PEResultOut_bits_id),
    .io_PEResultOut_bits_last(pes_6_io_PEResultOut_bits_last)
  );
  ProcessingElement pes_7 ( // @[Auction.scala 149:11]
    .clock(pes_7_clock),
    .reset(pes_7_reset),
    .io_price(pes_7_io_price),
    .io_agentIdx(pes_7_io_agentIdx),
    .io_rewardIn_ready(pes_7_io_rewardIn_ready),
    .io_rewardIn_valid(pes_7_io_rewardIn_valid),
    .io_rewardIn_bits_reward(pes_7_io_rewardIn_bits_reward),
    .io_rewardIn_bits_idx(pes_7_io_rewardIn_bits_idx),
    .io_rewardIn_bits_last(pes_7_io_rewardIn_bits_last),
    .io_PEResultOut_ready(pes_7_io_PEResultOut_ready),
    .io_PEResultOut_valid(pes_7_io_PEResultOut_valid),
    .io_PEResultOut_bits_benefit(pes_7_io_PEResultOut_bits_benefit),
    .io_PEResultOut_bits_oldPrice(pes_7_io_PEResultOut_bits_oldPrice),
    .io_PEResultOut_bits_id(pes_7_io_PEResultOut_bits_id),
    .io_PEResultOut_bits_last(pes_7_io_PEResultOut_bits_last)
  );
  SearchTask search ( // @[Auction.scala 155:22]
    .clock(search_clock),
    .reset(search_reset),
    .io_benefitIn_0_ready(search_io_benefitIn_0_ready),
    .io_benefitIn_0_valid(search_io_benefitIn_0_valid),
    .io_benefitIn_0_bits_benefit(search_io_benefitIn_0_bits_benefit),
    .io_benefitIn_0_bits_oldPrice(search_io_benefitIn_0_bits_oldPrice),
    .io_benefitIn_0_bits_id(search_io_benefitIn_0_bits_id),
    .io_benefitIn_0_bits_last(search_io_benefitIn_0_bits_last),
    .io_benefitIn_1_ready(search_io_benefitIn_1_ready),
    .io_benefitIn_1_valid(search_io_benefitIn_1_valid),
    .io_benefitIn_1_bits_benefit(search_io_benefitIn_1_bits_benefit),
    .io_benefitIn_1_bits_oldPrice(search_io_benefitIn_1_bits_oldPrice),
    .io_benefitIn_1_bits_id(search_io_benefitIn_1_bits_id),
    .io_benefitIn_2_ready(search_io_benefitIn_2_ready),
    .io_benefitIn_2_valid(search_io_benefitIn_2_valid),
    .io_benefitIn_2_bits_benefit(search_io_benefitIn_2_bits_benefit),
    .io_benefitIn_2_bits_oldPrice(search_io_benefitIn_2_bits_oldPrice),
    .io_benefitIn_2_bits_id(search_io_benefitIn_2_bits_id),
    .io_benefitIn_3_ready(search_io_benefitIn_3_ready),
    .io_benefitIn_3_valid(search_io_benefitIn_3_valid),
    .io_benefitIn_3_bits_benefit(search_io_benefitIn_3_bits_benefit),
    .io_benefitIn_3_bits_oldPrice(search_io_benefitIn_3_bits_oldPrice),
    .io_benefitIn_3_bits_id(search_io_benefitIn_3_bits_id),
    .io_benefitIn_4_ready(search_io_benefitIn_4_ready),
    .io_benefitIn_4_valid(search_io_benefitIn_4_valid),
    .io_benefitIn_4_bits_benefit(search_io_benefitIn_4_bits_benefit),
    .io_benefitIn_4_bits_oldPrice(search_io_benefitIn_4_bits_oldPrice),
    .io_benefitIn_4_bits_id(search_io_benefitIn_4_bits_id),
    .io_benefitIn_5_ready(search_io_benefitIn_5_ready),
    .io_benefitIn_5_valid(search_io_benefitIn_5_valid),
    .io_benefitIn_5_bits_benefit(search_io_benefitIn_5_bits_benefit),
    .io_benefitIn_5_bits_oldPrice(search_io_benefitIn_5_bits_oldPrice),
    .io_benefitIn_5_bits_id(search_io_benefitIn_5_bits_id),
    .io_benefitIn_6_ready(search_io_benefitIn_6_ready),
    .io_benefitIn_6_valid(search_io_benefitIn_6_valid),
    .io_benefitIn_6_bits_benefit(search_io_benefitIn_6_bits_benefit),
    .io_benefitIn_6_bits_oldPrice(search_io_benefitIn_6_bits_oldPrice),
    .io_benefitIn_6_bits_id(search_io_benefitIn_6_bits_id),
    .io_benefitIn_7_ready(search_io_benefitIn_7_ready),
    .io_benefitIn_7_valid(search_io_benefitIn_7_valid),
    .io_benefitIn_7_bits_benefit(search_io_benefitIn_7_bits_benefit),
    .io_benefitIn_7_bits_oldPrice(search_io_benefitIn_7_bits_oldPrice),
    .io_benefitIn_7_bits_id(search_io_benefitIn_7_bits_id),
    .io_resultOut_ready(search_io_resultOut_ready),
    .io_resultOut_valid(search_io_resultOut_valid),
    .io_resultOut_bits_winner(search_io_resultOut_bits_winner),
    .io_resultOut_bits_bid(search_io_resultOut_bits_bid)
  );
  assign io_memPort_0_memRdReq_valid = dram2bram_io_dramReq_valid; // @[Auction.scala 113:24]
  assign io_memPort_0_memRdReq_bits_addr = dram2bram_io_dramReq_bits_addr; // @[Auction.scala 113:24]
  assign io_memPort_0_memRdReq_bits_numBytes = dram2bram_io_dramReq_bits_numBytes; // @[Auction.scala 113:24]
  assign io_memPort_0_memRdRsp_ready = dram2bram_io_dramRsp_ready; // @[Auction.scala 114:24]
  assign io_memPort_0_memWrReq_valid = memWriter_io_req_valid; // @[Auction.scala 134:20]
  assign io_memPort_0_memWrReq_bits_addr = memWriter_io_req_bits_addr; // @[Auction.scala 134:20]
  assign io_memPort_0_memWrDat_valid = memWriter_io_wdat_valid; // @[Auction.scala 136:26]
  assign io_memPort_0_memWrDat_bits = memWriter_io_wdat_bits; // @[Auction.scala 136:26]
  assign io_rfOut_finished = controller_io_rfCtrl_finished; // @[Auction.scala 196:12]
  assign io_rfOut_cycleCount = regCycleCount; // @[Auction.scala 207:23]
  assign io_rfOut_missCount = regSpecMissCount; // @[Auction.scala 208:22]
  assign io_rfOut_iterCount = regIterCount; // @[Auction.scala 209:22]
  assign memController_clock = clock;
  assign memController_reset = reset;
  assign memController_io_unassignedAgents_valid = controller_io_unassignedAgentsOut_valid; // @[Auction.scala 185:37]
  assign memController_io_unassignedAgents_bits_agent = controller_io_unassignedAgentsOut_bits_agent; // @[Auction.scala 185:37]
  assign memController_io_requestedAgents_ready = controller_io_requestedAgentsIn_ready; // @[Auction.scala 188:36]
  assign memController_io_agentRowAddrReq_rsp_readData = agentRowStore_io_read_rsp_readData; // @[Auction.scala 159:36]
  assign memController_io_bramReq_rsp_readData = bram_io_read_rsp_readData; // @[Auction.scala 160:28]
  assign memController_io_dataDistOut_ready = dataMux_io_bramWordIn_ready; // @[Auction.scala 158:32]
  assign controller_clock = clock;
  assign controller_reset = reset;
  assign controller_io_rfInfo_start = io_rfIn_start; // @[Auction.scala 195:24]
  assign controller_io_rfInfo_baseAddr = io_rfIn_baseAddr; // @[Auction.scala 195:24]
  assign controller_io_rfInfo_nAgents = io_rfIn_nAgents; // @[Auction.scala 195:24]
  assign controller_io_rfInfo_nObjects = io_rfIn_nObjects; // @[Auction.scala 195:24]
  assign controller_io_dram2bram_finished = dram2bram_io_finished; // @[Auction.scala 121:36]
  assign controller_io_unassignedAgentsIn_valid = accountant_io_unassignedAgents_valid; // @[Auction.scala 186:36]
  assign controller_io_unassignedAgentsIn_bits_agent = {{3'd0}, accountant_io_unassignedAgents_bits_agent}; // @[Auction.scala 186:36]
  assign controller_io_unassignedAgentsOut_ready = memController_io_unassignedAgents_ready; // @[Auction.scala 185:37]
  assign controller_io_requestedAgentsIn_valid = memController_io_requestedAgents_valid; // @[Auction.scala 188:36]
  assign controller_io_requestedAgentsIn_bits_agent = memController_io_requestedAgents_bits_agent; // @[Auction.scala 188:36]
  assign controller_io_requestedAgentsOut_ready = accountant_io_requestedAgents_ready; // @[Auction.scala 189:36]
  assign controller_io_writeBackDone = accountant_io_writeBackDone; // @[Auction.scala 191:31]
  assign accountant_clock = clock;
  assign accountant_reset = reset;
  assign accountant_io_searchResultIn_valid = search_io_resultOut_valid; // @[Auction.scala 171:23]
  assign accountant_io_searchResultIn_bits_winner = search_io_resultOut_bits_winner; // @[Auction.scala 171:23]
  assign accountant_io_searchResultIn_bits_bid = search_io_resultOut_bits_bid; // @[Auction.scala 171:23]
  assign accountant_io_unassignedAgents_ready = controller_io_unassignedAgentsIn_ready; // @[Auction.scala 186:36]
  assign accountant_io_requestedAgents_valid = controller_io_requestedAgentsOut_valid; // @[Auction.scala 189:36]
  assign accountant_io_requestedAgents_bits_agent = controller_io_requestedAgentsOut_bits_agent[7:0]; // @[Auction.scala 189:36]
  assign accountant_io_rfInfo_start = io_rfIn_start; // @[Auction.scala 193:24]
  assign accountant_io_rfInfo_nObjects = io_rfIn_nObjects; // @[Auction.scala 193:24]
  assign accountant_io_rfInfo_baseAddrRes = io_rfIn_baseAddrRes; // @[Auction.scala 193:24]
  assign accountant_io_doWriteBack = controller_io_doWriteBack; // @[Auction.scala 192:29]
  assign accountant_io_writeBackStream_wrData_ready = memWriter_io_in_ready; // @[Auction.scala 138:19]
  assign accountant_io_writeBackStream_finished = memWriter_io_finished; // @[Auction.scala 142:42]
  assign accountant_io_bramStoreReadData = priceStore_io_assReadRsp; // @[Auction.scala 172:35]
  assign accountant_io_bramStoreDump_valid = priceStore_io_dumpOut_valid; // @[Auction.scala 180:25]
  assign accountant_io_bramStoreDump_bits = priceStore_io_dumpOut_bits; // @[Auction.scala 180:25]
  assign dataMux_clock = clock;
  assign dataMux_reset = reset;
  assign dataMux_io_bramWordIn_valid = memController_io_dataDistOut_valid; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_els_0_reward = memController_io_dataDistOut_bits_els_0_reward; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_els_0_idx = memController_io_dataDistOut_bits_els_0_idx; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_els_1_reward = memController_io_dataDistOut_bits_els_1_reward; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_els_1_idx = memController_io_dataDistOut_bits_els_1_idx; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_els_2_reward = memController_io_dataDistOut_bits_els_2_reward; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_els_2_idx = memController_io_dataDistOut_bits_els_2_idx; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_els_3_reward = memController_io_dataDistOut_bits_els_3_reward; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_els_3_idx = memController_io_dataDistOut_bits_els_3_idx; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_els_4_reward = memController_io_dataDistOut_bits_els_4_reward; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_els_4_idx = memController_io_dataDistOut_bits_els_4_idx; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_els_5_reward = memController_io_dataDistOut_bits_els_5_reward; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_els_5_idx = memController_io_dataDistOut_bits_els_5_idx; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_els_6_reward = memController_io_dataDistOut_bits_els_6_reward; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_els_6_idx = memController_io_dataDistOut_bits_els_6_idx; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_els_7_reward = memController_io_dataDistOut_bits_els_7_reward; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_els_7_idx = memController_io_dataDistOut_bits_els_7_idx; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_valids_0 = memController_io_dataDistOut_bits_valids_0; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_valids_1 = memController_io_dataDistOut_bits_valids_1; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_valids_2 = memController_io_dataDistOut_bits_valids_2; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_valids_3 = memController_io_dataDistOut_bits_valids_3; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_valids_4 = memController_io_dataDistOut_bits_valids_4; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_valids_5 = memController_io_dataDistOut_bits_valids_5; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_valids_6 = memController_io_dataDistOut_bits_valids_6; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_valids_7 = memController_io_dataDistOut_bits_valids_7; // @[Auction.scala 158:32]
  assign dataMux_io_bramWordIn_bits_last = memController_io_dataDistOut_bits_last; // @[Auction.scala 158:32]
  assign dataMux_io_peOut_0_ready = pes_0_io_rewardIn_ready; // @[Auction.scala 163:25]
  assign bram_clock = clock;
  assign bram_io_read_req_addr = memController_io_bramReq_req_addr; // @[Auction.scala 160:28]
  assign bram_io_write_req_addr = dram2bram_io_bramCmd_req_addr; // @[Auction.scala 115:24]
  assign bram_io_write_req_writeData = dram2bram_io_bramCmd_req_writeData; // @[Auction.scala 115:24]
  assign bram_io_write_req_writeEn = dram2bram_io_bramCmd_req_writeEn; // @[Auction.scala 115:24]
  assign agentRowStore_clock = clock;
  assign agentRowStore_io_read_req_addr = memController_io_agentRowAddrReq_req_addr; // @[Auction.scala 159:36]
  assign agentRowStore_io_write_req_addr = dram2bram_io_agentRowAddress_req_addr; // @[Auction.scala 120:32]
  assign agentRowStore_io_write_req_writeData = dram2bram_io_agentRowAddress_req_writeData; // @[Auction.scala 120:32]
  assign agentRowStore_io_write_req_writeEn = dram2bram_io_agentRowAddress_req_writeEn; // @[Auction.scala 120:32]
  assign priceStore_clock = clock;
  assign priceStore_reset = controller_io_reinit; // @[Auction.scala 107:20]
  assign priceStore_io_peReadReq_0 = pes_0_io_agentIdx; // @[Auction.scala 166:32]
  assign priceStore_io_peReadReq_1 = pes_1_io_agentIdx; // @[Auction.scala 166:32]
  assign priceStore_io_peReadReq_2 = pes_2_io_agentIdx; // @[Auction.scala 166:32]
  assign priceStore_io_peReadReq_3 = pes_3_io_agentIdx; // @[Auction.scala 166:32]
  assign priceStore_io_peReadReq_4 = pes_4_io_agentIdx; // @[Auction.scala 166:32]
  assign priceStore_io_peReadReq_5 = pes_5_io_agentIdx; // @[Auction.scala 166:32]
  assign priceStore_io_peReadReq_6 = pes_6_io_agentIdx; // @[Auction.scala 166:32]
  assign priceStore_io_peReadReq_7 = pes_7_io_agentIdx; // @[Auction.scala 166:32]
  assign priceStore_io_assReadReq = accountant_io_bramStoreReadAddr; // @[Auction.scala 173:28]
  assign priceStore_io_assWriteReq_valid = accountant_io_bramStoreWriteDataValid; // @[Auction.scala 175:35]
  assign priceStore_io_assWriteReq_bits_addr = accountant_io_bramStoreWriteAddr; // @[Auction.scala 176:39]
  assign priceStore_io_assWriteReq_bits_data = accountant_io_bramStoreWriteData; // @[Auction.scala 177:39]
  assign priceStore_io_dump = accountant_io_bramStoreDumpStart; // @[Auction.scala 181:22]
  assign priceStore_io_dumpOut_ready = accountant_io_bramStoreDump_ready; // @[Auction.scala 180:25]
  assign dram2bram_clock = clock;
  assign dram2bram_reset = reset;
  assign dram2bram_io_dramReq_ready = io_memPort_0_memRdReq_ready; // @[Auction.scala 113:24]
  assign dram2bram_io_dramRsp_valid = io_memPort_0_memRdRsp_valid; // @[Auction.scala 114:24]
  assign dram2bram_io_dramRsp_bits_channelID = io_memPort_0_memRdRsp_bits_channelID; // @[Auction.scala 114:24]
  assign dram2bram_io_dramRsp_bits_readData = io_memPort_0_memRdRsp_bits_readData; // @[Auction.scala 114:24]
  assign dram2bram_io_dramRsp_bits_isLast = io_memPort_0_memRdRsp_bits_isLast; // @[Auction.scala 114:24]
  assign dram2bram_io_start = controller_io_dram2bram_start; // @[Auction.scala 116:22]
  assign dram2bram_io_baseAddr = controller_io_dram2bram_baseAddr; // @[Auction.scala 117:25]
  assign dram2bram_io_nRows = controller_io_dram2bram_nRows; // @[Auction.scala 118:22]
  assign dram2bram_io_nCols = controller_io_dram2bram_nCols; // @[Auction.scala 119:22]
  assign dram2bram_io_nElements = controller_io_nElements; // @[Auction.scala 123:26]
  assign memWriter_clock = clock;
  assign memWriter_reset = reset;
  assign memWriter_io_start = accountant_io_writeBackStream_start; // @[Auction.scala 139:22]
  assign memWriter_io_baseAddr = accountant_io_writeBackStream_baseAddr; // @[Auction.scala 140:25]
  assign memWriter_io_byteCount = accountant_io_writeBackStream_byteCount; // @[Auction.scala 141:26]
  assign memWriter_io_in_valid = accountant_io_writeBackStream_wrData_valid; // @[Auction.scala 138:19]
  assign memWriter_io_in_bits = accountant_io_writeBackStream_wrData_bits; // @[Auction.scala 138:19]
  assign memWriter_io_req_ready = io_memPort_0_memWrReq_ready; // @[Auction.scala 134:20]
  assign memWriter_io_wdat_ready = io_memPort_0_memWrDat_ready; // @[Auction.scala 136:26]
  assign memWriter_io_rsp_valid = io_memPort_0_memWrRsp_valid; // @[Auction.scala 135:20]
  assign pes_0_clock = clock;
  assign pes_0_reset = reset;
  assign pes_0_io_price = priceStore_io_peReadRsp_0; // @[Auction.scala 165:21]
  assign pes_0_io_rewardIn_valid = dataMux_io_peOut_0_valid; // @[Auction.scala 163:25]
  assign pes_0_io_rewardIn_bits_reward = dataMux_io_peOut_0_bits_reward; // @[Auction.scala 163:25]
  assign pes_0_io_rewardIn_bits_idx = dataMux_io_peOut_0_bits_idx; // @[Auction.scala 163:25]
  assign pes_0_io_rewardIn_bits_last = dataMux_io_peOut_0_bits_last; // @[Auction.scala 163:25]
  assign pes_0_io_PEResultOut_ready = search_io_benefitIn_0_ready; // @[Auction.scala 164:27]
  assign pes_1_clock = clock;
  assign pes_1_reset = reset;
  assign pes_1_io_price = priceStore_io_peReadRsp_1; // @[Auction.scala 165:21]
  assign pes_1_io_rewardIn_valid = dataMux_io_peOut_1_valid; // @[Auction.scala 163:25]
  assign pes_1_io_rewardIn_bits_reward = dataMux_io_peOut_1_bits_reward; // @[Auction.scala 163:25]
  assign pes_1_io_rewardIn_bits_idx = dataMux_io_peOut_1_bits_idx; // @[Auction.scala 163:25]
  assign pes_1_io_rewardIn_bits_last = dataMux_io_peOut_1_bits_last; // @[Auction.scala 163:25]
  assign pes_1_io_PEResultOut_ready = search_io_benefitIn_1_ready; // @[Auction.scala 164:27]
  assign pes_2_clock = clock;
  assign pes_2_reset = reset;
  assign pes_2_io_price = priceStore_io_peReadRsp_2; // @[Auction.scala 165:21]
  assign pes_2_io_rewardIn_valid = dataMux_io_peOut_2_valid; // @[Auction.scala 163:25]
  assign pes_2_io_rewardIn_bits_reward = dataMux_io_peOut_2_bits_reward; // @[Auction.scala 163:25]
  assign pes_2_io_rewardIn_bits_idx = dataMux_io_peOut_2_bits_idx; // @[Auction.scala 163:25]
  assign pes_2_io_rewardIn_bits_last = dataMux_io_peOut_2_bits_last; // @[Auction.scala 163:25]
  assign pes_2_io_PEResultOut_ready = search_io_benefitIn_2_ready; // @[Auction.scala 164:27]
  assign pes_3_clock = clock;
  assign pes_3_reset = reset;
  assign pes_3_io_price = priceStore_io_peReadRsp_3; // @[Auction.scala 165:21]
  assign pes_3_io_rewardIn_valid = dataMux_io_peOut_3_valid; // @[Auction.scala 163:25]
  assign pes_3_io_rewardIn_bits_reward = dataMux_io_peOut_3_bits_reward; // @[Auction.scala 163:25]
  assign pes_3_io_rewardIn_bits_idx = dataMux_io_peOut_3_bits_idx; // @[Auction.scala 163:25]
  assign pes_3_io_rewardIn_bits_last = dataMux_io_peOut_3_bits_last; // @[Auction.scala 163:25]
  assign pes_3_io_PEResultOut_ready = search_io_benefitIn_3_ready; // @[Auction.scala 164:27]
  assign pes_4_clock = clock;
  assign pes_4_reset = reset;
  assign pes_4_io_price = priceStore_io_peReadRsp_4; // @[Auction.scala 165:21]
  assign pes_4_io_rewardIn_valid = dataMux_io_peOut_4_valid; // @[Auction.scala 163:25]
  assign pes_4_io_rewardIn_bits_reward = dataMux_io_peOut_4_bits_reward; // @[Auction.scala 163:25]
  assign pes_4_io_rewardIn_bits_idx = dataMux_io_peOut_4_bits_idx; // @[Auction.scala 163:25]
  assign pes_4_io_rewardIn_bits_last = dataMux_io_peOut_4_bits_last; // @[Auction.scala 163:25]
  assign pes_4_io_PEResultOut_ready = search_io_benefitIn_4_ready; // @[Auction.scala 164:27]
  assign pes_5_clock = clock;
  assign pes_5_reset = reset;
  assign pes_5_io_price = priceStore_io_peReadRsp_5; // @[Auction.scala 165:21]
  assign pes_5_io_rewardIn_valid = dataMux_io_peOut_5_valid; // @[Auction.scala 163:25]
  assign pes_5_io_rewardIn_bits_reward = dataMux_io_peOut_5_bits_reward; // @[Auction.scala 163:25]
  assign pes_5_io_rewardIn_bits_idx = dataMux_io_peOut_5_bits_idx; // @[Auction.scala 163:25]
  assign pes_5_io_rewardIn_bits_last = dataMux_io_peOut_5_bits_last; // @[Auction.scala 163:25]
  assign pes_5_io_PEResultOut_ready = search_io_benefitIn_5_ready; // @[Auction.scala 164:27]
  assign pes_6_clock = clock;
  assign pes_6_reset = reset;
  assign pes_6_io_price = priceStore_io_peReadRsp_6; // @[Auction.scala 165:21]
  assign pes_6_io_rewardIn_valid = dataMux_io_peOut_6_valid; // @[Auction.scala 163:25]
  assign pes_6_io_rewardIn_bits_reward = dataMux_io_peOut_6_bits_reward; // @[Auction.scala 163:25]
  assign pes_6_io_rewardIn_bits_idx = dataMux_io_peOut_6_bits_idx; // @[Auction.scala 163:25]
  assign pes_6_io_rewardIn_bits_last = dataMux_io_peOut_6_bits_last; // @[Auction.scala 163:25]
  assign pes_6_io_PEResultOut_ready = search_io_benefitIn_6_ready; // @[Auction.scala 164:27]
  assign pes_7_clock = clock;
  assign pes_7_reset = reset;
  assign pes_7_io_price = priceStore_io_peReadRsp_7; // @[Auction.scala 165:21]
  assign pes_7_io_rewardIn_valid = dataMux_io_peOut_7_valid; // @[Auction.scala 163:25]
  assign pes_7_io_rewardIn_bits_reward = dataMux_io_peOut_7_bits_reward; // @[Auction.scala 163:25]
  assign pes_7_io_rewardIn_bits_idx = dataMux_io_peOut_7_bits_idx; // @[Auction.scala 163:25]
  assign pes_7_io_rewardIn_bits_last = dataMux_io_peOut_7_bits_last; // @[Auction.scala 163:25]
  assign pes_7_io_PEResultOut_ready = search_io_benefitIn_7_ready; // @[Auction.scala 164:27]
  assign search_clock = clock;
  assign search_reset = reset;
  assign search_io_benefitIn_0_valid = pes_0_io_PEResultOut_valid; // @[Auction.scala 164:27]
  assign search_io_benefitIn_0_bits_benefit = pes_0_io_PEResultOut_bits_benefit; // @[Auction.scala 164:27]
  assign search_io_benefitIn_0_bits_oldPrice = pes_0_io_PEResultOut_bits_oldPrice; // @[Auction.scala 164:27]
  assign search_io_benefitIn_0_bits_id = pes_0_io_PEResultOut_bits_id; // @[Auction.scala 164:27]
  assign search_io_benefitIn_0_bits_last = pes_0_io_PEResultOut_bits_last; // @[Auction.scala 164:27]
  assign search_io_benefitIn_1_valid = pes_1_io_PEResultOut_valid; // @[Auction.scala 164:27]
  assign search_io_benefitIn_1_bits_benefit = pes_1_io_PEResultOut_bits_benefit; // @[Auction.scala 164:27]
  assign search_io_benefitIn_1_bits_oldPrice = pes_1_io_PEResultOut_bits_oldPrice; // @[Auction.scala 164:27]
  assign search_io_benefitIn_1_bits_id = pes_1_io_PEResultOut_bits_id; // @[Auction.scala 164:27]
  assign search_io_benefitIn_2_valid = pes_2_io_PEResultOut_valid; // @[Auction.scala 164:27]
  assign search_io_benefitIn_2_bits_benefit = pes_2_io_PEResultOut_bits_benefit; // @[Auction.scala 164:27]
  assign search_io_benefitIn_2_bits_oldPrice = pes_2_io_PEResultOut_bits_oldPrice; // @[Auction.scala 164:27]
  assign search_io_benefitIn_2_bits_id = pes_2_io_PEResultOut_bits_id; // @[Auction.scala 164:27]
  assign search_io_benefitIn_3_valid = pes_3_io_PEResultOut_valid; // @[Auction.scala 164:27]
  assign search_io_benefitIn_3_bits_benefit = pes_3_io_PEResultOut_bits_benefit; // @[Auction.scala 164:27]
  assign search_io_benefitIn_3_bits_oldPrice = pes_3_io_PEResultOut_bits_oldPrice; // @[Auction.scala 164:27]
  assign search_io_benefitIn_3_bits_id = pes_3_io_PEResultOut_bits_id; // @[Auction.scala 164:27]
  assign search_io_benefitIn_4_valid = pes_4_io_PEResultOut_valid; // @[Auction.scala 164:27]
  assign search_io_benefitIn_4_bits_benefit = pes_4_io_PEResultOut_bits_benefit; // @[Auction.scala 164:27]
  assign search_io_benefitIn_4_bits_oldPrice = pes_4_io_PEResultOut_bits_oldPrice; // @[Auction.scala 164:27]
  assign search_io_benefitIn_4_bits_id = pes_4_io_PEResultOut_bits_id; // @[Auction.scala 164:27]
  assign search_io_benefitIn_5_valid = pes_5_io_PEResultOut_valid; // @[Auction.scala 164:27]
  assign search_io_benefitIn_5_bits_benefit = pes_5_io_PEResultOut_bits_benefit; // @[Auction.scala 164:27]
  assign search_io_benefitIn_5_bits_oldPrice = pes_5_io_PEResultOut_bits_oldPrice; // @[Auction.scala 164:27]
  assign search_io_benefitIn_5_bits_id = pes_5_io_PEResultOut_bits_id; // @[Auction.scala 164:27]
  assign search_io_benefitIn_6_valid = pes_6_io_PEResultOut_valid; // @[Auction.scala 164:27]
  assign search_io_benefitIn_6_bits_benefit = pes_6_io_PEResultOut_bits_benefit; // @[Auction.scala 164:27]
  assign search_io_benefitIn_6_bits_oldPrice = pes_6_io_PEResultOut_bits_oldPrice; // @[Auction.scala 164:27]
  assign search_io_benefitIn_6_bits_id = pes_6_io_PEResultOut_bits_id; // @[Auction.scala 164:27]
  assign search_io_benefitIn_7_valid = pes_7_io_PEResultOut_valid; // @[Auction.scala 164:27]
  assign search_io_benefitIn_7_bits_benefit = pes_7_io_PEResultOut_bits_benefit; // @[Auction.scala 164:27]
  assign search_io_benefitIn_7_bits_oldPrice = pes_7_io_PEResultOut_bits_oldPrice; // @[Auction.scala 164:27]
  assign search_io_benefitIn_7_bits_id = pes_7_io_PEResultOut_bits_id; // @[Auction.scala 164:27]
  assign search_io_resultOut_ready = accountant_io_searchResultIn_ready; // @[Auction.scala 171:23]
  always @(posedge clock) begin
    if (reset) begin // @[Auction.scala 199:33]
      dataMovementDone <= 1'h0; // @[Auction.scala 199:33]
    end else if (~dataMovementDone) begin // @[Auction.scala 233:28]
      dataMovementDone <= dram2bram_io_finished; // @[Auction.scala 234:22]
    end else begin
      dataMovementDone <= _running_T; // @[Auction.scala 236:22]
    end
    if (reset) begin // @[Auction.scala 200:25]
      calcDone <= 1'h0; // @[Auction.scala 200:25]
    end else begin
      calcDone <= controller_io_doWriteBack; // @[Auction.scala 206:12]
    end
    if (reset) begin // @[Auction.scala 201:24]
      running <= 1'h0; // @[Auction.scala 201:24]
    end else if (_T_3) begin // @[Auction.scala 227:18]
      running <= io_rfIn_start; // @[Auction.scala 228:13]
    end else begin
      running <= ~controller_io_rfCtrl_finished; // @[Auction.scala 230:13]
    end
    if (reset) begin // @[Auction.scala 202:30]
      regCycleCount <= 32'h0; // @[Auction.scala 202:30]
    end else if (running & dataMovementDone & ~calcDone) begin // @[Auction.scala 211:50]
      regCycleCount <= _regCycleCount_T_1; // @[Auction.scala 212:19]
    end else if (~running & io_rfIn_start) begin // @[Auction.scala 213:41]
      regCycleCount <= 32'h0; // @[Auction.scala 214:19]
    end
    if (reset) begin // @[Auction.scala 203:33]
      regSpecMissCount <= 32'h0; // @[Auction.scala 203:33]
    end else if (running & accountant_io_miss) begin // @[Auction.scala 223:39]
      regSpecMissCount <= _regSpecMissCount_T_1; // @[Auction.scala 224:22]
    end else if (!(running & dataMovementDone & ~calcDone)) begin // @[Auction.scala 211:50]
      if (~running & io_rfIn_start) begin // @[Auction.scala 213:41]
        regSpecMissCount <= 32'h0; // @[Auction.scala 215:22]
      end
    end
    if (reset) begin // @[Auction.scala 204:29]
      regIterCount <= 32'h0; // @[Auction.scala 204:29]
    end else if (running & _T_5) begin // @[Auction.scala 219:59]
      regIterCount <= _regIterCount_T_1; // @[Auction.scala 220:18]
    end else if (!(running & dataMovementDone & ~calcDone)) begin // @[Auction.scala 211:50]
      if (~running & io_rfIn_start) begin // @[Auction.scala 213:41]
        regIterCount <= 32'h0; // @[Auction.scala 216:18]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  dataMovementDone = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  calcDone = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  running = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  regCycleCount = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  regSpecMissCount = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  regIterCount = _RAND_5[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RegFile(
  input         clock,
  input         reset,
  input         io_extIF_cmd_valid,
  input  [3:0]  io_extIF_cmd_bits_regID,
  input         io_extIF_cmd_bits_read,
  input         io_extIF_cmd_bits_write,
  input  [31:0] io_extIF_cmd_bits_writeData,
  output        io_extIF_readData_valid,
  output [31:0] io_extIF_readData_bits,
  output [31:0] io_regOut_1,
  output [31:0] io_regOut_2,
  output [31:0] io_regOut_3,
  output [31:0] io_regOut_4,
  output [31:0] io_regOut_5,
  output [31:0] io_regOut_6,
  output [31:0] io_regOut_7,
  input  [31:0] io_regIn_8_bits,
  input  [31:0] io_regIn_9_bits,
  input  [31:0] io_regIn_10_bits,
  input  [31:0] io_regIn_11_bits
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] regFile_0; // @[RegFile.scala 51:24]
  reg [31:0] regFile_1; // @[RegFile.scala 51:24]
  reg [31:0] regFile_2; // @[RegFile.scala 51:24]
  reg [31:0] regFile_3; // @[RegFile.scala 51:24]
  reg [31:0] regFile_4; // @[RegFile.scala 51:24]
  reg [31:0] regFile_5; // @[RegFile.scala 51:24]
  reg [31:0] regFile_6; // @[RegFile.scala 51:24]
  reg [31:0] regFile_7; // @[RegFile.scala 51:24]
  reg [31:0] regFile_8; // @[RegFile.scala 51:24]
  reg [31:0] regFile_9; // @[RegFile.scala 51:24]
  reg [31:0] regFile_10; // @[RegFile.scala 51:24]
  reg [31:0] regFile_11; // @[RegFile.scala 51:24]
  reg [3:0] regCommand_regID; // @[RegFile.scala 58:27]
  reg  regCommand_read; // @[RegFile.scala 58:27]
  reg  regCommand_write; // @[RegFile.scala 58:27]
  reg [31:0] regCommand_writeData; // @[RegFile.scala 58:27]
  reg  regDoCmd; // @[RegFile.scala 59:25]
  wire  hasExtWriteCommand = regDoCmd & regCommand_write; // @[RegFile.scala 63:38]
  wire [31:0] _GEN_1 = 4'h1 == regCommand_regID ? regFile_1 : regFile_0; // @[RegFile.scala 69:29 RegFile.scala 69:29]
  wire [31:0] _GEN_2 = 4'h2 == regCommand_regID ? regFile_2 : _GEN_1; // @[RegFile.scala 69:29 RegFile.scala 69:29]
  wire [31:0] _GEN_3 = 4'h3 == regCommand_regID ? regFile_3 : _GEN_2; // @[RegFile.scala 69:29 RegFile.scala 69:29]
  wire [31:0] _GEN_4 = 4'h4 == regCommand_regID ? regFile_4 : _GEN_3; // @[RegFile.scala 69:29 RegFile.scala 69:29]
  wire [31:0] _GEN_5 = 4'h5 == regCommand_regID ? regFile_5 : _GEN_4; // @[RegFile.scala 69:29 RegFile.scala 69:29]
  wire [31:0] _GEN_6 = 4'h6 == regCommand_regID ? regFile_6 : _GEN_5; // @[RegFile.scala 69:29 RegFile.scala 69:29]
  wire [31:0] _GEN_7 = 4'h7 == regCommand_regID ? regFile_7 : _GEN_6; // @[RegFile.scala 69:29 RegFile.scala 69:29]
  wire [31:0] _GEN_8 = 4'h8 == regCommand_regID ? regFile_8 : _GEN_7; // @[RegFile.scala 69:29 RegFile.scala 69:29]
  wire [31:0] _GEN_9 = 4'h9 == regCommand_regID ? regFile_9 : _GEN_8; // @[RegFile.scala 69:29 RegFile.scala 69:29]
  wire [31:0] _GEN_10 = 4'ha == regCommand_regID ? regFile_10 : _GEN_9; // @[RegFile.scala 69:29 RegFile.scala 69:29]
  wire [31:0] _GEN_11 = 4'hb == regCommand_regID ? regFile_11 : _GEN_10; // @[RegFile.scala 69:29 RegFile.scala 69:29]
  assign io_extIF_readData_valid = regDoCmd & regCommand_read; // @[RegFile.scala 62:37]
  assign io_extIF_readData_bits = regCommand_regID < 4'hc ? _GEN_11 : 32'h0; // @[RegFile.scala 68:41 RegFile.scala 69:29 RegFile.scala 72:29]
  assign io_regOut_1 = regFile_1; // @[RegFile.scala 89:18]
  assign io_regOut_2 = regFile_2; // @[RegFile.scala 89:18]
  assign io_regOut_3 = regFile_3; // @[RegFile.scala 89:18]
  assign io_regOut_4 = regFile_4; // @[RegFile.scala 89:18]
  assign io_regOut_5 = regFile_5; // @[RegFile.scala 89:18]
  assign io_regOut_6 = regFile_6; // @[RegFile.scala 89:18]
  assign io_regOut_7 = regFile_7; // @[RegFile.scala 89:18]
  always @(posedge clock) begin
    if (reset) begin // @[RegFile.scala 51:24]
      regFile_0 <= 32'h0; // @[RegFile.scala 51:24]
    end else if (hasExtWriteCommand) begin // @[RegFile.scala 79:29]
      if (4'h0 == regCommand_regID) begin // @[RegFile.scala 80:31]
        regFile_0 <= regCommand_writeData; // @[RegFile.scala 80:31]
      end
    end else begin
      regFile_0 <= 32'h1159cc0f;
    end
    if (reset) begin // @[RegFile.scala 51:24]
      regFile_1 <= 32'h0; // @[RegFile.scala 51:24]
    end else if (hasExtWriteCommand) begin // @[RegFile.scala 79:29]
      if (4'h1 == regCommand_regID) begin // @[RegFile.scala 80:31]
        regFile_1 <= regCommand_writeData; // @[RegFile.scala 80:31]
      end
    end
    if (reset) begin // @[RegFile.scala 51:24]
      regFile_2 <= 32'h0; // @[RegFile.scala 51:24]
    end else if (hasExtWriteCommand) begin // @[RegFile.scala 79:29]
      if (4'h2 == regCommand_regID) begin // @[RegFile.scala 80:31]
        regFile_2 <= regCommand_writeData; // @[RegFile.scala 80:31]
      end
    end
    if (reset) begin // @[RegFile.scala 51:24]
      regFile_3 <= 32'h0; // @[RegFile.scala 51:24]
    end else if (hasExtWriteCommand) begin // @[RegFile.scala 79:29]
      if (4'h3 == regCommand_regID) begin // @[RegFile.scala 80:31]
        regFile_3 <= regCommand_writeData; // @[RegFile.scala 80:31]
      end
    end
    if (reset) begin // @[RegFile.scala 51:24]
      regFile_4 <= 32'h0; // @[RegFile.scala 51:24]
    end else if (hasExtWriteCommand) begin // @[RegFile.scala 79:29]
      if (4'h4 == regCommand_regID) begin // @[RegFile.scala 80:31]
        regFile_4 <= regCommand_writeData; // @[RegFile.scala 80:31]
      end
    end
    if (reset) begin // @[RegFile.scala 51:24]
      regFile_5 <= 32'h0; // @[RegFile.scala 51:24]
    end else if (hasExtWriteCommand) begin // @[RegFile.scala 79:29]
      if (4'h5 == regCommand_regID) begin // @[RegFile.scala 80:31]
        regFile_5 <= regCommand_writeData; // @[RegFile.scala 80:31]
      end
    end
    if (reset) begin // @[RegFile.scala 51:24]
      regFile_6 <= 32'h0; // @[RegFile.scala 51:24]
    end else if (hasExtWriteCommand) begin // @[RegFile.scala 79:29]
      if (4'h6 == regCommand_regID) begin // @[RegFile.scala 80:31]
        regFile_6 <= regCommand_writeData; // @[RegFile.scala 80:31]
      end
    end
    if (reset) begin // @[RegFile.scala 51:24]
      regFile_7 <= 32'h0; // @[RegFile.scala 51:24]
    end else if (hasExtWriteCommand) begin // @[RegFile.scala 79:29]
      if (4'h7 == regCommand_regID) begin // @[RegFile.scala 80:31]
        regFile_7 <= regCommand_writeData; // @[RegFile.scala 80:31]
      end
    end
    if (reset) begin // @[RegFile.scala 51:24]
      regFile_8 <= 32'h0; // @[RegFile.scala 51:24]
    end else if (hasExtWriteCommand) begin // @[RegFile.scala 79:29]
      if (4'h8 == regCommand_regID) begin // @[RegFile.scala 80:31]
        regFile_8 <= regCommand_writeData; // @[RegFile.scala 80:31]
      end
    end else begin
      regFile_8 <= io_regIn_8_bits;
    end
    if (reset) begin // @[RegFile.scala 51:24]
      regFile_9 <= 32'h0; // @[RegFile.scala 51:24]
    end else if (hasExtWriteCommand) begin // @[RegFile.scala 79:29]
      if (4'h9 == regCommand_regID) begin // @[RegFile.scala 80:31]
        regFile_9 <= regCommand_writeData; // @[RegFile.scala 80:31]
      end
    end else begin
      regFile_9 <= io_regIn_9_bits;
    end
    if (reset) begin // @[RegFile.scala 51:24]
      regFile_10 <= 32'h0; // @[RegFile.scala 51:24]
    end else if (hasExtWriteCommand) begin // @[RegFile.scala 79:29]
      if (4'ha == regCommand_regID) begin // @[RegFile.scala 80:31]
        regFile_10 <= regCommand_writeData; // @[RegFile.scala 80:31]
      end
    end else begin
      regFile_10 <= io_regIn_10_bits;
    end
    if (reset) begin // @[RegFile.scala 51:24]
      regFile_11 <= 32'h0; // @[RegFile.scala 51:24]
    end else if (hasExtWriteCommand) begin // @[RegFile.scala 79:29]
      if (4'hb == regCommand_regID) begin // @[RegFile.scala 80:31]
        regFile_11 <= regCommand_writeData; // @[RegFile.scala 80:31]
      end
    end else begin
      regFile_11 <= io_regIn_11_bits;
    end
    regCommand_regID <= io_extIF_cmd_bits_regID; // @[RegFile.scala 58:27]
    regCommand_read <= io_extIF_cmd_bits_read; // @[RegFile.scala 58:27]
    regCommand_write <= io_extIF_cmd_bits_write; // @[RegFile.scala 58:27]
    regCommand_writeData <= io_extIF_cmd_bits_writeData; // @[RegFile.scala 58:27]
    if (reset) begin // @[RegFile.scala 59:25]
      regDoCmd <= 1'h0; // @[RegFile.scala 59:25]
    end else begin
      regDoCmd <= io_extIF_cmd_valid; // @[RegFile.scala 59:25]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regFile_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  regFile_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  regFile_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  regFile_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  regFile_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  regFile_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  regFile_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  regFile_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  regFile_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  regFile_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  regFile_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  regFile_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  regCommand_regID = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  regCommand_read = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  regCommand_write = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  regCommand_writeData = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  regDoCmd = _RAND_16[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module AXIMemReqAdp(
  output        io_genericReqIn_ready,
  input         io_genericReqIn_valid,
  input  [31:0] io_genericReqIn_bits_addr,
  input  [7:0]  io_genericReqIn_bits_numBytes,
  input         io_axiReqOut_ready,
  output        io_axiReqOut_valid,
  output [31:0] io_axiReqOut_bits_addr,
  output [7:0]  io_axiReqOut_bits_len
);
  wire [7:0] beats = io_genericReqIn_bits_numBytes / 4'h8; // @[AXIMemAdapters.scala 21:31]
  assign io_genericReqIn_ready = io_axiReqOut_ready; // @[AXIMemAdapters.scala 13:25]
  assign io_axiReqOut_valid = io_genericReqIn_valid; // @[AXIMemAdapters.scala 14:22]
  assign io_axiReqOut_bits_addr = io_genericReqIn_bits_addr; // @[AXIMemAdapters.scala 19:15]
  assign io_axiReqOut_bits_len = beats - 8'h1; // @[AXIMemAdapters.scala 22:23]
endmodule
module AXIReadRspAdp(
  output        io_axiReadRspIn_ready,
  input         io_axiReadRspIn_valid,
  input  [63:0] io_axiReadRspIn_bits_data,
  input  [5:0]  io_axiReadRspIn_bits_id,
  input         io_axiReadRspIn_bits_last,
  input         io_genericRspOut_ready,
  output        io_genericRspOut_valid,
  output [5:0]  io_genericRspOut_bits_channelID,
  output [63:0] io_genericRspOut_bits_readData,
  output        io_genericRspOut_bits_isLast
);
  assign io_axiReadRspIn_ready = io_genericRspOut_ready; // @[AXIMemAdapters.scala 38:25]
  assign io_genericRspOut_valid = io_axiReadRspIn_valid; // @[AXIMemAdapters.scala 37:26]
  assign io_genericRspOut_bits_channelID = io_axiReadRspIn_bits_id; // @[AXIMemAdapters.scala 44:20]
  assign io_genericRspOut_bits_readData = io_axiReadRspIn_bits_data; // @[AXIMemAdapters.scala 43:19]
  assign io_genericRspOut_bits_isLast = io_axiReadRspIn_bits_last; // @[AXIMemAdapters.scala 47:17]
endmodule
module AXIWriteBurstReqAdapter(
  input         clock,
  input         reset,
  output        io_in_writeAddr_ready,
  input         io_in_writeAddr_valid,
  input  [31:0] io_in_writeAddr_bits_addr,
  input  [7:0]  io_in_writeAddr_bits_len,
  output        io_in_writeData_ready,
  input         io_in_writeData_valid,
  input  [63:0] io_in_writeData_bits_data,
  input         io_out_writeAddr_ready,
  output        io_out_writeAddr_valid,
  output [31:0] io_out_writeAddr_bits_addr,
  output [7:0]  io_out_writeAddr_bits_len,
  input         io_out_writeData_ready,
  output        io_out_writeData_valid,
  output [63:0] io_out_writeData_bits_data,
  output        io_out_writeData_bits_last
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg  regState; // @[AXIMemAdapters.scala 155:25]
  reg [7:0] regBeatsLeft; // @[AXIMemAdapters.scala 156:29]
  wire  _T = ~regState; // @[Conditional.scala 37:30]
  wire  _T_1 = io_out_writeAddr_ready & io_out_writeAddr_valid; // @[Decoupled.scala 40:37]
  wire  _GEN_1 = _T_1 | regState; // @[AXIMemAdapters.scala 165:37 AXIMemAdapters.scala 167:18 AXIMemAdapters.scala 155:25]
  wire  isLastBeat = regBeatsLeft == 8'h0; // @[AXIMemAdapters.scala 172:38]
  wire  _T_3 = io_out_writeData_ready & io_out_writeData_valid; // @[Decoupled.scala 40:37]
  wire [7:0] _regBeatsLeft_T_1 = regBeatsLeft - 8'h1; // @[AXIMemAdapters.scala 180:51]
  wire  _GEN_2 = isLastBeat ? 1'h0 : regState; // @[AXIMemAdapters.scala 179:26 AXIMemAdapters.scala 179:37 AXIMemAdapters.scala 155:25]
  wire [7:0] _GEN_3 = isLastBeat ? regBeatsLeft : _regBeatsLeft_T_1; // @[AXIMemAdapters.scala 179:26 AXIMemAdapters.scala 156:29 AXIMemAdapters.scala 180:35]
  wire  _GEN_6 = regState & io_in_writeData_valid; // @[Conditional.scala 39:67 AXIMemAdapters.scala 174:30 AXIMemAdapters.scala 149:26]
  wire  _GEN_7 = regState & io_out_writeData_ready; // @[Conditional.scala 39:67 AXIMemAdapters.scala 175:29 AXIMemAdapters.scala 150:25]
  wire  _GEN_8 = regState & isLastBeat; // @[Conditional.scala 39:67 AXIMemAdapters.scala 176:34 AXIMemAdapters.scala 152:30]
  assign io_in_writeAddr_ready = _T & io_out_writeAddr_ready; // @[Conditional.scala 40:58 AXIMemAdapters.scala 162:29 AXIMemAdapters.scala 148:25]
  assign io_in_writeData_ready = _T ? 1'h0 : _GEN_7; // @[Conditional.scala 40:58 AXIMemAdapters.scala 150:25]
  assign io_out_writeAddr_valid = _T & io_in_writeAddr_valid; // @[Conditional.scala 40:58 AXIMemAdapters.scala 161:30 AXIMemAdapters.scala 147:26]
  assign io_out_writeAddr_bits_addr = io_in_writeAddr_bits_addr; // @[AXIMemAdapters.scala 144:19]
  assign io_out_writeAddr_bits_len = io_in_writeAddr_bits_len; // @[AXIMemAdapters.scala 144:19]
  assign io_out_writeData_valid = _T ? 1'h0 : _GEN_6; // @[Conditional.scala 40:58 AXIMemAdapters.scala 149:26]
  assign io_out_writeData_bits_data = io_in_writeData_bits_data; // @[AXIMemAdapters.scala 145:19]
  assign io_out_writeData_bits_last = _T ? 1'h0 : _GEN_8; // @[Conditional.scala 40:58 AXIMemAdapters.scala 152:30]
  always @(posedge clock) begin
    if (reset) begin // @[AXIMemAdapters.scala 155:25]
      regState <= 1'h0; // @[AXIMemAdapters.scala 155:25]
    end else if (_T) begin // @[Conditional.scala 40:58]
      regState <= _GEN_1;
    end else if (regState) begin // @[Conditional.scala 39:67]
      if (_T_3) begin // @[AXIMemAdapters.scala 177:37]
        regState <= _GEN_2;
      end
    end
    if (reset) begin // @[AXIMemAdapters.scala 156:29]
      regBeatsLeft <= 8'h0; // @[AXIMemAdapters.scala 156:29]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (_T_1) begin // @[AXIMemAdapters.scala 165:37]
        regBeatsLeft <= io_in_writeAddr_bits_len; // @[AXIMemAdapters.scala 166:22]
      end
    end else if (regState) begin // @[Conditional.scala 39:67]
      if (_T_3) begin // @[AXIMemAdapters.scala 177:37]
        regBeatsLeft <= _GEN_3;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regState = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  regBeatsLeft = _RAND_1[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SRLQueue_6(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [63:0] io_enq_bits_data,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [63:0] io_deq_bits_data,
  output [7:0]  io_deq_bits_strb,
  output        io_deq_bits_last
);
  wire  Q_srl_i_v; // @[FPGAQueue.scala 70:20]
  wire [72:0] Q_srl_i_d; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_i_b; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_o_v; // @[FPGAQueue.scala 70:20]
  wire [72:0] Q_srl_o_d; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_o_b; // @[FPGAQueue.scala 70:20]
  wire [1:0] Q_srl_count; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_clock; // @[FPGAQueue.scala 70:20]
  wire  Q_srl_reset; // @[FPGAQueue.scala 70:20]
  wire [71:0] hi = {io_enq_bits_data,8'hff}; // @[FPGAQueue.scala 74:27]
  wire [72:0] _io_deq_bits_WIRE_1 = Q_srl_o_d;
  Q_srl #(.depth(2), .width(73)) Q_srl ( // @[FPGAQueue.scala 70:20]
    .i_v(Q_srl_i_v),
    .i_d(Q_srl_i_d),
    .i_b(Q_srl_i_b),
    .o_v(Q_srl_o_v),
    .o_d(Q_srl_o_d),
    .o_b(Q_srl_o_b),
    .count(Q_srl_count),
    .clock(Q_srl_clock),
    .reset(Q_srl_reset)
  );
  assign io_enq_ready = ~Q_srl_i_b; // @[FPGAQueue.scala 83:19]
  assign io_deq_valid = Q_srl_o_v; // @[FPGAQueue.scala 78:16]
  assign io_deq_bits_data = _io_deq_bits_WIRE_1[72:9]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_strb = _io_deq_bits_WIRE_1[8:1]; // @[FPGAQueue.scala 79:35]
  assign io_deq_bits_last = _io_deq_bits_WIRE_1[0]; // @[FPGAQueue.scala 79:35]
  assign Q_srl_i_v = io_enq_valid; // @[FPGAQueue.scala 73:12]
  assign Q_srl_i_d = {hi,io_enq_bits_last}; // @[FPGAQueue.scala 74:27]
  assign Q_srl_o_b = ~io_deq_ready; // @[FPGAQueue.scala 82:15]
  assign Q_srl_clock = clock; // @[FPGAQueue.scala 75:14]
  assign Q_srl_reset = reset; // @[FPGAQueue.scala 76:14]
endmodule
module FPGAQueue_8(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [63:0] io_enq_bits_data,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [63:0] io_deq_bits_data,
  output [7:0]  io_deq_bits_strb,
  output        io_deq_bits_last
);
  wire  SRLQueue_clock; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_reset; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_ready; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_valid; // @[FPGAQueue.scala 177:26]
  wire [63:0] SRLQueue_io_enq_bits_data; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_enq_bits_last; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_deq_ready; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_deq_valid; // @[FPGAQueue.scala 177:26]
  wire [63:0] SRLQueue_io_deq_bits_data; // @[FPGAQueue.scala 177:26]
  wire [7:0] SRLQueue_io_deq_bits_strb; // @[FPGAQueue.scala 177:26]
  wire  SRLQueue_io_deq_bits_last; // @[FPGAQueue.scala 177:26]
  SRLQueue_6 SRLQueue ( // @[FPGAQueue.scala 177:26]
    .clock(SRLQueue_clock),
    .reset(SRLQueue_reset),
    .io_enq_ready(SRLQueue_io_enq_ready),
    .io_enq_valid(SRLQueue_io_enq_valid),
    .io_enq_bits_data(SRLQueue_io_enq_bits_data),
    .io_enq_bits_last(SRLQueue_io_enq_bits_last),
    .io_deq_ready(SRLQueue_io_deq_ready),
    .io_deq_valid(SRLQueue_io_deq_valid),
    .io_deq_bits_data(SRLQueue_io_deq_bits_data),
    .io_deq_bits_strb(SRLQueue_io_deq_bits_strb),
    .io_deq_bits_last(SRLQueue_io_deq_bits_last)
  );
  assign io_enq_ready = SRLQueue_io_enq_ready; // @[FPGAQueue.scala 179:14]
  assign io_deq_valid = SRLQueue_io_deq_valid; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_data = SRLQueue_io_deq_bits_data; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_strb = SRLQueue_io_deq_bits_strb; // @[FPGAQueue.scala 179:14]
  assign io_deq_bits_last = SRLQueue_io_deq_bits_last; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_clock = clock;
  assign SRLQueue_reset = reset;
  assign SRLQueue_io_enq_valid = io_enq_valid; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_data = io_enq_bits_data; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_enq_bits_last = io_enq_bits_last; // @[FPGAQueue.scala 179:14]
  assign SRLQueue_io_deq_ready = io_deq_ready; // @[FPGAQueue.scala 179:14]
endmodule
module AXIWriteRspAdp(
  input   io_axiWriteRspIn_valid,
  output  io_genericRspOut_valid
);
  assign io_genericRspOut_valid = io_axiWriteRspIn_valid; // @[AXIMemAdapters.scala 55:26]
endmodule
module ZedBoardWrapper(
  input         clock,
  input         reset,
  output [31:0] mem0_ARADDR,
  output [2:0]  mem0_ARSIZE,
  output [7:0]  mem0_ARLEN,
  output [1:0]  mem0_ARBURST,
  output [5:0]  mem0_ARID,
  output        mem0_ARLOCK,
  output [3:0]  mem0_ARCACHE,
  output [2:0]  mem0_ARPROT,
  output [3:0]  mem0_ARQOS,
  input         mem0_ARREADY,
  output        mem0_ARVALID,
  output [31:0] mem0_AWADDR,
  output [2:0]  mem0_AWSIZE,
  output [7:0]  mem0_AWLEN,
  output [1:0]  mem0_AWBURST,
  output [5:0]  mem0_AWID,
  output        mem0_AWLOCK,
  output [3:0]  mem0_AWCACHE,
  output [2:0]  mem0_AWPROT,
  output [3:0]  mem0_AWQOS,
  input         mem0_AWREADY,
  output        mem0_AWVALID,
  output [63:0] mem0_WDATA,
  output [7:0]  mem0_WSTRB,
  output        mem0_WLAST,
  output        mem0_WVALID,
  input         mem0_WREADY,
  input  [1:0]  mem0_BRESP,
  input  [5:0]  mem0_BID,
  input         mem0_BVALID,
  output        mem0_BREADY,
  input  [5:0]  mem0_RID,
  input  [63:0] mem0_RDATA,
  input  [1:0]  mem0_RRESP,
  input         mem0_RLAST,
  input         mem0_RVALID,
  output        mem0_RREADY,
  output [31:0] mem1_ARADDR,
  output [2:0]  mem1_ARSIZE,
  output [7:0]  mem1_ARLEN,
  output [1:0]  mem1_ARBURST,
  output [5:0]  mem1_ARID,
  output        mem1_ARLOCK,
  output [3:0]  mem1_ARCACHE,
  output [2:0]  mem1_ARPROT,
  output [3:0]  mem1_ARQOS,
  input         mem1_ARREADY,
  output        mem1_ARVALID,
  output [31:0] mem1_AWADDR,
  output [2:0]  mem1_AWSIZE,
  output [7:0]  mem1_AWLEN,
  output [1:0]  mem1_AWBURST,
  output [5:0]  mem1_AWID,
  output        mem1_AWLOCK,
  output [3:0]  mem1_AWCACHE,
  output [2:0]  mem1_AWPROT,
  output [3:0]  mem1_AWQOS,
  input         mem1_AWREADY,
  output        mem1_AWVALID,
  output [63:0] mem1_WDATA,
  output [7:0]  mem1_WSTRB,
  output        mem1_WLAST,
  output        mem1_WVALID,
  input         mem1_WREADY,
  input  [1:0]  mem1_BRESP,
  input  [5:0]  mem1_BID,
  input         mem1_BVALID,
  output        mem1_BREADY,
  input  [5:0]  mem1_RID,
  input  [63:0] mem1_RDATA,
  input  [1:0]  mem1_RRESP,
  input         mem1_RLAST,
  input         mem1_RVALID,
  output        mem1_RREADY,
  output [31:0] mem2_ARADDR,
  output [2:0]  mem2_ARSIZE,
  output [7:0]  mem2_ARLEN,
  output [1:0]  mem2_ARBURST,
  output [5:0]  mem2_ARID,
  output        mem2_ARLOCK,
  output [3:0]  mem2_ARCACHE,
  output [2:0]  mem2_ARPROT,
  output [3:0]  mem2_ARQOS,
  input         mem2_ARREADY,
  output        mem2_ARVALID,
  output [31:0] mem2_AWADDR,
  output [2:0]  mem2_AWSIZE,
  output [7:0]  mem2_AWLEN,
  output [1:0]  mem2_AWBURST,
  output [5:0]  mem2_AWID,
  output        mem2_AWLOCK,
  output [3:0]  mem2_AWCACHE,
  output [2:0]  mem2_AWPROT,
  output [3:0]  mem2_AWQOS,
  input         mem2_AWREADY,
  output        mem2_AWVALID,
  output [63:0] mem2_WDATA,
  output [7:0]  mem2_WSTRB,
  output        mem2_WLAST,
  output        mem2_WVALID,
  input         mem2_WREADY,
  input  [1:0]  mem2_BRESP,
  input  [5:0]  mem2_BID,
  input         mem2_BVALID,
  output        mem2_BREADY,
  input  [5:0]  mem2_RID,
  input  [63:0] mem2_RDATA,
  input  [1:0]  mem2_RRESP,
  input         mem2_RLAST,
  input         mem2_RVALID,
  output        mem2_RREADY,
  output [31:0] mem3_ARADDR,
  output [2:0]  mem3_ARSIZE,
  output [7:0]  mem3_ARLEN,
  output [1:0]  mem3_ARBURST,
  output [5:0]  mem3_ARID,
  output        mem3_ARLOCK,
  output [3:0]  mem3_ARCACHE,
  output [2:0]  mem3_ARPROT,
  output [3:0]  mem3_ARQOS,
  input         mem3_ARREADY,
  output        mem3_ARVALID,
  output [31:0] mem3_AWADDR,
  output [2:0]  mem3_AWSIZE,
  output [7:0]  mem3_AWLEN,
  output [1:0]  mem3_AWBURST,
  output [5:0]  mem3_AWID,
  output        mem3_AWLOCK,
  output [3:0]  mem3_AWCACHE,
  output [2:0]  mem3_AWPROT,
  output [3:0]  mem3_AWQOS,
  input         mem3_AWREADY,
  output        mem3_AWVALID,
  output [63:0] mem3_WDATA,
  output [7:0]  mem3_WSTRB,
  output        mem3_WLAST,
  output        mem3_WVALID,
  input         mem3_WREADY,
  input  [1:0]  mem3_BRESP,
  input  [5:0]  mem3_BID,
  input         mem3_BVALID,
  output        mem3_BREADY,
  input  [5:0]  mem3_RID,
  input  [63:0] mem3_RDATA,
  input  [1:0]  mem3_RRESP,
  input         mem3_RLAST,
  input         mem3_RVALID,
  output        mem3_RREADY,
  input  [31:0] csr_ARADDR,
  input  [2:0]  csr_ARPROT,
  output        csr_ARREADY,
  input         csr_ARVALID,
  input  [31:0] csr_AWADDR,
  input  [2:0]  csr_AWPROT,
  output        csr_AWREADY,
  input         csr_AWVALID,
  input  [31:0] csr_WDATA,
  input  [3:0]  csr_WSTRB,
  input         csr_WVALID,
  output        csr_WREADY,
  output [1:0]  csr_BRESP,
  output        csr_BVALID,
  input         csr_BREADY,
  output [31:0] csr_RDATA,
  output [1:0]  csr_RRESP,
  output        csr_RVALID,
  input         csr_RREADY
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  wire  Auction_clock; // @[PlatformWrapper.scala 69:21]
  wire  Auction_reset; // @[PlatformWrapper.scala 69:21]
  wire  Auction_io_memPort_0_memRdReq_ready; // @[PlatformWrapper.scala 69:21]
  wire  Auction_io_memPort_0_memRdReq_valid; // @[PlatformWrapper.scala 69:21]
  wire [31:0] Auction_io_memPort_0_memRdReq_bits_addr; // @[PlatformWrapper.scala 69:21]
  wire [7:0] Auction_io_memPort_0_memRdReq_bits_numBytes; // @[PlatformWrapper.scala 69:21]
  wire  Auction_io_memPort_0_memRdRsp_ready; // @[PlatformWrapper.scala 69:21]
  wire  Auction_io_memPort_0_memRdRsp_valid; // @[PlatformWrapper.scala 69:21]
  wire [5:0] Auction_io_memPort_0_memRdRsp_bits_channelID; // @[PlatformWrapper.scala 69:21]
  wire [63:0] Auction_io_memPort_0_memRdRsp_bits_readData; // @[PlatformWrapper.scala 69:21]
  wire  Auction_io_memPort_0_memRdRsp_bits_isLast; // @[PlatformWrapper.scala 69:21]
  wire  Auction_io_memPort_0_memWrReq_ready; // @[PlatformWrapper.scala 69:21]
  wire  Auction_io_memPort_0_memWrReq_valid; // @[PlatformWrapper.scala 69:21]
  wire [31:0] Auction_io_memPort_0_memWrReq_bits_addr; // @[PlatformWrapper.scala 69:21]
  wire  Auction_io_memPort_0_memWrDat_ready; // @[PlatformWrapper.scala 69:21]
  wire  Auction_io_memPort_0_memWrDat_valid; // @[PlatformWrapper.scala 69:21]
  wire [63:0] Auction_io_memPort_0_memWrDat_bits; // @[PlatformWrapper.scala 69:21]
  wire  Auction_io_memPort_0_memWrRsp_valid; // @[PlatformWrapper.scala 69:21]
  wire  Auction_io_rfOut_finished; // @[PlatformWrapper.scala 69:21]
  wire [31:0] Auction_io_rfOut_cycleCount; // @[PlatformWrapper.scala 69:21]
  wire [31:0] Auction_io_rfOut_missCount; // @[PlatformWrapper.scala 69:21]
  wire [31:0] Auction_io_rfOut_iterCount; // @[PlatformWrapper.scala 69:21]
  wire  Auction_io_rfIn_start; // @[PlatformWrapper.scala 69:21]
  wire [63:0] Auction_io_rfIn_baseAddr; // @[PlatformWrapper.scala 69:21]
  wire [31:0] Auction_io_rfIn_nAgents; // @[PlatformWrapper.scala 69:21]
  wire [31:0] Auction_io_rfIn_nObjects; // @[PlatformWrapper.scala 69:21]
  wire [63:0] Auction_io_rfIn_baseAddrRes; // @[PlatformWrapper.scala 69:21]
  wire  RegFile_clock; // @[PlatformWrapper.scala 111:23]
  wire  RegFile_reset; // @[PlatformWrapper.scala 111:23]
  wire  RegFile_io_extIF_cmd_valid; // @[PlatformWrapper.scala 111:23]
  wire [3:0] RegFile_io_extIF_cmd_bits_regID; // @[PlatformWrapper.scala 111:23]
  wire  RegFile_io_extIF_cmd_bits_read; // @[PlatformWrapper.scala 111:23]
  wire  RegFile_io_extIF_cmd_bits_write; // @[PlatformWrapper.scala 111:23]
  wire [31:0] RegFile_io_extIF_cmd_bits_writeData; // @[PlatformWrapper.scala 111:23]
  wire  RegFile_io_extIF_readData_valid; // @[PlatformWrapper.scala 111:23]
  wire [31:0] RegFile_io_extIF_readData_bits; // @[PlatformWrapper.scala 111:23]
  wire [31:0] RegFile_io_regOut_1; // @[PlatformWrapper.scala 111:23]
  wire [31:0] RegFile_io_regOut_2; // @[PlatformWrapper.scala 111:23]
  wire [31:0] RegFile_io_regOut_3; // @[PlatformWrapper.scala 111:23]
  wire [31:0] RegFile_io_regOut_4; // @[PlatformWrapper.scala 111:23]
  wire [31:0] RegFile_io_regOut_5; // @[PlatformWrapper.scala 111:23]
  wire [31:0] RegFile_io_regOut_6; // @[PlatformWrapper.scala 111:23]
  wire [31:0] RegFile_io_regOut_7; // @[PlatformWrapper.scala 111:23]
  wire [31:0] RegFile_io_regIn_8_bits; // @[PlatformWrapper.scala 111:23]
  wire [31:0] RegFile_io_regIn_9_bits; // @[PlatformWrapper.scala 111:23]
  wire [31:0] RegFile_io_regIn_10_bits; // @[PlatformWrapper.scala 111:23]
  wire [31:0] RegFile_io_regIn_11_bits; // @[PlatformWrapper.scala 111:23]
  wire  AXIMemReqAdp_io_genericReqIn_ready; // @[AXIPlatformWrapper.scala 38:28]
  wire  AXIMemReqAdp_io_genericReqIn_valid; // @[AXIPlatformWrapper.scala 38:28]
  wire [31:0] AXIMemReqAdp_io_genericReqIn_bits_addr; // @[AXIPlatformWrapper.scala 38:28]
  wire [7:0] AXIMemReqAdp_io_genericReqIn_bits_numBytes; // @[AXIPlatformWrapper.scala 38:28]
  wire  AXIMemReqAdp_io_axiReqOut_ready; // @[AXIPlatformWrapper.scala 38:28]
  wire  AXIMemReqAdp_io_axiReqOut_valid; // @[AXIPlatformWrapper.scala 38:28]
  wire [31:0] AXIMemReqAdp_io_axiReqOut_bits_addr; // @[AXIPlatformWrapper.scala 38:28]
  wire [7:0] AXIMemReqAdp_io_axiReqOut_bits_len; // @[AXIPlatformWrapper.scala 38:28]
  wire  AXIReadRspAdp_io_axiReadRspIn_ready; // @[AXIPlatformWrapper.scala 42:28]
  wire  AXIReadRspAdp_io_axiReadRspIn_valid; // @[AXIPlatformWrapper.scala 42:28]
  wire [63:0] AXIReadRspAdp_io_axiReadRspIn_bits_data; // @[AXIPlatformWrapper.scala 42:28]
  wire [5:0] AXIReadRspAdp_io_axiReadRspIn_bits_id; // @[AXIPlatformWrapper.scala 42:28]
  wire  AXIReadRspAdp_io_axiReadRspIn_bits_last; // @[AXIPlatformWrapper.scala 42:28]
  wire  AXIReadRspAdp_io_genericRspOut_ready; // @[AXIPlatformWrapper.scala 42:28]
  wire  AXIReadRspAdp_io_genericRspOut_valid; // @[AXIPlatformWrapper.scala 42:28]
  wire [5:0] AXIReadRspAdp_io_genericRspOut_bits_channelID; // @[AXIPlatformWrapper.scala 42:28]
  wire [63:0] AXIReadRspAdp_io_genericRspOut_bits_readData; // @[AXIPlatformWrapper.scala 42:28]
  wire  AXIReadRspAdp_io_genericRspOut_bits_isLast; // @[AXIPlatformWrapper.scala 42:28]
  wire  AXIMemReqAdp_1_io_genericReqIn_ready; // @[AXIPlatformWrapper.scala 46:29]
  wire  AXIMemReqAdp_1_io_genericReqIn_valid; // @[AXIPlatformWrapper.scala 46:29]
  wire [31:0] AXIMemReqAdp_1_io_genericReqIn_bits_addr; // @[AXIPlatformWrapper.scala 46:29]
  wire [7:0] AXIMemReqAdp_1_io_genericReqIn_bits_numBytes; // @[AXIPlatformWrapper.scala 46:29]
  wire  AXIMemReqAdp_1_io_axiReqOut_ready; // @[AXIPlatformWrapper.scala 46:29]
  wire  AXIMemReqAdp_1_io_axiReqOut_valid; // @[AXIPlatformWrapper.scala 46:29]
  wire [31:0] AXIMemReqAdp_1_io_axiReqOut_bits_addr; // @[AXIPlatformWrapper.scala 46:29]
  wire [7:0] AXIMemReqAdp_1_io_axiReqOut_bits_len; // @[AXIPlatformWrapper.scala 46:29]
  wire  AXIWriteBurstReqAdapter_clock; // @[AXIPlatformWrapper.scala 49:31]
  wire  AXIWriteBurstReqAdapter_reset; // @[AXIPlatformWrapper.scala 49:31]
  wire  AXIWriteBurstReqAdapter_io_in_writeAddr_ready; // @[AXIPlatformWrapper.scala 49:31]
  wire  AXIWriteBurstReqAdapter_io_in_writeAddr_valid; // @[AXIPlatformWrapper.scala 49:31]
  wire [31:0] AXIWriteBurstReqAdapter_io_in_writeAddr_bits_addr; // @[AXIPlatformWrapper.scala 49:31]
  wire [7:0] AXIWriteBurstReqAdapter_io_in_writeAddr_bits_len; // @[AXIPlatformWrapper.scala 49:31]
  wire  AXIWriteBurstReqAdapter_io_in_writeData_ready; // @[AXIPlatformWrapper.scala 49:31]
  wire  AXIWriteBurstReqAdapter_io_in_writeData_valid; // @[AXIPlatformWrapper.scala 49:31]
  wire [63:0] AXIWriteBurstReqAdapter_io_in_writeData_bits_data; // @[AXIPlatformWrapper.scala 49:31]
  wire  AXIWriteBurstReqAdapter_io_out_writeAddr_ready; // @[AXIPlatformWrapper.scala 49:31]
  wire  AXIWriteBurstReqAdapter_io_out_writeAddr_valid; // @[AXIPlatformWrapper.scala 49:31]
  wire [31:0] AXIWriteBurstReqAdapter_io_out_writeAddr_bits_addr; // @[AXIPlatformWrapper.scala 49:31]
  wire [7:0] AXIWriteBurstReqAdapter_io_out_writeAddr_bits_len; // @[AXIPlatformWrapper.scala 49:31]
  wire  AXIWriteBurstReqAdapter_io_out_writeData_ready; // @[AXIPlatformWrapper.scala 49:31]
  wire  AXIWriteBurstReqAdapter_io_out_writeData_valid; // @[AXIPlatformWrapper.scala 49:31]
  wire [63:0] AXIWriteBurstReqAdapter_io_out_writeData_bits_data; // @[AXIPlatformWrapper.scala 49:31]
  wire  AXIWriteBurstReqAdapter_io_out_writeData_bits_last; // @[AXIPlatformWrapper.scala 49:31]
  wire  q_clock; // @[FPGAQueue.scala 190:19]
  wire  q_reset; // @[FPGAQueue.scala 190:19]
  wire  q_io_enq_ready; // @[FPGAQueue.scala 190:19]
  wire  q_io_enq_valid; // @[FPGAQueue.scala 190:19]
  wire [63:0] q_io_enq_bits_data; // @[FPGAQueue.scala 190:19]
  wire  q_io_enq_bits_last; // @[FPGAQueue.scala 190:19]
  wire  q_io_deq_ready; // @[FPGAQueue.scala 190:19]
  wire  q_io_deq_valid; // @[FPGAQueue.scala 190:19]
  wire [63:0] q_io_deq_bits_data; // @[FPGAQueue.scala 190:19]
  wire [7:0] q_io_deq_bits_strb; // @[FPGAQueue.scala 190:19]
  wire  q_io_deq_bits_last; // @[FPGAQueue.scala 190:19]
  wire  AXIWriteRspAdp_io_axiWriteRspIn_valid; // @[AXIPlatformWrapper.scala 65:29]
  wire  AXIWriteRspAdp_io_genericRspOut_valid; // @[AXIPlatformWrapper.scala 65:29]
  reg  regWrapperReset; // @[PlatformWrapper.scala 68:32]
  reg [2:0] regState; // @[AXIPlatformWrapper.scala 94:25]
  reg  regModeWrite; // @[AXIPlatformWrapper.scala 95:29]
  reg  regRdReq; // @[AXIPlatformWrapper.scala 96:25]
  reg [31:0] regRdAddr; // @[AXIPlatformWrapper.scala 97:26]
  reg  regWrReq; // @[AXIPlatformWrapper.scala 98:25]
  reg [31:0] regWrAddr; // @[AXIPlatformWrapper.scala 99:26]
  reg [31:0] regWrData; // @[AXIPlatformWrapper.scala 100:26]
  wire [31:0] _T_5 = regRdAddr / 3'h4; // @[AXIPlatformWrapper.scala 111:47]
  wire [31:0] _T_6 = regWrAddr / 3'h4; // @[AXIPlatformWrapper.scala 115:47]
  wire [31:0] _GEN_3 = ~regModeWrite ? _T_5 : _T_6; // @[AXIPlatformWrapper.scala 108:23 AXIPlatformWrapper.scala 111:34 AXIPlatformWrapper.scala 115:34]
  wire  csr_1_readAddr_ready = 3'h0 == regState; // @[Conditional.scala 37:30]
  wire  _GEN_6 = csr_ARVALID | regRdReq; // @[AXIPlatformWrapper.scala 123:32 AXIPlatformWrapper.scala 124:18 AXIPlatformWrapper.scala 96:25]
  wire  _T_8 = 3'h1 == regState; // @[Conditional.scala 37:30]
  wire  _T_10 = 3'h2 == regState; // @[Conditional.scala 37:30]
  wire  _GEN_12 = csr_AWVALID | regModeWrite; // @[AXIPlatformWrapper.scala 145:33 AXIPlatformWrapper.scala 146:22 AXIPlatformWrapper.scala 95:29]
  wire  _GEN_13 = csr_AWVALID ? 1'h0 : regWrReq; // @[AXIPlatformWrapper.scala 145:33 AXIPlatformWrapper.scala 147:18 AXIPlatformWrapper.scala 98:25]
  wire [31:0] _GEN_14 = csr_AWVALID ? csr_AWADDR : regWrAddr; // @[AXIPlatformWrapper.scala 145:33 AXIPlatformWrapper.scala 148:19 AXIPlatformWrapper.scala 99:26]
  wire [2:0] _GEN_15 = csr_AWVALID ? 3'h3 : 3'h0; // @[AXIPlatformWrapper.scala 145:33 AXIPlatformWrapper.scala 149:18 AXIPlatformWrapper.scala 151:18]
  wire  _T_11 = 3'h3 == regState; // @[Conditional.scala 37:30]
  wire [31:0] _GEN_16 = csr_WVALID ? csr_WDATA : regWrData; // @[AXIPlatformWrapper.scala 157:33 AXIPlatformWrapper.scala 158:19 AXIPlatformWrapper.scala 100:26]
  wire  _GEN_17 = csr_WVALID | regWrReq; // @[AXIPlatformWrapper.scala 157:33 AXIPlatformWrapper.scala 159:18 AXIPlatformWrapper.scala 98:25]
  wire [2:0] _GEN_18 = csr_WVALID ? 3'h4 : regState; // @[AXIPlatformWrapper.scala 157:33 AXIPlatformWrapper.scala 160:18 AXIPlatformWrapper.scala 94:25]
  wire  _T_12 = 3'h4 == regState; // @[Conditional.scala 37:30]
  wire  _GEN_19 = csr_BREADY ? 1'h0 : regWrReq; // @[AXIPlatformWrapper.scala 166:33 AXIPlatformWrapper.scala 167:18 AXIPlatformWrapper.scala 98:25]
  wire [2:0] _GEN_20 = csr_BREADY ? 3'h0 : regState; // @[AXIPlatformWrapper.scala 166:33 AXIPlatformWrapper.scala 168:18 AXIPlatformWrapper.scala 94:25]
  wire  _GEN_22 = _T_12 ? _GEN_19 : regWrReq; // @[Conditional.scala 39:67 AXIPlatformWrapper.scala 98:25]
  wire [2:0] _GEN_23 = _T_12 ? _GEN_20 : regState; // @[Conditional.scala 39:67 AXIPlatformWrapper.scala 94:25]
  wire [31:0] _GEN_25 = _T_11 ? _GEN_16 : regWrData; // @[Conditional.scala 39:67 AXIPlatformWrapper.scala 100:26]
  wire  _GEN_26 = _T_11 ? _GEN_17 : _GEN_22; // @[Conditional.scala 39:67]
  wire [2:0] _GEN_27 = _T_11 ? _GEN_18 : _GEN_23; // @[Conditional.scala 39:67]
  wire  _GEN_28 = _T_11 ? 1'h0 : _T_12; // @[Conditional.scala 39:67 AXIPlatformWrapper.scala 83:23]
  wire  _GEN_34 = _T_10 ? 1'h0 : _T_11; // @[Conditional.scala 39:67 AXIPlatformWrapper.scala 82:23]
  wire  _GEN_36 = _T_10 ? 1'h0 : _GEN_28; // @[Conditional.scala 39:67 AXIPlatformWrapper.scala 83:23]
  wire  _GEN_37 = _T_8 & RegFile_io_extIF_readData_valid; // @[Conditional.scala 39:67 AXIPlatformWrapper.scala 135:26 AXIPlatformWrapper.scala 86:22]
  wire  _GEN_40 = _T_8 ? 1'h0 : _T_10; // @[Conditional.scala 39:67 AXIPlatformWrapper.scala 81:23]
  wire  _GEN_44 = _T_8 ? 1'h0 : _GEN_34; // @[Conditional.scala 39:67 AXIPlatformWrapper.scala 82:23]
  wire  _GEN_46 = _T_8 ? 1'h0 : _GEN_36; // @[Conditional.scala 39:67 AXIPlatformWrapper.scala 83:23]
  Auction Auction ( // @[PlatformWrapper.scala 69:21]
    .clock(Auction_clock),
    .reset(Auction_reset),
    .io_memPort_0_memRdReq_ready(Auction_io_memPort_0_memRdReq_ready),
    .io_memPort_0_memRdReq_valid(Auction_io_memPort_0_memRdReq_valid),
    .io_memPort_0_memRdReq_bits_addr(Auction_io_memPort_0_memRdReq_bits_addr),
    .io_memPort_0_memRdReq_bits_numBytes(Auction_io_memPort_0_memRdReq_bits_numBytes),
    .io_memPort_0_memRdRsp_ready(Auction_io_memPort_0_memRdRsp_ready),
    .io_memPort_0_memRdRsp_valid(Auction_io_memPort_0_memRdRsp_valid),
    .io_memPort_0_memRdRsp_bits_channelID(Auction_io_memPort_0_memRdRsp_bits_channelID),
    .io_memPort_0_memRdRsp_bits_readData(Auction_io_memPort_0_memRdRsp_bits_readData),
    .io_memPort_0_memRdRsp_bits_isLast(Auction_io_memPort_0_memRdRsp_bits_isLast),
    .io_memPort_0_memWrReq_ready(Auction_io_memPort_0_memWrReq_ready),
    .io_memPort_0_memWrReq_valid(Auction_io_memPort_0_memWrReq_valid),
    .io_memPort_0_memWrReq_bits_addr(Auction_io_memPort_0_memWrReq_bits_addr),
    .io_memPort_0_memWrDat_ready(Auction_io_memPort_0_memWrDat_ready),
    .io_memPort_0_memWrDat_valid(Auction_io_memPort_0_memWrDat_valid),
    .io_memPort_0_memWrDat_bits(Auction_io_memPort_0_memWrDat_bits),
    .io_memPort_0_memWrRsp_valid(Auction_io_memPort_0_memWrRsp_valid),
    .io_rfOut_finished(Auction_io_rfOut_finished),
    .io_rfOut_cycleCount(Auction_io_rfOut_cycleCount),
    .io_rfOut_missCount(Auction_io_rfOut_missCount),
    .io_rfOut_iterCount(Auction_io_rfOut_iterCount),
    .io_rfIn_start(Auction_io_rfIn_start),
    .io_rfIn_baseAddr(Auction_io_rfIn_baseAddr),
    .io_rfIn_nAgents(Auction_io_rfIn_nAgents),
    .io_rfIn_nObjects(Auction_io_rfIn_nObjects),
    .io_rfIn_baseAddrRes(Auction_io_rfIn_baseAddrRes)
  );
  RegFile RegFile ( // @[PlatformWrapper.scala 111:23]
    .clock(RegFile_clock),
    .reset(RegFile_reset),
    .io_extIF_cmd_valid(RegFile_io_extIF_cmd_valid),
    .io_extIF_cmd_bits_regID(RegFile_io_extIF_cmd_bits_regID),
    .io_extIF_cmd_bits_read(RegFile_io_extIF_cmd_bits_read),
    .io_extIF_cmd_bits_write(RegFile_io_extIF_cmd_bits_write),
    .io_extIF_cmd_bits_writeData(RegFile_io_extIF_cmd_bits_writeData),
    .io_extIF_readData_valid(RegFile_io_extIF_readData_valid),
    .io_extIF_readData_bits(RegFile_io_extIF_readData_bits),
    .io_regOut_1(RegFile_io_regOut_1),
    .io_regOut_2(RegFile_io_regOut_2),
    .io_regOut_3(RegFile_io_regOut_3),
    .io_regOut_4(RegFile_io_regOut_4),
    .io_regOut_5(RegFile_io_regOut_5),
    .io_regOut_6(RegFile_io_regOut_6),
    .io_regOut_7(RegFile_io_regOut_7),
    .io_regIn_8_bits(RegFile_io_regIn_8_bits),
    .io_regIn_9_bits(RegFile_io_regIn_9_bits),
    .io_regIn_10_bits(RegFile_io_regIn_10_bits),
    .io_regIn_11_bits(RegFile_io_regIn_11_bits)
  );
  AXIMemReqAdp AXIMemReqAdp ( // @[AXIPlatformWrapper.scala 38:28]
    .io_genericReqIn_ready(AXIMemReqAdp_io_genericReqIn_ready),
    .io_genericReqIn_valid(AXIMemReqAdp_io_genericReqIn_valid),
    .io_genericReqIn_bits_addr(AXIMemReqAdp_io_genericReqIn_bits_addr),
    .io_genericReqIn_bits_numBytes(AXIMemReqAdp_io_genericReqIn_bits_numBytes),
    .io_axiReqOut_ready(AXIMemReqAdp_io_axiReqOut_ready),
    .io_axiReqOut_valid(AXIMemReqAdp_io_axiReqOut_valid),
    .io_axiReqOut_bits_addr(AXIMemReqAdp_io_axiReqOut_bits_addr),
    .io_axiReqOut_bits_len(AXIMemReqAdp_io_axiReqOut_bits_len)
  );
  AXIReadRspAdp AXIReadRspAdp ( // @[AXIPlatformWrapper.scala 42:28]
    .io_axiReadRspIn_ready(AXIReadRspAdp_io_axiReadRspIn_ready),
    .io_axiReadRspIn_valid(AXIReadRspAdp_io_axiReadRspIn_valid),
    .io_axiReadRspIn_bits_data(AXIReadRspAdp_io_axiReadRspIn_bits_data),
    .io_axiReadRspIn_bits_id(AXIReadRspAdp_io_axiReadRspIn_bits_id),
    .io_axiReadRspIn_bits_last(AXIReadRspAdp_io_axiReadRspIn_bits_last),
    .io_genericRspOut_ready(AXIReadRspAdp_io_genericRspOut_ready),
    .io_genericRspOut_valid(AXIReadRspAdp_io_genericRspOut_valid),
    .io_genericRspOut_bits_channelID(AXIReadRspAdp_io_genericRspOut_bits_channelID),
    .io_genericRspOut_bits_readData(AXIReadRspAdp_io_genericRspOut_bits_readData),
    .io_genericRspOut_bits_isLast(AXIReadRspAdp_io_genericRspOut_bits_isLast)
  );
  AXIMemReqAdp AXIMemReqAdp_1 ( // @[AXIPlatformWrapper.scala 46:29]
    .io_genericReqIn_ready(AXIMemReqAdp_1_io_genericReqIn_ready),
    .io_genericReqIn_valid(AXIMemReqAdp_1_io_genericReqIn_valid),
    .io_genericReqIn_bits_addr(AXIMemReqAdp_1_io_genericReqIn_bits_addr),
    .io_genericReqIn_bits_numBytes(AXIMemReqAdp_1_io_genericReqIn_bits_numBytes),
    .io_axiReqOut_ready(AXIMemReqAdp_1_io_axiReqOut_ready),
    .io_axiReqOut_valid(AXIMemReqAdp_1_io_axiReqOut_valid),
    .io_axiReqOut_bits_addr(AXIMemReqAdp_1_io_axiReqOut_bits_addr),
    .io_axiReqOut_bits_len(AXIMemReqAdp_1_io_axiReqOut_bits_len)
  );
  AXIWriteBurstReqAdapter AXIWriteBurstReqAdapter ( // @[AXIPlatformWrapper.scala 49:31]
    .clock(AXIWriteBurstReqAdapter_clock),
    .reset(AXIWriteBurstReqAdapter_reset),
    .io_in_writeAddr_ready(AXIWriteBurstReqAdapter_io_in_writeAddr_ready),
    .io_in_writeAddr_valid(AXIWriteBurstReqAdapter_io_in_writeAddr_valid),
    .io_in_writeAddr_bits_addr(AXIWriteBurstReqAdapter_io_in_writeAddr_bits_addr),
    .io_in_writeAddr_bits_len(AXIWriteBurstReqAdapter_io_in_writeAddr_bits_len),
    .io_in_writeData_ready(AXIWriteBurstReqAdapter_io_in_writeData_ready),
    .io_in_writeData_valid(AXIWriteBurstReqAdapter_io_in_writeData_valid),
    .io_in_writeData_bits_data(AXIWriteBurstReqAdapter_io_in_writeData_bits_data),
    .io_out_writeAddr_ready(AXIWriteBurstReqAdapter_io_out_writeAddr_ready),
    .io_out_writeAddr_valid(AXIWriteBurstReqAdapter_io_out_writeAddr_valid),
    .io_out_writeAddr_bits_addr(AXIWriteBurstReqAdapter_io_out_writeAddr_bits_addr),
    .io_out_writeAddr_bits_len(AXIWriteBurstReqAdapter_io_out_writeAddr_bits_len),
    .io_out_writeData_ready(AXIWriteBurstReqAdapter_io_out_writeData_ready),
    .io_out_writeData_valid(AXIWriteBurstReqAdapter_io_out_writeData_valid),
    .io_out_writeData_bits_data(AXIWriteBurstReqAdapter_io_out_writeData_bits_data),
    .io_out_writeData_bits_last(AXIWriteBurstReqAdapter_io_out_writeData_bits_last)
  );
  FPGAQueue_8 q ( // @[FPGAQueue.scala 190:19]
    .clock(q_clock),
    .reset(q_reset),
    .io_enq_ready(q_io_enq_ready),
    .io_enq_valid(q_io_enq_valid),
    .io_enq_bits_data(q_io_enq_bits_data),
    .io_enq_bits_last(q_io_enq_bits_last),
    .io_deq_ready(q_io_deq_ready),
    .io_deq_valid(q_io_deq_valid),
    .io_deq_bits_data(q_io_deq_bits_data),
    .io_deq_bits_strb(q_io_deq_bits_strb),
    .io_deq_bits_last(q_io_deq_bits_last)
  );
  AXIWriteRspAdp AXIWriteRspAdp ( // @[AXIPlatformWrapper.scala 65:29]
    .io_axiWriteRspIn_valid(AXIWriteRspAdp_io_axiWriteRspIn_valid),
    .io_genericRspOut_valid(AXIWriteRspAdp_io_genericRspOut_valid)
  );
  assign mem0_ARADDR = AXIMemReqAdp_io_axiReqOut_bits_addr; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 40:26]
  assign mem0_ARSIZE = 3'h3; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 40:26]
  assign mem0_ARLEN = AXIMemReqAdp_io_axiReqOut_bits_len; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 40:26]
  assign mem0_ARBURST = 2'h1; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 40:26]
  assign mem0_ARID = 6'h0; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 40:26]
  assign mem0_ARLOCK = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 40:26]
  assign mem0_ARCACHE = 4'h2; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 40:26]
  assign mem0_ARPROT = 3'h0; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 40:26]
  assign mem0_ARQOS = 4'h0; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 40:26]
  assign mem0_ARVALID = AXIMemReqAdp_io_axiReqOut_valid; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 40:26]
  assign mem0_AWADDR = AXIWriteBurstReqAdapter_io_out_writeAddr_bits_addr; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 60:33]
  assign mem0_AWSIZE = 3'h3; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 60:33]
  assign mem0_AWLEN = AXIWriteBurstReqAdapter_io_out_writeAddr_bits_len; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 60:33]
  assign mem0_AWBURST = 2'h1; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 60:33]
  assign mem0_AWID = 6'h0; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 60:33]
  assign mem0_AWLOCK = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 60:33]
  assign mem0_AWCACHE = 4'h2; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 60:33]
  assign mem0_AWPROT = 3'h0; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 60:33]
  assign mem0_AWQOS = 4'h0; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 60:33]
  assign mem0_AWVALID = AXIWriteBurstReqAdapter_io_out_writeAddr_valid; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 60:33]
  assign mem0_WDATA = q_io_deq_bits_data; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 63:47]
  assign mem0_WSTRB = q_io_deq_bits_strb; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 63:47]
  assign mem0_WLAST = q_io_deq_bits_last; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 63:47]
  assign mem0_WVALID = q_io_deq_valid; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 63:47]
  assign mem0_BREADY = 1'h1; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 66:31]
  assign mem0_RREADY = AXIReadRspAdp_io_axiReadRspIn_ready; // @[AXIPlatformWrapper.scala 18:17 AXIPlatformWrapper.scala 43:29]
  assign mem1_ARADDR = 32'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 255:24]
  assign mem1_ARSIZE = 3'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 257:24]
  assign mem1_ARLEN = 8'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 258:23]
  assign mem1_ARBURST = 2'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 259:25]
  assign mem1_ARID = 6'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 263:22]
  assign mem1_ARLOCK = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 260:24]
  assign mem1_ARCACHE = 4'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 261:25]
  assign mem1_ARPROT = 3'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 256:24]
  assign mem1_ARQOS = 4'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 262:23]
  assign mem1_ARVALID = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 238:20]
  assign mem1_AWADDR = 32'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 241:25]
  assign mem1_AWSIZE = 3'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 243:25]
  assign mem1_AWLEN = 8'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 244:24]
  assign mem1_AWBURST = 2'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 245:26]
  assign mem1_AWID = 6'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 249:23]
  assign mem1_AWLOCK = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 246:25]
  assign mem1_AWCACHE = 4'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 247:26]
  assign mem1_AWPROT = 3'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 242:25]
  assign mem1_AWQOS = 4'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 248:24]
  assign mem1_AWVALID = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 235:21]
  assign mem1_WDATA = 64'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 251:25]
  assign mem1_WSTRB = 8'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 252:25]
  assign mem1_WLAST = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 253:25]
  assign mem1_WVALID = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 236:21]
  assign mem1_BREADY = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 237:21]
  assign mem1_RREADY = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 239:20]
  assign mem2_ARADDR = 32'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 255:24]
  assign mem2_ARSIZE = 3'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 257:24]
  assign mem2_ARLEN = 8'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 258:23]
  assign mem2_ARBURST = 2'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 259:25]
  assign mem2_ARID = 6'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 263:22]
  assign mem2_ARLOCK = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 260:24]
  assign mem2_ARCACHE = 4'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 261:25]
  assign mem2_ARPROT = 3'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 256:24]
  assign mem2_ARQOS = 4'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 262:23]
  assign mem2_ARVALID = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 238:20]
  assign mem2_AWADDR = 32'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 241:25]
  assign mem2_AWSIZE = 3'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 243:25]
  assign mem2_AWLEN = 8'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 244:24]
  assign mem2_AWBURST = 2'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 245:26]
  assign mem2_AWID = 6'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 249:23]
  assign mem2_AWLOCK = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 246:25]
  assign mem2_AWCACHE = 4'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 247:26]
  assign mem2_AWPROT = 3'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 242:25]
  assign mem2_AWQOS = 4'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 248:24]
  assign mem2_AWVALID = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 235:21]
  assign mem2_WDATA = 64'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 251:25]
  assign mem2_WSTRB = 8'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 252:25]
  assign mem2_WLAST = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 253:25]
  assign mem2_WVALID = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 236:21]
  assign mem2_BREADY = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 237:21]
  assign mem2_RREADY = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 239:20]
  assign mem3_ARADDR = 32'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 255:24]
  assign mem3_ARSIZE = 3'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 257:24]
  assign mem3_ARLEN = 8'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 258:23]
  assign mem3_ARBURST = 2'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 259:25]
  assign mem3_ARID = 6'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 263:22]
  assign mem3_ARLOCK = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 260:24]
  assign mem3_ARCACHE = 4'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 261:25]
  assign mem3_ARPROT = 3'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 256:24]
  assign mem3_ARQOS = 4'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 262:23]
  assign mem3_ARVALID = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 238:20]
  assign mem3_AWADDR = 32'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 241:25]
  assign mem3_AWSIZE = 3'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 243:25]
  assign mem3_AWLEN = 8'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 244:24]
  assign mem3_AWBURST = 2'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 245:26]
  assign mem3_AWID = 6'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 249:23]
  assign mem3_AWLOCK = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 246:25]
  assign mem3_AWCACHE = 4'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 247:26]
  assign mem3_AWPROT = 3'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 242:25]
  assign mem3_AWQOS = 4'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 248:24]
  assign mem3_AWVALID = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 235:21]
  assign mem3_WDATA = 64'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 251:25]
  assign mem3_WSTRB = 8'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 252:25]
  assign mem3_WLAST = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 253:25]
  assign mem3_WVALID = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 236:21]
  assign mem3_BREADY = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 237:21]
  assign mem3_RREADY = 1'h0; // @[AXIPlatformWrapper.scala 18:17 AXIDefs.scala 239:20]
  assign csr_ARREADY = 3'h0 == regState; // @[Conditional.scala 37:30]
  assign csr_AWREADY = csr_1_readAddr_ready ? 1'h0 : _GEN_40; // @[Conditional.scala 40:58 AXIPlatformWrapper.scala 81:23]
  assign csr_WREADY = csr_1_readAddr_ready ? 1'h0 : _GEN_44; // @[Conditional.scala 40:58 AXIPlatformWrapper.scala 82:23]
  assign csr_BRESP = 2'h0; // @[AXIPlatformWrapper.scala 17:17 AXIPlatformWrapper.scala 84:22]
  assign csr_BVALID = csr_1_readAddr_ready ? 1'h0 : _GEN_46; // @[Conditional.scala 40:58 AXIPlatformWrapper.scala 83:23]
  assign csr_RDATA = RegFile_io_extIF_readData_bits; // @[AXIPlatformWrapper.scala 17:17 AXIPlatformWrapper.scala 87:26]
  assign csr_RRESP = 2'h0; // @[AXIPlatformWrapper.scala 17:17 AXIPlatformWrapper.scala 88:26]
  assign csr_RVALID = csr_1_readAddr_ready ? 1'h0 : _GEN_37; // @[Conditional.scala 40:58 AXIPlatformWrapper.scala 86:22]
  assign Auction_clock = clock;
  assign Auction_reset = reset | regWrapperReset; // @[PlatformWrapper.scala 72:31]
  assign Auction_io_memPort_0_memRdReq_ready = AXIMemReqAdp_io_genericReqIn_ready; // @[AXIPlatformWrapper.scala 39:29]
  assign Auction_io_memPort_0_memRdRsp_valid = AXIReadRspAdp_io_genericRspOut_valid; // @[AXIPlatformWrapper.scala 44:30]
  assign Auction_io_memPort_0_memRdRsp_bits_channelID = AXIReadRspAdp_io_genericRspOut_bits_channelID; // @[AXIPlatformWrapper.scala 44:30]
  assign Auction_io_memPort_0_memRdRsp_bits_readData = AXIReadRspAdp_io_genericRspOut_bits_readData; // @[AXIPlatformWrapper.scala 44:30]
  assign Auction_io_memPort_0_memRdRsp_bits_isLast = AXIReadRspAdp_io_genericRspOut_bits_isLast; // @[AXIPlatformWrapper.scala 44:30]
  assign Auction_io_memPort_0_memWrReq_ready = AXIMemReqAdp_1_io_genericReqIn_ready; // @[AXIPlatformWrapper.scala 47:30]
  assign Auction_io_memPort_0_memWrDat_ready = AXIWriteBurstReqAdapter_io_in_writeData_ready; // @[AXIPlatformWrapper.scala 59:40]
  assign Auction_io_memPort_0_memWrRsp_valid = AXIWriteRspAdp_io_genericRspOut_valid; // @[AXIPlatformWrapper.scala 67:31]
  assign Auction_io_rfIn_start = RegFile_io_regOut_7[0]; // @[PlatformWrapper.scala 168:45]
  assign Auction_io_rfIn_baseAddr = {RegFile_io_regOut_5,RegFile_io_regOut_6}; // @[Cat.scala 30:58]
  assign Auction_io_rfIn_nAgents = RegFile_io_regOut_4; // @[PlatformWrapper.scala 170:25]
  assign Auction_io_rfIn_nObjects = RegFile_io_regOut_3; // @[PlatformWrapper.scala 170:25]
  assign Auction_io_rfIn_baseAddrRes = {RegFile_io_regOut_1,RegFile_io_regOut_2}; // @[Cat.scala 30:58]
  assign RegFile_clock = clock;
  assign RegFile_reset = reset;
  assign RegFile_io_extIF_cmd_valid = ~regModeWrite ? regRdReq : regWrReq; // @[AXIPlatformWrapper.scala 108:23 AXIPlatformWrapper.scala 109:29 AXIPlatformWrapper.scala 113:29]
  assign RegFile_io_extIF_cmd_bits_regID = _GEN_3[3:0];
  assign RegFile_io_extIF_cmd_bits_read = ~regModeWrite; // @[AXIPlatformWrapper.scala 108:8]
  assign RegFile_io_extIF_cmd_bits_write = ~regModeWrite ? 1'h0 : 1'h1; // @[AXIPlatformWrapper.scala 108:23 RegFile.scala 18:11 AXIPlatformWrapper.scala 114:34]
  assign RegFile_io_extIF_cmd_bits_writeData = ~regModeWrite ? 32'h0 : regWrData; // @[AXIPlatformWrapper.scala 108:23 RegFile.scala 19:15 AXIPlatformWrapper.scala 116:38]
  assign RegFile_io_regIn_8_bits = Auction_io_rfOut_iterCount; // @[PlatformWrapper.scala 179:40]
  assign RegFile_io_regIn_9_bits = Auction_io_rfOut_missCount; // @[PlatformWrapper.scala 179:40]
  assign RegFile_io_regIn_10_bits = Auction_io_rfOut_cycleCount; // @[PlatformWrapper.scala 179:40]
  assign RegFile_io_regIn_11_bits = {{31'd0}, Auction_io_rfOut_finished}; // @[PlatformWrapper.scala 179:40]
  assign AXIMemReqAdp_io_genericReqIn_valid = Auction_io_memPort_0_memRdReq_valid; // @[AXIPlatformWrapper.scala 39:29]
  assign AXIMemReqAdp_io_genericReqIn_bits_addr = Auction_io_memPort_0_memRdReq_bits_addr; // @[AXIPlatformWrapper.scala 39:29]
  assign AXIMemReqAdp_io_genericReqIn_bits_numBytes = Auction_io_memPort_0_memRdReq_bits_numBytes; // @[AXIPlatformWrapper.scala 39:29]
  assign AXIMemReqAdp_io_axiReqOut_ready = mem0_ARREADY; // @[AXIPlatformWrapper.scala 21:35 AXIPlatformWrapper.scala 21:35]
  assign AXIReadRspAdp_io_axiReadRspIn_valid = mem0_RVALID; // @[AXIPlatformWrapper.scala 21:35 AXIPlatformWrapper.scala 21:35]
  assign AXIReadRspAdp_io_axiReadRspIn_bits_data = mem0_RDATA; // @[AXIPlatformWrapper.scala 21:35 AXIPlatformWrapper.scala 21:35]
  assign AXIReadRspAdp_io_axiReadRspIn_bits_id = mem0_RID; // @[AXIPlatformWrapper.scala 21:35 AXIPlatformWrapper.scala 21:35]
  assign AXIReadRspAdp_io_axiReadRspIn_bits_last = mem0_RLAST; // @[AXIPlatformWrapper.scala 21:35 AXIPlatformWrapper.scala 21:35]
  assign AXIReadRspAdp_io_genericRspOut_ready = Auction_io_memPort_0_memRdRsp_ready; // @[AXIPlatformWrapper.scala 44:30]
  assign AXIMemReqAdp_1_io_genericReqIn_valid = Auction_io_memPort_0_memWrReq_valid; // @[AXIPlatformWrapper.scala 47:30]
  assign AXIMemReqAdp_1_io_genericReqIn_bits_addr = Auction_io_memPort_0_memWrReq_bits_addr; // @[AXIPlatformWrapper.scala 47:30]
  assign AXIMemReqAdp_1_io_genericReqIn_bits_numBytes = 8'h8; // @[AXIPlatformWrapper.scala 47:30]
  assign AXIMemReqAdp_1_io_axiReqOut_ready = AXIWriteBurstReqAdapter_io_in_writeAddr_ready; // @[AXIPlatformWrapper.scala 52:27]
  assign AXIWriteBurstReqAdapter_clock = clock;
  assign AXIWriteBurstReqAdapter_reset = reset;
  assign AXIWriteBurstReqAdapter_io_in_writeAddr_valid = AXIMemReqAdp_1_io_axiReqOut_valid; // @[AXIPlatformWrapper.scala 52:27]
  assign AXIWriteBurstReqAdapter_io_in_writeAddr_bits_addr = AXIMemReqAdp_1_io_axiReqOut_bits_addr; // @[AXIPlatformWrapper.scala 52:27]
  assign AXIWriteBurstReqAdapter_io_in_writeAddr_bits_len = AXIMemReqAdp_1_io_axiReqOut_bits_len; // @[AXIPlatformWrapper.scala 52:27]
  assign AXIWriteBurstReqAdapter_io_in_writeData_valid = Auction_io_memPort_0_memWrDat_valid; // @[AXIPlatformWrapper.scala 58:38]
  assign AXIWriteBurstReqAdapter_io_in_writeData_bits_data = Auction_io_memPort_0_memWrDat_bits; // @[AXIPlatformWrapper.scala 53:42]
  assign AXIWriteBurstReqAdapter_io_out_writeAddr_ready = mem0_AWREADY; // @[AXIPlatformWrapper.scala 21:35 AXIPlatformWrapper.scala 21:35]
  assign AXIWriteBurstReqAdapter_io_out_writeData_ready = q_io_enq_ready; // @[FPGAQueue.scala 193:15]
  assign q_clock = clock;
  assign q_reset = reset;
  assign q_io_enq_valid = AXIWriteBurstReqAdapter_io_out_writeData_valid; // @[FPGAQueue.scala 191:20]
  assign q_io_enq_bits_data = AXIWriteBurstReqAdapter_io_out_writeData_bits_data; // @[FPGAQueue.scala 192:19]
  assign q_io_enq_bits_last = AXIWriteBurstReqAdapter_io_out_writeData_bits_last; // @[FPGAQueue.scala 192:19]
  assign q_io_deq_ready = mem0_WREADY; // @[AXIPlatformWrapper.scala 21:35 AXIPlatformWrapper.scala 21:35]
  assign AXIWriteRspAdp_io_axiWriteRspIn_valid = mem0_BVALID; // @[AXIPlatformWrapper.scala 21:35 AXIPlatformWrapper.scala 21:35]
  always @(posedge clock) begin
    if (reset) begin // @[PlatformWrapper.scala 68:32]
      regWrapperReset <= 1'h0; // @[PlatformWrapper.scala 68:32]
    end else if (RegFile_io_extIF_cmd_valid & RegFile_io_extIF_cmd_bits_write & RegFile_io_extIF_cmd_bits_regID == 4'h0
      ) begin // @[PlatformWrapper.scala 115:67]
      regWrapperReset <= RegFile_io_extIF_cmd_bits_writeData[0]; // @[PlatformWrapper.scala 116:21]
    end
    if (reset) begin // @[AXIPlatformWrapper.scala 94:25]
      regState <= 3'h0; // @[AXIPlatformWrapper.scala 94:25]
    end else if (csr_1_readAddr_ready) begin // @[Conditional.scala 40:58]
      if (csr_ARVALID) begin // @[AXIPlatformWrapper.scala 123:32]
        regState <= 3'h1; // @[AXIPlatformWrapper.scala 127:18]
      end else begin
        regState <= 3'h2; // @[AXIPlatformWrapper.scala 129:18]
      end
    end else if (_T_8) begin // @[Conditional.scala 39:67]
      if (csr_RREADY & RegFile_io_extIF_readData_valid) begin // @[AXIPlatformWrapper.scala 136:64]
        regState <= 3'h2; // @[AXIPlatformWrapper.scala 137:18]
      end
    end else if (_T_10) begin // @[Conditional.scala 39:67]
      regState <= _GEN_15;
    end else begin
      regState <= _GEN_27;
    end
    if (reset) begin // @[AXIPlatformWrapper.scala 95:29]
      regModeWrite <= 1'h0; // @[AXIPlatformWrapper.scala 95:29]
    end else if (csr_1_readAddr_ready) begin // @[Conditional.scala 40:58]
      if (csr_ARVALID) begin // @[AXIPlatformWrapper.scala 123:32]
        regModeWrite <= 1'h0; // @[AXIPlatformWrapper.scala 126:22]
      end
    end else if (!(_T_8)) begin // @[Conditional.scala 39:67]
      if (_T_10) begin // @[Conditional.scala 39:67]
        regModeWrite <= _GEN_12;
      end
    end
    if (reset) begin // @[AXIPlatformWrapper.scala 96:25]
      regRdReq <= 1'h0; // @[AXIPlatformWrapper.scala 96:25]
    end else if (csr_1_readAddr_ready) begin // @[Conditional.scala 40:58]
      regRdReq <= _GEN_6;
    end else if (_T_8) begin // @[Conditional.scala 39:67]
      if (csr_RREADY & RegFile_io_extIF_readData_valid) begin // @[AXIPlatformWrapper.scala 136:64]
        regRdReq <= 1'h0; // @[AXIPlatformWrapper.scala 138:18]
      end
    end
    if (reset) begin // @[AXIPlatformWrapper.scala 97:26]
      regRdAddr <= 32'h0; // @[AXIPlatformWrapper.scala 97:26]
    end else if (csr_1_readAddr_ready) begin // @[Conditional.scala 40:58]
      if (csr_ARVALID) begin // @[AXIPlatformWrapper.scala 123:32]
        regRdAddr <= csr_ARADDR; // @[AXIPlatformWrapper.scala 125:19]
      end
    end
    if (reset) begin // @[AXIPlatformWrapper.scala 98:25]
      regWrReq <= 1'h0; // @[AXIPlatformWrapper.scala 98:25]
    end else if (!(csr_1_readAddr_ready)) begin // @[Conditional.scala 40:58]
      if (!(_T_8)) begin // @[Conditional.scala 39:67]
        if (_T_10) begin // @[Conditional.scala 39:67]
          regWrReq <= _GEN_13;
        end else begin
          regWrReq <= _GEN_26;
        end
      end
    end
    if (reset) begin // @[AXIPlatformWrapper.scala 99:26]
      regWrAddr <= 32'h0; // @[AXIPlatformWrapper.scala 99:26]
    end else if (!(csr_1_readAddr_ready)) begin // @[Conditional.scala 40:58]
      if (!(_T_8)) begin // @[Conditional.scala 39:67]
        if (_T_10) begin // @[Conditional.scala 39:67]
          regWrAddr <= _GEN_14;
        end
      end
    end
    if (reset) begin // @[AXIPlatformWrapper.scala 100:26]
      regWrData <= 32'h0; // @[AXIPlatformWrapper.scala 100:26]
    end else if (!(csr_1_readAddr_ready)) begin // @[Conditional.scala 40:58]
      if (!(_T_8)) begin // @[Conditional.scala 39:67]
        if (!(_T_10)) begin // @[Conditional.scala 39:67]
          regWrData <= _GEN_25;
        end
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  regWrapperReset = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  regState = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  regModeWrite = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  regRdReq = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  regRdAddr = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  regWrReq = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  regWrAddr = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  regWrData = _RAND_7[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
