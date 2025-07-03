
`timescale 1ns/1ps

module ita_requantizer (
  input  wire          io_clk_i,
  input  wire          io_rst_ni,
  input  wire [0:0]    io_mode_i,
  input  wire [7:0]    io_eps_mult_i_value,
  input  wire [7:0]    io_right_shift_i_value,
  input  wire          io_calc_en_i,
  input  wire          io_calc_en_q_i,
  input  wire [25:0]   io_result_i_values_0,
  input  wire [25:0]   io_result_i_values_1,
  input  wire [25:0]   io_result_i_values_2,
  input  wire [25:0]   io_result_i_values_3,
  input  wire [25:0]   io_result_i_values_4,
  input  wire [25:0]   io_result_i_values_5,
  input  wire [25:0]   io_result_i_values_6,
  input  wire [25:0]   io_result_i_values_7,
  input  wire [25:0]   io_result_i_values_8,
  input  wire [25:0]   io_result_i_values_9,
  input  wire [25:0]   io_result_i_values_10,
  input  wire [25:0]   io_result_i_values_11,
  input  wire [25:0]   io_result_i_values_12,
  input  wire [25:0]   io_result_i_values_13,
  input  wire [25:0]   io_result_i_values_14,
  input  wire [25:0]   io_result_i_values_15,
  input  wire [7:0]    io_add_i_values_0,
  input  wire [7:0]    io_add_i_values_1,
  input  wire [7:0]    io_add_i_values_2,
  input  wire [7:0]    io_add_i_values_3,
  input  wire [7:0]    io_add_i_values_4,
  input  wire [7:0]    io_add_i_values_5,
  input  wire [7:0]    io_add_i_values_6,
  input  wire [7:0]    io_add_i_values_7,
  input  wire [7:0]    io_add_i_values_8,
  input  wire [7:0]    io_add_i_values_9,
  input  wire [7:0]    io_add_i_values_10,
  input  wire [7:0]    io_add_i_values_11,
  input  wire [7:0]    io_add_i_values_12,
  input  wire [7:0]    io_add_i_values_13,
  input  wire [7:0]    io_add_i_values_14,
  input  wire [7:0]    io_add_i_values_15,
  output wire [7:0]    io_requant_oup_o_values_0,
  output wire [7:0]    io_requant_oup_o_values_1,
  output wire [7:0]    io_requant_oup_o_values_2,
  output wire [7:0]    io_requant_oup_o_values_3,
  output wire [7:0]    io_requant_oup_o_values_4,
  output wire [7:0]    io_requant_oup_o_values_5,
  output wire [7:0]    io_requant_oup_o_values_6,
  output wire [7:0]    io_requant_oup_o_values_7,
  output wire [7:0]    io_requant_oup_o_values_8,
  output wire [7:0]    io_requant_oup_o_values_9,
  output wire [7:0]    io_requant_oup_o_values_10,
  output wire [7:0]    io_requant_oup_o_values_11,
  output wire [7:0]    io_requant_oup_o_values_12,
  output wire [7:0]    io_requant_oup_o_values_13,
  output wire [7:0]    io_requant_oup_o_values_14,
  output wire [7:0]    io_requant_oup_o_values_15,
  output wire [33:0] shift_d_verilog_0,
output wire [33:0] shift_d_verilog_1,
output wire [33:0] shift_d_verilog_2,
output wire [33:0] shift_d_verilog_3,
output wire [33:0] shift_d_verilog_4,
output wire [33:0] shift_d_verilog_5,
output wire [33:0] shift_d_verilog_6,
output wire [33:0] shift_d_verilog_7,
output wire [33:0] shift_d_verilog_8,
output wire [33:0] shift_d_verilog_9,
output wire [33:0] shift_d_verilog_10,
output wire [33:0] shift_d_verilog_11,
output wire [33:0] shift_d_verilog_12,
output wire [33:0] shift_d_verilog_13,
output wire [33:0] shift_d_verilog_14,
output wire [33:0] shift_d_verilog_15,
   
   
   
output wire [33:0] product_verilog_0,
output wire [33:0] product_verilog_1,
output wire [33:0] product_verilog_2,
output wire [33:0] product_verilog_3,
output wire [33:0] product_verilog_4,
output wire [33:0] product_verilog_5,
output wire [33:0] product_verilog_6,
output wire [33:0] product_verilog_7,
output wire [33:0] product_verilog_8,
output wire [33:0] product_verilog_9,
output wire [33:0] product_verilog_10,
output wire [33:0] product_verilog_11,
output wire [33:0] product_verilog_12,
output wire [33:0] product_verilog_13,
output wire [33:0] product_verilog_14,
output wire [33:0] product_verilog_15




  
  
);
  localparam RequantModeE_Signed_1 = 1'd0;
  localparam RequantModeE_Unsigned_1 = 1'd1;

  wire       [35:0]   _zz_myArea_product_0;
  wire       [8:0]    _zz_myArea_product_0_1;
  wire       [34:0]   _zz_myArea_shifted_d_0;
  wire       [5:0]    _zz_when_itarequantizer_l68_32;
  wire       [7:0]    _zz_when_itarequantizer_l68_33;
  wire       [7:0]    _zz_when_itarequantizer_l68_34;
  wire       [7:0]    _zz_when_itarequantizer_l68_35;
  wire       [34:0]   _zz_myArea_shifted_d_0_1;
  wire       [34:0]   _zz_myArea_shifted_d_0_2;
  wire       [33:0]   _zz_myArea_shifted_added_0;
  wire       [33:0]   _zz_myArea_shifted_added_0_1;
  wire       [25:0]   _zz_when_itarequantizer_l79;
  wire       [25:0]   _zz_when_itarequantizer_l81;
  wire       [35:0]   _zz_myArea_product_1;
  wire       [8:0]    _zz_myArea_product_1_1;
  wire       [34:0]   _zz_myArea_shifted_d_1;
  wire       [5:0]    _zz_when_itarequantizer_l68_1_1;
  wire       [7:0]    _zz_when_itarequantizer_l68_1_2;
  wire       [7:0]    _zz_when_itarequantizer_l68_1_3;
  wire       [7:0]    _zz_when_itarequantizer_l68_1_4;
  wire       [34:0]   _zz_myArea_shifted_d_1_1;
  wire       [34:0]   _zz_myArea_shifted_d_1_2;
  wire       [33:0]   _zz_myArea_shifted_added_1;
  wire       [33:0]   _zz_myArea_shifted_added_1_1;
  wire       [25:0]   _zz_when_itarequantizer_l79_1;
  wire       [25:0]   _zz_when_itarequantizer_l81_1;
  wire       [35:0]   _zz_myArea_product_2;
  wire       [8:0]    _zz_myArea_product_2_1;
  wire       [34:0]   _zz_myArea_shifted_d_2;
  wire       [5:0]    _zz_when_itarequantizer_l68_2_1;
  wire       [7:0]    _zz_when_itarequantizer_l68_2_2;
  wire       [7:0]    _zz_when_itarequantizer_l68_2_3;
  wire       [7:0]    _zz_when_itarequantizer_l68_2_4;
  wire       [34:0]   _zz_myArea_shifted_d_2_1;
  wire       [34:0]   _zz_myArea_shifted_d_2_2;
  wire       [33:0]   _zz_myArea_shifted_added_2;
  wire       [33:0]   _zz_myArea_shifted_added_2_1;
  wire       [25:0]   _zz_when_itarequantizer_l79_2;
  wire       [25:0]   _zz_when_itarequantizer_l81_2;
  wire       [35:0]   _zz_myArea_product_3;
  wire       [8:0]    _zz_myArea_product_3_1;
  wire       [34:0]   _zz_myArea_shifted_d_3;
  wire       [5:0]    _zz_when_itarequantizer_l68_3_1;
  wire       [7:0]    _zz_when_itarequantizer_l68_3_2;
  wire       [7:0]    _zz_when_itarequantizer_l68_3_3;
  wire       [7:0]    _zz_when_itarequantizer_l68_3_4;
  wire       [34:0]   _zz_myArea_shifted_d_3_1;
  wire       [34:0]   _zz_myArea_shifted_d_3_2;
  wire       [33:0]   _zz_myArea_shifted_added_3;
  wire       [33:0]   _zz_myArea_shifted_added_3_1;
  wire       [25:0]   _zz_when_itarequantizer_l79_3;
  wire       [25:0]   _zz_when_itarequantizer_l81_3;
  wire       [35:0]   _zz_myArea_product_4;
  wire       [8:0]    _zz_myArea_product_4_1;
  wire       [34:0]   _zz_myArea_shifted_d_4;
  wire       [5:0]    _zz_when_itarequantizer_l68_4_1;
  wire       [7:0]    _zz_when_itarequantizer_l68_4_2;
  wire       [7:0]    _zz_when_itarequantizer_l68_4_3;
  wire       [7:0]    _zz_when_itarequantizer_l68_4_4;
  wire       [34:0]   _zz_myArea_shifted_d_4_1;
  wire       [34:0]   _zz_myArea_shifted_d_4_2;
  wire       [33:0]   _zz_myArea_shifted_added_4;
  wire       [33:0]   _zz_myArea_shifted_added_4_1;
  wire       [25:0]   _zz_when_itarequantizer_l79_4;
  wire       [25:0]   _zz_when_itarequantizer_l81_4;
  wire       [35:0]   _zz_myArea_product_5;
  wire       [8:0]    _zz_myArea_product_5_1;
  wire       [34:0]   _zz_myArea_shifted_d_5;
  wire       [5:0]    _zz_when_itarequantizer_l68_5_1;
  wire       [7:0]    _zz_when_itarequantizer_l68_5_2;
  wire       [7:0]    _zz_when_itarequantizer_l68_5_3;
  wire       [7:0]    _zz_when_itarequantizer_l68_5_4;
  wire       [34:0]   _zz_myArea_shifted_d_5_1;
  wire       [34:0]   _zz_myArea_shifted_d_5_2;
  wire       [33:0]   _zz_myArea_shifted_added_5;
  wire       [33:0]   _zz_myArea_shifted_added_5_1;
  wire       [25:0]   _zz_when_itarequantizer_l79_5;
  wire       [25:0]   _zz_when_itarequantizer_l81_5;
  wire       [35:0]   _zz_myArea_product_6;
  wire       [8:0]    _zz_myArea_product_6_1;
  wire       [34:0]   _zz_myArea_shifted_d_6;
  wire       [5:0]    _zz_when_itarequantizer_l68_6_1;
  wire       [7:0]    _zz_when_itarequantizer_l68_6_2;
  wire       [7:0]    _zz_when_itarequantizer_l68_6_3;
  wire       [7:0]    _zz_when_itarequantizer_l68_6_4;
  wire       [34:0]   _zz_myArea_shifted_d_6_1;
  wire       [34:0]   _zz_myArea_shifted_d_6_2;
  wire       [33:0]   _zz_myArea_shifted_added_6;
  wire       [33:0]   _zz_myArea_shifted_added_6_1;
  wire       [25:0]   _zz_when_itarequantizer_l79_6;
  wire       [25:0]   _zz_when_itarequantizer_l81_6;
  wire       [35:0]   _zz_myArea_product_7;
  wire       [8:0]    _zz_myArea_product_7_1;
  wire       [34:0]   _zz_myArea_shifted_d_7;
  wire       [5:0]    _zz_when_itarequantizer_l68_7_1;
  wire       [7:0]    _zz_when_itarequantizer_l68_7_2;
  wire       [7:0]    _zz_when_itarequantizer_l68_7_3;
  wire       [7:0]    _zz_when_itarequantizer_l68_7_4;
  wire       [34:0]   _zz_myArea_shifted_d_7_1;
  wire       [34:0]   _zz_myArea_shifted_d_7_2;
  wire       [33:0]   _zz_myArea_shifted_added_7;
  wire       [33:0]   _zz_myArea_shifted_added_7_1;
  wire       [25:0]   _zz_when_itarequantizer_l79_7;
  wire       [25:0]   _zz_when_itarequantizer_l81_7;
  wire       [35:0]   _zz_myArea_product_8;
  wire       [8:0]    _zz_myArea_product_8_1;
  wire       [34:0]   _zz_myArea_shifted_d_8;
  wire       [5:0]    _zz_when_itarequantizer_l68_8_1;
  wire       [7:0]    _zz_when_itarequantizer_l68_8_2;
  wire       [7:0]    _zz_when_itarequantizer_l68_8_3;
  wire       [7:0]    _zz_when_itarequantizer_l68_8_4;
  wire       [34:0]   _zz_myArea_shifted_d_8_1;
  wire       [34:0]   _zz_myArea_shifted_d_8_2;
  wire       [33:0]   _zz_myArea_shifted_added_8;
  wire       [33:0]   _zz_myArea_shifted_added_8_1;
  wire       [25:0]   _zz_when_itarequantizer_l79_8;
  wire       [25:0]   _zz_when_itarequantizer_l81_8;
  wire       [35:0]   _zz_myArea_product_9;
  wire       [8:0]    _zz_myArea_product_9_1;
  wire       [34:0]   _zz_myArea_shifted_d_9;
  wire       [5:0]    _zz_when_itarequantizer_l68_9_1;
  wire       [7:0]    _zz_when_itarequantizer_l68_9_2;
  wire       [7:0]    _zz_when_itarequantizer_l68_9_3;
  wire       [7:0]    _zz_when_itarequantizer_l68_9_4;
  wire       [34:0]   _zz_myArea_shifted_d_9_1;
  wire       [34:0]   _zz_myArea_shifted_d_9_2;
  wire       [33:0]   _zz_myArea_shifted_added_9;
  wire       [33:0]   _zz_myArea_shifted_added_9_1;
  wire       [25:0]   _zz_when_itarequantizer_l79_9;
  wire       [25:0]   _zz_when_itarequantizer_l81_9;
  wire       [35:0]   _zz_myArea_product_10;
  wire       [8:0]    _zz_myArea_product_10_1;
  wire       [34:0]   _zz_myArea_shifted_d_10;
  wire       [5:0]    _zz_when_itarequantizer_l68_10_1;
  wire       [7:0]    _zz_when_itarequantizer_l68_10_2;
  wire       [7:0]    _zz_when_itarequantizer_l68_10_3;
  wire       [7:0]    _zz_when_itarequantizer_l68_10_4;
  wire       [34:0]   _zz_myArea_shifted_d_10_1;
  wire       [34:0]   _zz_myArea_shifted_d_10_2;
  wire       [33:0]   _zz_myArea_shifted_added_10;
  wire       [33:0]   _zz_myArea_shifted_added_10_1;
  wire       [25:0]   _zz_when_itarequantizer_l79_10;
  wire       [25:0]   _zz_when_itarequantizer_l81_10;
  wire       [35:0]   _zz_myArea_product_11;
  wire       [8:0]    _zz_myArea_product_11_1;
  wire       [34:0]   _zz_myArea_shifted_d_11;
  wire       [5:0]    _zz_when_itarequantizer_l68_11_1;
  wire       [7:0]    _zz_when_itarequantizer_l68_11_2;
  wire       [7:0]    _zz_when_itarequantizer_l68_11_3;
  wire       [7:0]    _zz_when_itarequantizer_l68_11_4;
  wire       [34:0]   _zz_myArea_shifted_d_11_1;
  wire       [34:0]   _zz_myArea_shifted_d_11_2;
  wire       [33:0]   _zz_myArea_shifted_added_11;
  wire       [33:0]   _zz_myArea_shifted_added_11_1;
  wire       [25:0]   _zz_when_itarequantizer_l79_11;
  wire       [25:0]   _zz_when_itarequantizer_l81_11;
  wire       [35:0]   _zz_myArea_product_12;
  wire       [8:0]    _zz_myArea_product_12_1;
  wire       [34:0]   _zz_myArea_shifted_d_12;
  wire       [5:0]    _zz_when_itarequantizer_l68_12_1;
  wire       [7:0]    _zz_when_itarequantizer_l68_12_2;
  wire       [7:0]    _zz_when_itarequantizer_l68_12_3;
  wire       [7:0]    _zz_when_itarequantizer_l68_12_4;
  wire       [34:0]   _zz_myArea_shifted_d_12_1;
  wire       [34:0]   _zz_myArea_shifted_d_12_2;
  wire       [33:0]   _zz_myArea_shifted_added_12;
  wire       [33:0]   _zz_myArea_shifted_added_12_1;
  wire       [25:0]   _zz_when_itarequantizer_l79_12;
  wire       [25:0]   _zz_when_itarequantizer_l81_12;
  wire       [35:0]   _zz_myArea_product_13;
  wire       [8:0]    _zz_myArea_product_13_1;
  wire       [34:0]   _zz_myArea_shifted_d_13;
  wire       [5:0]    _zz_when_itarequantizer_l68_13_1;
  wire       [7:0]    _zz_when_itarequantizer_l68_13_2;
  wire       [7:0]    _zz_when_itarequantizer_l68_13_3;
  wire       [7:0]    _zz_when_itarequantizer_l68_13_4;
  wire       [34:0]   _zz_myArea_shifted_d_13_1;
  wire       [34:0]   _zz_myArea_shifted_d_13_2;
  wire       [33:0]   _zz_myArea_shifted_added_13;
  wire       [33:0]   _zz_myArea_shifted_added_13_1;
  wire       [25:0]   _zz_when_itarequantizer_l79_13;
  wire       [25:0]   _zz_when_itarequantizer_l81_13;
  wire       [35:0]   _zz_myArea_product_14;
  wire       [8:0]    _zz_myArea_product_14_1;
  wire       [34:0]   _zz_myArea_shifted_d_14;
  wire       [5:0]    _zz_when_itarequantizer_l68_14_1;
  wire       [7:0]    _zz_when_itarequantizer_l68_14_2;
  wire       [7:0]    _zz_when_itarequantizer_l68_14_3;
  wire       [7:0]    _zz_when_itarequantizer_l68_14_4;
  wire       [34:0]   _zz_myArea_shifted_d_14_1;
  wire       [34:0]   _zz_myArea_shifted_d_14_2;
  wire       [33:0]   _zz_myArea_shifted_added_14;
  wire       [33:0]   _zz_myArea_shifted_added_14_1;
  wire       [25:0]   _zz_when_itarequantizer_l79_14;
  wire       [25:0]   _zz_when_itarequantizer_l81_14;
  wire       [35:0]   _zz_myArea_product_15;
  wire       [8:0]    _zz_myArea_product_15_1;
  wire       [34:0]   _zz_myArea_shifted_d_15;
  wire       [5:0]    _zz_when_itarequantizer_l68_15_1;
  wire       [7:0]    _zz_when_itarequantizer_l68_15_2;
  wire       [7:0]    _zz_when_itarequantizer_l68_15_3;
  wire       [7:0]    _zz_when_itarequantizer_l68_15_4;
  wire       [34:0]   _zz_myArea_shifted_d_15_1;
  wire       [34:0]   _zz_myArea_shifted_d_15_2;
  wire       [33:0]   _zz_myArea_shifted_added_15;
  wire       [33:0]   _zz_myArea_shifted_added_15_1;
  wire       [25:0]   _zz_when_itarequantizer_l79_15;
  wire       [25:0]   _zz_when_itarequantizer_l81_15;
  reg        [26:0]   myArea_mult_signed_0;
  reg        [26:0]   myArea_mult_signed_1;
  reg        [26:0]   myArea_mult_signed_2;
  reg        [26:0]   myArea_mult_signed_3;
  reg        [26:0]   myArea_mult_signed_4;
  reg        [26:0]   myArea_mult_signed_5;
  reg        [26:0]   myArea_mult_signed_6;
  reg        [26:0]   myArea_mult_signed_7;
  reg        [26:0]   myArea_mult_signed_8;
  reg        [26:0]   myArea_mult_signed_9;
  reg        [26:0]   myArea_mult_signed_10;
  reg        [26:0]   myArea_mult_signed_11;
  reg        [26:0]   myArea_mult_signed_12;
  reg        [26:0]   myArea_mult_signed_13;
  reg        [26:0]   myArea_mult_signed_14;
  reg        [26:0]   myArea_mult_signed_15;
  reg        [34:0]   myArea_product_0;
  reg        [34:0]   myArea_product_1;
  reg        [34:0]   myArea_product_2;
  reg        [34:0]   myArea_product_3;
  reg        [34:0]   myArea_product_4;
  reg        [34:0]   myArea_product_5;
  reg        [34:0]   myArea_product_6;
  reg        [34:0]   myArea_product_7;
  reg        [34:0]   myArea_product_8;
  reg        [34:0]   myArea_product_9;
  reg        [34:0]   myArea_product_10;
  reg        [34:0]   myArea_product_11;
  reg        [34:0]   myArea_product_12;
  reg        [34:0]   myArea_product_13;
  reg        [34:0]   myArea_product_14;
  reg        [34:0]   myArea_product_15;
  reg        [34:0]   myArea_shifted_added_0;
  reg        [34:0]   myArea_shifted_added_1;
  reg        [34:0]   myArea_shifted_added_2;
  reg        [34:0]   myArea_shifted_added_3;
  reg        [34:0]   myArea_shifted_added_4;
  reg        [34:0]   myArea_shifted_added_5;
  reg        [34:0]   myArea_shifted_added_6;
  reg        [34:0]   myArea_shifted_added_7;
  reg        [34:0]   myArea_shifted_added_8;
  reg        [34:0]   myArea_shifted_added_9;
  reg        [34:0]   myArea_shifted_added_10;
  reg        [34:0]   myArea_shifted_added_11;
  reg        [34:0]   myArea_shifted_added_12;
  reg        [34:0]   myArea_shifted_added_13;
  reg        [34:0]   myArea_shifted_added_14;
  reg        [34:0]   myArea_shifted_added_15;
  reg        [33:0]   myArea_shifted_d_0;
  reg        [33:0]   myArea_shifted_d_1;
  reg        [33:0]   myArea_shifted_d_2;
  reg        [33:0]   myArea_shifted_d_3;
  reg        [33:0]   myArea_shifted_d_4;
  reg        [33:0]   myArea_shifted_d_5;
  reg        [33:0]   myArea_shifted_d_6;
  reg        [33:0]   myArea_shifted_d_7;
  reg        [33:0]   myArea_shifted_d_8;
  reg        [33:0]   myArea_shifted_d_9;
  reg        [33:0]   myArea_shifted_d_10;
  reg        [33:0]   myArea_shifted_d_11;
  reg        [33:0]   myArea_shifted_d_12;
  reg        [33:0]   myArea_shifted_d_13;
  reg        [33:0]   myArea_shifted_d_14;
  reg        [33:0]   myArea_shifted_d_15;
  reg        [33:0]   myArea_shifted_q_0;
  reg        [33:0]   myArea_shifted_q_1;
  reg        [33:0]   myArea_shifted_q_2;
  reg        [33:0]   myArea_shifted_q_3;
  reg        [33:0]   myArea_shifted_q_4;
  reg        [33:0]   myArea_shifted_q_5;
  reg        [33:0]   myArea_shifted_q_6;
  reg        [33:0]   myArea_shifted_q_7;
  reg        [33:0]   myArea_shifted_q_8;
  reg        [33:0]   myArea_shifted_q_9;
  reg        [33:0]   myArea_shifted_q_10;
  reg        [33:0]   myArea_shifted_q_11;
  reg        [33:0]   myArea_shifted_q_12;
  reg        [33:0]   myArea_shifted_q_13;
  reg        [33:0]   myArea_shifted_q_14;
  reg        [33:0]   myArea_shifted_q_15;
  reg        [7:0]    myArea_add_q1_0;
  reg        [7:0]    myArea_add_q1_1;
  reg        [7:0]    myArea_add_q1_2;
  reg        [7:0]    myArea_add_q1_3;
  reg        [7:0]    myArea_add_q1_4;
  reg        [7:0]    myArea_add_q1_5;
  reg        [7:0]    myArea_add_q1_6;
  reg        [7:0]    myArea_add_q1_7;
  reg        [7:0]    myArea_add_q1_8;
  reg        [7:0]    myArea_add_q1_9;
  reg        [7:0]    myArea_add_q1_10;
  reg        [7:0]    myArea_add_q1_11;
  reg        [7:0]    myArea_add_q1_12;
  reg        [7:0]    myArea_add_q1_13;
  reg        [7:0]    myArea_add_q1_14;
  reg        [7:0]    myArea_add_q1_15;
  reg        [7:0]    myArea_requant_oup_d_0;
  reg        [7:0]    myArea_requant_oup_d_1;
  reg        [7:0]    myArea_requant_oup_d_2;
  reg        [7:0]    myArea_requant_oup_d_3;
  reg        [7:0]    myArea_requant_oup_d_4;
  reg        [7:0]    myArea_requant_oup_d_5;
  reg        [7:0]    myArea_requant_oup_d_6;
  reg        [7:0]    myArea_requant_oup_d_7;
  reg        [7:0]    myArea_requant_oup_d_8;
  reg        [7:0]    myArea_requant_oup_d_9;
  reg        [7:0]    myArea_requant_oup_d_10;
  reg        [7:0]    myArea_requant_oup_d_11;
  reg        [7:0]    myArea_requant_oup_d_12;
  reg        [7:0]    myArea_requant_oup_d_13;
  reg        [7:0]    myArea_requant_oup_d_14;
  reg        [7:0]    myArea_requant_oup_d_15;
  reg        [7:0]    myArea_requant_oup_q_0;
  reg        [7:0]    myArea_requant_oup_q_1;
  reg        [7:0]    myArea_requant_oup_q_2;
  reg        [7:0]    myArea_requant_oup_q_3;
  reg        [7:0]    myArea_requant_oup_q_4;
  reg        [7:0]    myArea_requant_oup_q_5;
  reg        [7:0]    myArea_requant_oup_q_6;
  reg        [7:0]    myArea_requant_oup_q_7;
  reg        [7:0]    myArea_requant_oup_q_8;
  reg        [7:0]    myArea_requant_oup_q_9;
  reg        [7:0]    myArea_requant_oup_q_10;
  reg        [7:0]    myArea_requant_oup_q_11;
  reg        [7:0]    myArea_requant_oup_q_12;
  reg        [7:0]    myArea_requant_oup_q_13;
  reg        [7:0]    myArea_requant_oup_q_14;
  reg        [7:0]    myArea_requant_oup_q_15;
  wire                when_itarequantizer_l57;
  wire       [7:0]    _zz_when_itarequantizer_l68;
  wire       [5:0]    _zz_when_itarequantizer_l68_1;
  wire                when_itarequantizer_l68;
  wire                when_itarequantizer_l79;
  wire                when_itarequantizer_l81;
  wire                when_itarequantizer_l57_1;
  wire       [7:0]    _zz_when_itarequantizer_l68_2;
  wire       [5:0]    _zz_when_itarequantizer_l68_3;
  wire                when_itarequantizer_l68_1;
  wire                when_itarequantizer_l79_1;
  wire                when_itarequantizer_l81_1;
  wire                when_itarequantizer_l57_2;
  wire       [7:0]    _zz_when_itarequantizer_l68_4;
  wire       [5:0]    _zz_when_itarequantizer_l68_5;
  wire                when_itarequantizer_l68_2;
  wire                when_itarequantizer_l79_2;
  wire                when_itarequantizer_l81_2;
  wire                when_itarequantizer_l57_3;
  wire       [7:0]    _zz_when_itarequantizer_l68_6;
  wire       [5:0]    _zz_when_itarequantizer_l68_7;
  wire                when_itarequantizer_l68_3;
  wire                when_itarequantizer_l79_3;
  wire                when_itarequantizer_l81_3;
  wire                when_itarequantizer_l57_4;
  wire       [7:0]    _zz_when_itarequantizer_l68_8;
  wire       [5:0]    _zz_when_itarequantizer_l68_9;
  wire                when_itarequantizer_l68_4;
  wire                when_itarequantizer_l79_4;
  wire                when_itarequantizer_l81_4;
  wire                when_itarequantizer_l57_5;
  wire       [7:0]    _zz_when_itarequantizer_l68_10;
  wire       [5:0]    _zz_when_itarequantizer_l68_11;
  wire                when_itarequantizer_l68_5;
  wire                when_itarequantizer_l79_5;
  wire                when_itarequantizer_l81_5;
  wire                when_itarequantizer_l57_6;
  wire       [7:0]    _zz_when_itarequantizer_l68_12;
  wire       [5:0]    _zz_when_itarequantizer_l68_13;
  wire                when_itarequantizer_l68_6;
  wire                when_itarequantizer_l79_6;
  wire                when_itarequantizer_l81_6;
  wire                when_itarequantizer_l57_7;
  wire       [7:0]    _zz_when_itarequantizer_l68_14;
  wire       [5:0]    _zz_when_itarequantizer_l68_15;
  wire                when_itarequantizer_l68_7;
  wire                when_itarequantizer_l79_7;
  wire                when_itarequantizer_l81_7;
  wire                when_itarequantizer_l57_8;
  wire       [7:0]    _zz_when_itarequantizer_l68_16;
  wire       [5:0]    _zz_when_itarequantizer_l68_17;
  wire                when_itarequantizer_l68_8;
  wire                when_itarequantizer_l79_8;
  wire                when_itarequantizer_l81_8;
  wire                when_itarequantizer_l57_9;
  wire       [7:0]    _zz_when_itarequantizer_l68_18;
  wire       [5:0]    _zz_when_itarequantizer_l68_19;
  wire                when_itarequantizer_l68_9;
  wire                when_itarequantizer_l79_9;
  wire                when_itarequantizer_l81_9;
  wire                when_itarequantizer_l57_10;
  wire       [7:0]    _zz_when_itarequantizer_l68_20;
  wire       [5:0]    _zz_when_itarequantizer_l68_21;
  wire                when_itarequantizer_l68_10;
  wire                when_itarequantizer_l79_10;
  wire                when_itarequantizer_l81_10;
  wire                when_itarequantizer_l57_11;
  wire       [7:0]    _zz_when_itarequantizer_l68_22;
  wire       [5:0]    _zz_when_itarequantizer_l68_23;
  wire                when_itarequantizer_l68_11;
  wire                when_itarequantizer_l79_11;
  wire                when_itarequantizer_l81_11;
  wire                when_itarequantizer_l57_12;
  wire       [7:0]    _zz_when_itarequantizer_l68_24;
  wire       [5:0]    _zz_when_itarequantizer_l68_25;
  wire                when_itarequantizer_l68_12;
  wire                when_itarequantizer_l79_12;
  wire                when_itarequantizer_l81_12;
  wire                when_itarequantizer_l57_13;
  wire       [7:0]    _zz_when_itarequantizer_l68_26;
  wire       [5:0]    _zz_when_itarequantizer_l68_27;
  wire                when_itarequantizer_l68_13;
  wire                when_itarequantizer_l79_13;
  wire                when_itarequantizer_l81_13;
  wire                when_itarequantizer_l57_14;
  wire       [7:0]    _zz_when_itarequantizer_l68_28;
  wire       [5:0]    _zz_when_itarequantizer_l68_29;
  wire                when_itarequantizer_l68_14;
  wire                when_itarequantizer_l79_14;
  wire                when_itarequantizer_l81_14;
  wire                when_itarequantizer_l57_15;
  wire       [7:0]    _zz_when_itarequantizer_l68_30;
  wire       [5:0]    _zz_when_itarequantizer_l68_31;
  wire                when_itarequantizer_l68_15;
  wire                when_itarequantizer_l79_15;
  wire                when_itarequantizer_l81_15;
  `ifndef SYNTHESIS
  reg [79:0] io_mode_i_string;
  `endif
assign product_verilog_0  = myArea_product_0;
assign product_verilog_1  = myArea_product_1;
assign product_verilog_2  = myArea_product_2;
assign product_verilog_3  = myArea_product_3;
assign product_verilog_4  = myArea_product_4;
assign product_verilog_5  = myArea_product_5;
assign product_verilog_6  = myArea_product_6;
assign product_verilog_7  = myArea_product_7;
assign product_verilog_8  = myArea_product_8;
assign product_verilog_9  = myArea_product_9;
assign product_verilog_10 = myArea_product_10;
assign product_verilog_11 = myArea_product_11;
assign product_verilog_12 = myArea_product_12;
assign product_verilog_13 = myArea_product_13;
assign product_verilog_14 = myArea_product_14;
assign product_verilog_15 = myArea_product_15;


assign shift_d_verilog_0  = myArea_shifted_d_0;
assign shift_d_verilog_1  = myArea_shifted_d_1;
assign shift_d_verilog_2  = myArea_shifted_d_2;
assign shift_d_verilog_3  = myArea_shifted_d_3;
assign shift_d_verilog_4  = myArea_shifted_d_4;
assign shift_d_verilog_5  = myArea_shifted_d_5;
assign shift_d_verilog_6  = myArea_shifted_d_6;
assign shift_d_verilog_7  = myArea_shifted_d_7;
assign shift_d_verilog_8  = myArea_shifted_d_8;
assign shift_d_verilog_9  = myArea_shifted_d_9;
assign shift_d_verilog_10 = myArea_shifted_d_10;
assign shift_d_verilog_11 = myArea_shifted_d_11;
assign shift_d_verilog_12 = myArea_shifted_d_12;
assign shift_d_verilog_13 = myArea_shifted_d_13;
assign shift_d_verilog_14 = myArea_shifted_d_14;
assign shift_d_verilog_15 = myArea_shifted_d_15;

  assign _zz_myArea_product_0 = ($signed(_zz_myArea_product_0_1) * $signed(myArea_mult_signed_0));
  assign _zz_myArea_product_0_1 = {1'b0,io_eps_mult_i_value};
  assign _zz_myArea_shifted_d_0 = ($signed(myArea_product_0) >>> io_right_shift_i_value);
  assign _zz_when_itarequantizer_l68_33 = ((_zz_when_itarequantizer_l68 < _zz_when_itarequantizer_l68_34) ? _zz_when_itarequantizer_l68 : _zz_when_itarequantizer_l68_35);
  assign _zz_when_itarequantizer_l68_32 = _zz_when_itarequantizer_l68_33[5:0];
  assign _zz_when_itarequantizer_l68_34 = {2'd0, _zz_when_itarequantizer_l68_1};
  assign _zz_when_itarequantizer_l68_35 = {2'd0, _zz_when_itarequantizer_l68_1};
  assign _zz_myArea_shifted_d_0_1 = ($signed(_zz_myArea_shifted_d_0_2) + $signed(35'h000000001));
  assign _zz_myArea_shifted_d_0_2 = ($signed(myArea_product_0) >>> io_right_shift_i_value);
  assign _zz_myArea_shifted_added_0 = ($signed(myArea_shifted_q_0) + $signed(_zz_myArea_shifted_added_0_1));
  assign _zz_myArea_shifted_added_0_1 = {{26{myArea_add_q1_0[7]}}, myArea_add_q1_0};
  assign _zz_when_itarequantizer_l79 = myArea_shifted_added_0[32 : 7];
  assign _zz_when_itarequantizer_l81 = myArea_shifted_added_0[32 : 7];
  assign _zz_myArea_product_1 = ($signed(_zz_myArea_product_1_1) * $signed(myArea_mult_signed_1));
  assign _zz_myArea_product_1_1 = {1'b0,io_eps_mult_i_value};
  assign _zz_myArea_shifted_d_1 = ($signed(myArea_product_1) >>> io_right_shift_i_value);
  assign _zz_when_itarequantizer_l68_1_2 = ((_zz_when_itarequantizer_l68_2 < _zz_when_itarequantizer_l68_1_3) ? _zz_when_itarequantizer_l68_2 : _zz_when_itarequantizer_l68_1_4);
  assign _zz_when_itarequantizer_l68_1_1 = _zz_when_itarequantizer_l68_1_2[5:0];
  assign _zz_when_itarequantizer_l68_1_3 = {2'd0, _zz_when_itarequantizer_l68_3};
  assign _zz_when_itarequantizer_l68_1_4 = {2'd0, _zz_when_itarequantizer_l68_3};
  assign _zz_myArea_shifted_d_1_1 = ($signed(_zz_myArea_shifted_d_1_2) + $signed(35'h000000001));
  assign _zz_myArea_shifted_d_1_2 = ($signed(myArea_product_1) >>> io_right_shift_i_value);
  assign _zz_myArea_shifted_added_1 = ($signed(myArea_shifted_q_1) + $signed(_zz_myArea_shifted_added_1_1));
  assign _zz_myArea_shifted_added_1_1 = {{26{myArea_add_q1_1[7]}}, myArea_add_q1_1};
  assign _zz_when_itarequantizer_l79_1 = myArea_shifted_added_1[32 : 7];
  assign _zz_when_itarequantizer_l81_1 = myArea_shifted_added_1[32 : 7];
  assign _zz_myArea_product_2 = ($signed(_zz_myArea_product_2_1) * $signed(myArea_mult_signed_2));
  assign _zz_myArea_product_2_1 = {1'b0,io_eps_mult_i_value};
  assign _zz_myArea_shifted_d_2 = ($signed(myArea_product_2) >>> io_right_shift_i_value);
  assign _zz_when_itarequantizer_l68_2_2 = ((_zz_when_itarequantizer_l68_4 < _zz_when_itarequantizer_l68_2_3) ? _zz_when_itarequantizer_l68_4 : _zz_when_itarequantizer_l68_2_4);
  assign _zz_when_itarequantizer_l68_2_1 = _zz_when_itarequantizer_l68_2_2[5:0];
  assign _zz_when_itarequantizer_l68_2_3 = {2'd0, _zz_when_itarequantizer_l68_5};
  assign _zz_when_itarequantizer_l68_2_4 = {2'd0, _zz_when_itarequantizer_l68_5};
  assign _zz_myArea_shifted_d_2_1 = ($signed(_zz_myArea_shifted_d_2_2) + $signed(35'h000000001));
  assign _zz_myArea_shifted_d_2_2 = ($signed(myArea_product_2) >>> io_right_shift_i_value);
  assign _zz_myArea_shifted_added_2 = ($signed(myArea_shifted_q_2) + $signed(_zz_myArea_shifted_added_2_1));
  assign _zz_myArea_shifted_added_2_1 = {{26{myArea_add_q1_2[7]}}, myArea_add_q1_2};
  assign _zz_when_itarequantizer_l79_2 = myArea_shifted_added_2[32 : 7];
  assign _zz_when_itarequantizer_l81_2 = myArea_shifted_added_2[32 : 7];
  assign _zz_myArea_product_3 = ($signed(_zz_myArea_product_3_1) * $signed(myArea_mult_signed_3));
  assign _zz_myArea_product_3_1 = {1'b0,io_eps_mult_i_value};
  assign _zz_myArea_shifted_d_3 = ($signed(myArea_product_3) >>> io_right_shift_i_value);
  assign _zz_when_itarequantizer_l68_3_2 = ((_zz_when_itarequantizer_l68_6 < _zz_when_itarequantizer_l68_3_3) ? _zz_when_itarequantizer_l68_6 : _zz_when_itarequantizer_l68_3_4);
  assign _zz_when_itarequantizer_l68_3_1 = _zz_when_itarequantizer_l68_3_2[5:0];
  assign _zz_when_itarequantizer_l68_3_3 = {2'd0, _zz_when_itarequantizer_l68_7};
  assign _zz_when_itarequantizer_l68_3_4 = {2'd0, _zz_when_itarequantizer_l68_7};
  assign _zz_myArea_shifted_d_3_1 = ($signed(_zz_myArea_shifted_d_3_2) + $signed(35'h000000001));
  assign _zz_myArea_shifted_d_3_2 = ($signed(myArea_product_3) >>> io_right_shift_i_value);
  assign _zz_myArea_shifted_added_3 = ($signed(myArea_shifted_q_3) + $signed(_zz_myArea_shifted_added_3_1));
  assign _zz_myArea_shifted_added_3_1 = {{26{myArea_add_q1_3[7]}}, myArea_add_q1_3};
  assign _zz_when_itarequantizer_l79_3 = myArea_shifted_added_3[32 : 7];
  assign _zz_when_itarequantizer_l81_3 = myArea_shifted_added_3[32 : 7];
  assign _zz_myArea_product_4 = ($signed(_zz_myArea_product_4_1) * $signed(myArea_mult_signed_4));
  assign _zz_myArea_product_4_1 = {1'b0,io_eps_mult_i_value};
  assign _zz_myArea_shifted_d_4 = ($signed(myArea_product_4) >>> io_right_shift_i_value);
  assign _zz_when_itarequantizer_l68_4_2 = ((_zz_when_itarequantizer_l68_8 < _zz_when_itarequantizer_l68_4_3) ? _zz_when_itarequantizer_l68_8 : _zz_when_itarequantizer_l68_4_4);
  assign _zz_when_itarequantizer_l68_4_1 = _zz_when_itarequantizer_l68_4_2[5:0];
  assign _zz_when_itarequantizer_l68_4_3 = {2'd0, _zz_when_itarequantizer_l68_9};
  assign _zz_when_itarequantizer_l68_4_4 = {2'd0, _zz_when_itarequantizer_l68_9};
  assign _zz_myArea_shifted_d_4_1 = ($signed(_zz_myArea_shifted_d_4_2) + $signed(35'h000000001));
  assign _zz_myArea_shifted_d_4_2 = ($signed(myArea_product_4) >>> io_right_shift_i_value);
  assign _zz_myArea_shifted_added_4 = ($signed(myArea_shifted_q_4) + $signed(_zz_myArea_shifted_added_4_1));
  assign _zz_myArea_shifted_added_4_1 = {{26{myArea_add_q1_4[7]}}, myArea_add_q1_4};
  assign _zz_when_itarequantizer_l79_4 = myArea_shifted_added_4[32 : 7];
  assign _zz_when_itarequantizer_l81_4 = myArea_shifted_added_4[32 : 7];
  assign _zz_myArea_product_5 = ($signed(_zz_myArea_product_5_1) * $signed(myArea_mult_signed_5));
  assign _zz_myArea_product_5_1 = {1'b0,io_eps_mult_i_value};
  assign _zz_myArea_shifted_d_5 = ($signed(myArea_product_5) >>> io_right_shift_i_value);
  assign _zz_when_itarequantizer_l68_5_2 = ((_zz_when_itarequantizer_l68_10 < _zz_when_itarequantizer_l68_5_3) ? _zz_when_itarequantizer_l68_10 : _zz_when_itarequantizer_l68_5_4);
  assign _zz_when_itarequantizer_l68_5_1 = _zz_when_itarequantizer_l68_5_2[5:0];
  assign _zz_when_itarequantizer_l68_5_3 = {2'd0, _zz_when_itarequantizer_l68_11};
  assign _zz_when_itarequantizer_l68_5_4 = {2'd0, _zz_when_itarequantizer_l68_11};
  assign _zz_myArea_shifted_d_5_1 = ($signed(_zz_myArea_shifted_d_5_2) + $signed(35'h000000001));
  assign _zz_myArea_shifted_d_5_2 = ($signed(myArea_product_5) >>> io_right_shift_i_value);
  assign _zz_myArea_shifted_added_5 = ($signed(myArea_shifted_q_5) + $signed(_zz_myArea_shifted_added_5_1));
  assign _zz_myArea_shifted_added_5_1 = {{26{myArea_add_q1_5[7]}}, myArea_add_q1_5};
  assign _zz_when_itarequantizer_l79_5 = myArea_shifted_added_5[32 : 7];
  assign _zz_when_itarequantizer_l81_5 = myArea_shifted_added_5[32 : 7];
  assign _zz_myArea_product_6 = ($signed(_zz_myArea_product_6_1) * $signed(myArea_mult_signed_6));
  assign _zz_myArea_product_6_1 = {1'b0,io_eps_mult_i_value};
  assign _zz_myArea_shifted_d_6 = ($signed(myArea_product_6) >>> io_right_shift_i_value);
  assign _zz_when_itarequantizer_l68_6_2 = ((_zz_when_itarequantizer_l68_12 < _zz_when_itarequantizer_l68_6_3) ? _zz_when_itarequantizer_l68_12 : _zz_when_itarequantizer_l68_6_4);
  assign _zz_when_itarequantizer_l68_6_1 = _zz_when_itarequantizer_l68_6_2[5:0];
  assign _zz_when_itarequantizer_l68_6_3 = {2'd0, _zz_when_itarequantizer_l68_13};
  assign _zz_when_itarequantizer_l68_6_4 = {2'd0, _zz_when_itarequantizer_l68_13};
  assign _zz_myArea_shifted_d_6_1 = ($signed(_zz_myArea_shifted_d_6_2) + $signed(35'h000000001));
  assign _zz_myArea_shifted_d_6_2 = ($signed(myArea_product_6) >>> io_right_shift_i_value);
  assign _zz_myArea_shifted_added_6 = ($signed(myArea_shifted_q_6) + $signed(_zz_myArea_shifted_added_6_1));
  assign _zz_myArea_shifted_added_6_1 = {{26{myArea_add_q1_6[7]}}, myArea_add_q1_6};
  assign _zz_when_itarequantizer_l79_6 = myArea_shifted_added_6[32 : 7];
  assign _zz_when_itarequantizer_l81_6 = myArea_shifted_added_6[32 : 7];
  assign _zz_myArea_product_7 = ($signed(_zz_myArea_product_7_1) * $signed(myArea_mult_signed_7));
  assign _zz_myArea_product_7_1 = {1'b0,io_eps_mult_i_value};
  assign _zz_myArea_shifted_d_7 = ($signed(myArea_product_7) >>> io_right_shift_i_value);
  assign _zz_when_itarequantizer_l68_7_2 = ((_zz_when_itarequantizer_l68_14 < _zz_when_itarequantizer_l68_7_3) ? _zz_when_itarequantizer_l68_14 : _zz_when_itarequantizer_l68_7_4);
  assign _zz_when_itarequantizer_l68_7_1 = _zz_when_itarequantizer_l68_7_2[5:0];
  assign _zz_when_itarequantizer_l68_7_3 = {2'd0, _zz_when_itarequantizer_l68_15};
  assign _zz_when_itarequantizer_l68_7_4 = {2'd0, _zz_when_itarequantizer_l68_15};
  assign _zz_myArea_shifted_d_7_1 = ($signed(_zz_myArea_shifted_d_7_2) + $signed(35'h000000001));
  assign _zz_myArea_shifted_d_7_2 = ($signed(myArea_product_7) >>> io_right_shift_i_value);
  assign _zz_myArea_shifted_added_7 = ($signed(myArea_shifted_q_7) + $signed(_zz_myArea_shifted_added_7_1));
  assign _zz_myArea_shifted_added_7_1 = {{26{myArea_add_q1_7[7]}}, myArea_add_q1_7};
  assign _zz_when_itarequantizer_l79_7 = myArea_shifted_added_7[32 : 7];
  assign _zz_when_itarequantizer_l81_7 = myArea_shifted_added_7[32 : 7];
  assign _zz_myArea_product_8 = ($signed(_zz_myArea_product_8_1) * $signed(myArea_mult_signed_8));
  assign _zz_myArea_product_8_1 = {1'b0,io_eps_mult_i_value};
  assign _zz_myArea_shifted_d_8 = ($signed(myArea_product_8) >>> io_right_shift_i_value);
  assign _zz_when_itarequantizer_l68_8_2 = ((_zz_when_itarequantizer_l68_16 < _zz_when_itarequantizer_l68_8_3) ? _zz_when_itarequantizer_l68_16 : _zz_when_itarequantizer_l68_8_4);
  assign _zz_when_itarequantizer_l68_8_1 = _zz_when_itarequantizer_l68_8_2[5:0];
  assign _zz_when_itarequantizer_l68_8_3 = {2'd0, _zz_when_itarequantizer_l68_17};
  assign _zz_when_itarequantizer_l68_8_4 = {2'd0, _zz_when_itarequantizer_l68_17};
  assign _zz_myArea_shifted_d_8_1 = ($signed(_zz_myArea_shifted_d_8_2) + $signed(35'h000000001));
  assign _zz_myArea_shifted_d_8_2 = ($signed(myArea_product_8) >>> io_right_shift_i_value);
  assign _zz_myArea_shifted_added_8 = ($signed(myArea_shifted_q_8) + $signed(_zz_myArea_shifted_added_8_1));
  assign _zz_myArea_shifted_added_8_1 = {{26{myArea_add_q1_8[7]}}, myArea_add_q1_8};
  assign _zz_when_itarequantizer_l79_8 = myArea_shifted_added_8[32 : 7];
  assign _zz_when_itarequantizer_l81_8 = myArea_shifted_added_8[32 : 7];
  assign _zz_myArea_product_9 = ($signed(_zz_myArea_product_9_1) * $signed(myArea_mult_signed_9));
  assign _zz_myArea_product_9_1 = {1'b0,io_eps_mult_i_value};
  assign _zz_myArea_shifted_d_9 = ($signed(myArea_product_9) >>> io_right_shift_i_value);
  assign _zz_when_itarequantizer_l68_9_2 = ((_zz_when_itarequantizer_l68_18 < _zz_when_itarequantizer_l68_9_3) ? _zz_when_itarequantizer_l68_18 : _zz_when_itarequantizer_l68_9_4);
  assign _zz_when_itarequantizer_l68_9_1 = _zz_when_itarequantizer_l68_9_2[5:0];
  assign _zz_when_itarequantizer_l68_9_3 = {2'd0, _zz_when_itarequantizer_l68_19};
  assign _zz_when_itarequantizer_l68_9_4 = {2'd0, _zz_when_itarequantizer_l68_19};
  assign _zz_myArea_shifted_d_9_1 = ($signed(_zz_myArea_shifted_d_9_2) + $signed(35'h000000001));
  assign _zz_myArea_shifted_d_9_2 = ($signed(myArea_product_9) >>> io_right_shift_i_value);
  assign _zz_myArea_shifted_added_9 = ($signed(myArea_shifted_q_9) + $signed(_zz_myArea_shifted_added_9_1));
  assign _zz_myArea_shifted_added_9_1 = {{26{myArea_add_q1_9[7]}}, myArea_add_q1_9};
  assign _zz_when_itarequantizer_l79_9 = myArea_shifted_added_9[32 : 7];
  assign _zz_when_itarequantizer_l81_9 = myArea_shifted_added_9[32 : 7];
  assign _zz_myArea_product_10 = ($signed(_zz_myArea_product_10_1) * $signed(myArea_mult_signed_10));
  assign _zz_myArea_product_10_1 = {1'b0,io_eps_mult_i_value};
  assign _zz_myArea_shifted_d_10 = ($signed(myArea_product_10) >>> io_right_shift_i_value);
  assign _zz_when_itarequantizer_l68_10_2 = ((_zz_when_itarequantizer_l68_20 < _zz_when_itarequantizer_l68_10_3) ? _zz_when_itarequantizer_l68_20 : _zz_when_itarequantizer_l68_10_4);
  assign _zz_when_itarequantizer_l68_10_1 = _zz_when_itarequantizer_l68_10_2[5:0];
  assign _zz_when_itarequantizer_l68_10_3 = {2'd0, _zz_when_itarequantizer_l68_21};
  assign _zz_when_itarequantizer_l68_10_4 = {2'd0, _zz_when_itarequantizer_l68_21};
  assign _zz_myArea_shifted_d_10_1 = ($signed(_zz_myArea_shifted_d_10_2) + $signed(35'h000000001));
  assign _zz_myArea_shifted_d_10_2 = ($signed(myArea_product_10) >>> io_right_shift_i_value);
  assign _zz_myArea_shifted_added_10 = ($signed(myArea_shifted_q_10) + $signed(_zz_myArea_shifted_added_10_1));
  assign _zz_myArea_shifted_added_10_1 = {{26{myArea_add_q1_10[7]}}, myArea_add_q1_10};
  assign _zz_when_itarequantizer_l79_10 = myArea_shifted_added_10[32 : 7];
  assign _zz_when_itarequantizer_l81_10 = myArea_shifted_added_10[32 : 7];
  assign _zz_myArea_product_11 = ($signed(_zz_myArea_product_11_1) * $signed(myArea_mult_signed_11));
  assign _zz_myArea_product_11_1 = {1'b0,io_eps_mult_i_value};
  assign _zz_myArea_shifted_d_11 = ($signed(myArea_product_11) >>> io_right_shift_i_value);
  assign _zz_when_itarequantizer_l68_11_2 = ((_zz_when_itarequantizer_l68_22 < _zz_when_itarequantizer_l68_11_3) ? _zz_when_itarequantizer_l68_22 : _zz_when_itarequantizer_l68_11_4);
  assign _zz_when_itarequantizer_l68_11_1 = _zz_when_itarequantizer_l68_11_2[5:0];
  assign _zz_when_itarequantizer_l68_11_3 = {2'd0, _zz_when_itarequantizer_l68_23};
  assign _zz_when_itarequantizer_l68_11_4 = {2'd0, _zz_when_itarequantizer_l68_23};
  assign _zz_myArea_shifted_d_11_1 = ($signed(_zz_myArea_shifted_d_11_2) + $signed(35'h000000001));
  assign _zz_myArea_shifted_d_11_2 = ($signed(myArea_product_11) >>> io_right_shift_i_value);
  assign _zz_myArea_shifted_added_11 = ($signed(myArea_shifted_q_11) + $signed(_zz_myArea_shifted_added_11_1));
  assign _zz_myArea_shifted_added_11_1 = {{26{myArea_add_q1_11[7]}}, myArea_add_q1_11};
  assign _zz_when_itarequantizer_l79_11 = myArea_shifted_added_11[32 : 7];
  assign _zz_when_itarequantizer_l81_11 = myArea_shifted_added_11[32 : 7];
  assign _zz_myArea_product_12 = ($signed(_zz_myArea_product_12_1) * $signed(myArea_mult_signed_12));
  assign _zz_myArea_product_12_1 = {1'b0,io_eps_mult_i_value};
  assign _zz_myArea_shifted_d_12 = ($signed(myArea_product_12) >>> io_right_shift_i_value);
  assign _zz_when_itarequantizer_l68_12_2 = ((_zz_when_itarequantizer_l68_24 < _zz_when_itarequantizer_l68_12_3) ? _zz_when_itarequantizer_l68_24 : _zz_when_itarequantizer_l68_12_4);
  assign _zz_when_itarequantizer_l68_12_1 = _zz_when_itarequantizer_l68_12_2[5:0];
  assign _zz_when_itarequantizer_l68_12_3 = {2'd0, _zz_when_itarequantizer_l68_25};
  assign _zz_when_itarequantizer_l68_12_4 = {2'd0, _zz_when_itarequantizer_l68_25};
  assign _zz_myArea_shifted_d_12_1 = ($signed(_zz_myArea_shifted_d_12_2) + $signed(35'h000000001));
  assign _zz_myArea_shifted_d_12_2 = ($signed(myArea_product_12) >>> io_right_shift_i_value);
  assign _zz_myArea_shifted_added_12 = ($signed(myArea_shifted_q_12) + $signed(_zz_myArea_shifted_added_12_1));
  assign _zz_myArea_shifted_added_12_1 = {{26{myArea_add_q1_12[7]}}, myArea_add_q1_12};
  assign _zz_when_itarequantizer_l79_12 = myArea_shifted_added_12[32 : 7];
  assign _zz_when_itarequantizer_l81_12 = myArea_shifted_added_12[32 : 7];
  assign _zz_myArea_product_13 = ($signed(_zz_myArea_product_13_1) * $signed(myArea_mult_signed_13));
  assign _zz_myArea_product_13_1 = {1'b0,io_eps_mult_i_value};
  assign _zz_myArea_shifted_d_13 = ($signed(myArea_product_13) >>> io_right_shift_i_value);
  assign _zz_when_itarequantizer_l68_13_2 = ((_zz_when_itarequantizer_l68_26 < _zz_when_itarequantizer_l68_13_3) ? _zz_when_itarequantizer_l68_26 : _zz_when_itarequantizer_l68_13_4);
  assign _zz_when_itarequantizer_l68_13_1 = _zz_when_itarequantizer_l68_13_2[5:0];
  assign _zz_when_itarequantizer_l68_13_3 = {2'd0, _zz_when_itarequantizer_l68_27};
  assign _zz_when_itarequantizer_l68_13_4 = {2'd0, _zz_when_itarequantizer_l68_27};
  assign _zz_myArea_shifted_d_13_1 = ($signed(_zz_myArea_shifted_d_13_2) + $signed(35'h000000001));
  assign _zz_myArea_shifted_d_13_2 = ($signed(myArea_product_13) >>> io_right_shift_i_value);
  assign _zz_myArea_shifted_added_13 = ($signed(myArea_shifted_q_13) + $signed(_zz_myArea_shifted_added_13_1));
  assign _zz_myArea_shifted_added_13_1 = {{26{myArea_add_q1_13[7]}}, myArea_add_q1_13};
  assign _zz_when_itarequantizer_l79_13 = myArea_shifted_added_13[32 : 7];
  assign _zz_when_itarequantizer_l81_13 = myArea_shifted_added_13[32 : 7];
  assign _zz_myArea_product_14 = ($signed(_zz_myArea_product_14_1) * $signed(myArea_mult_signed_14));
  assign _zz_myArea_product_14_1 = {1'b0,io_eps_mult_i_value};
  assign _zz_myArea_shifted_d_14 = ($signed(myArea_product_14) >>> io_right_shift_i_value);
  assign _zz_when_itarequantizer_l68_14_2 = ((_zz_when_itarequantizer_l68_28 < _zz_when_itarequantizer_l68_14_3) ? _zz_when_itarequantizer_l68_28 : _zz_when_itarequantizer_l68_14_4);
  assign _zz_when_itarequantizer_l68_14_1 = _zz_when_itarequantizer_l68_14_2[5:0];
  assign _zz_when_itarequantizer_l68_14_3 = {2'd0, _zz_when_itarequantizer_l68_29};
  assign _zz_when_itarequantizer_l68_14_4 = {2'd0, _zz_when_itarequantizer_l68_29};
  assign _zz_myArea_shifted_d_14_1 = ($signed(_zz_myArea_shifted_d_14_2) + $signed(35'h000000001));
  assign _zz_myArea_shifted_d_14_2 = ($signed(myArea_product_14) >>> io_right_shift_i_value);
  assign _zz_myArea_shifted_added_14 = ($signed(myArea_shifted_q_14) + $signed(_zz_myArea_shifted_added_14_1));
  assign _zz_myArea_shifted_added_14_1 = {{26{myArea_add_q1_14[7]}}, myArea_add_q1_14};
  assign _zz_when_itarequantizer_l79_14 = myArea_shifted_added_14[32 : 7];
  assign _zz_when_itarequantizer_l81_14 = myArea_shifted_added_14[32 : 7];
  assign _zz_myArea_product_15 = ($signed(_zz_myArea_product_15_1) * $signed(myArea_mult_signed_15));
  assign _zz_myArea_product_15_1 = {1'b0,io_eps_mult_i_value};
  assign _zz_myArea_shifted_d_15 = ($signed(myArea_product_15) >>> io_right_shift_i_value);
  assign _zz_when_itarequantizer_l68_15_2 = ((_zz_when_itarequantizer_l68_30 < _zz_when_itarequantizer_l68_15_3) ? _zz_when_itarequantizer_l68_30 : _zz_when_itarequantizer_l68_15_4);
  assign _zz_when_itarequantizer_l68_15_1 = _zz_when_itarequantizer_l68_15_2[5:0];
  assign _zz_when_itarequantizer_l68_15_3 = {2'd0, _zz_when_itarequantizer_l68_31};
  assign _zz_when_itarequantizer_l68_15_4 = {2'd0, _zz_when_itarequantizer_l68_31};
  assign _zz_myArea_shifted_d_15_1 = ($signed(_zz_myArea_shifted_d_15_2) + $signed(35'h000000001));
  assign _zz_myArea_shifted_d_15_2 = ($signed(myArea_product_15) >>> io_right_shift_i_value);
  assign _zz_myArea_shifted_added_15 = ($signed(myArea_shifted_q_15) + $signed(_zz_myArea_shifted_added_15_1));
  assign _zz_myArea_shifted_added_15_1 = {{26{myArea_add_q1_15[7]}}, myArea_add_q1_15};
  assign _zz_when_itarequantizer_l79_15 = myArea_shifted_added_15[32 : 7];
  assign _zz_when_itarequantizer_l81_15 = myArea_shifted_added_15[32 : 7];
  `ifndef SYNTHESIS
  always @(*) begin
    case(io_mode_i)
      RequantModeE_Signed_1 : io_mode_i_string = "Signed_1  ";
      RequantModeE_Unsigned_1 : io_mode_i_string = "Unsigned_1";
      default : io_mode_i_string = "??????????";
    endcase
  end
  `endif

  assign io_requant_oup_o_values_0 = myArea_requant_oup_q_0;
  assign io_requant_oup_o_values_1 = myArea_requant_oup_q_1;
  assign io_requant_oup_o_values_2 = myArea_requant_oup_q_2;
  assign io_requant_oup_o_values_3 = myArea_requant_oup_q_3;
  assign io_requant_oup_o_values_4 = myArea_requant_oup_q_4;
  assign io_requant_oup_o_values_5 = myArea_requant_oup_q_5;
  assign io_requant_oup_o_values_6 = myArea_requant_oup_q_6;
  assign io_requant_oup_o_values_7 = myArea_requant_oup_q_7;
  assign io_requant_oup_o_values_8 = myArea_requant_oup_q_8;
  assign io_requant_oup_o_values_9 = myArea_requant_oup_q_9;
  assign io_requant_oup_o_values_10 = myArea_requant_oup_q_10;
  assign io_requant_oup_o_values_11 = myArea_requant_oup_q_11;
  assign io_requant_oup_o_values_12 = myArea_requant_oup_q_12;
  assign io_requant_oup_o_values_13 = myArea_requant_oup_q_13;
  assign io_requant_oup_o_values_14 = myArea_requant_oup_q_14;
  assign io_requant_oup_o_values_15 = myArea_requant_oup_q_15;
  always @(*) begin
    myArea_product_0 = 35'h0;
    if(io_calc_en_i) begin
      myArea_product_0 = _zz_myArea_product_0[34:0];
    end
  end

  always @(*) begin
    myArea_product_1 = 35'h0;
    if(io_calc_en_i) begin
      myArea_product_1 = _zz_myArea_product_1[34:0];
    end
  end

  always @(*) begin
    myArea_product_2 = 35'h0;
    if(io_calc_en_i) begin
      myArea_product_2 = _zz_myArea_product_2[34:0];
    end
  end

  always @(*) begin
    myArea_product_3 = 35'h0;
    if(io_calc_en_i) begin
      myArea_product_3 = _zz_myArea_product_3[34:0];
    end
  end

  always @(*) begin
    myArea_product_4 = 35'h0;
    if(io_calc_en_i) begin
      myArea_product_4 = _zz_myArea_product_4[34:0];
    end
  end

  always @(*) begin
    myArea_product_5 = 35'h0;
    if(io_calc_en_i) begin
      myArea_product_5 = _zz_myArea_product_5[34:0];
    end
  end

  always @(*) begin
    myArea_product_6 = 35'h0;
    if(io_calc_en_i) begin
      myArea_product_6 = _zz_myArea_product_6[34:0];
    end
  end

  always @(*) begin
    myArea_product_7 = 35'h0;
    if(io_calc_en_i) begin
      myArea_product_7 = _zz_myArea_product_7[34:0];
    end
  end

  always @(*) begin
    myArea_product_8 = 35'h0;
    if(io_calc_en_i) begin
      myArea_product_8 = _zz_myArea_product_8[34:0];
    end
  end

  always @(*) begin
    myArea_product_9 = 35'h0;
    if(io_calc_en_i) begin
      myArea_product_9 = _zz_myArea_product_9[34:0];
    end
  end

  always @(*) begin
    myArea_product_10 = 35'h0;
    if(io_calc_en_i) begin
      myArea_product_10 = _zz_myArea_product_10[34:0];
    end
  end

  always @(*) begin
    myArea_product_11 = 35'h0;
    if(io_calc_en_i) begin
      myArea_product_11 = _zz_myArea_product_11[34:0];
    end
  end

  always @(*) begin
    myArea_product_12 = 35'h0;
    if(io_calc_en_i) begin
      myArea_product_12 = _zz_myArea_product_12[34:0];
    end
  end

  always @(*) begin
    myArea_product_13 = 35'h0;
    if(io_calc_en_i) begin
      myArea_product_13 = _zz_myArea_product_13[34:0];
    end
  end

  always @(*) begin
    myArea_product_14 = 35'h0;
    if(io_calc_en_i) begin
      myArea_product_14 = _zz_myArea_product_14[34:0];
    end
  end

  always @(*) begin
    myArea_product_15 = 35'h0;
    if(io_calc_en_i) begin
      myArea_product_15 = _zz_myArea_product_15[34:0];
    end
  end

  always @(*) begin
    myArea_shifted_added_0 = 35'h0;
    if(io_calc_en_q_i) begin
      myArea_shifted_added_0 = {{1{_zz_myArea_shifted_added_0[33]}}, _zz_myArea_shifted_added_0};
    end
  end

  always @(*) begin
    myArea_shifted_added_1 = 35'h0;
    if(io_calc_en_q_i) begin
      myArea_shifted_added_1 = {{1{_zz_myArea_shifted_added_1[33]}}, _zz_myArea_shifted_added_1};
    end
  end

  always @(*) begin
    myArea_shifted_added_2 = 35'h0;
    if(io_calc_en_q_i) begin
      myArea_shifted_added_2 = {{1{_zz_myArea_shifted_added_2[33]}}, _zz_myArea_shifted_added_2};
    end
  end

  always @(*) begin
    myArea_shifted_added_3 = 35'h0;
    if(io_calc_en_q_i) begin
      myArea_shifted_added_3 = {{1{_zz_myArea_shifted_added_3[33]}}, _zz_myArea_shifted_added_3};
    end
  end

  always @(*) begin
    myArea_shifted_added_4 = 35'h0;
    if(io_calc_en_q_i) begin
      myArea_shifted_added_4 = {{1{_zz_myArea_shifted_added_4[33]}}, _zz_myArea_shifted_added_4};
    end
  end

  always @(*) begin
    myArea_shifted_added_5 = 35'h0;
    if(io_calc_en_q_i) begin
      myArea_shifted_added_5 = {{1{_zz_myArea_shifted_added_5[33]}}, _zz_myArea_shifted_added_5};
    end
  end

  always @(*) begin
    myArea_shifted_added_6 = 35'h0;
    if(io_calc_en_q_i) begin
      myArea_shifted_added_6 = {{1{_zz_myArea_shifted_added_6[33]}}, _zz_myArea_shifted_added_6};
    end
  end

  always @(*) begin
    myArea_shifted_added_7 = 35'h0;
    if(io_calc_en_q_i) begin
      myArea_shifted_added_7 = {{1{_zz_myArea_shifted_added_7[33]}}, _zz_myArea_shifted_added_7};
    end
  end

  always @(*) begin
    myArea_shifted_added_8 = 35'h0;
    if(io_calc_en_q_i) begin
      myArea_shifted_added_8 = {{1{_zz_myArea_shifted_added_8[33]}}, _zz_myArea_shifted_added_8};
    end
  end

  always @(*) begin
    myArea_shifted_added_9 = 35'h0;
    if(io_calc_en_q_i) begin
      myArea_shifted_added_9 = {{1{_zz_myArea_shifted_added_9[33]}}, _zz_myArea_shifted_added_9};
    end
  end

  always @(*) begin
    myArea_shifted_added_10 = 35'h0;
    if(io_calc_en_q_i) begin
      myArea_shifted_added_10 = {{1{_zz_myArea_shifted_added_10[33]}}, _zz_myArea_shifted_added_10};
    end
  end

  always @(*) begin
    myArea_shifted_added_11 = 35'h0;
    if(io_calc_en_q_i) begin
      myArea_shifted_added_11 = {{1{_zz_myArea_shifted_added_11[33]}}, _zz_myArea_shifted_added_11};
    end
  end

  always @(*) begin
    myArea_shifted_added_12 = 35'h0;
    if(io_calc_en_q_i) begin
      myArea_shifted_added_12 = {{1{_zz_myArea_shifted_added_12[33]}}, _zz_myArea_shifted_added_12};
    end
  end

  always @(*) begin
    myArea_shifted_added_13 = 35'h0;
    if(io_calc_en_q_i) begin
      myArea_shifted_added_13 = {{1{_zz_myArea_shifted_added_13[33]}}, _zz_myArea_shifted_added_13};
    end
  end

  always @(*) begin
    myArea_shifted_added_14 = 35'h0;
    if(io_calc_en_q_i) begin
      myArea_shifted_added_14 = {{1{_zz_myArea_shifted_added_14[33]}}, _zz_myArea_shifted_added_14};
    end
  end

  always @(*) begin
    myArea_shifted_added_15 = 35'h0;
    if(io_calc_en_q_i) begin
      myArea_shifted_added_15 = {{1{_zz_myArea_shifted_added_15[33]}}, _zz_myArea_shifted_added_15};
    end
  end

  always @(*) begin
    myArea_shifted_d_0 = 34'h0;
    if(io_calc_en_i) begin
      myArea_shifted_d_0 = _zz_myArea_shifted_d_0[33:0];
      if(when_itarequantizer_l68) begin
        myArea_shifted_d_0 = _zz_myArea_shifted_d_0_1[33:0];
      end
    end
  end

  always @(*) begin
    myArea_shifted_d_1 = 34'h0;
    if(io_calc_en_i) begin
      myArea_shifted_d_1 = _zz_myArea_shifted_d_1[33:0];
      if(when_itarequantizer_l68_1) begin
        myArea_shifted_d_1 = _zz_myArea_shifted_d_1_1[33:0];
      end
    end
  end

  always @(*) begin
    myArea_shifted_d_2 = 34'h0;
    if(io_calc_en_i) begin
      myArea_shifted_d_2 = _zz_myArea_shifted_d_2[33:0];
      if(when_itarequantizer_l68_2) begin
        myArea_shifted_d_2 = _zz_myArea_shifted_d_2_1[33:0];
      end
    end
  end

  always @(*) begin
    myArea_shifted_d_3 = 34'h0;
    if(io_calc_en_i) begin
      myArea_shifted_d_3 = _zz_myArea_shifted_d_3[33:0];
      if(when_itarequantizer_l68_3) begin
        myArea_shifted_d_3 = _zz_myArea_shifted_d_3_1[33:0];
      end
    end
  end

  always @(*) begin
    myArea_shifted_d_4 = 34'h0;
    if(io_calc_en_i) begin
      myArea_shifted_d_4 = _zz_myArea_shifted_d_4[33:0];
      if(when_itarequantizer_l68_4) begin
        myArea_shifted_d_4 = _zz_myArea_shifted_d_4_1[33:0];
      end
    end
  end

  always @(*) begin
    myArea_shifted_d_5 = 34'h0;
    if(io_calc_en_i) begin
      myArea_shifted_d_5 = _zz_myArea_shifted_d_5[33:0];
      if(when_itarequantizer_l68_5) begin
        myArea_shifted_d_5 = _zz_myArea_shifted_d_5_1[33:0];
      end
    end
  end

  always @(*) begin
    myArea_shifted_d_6 = 34'h0;
    if(io_calc_en_i) begin
      myArea_shifted_d_6 = _zz_myArea_shifted_d_6[33:0];
      if(when_itarequantizer_l68_6) begin
        myArea_shifted_d_6 = _zz_myArea_shifted_d_6_1[33:0];
      end
    end
  end

  always @(*) begin
    myArea_shifted_d_7 = 34'h0;
    if(io_calc_en_i) begin
      myArea_shifted_d_7 = _zz_myArea_shifted_d_7[33:0];
      if(when_itarequantizer_l68_7) begin
        myArea_shifted_d_7 = _zz_myArea_shifted_d_7_1[33:0];
      end
    end
  end

  always @(*) begin
    myArea_shifted_d_8 = 34'h0;
    if(io_calc_en_i) begin
      myArea_shifted_d_8 = _zz_myArea_shifted_d_8[33:0];
      if(when_itarequantizer_l68_8) begin
        myArea_shifted_d_8 = (_zz_myArea_shifted_d_8_1[33:0]);
      end
    end
  end

  always @(*) begin
    myArea_shifted_d_9 = 34'h0;
    if(io_calc_en_i) begin
      myArea_shifted_d_9 = _zz_myArea_shifted_d_9[33:0];
      if(when_itarequantizer_l68_9) begin
        myArea_shifted_d_9 = _zz_myArea_shifted_d_9_1[33:0];
      end
    end
  end

  always @(*) begin
    myArea_shifted_d_10 = 34'h0;
    if(io_calc_en_i) begin
      myArea_shifted_d_10 = _zz_myArea_shifted_d_10[33:0];
      if(when_itarequantizer_l68_10) begin
        myArea_shifted_d_10 = _zz_myArea_shifted_d_10_1[33:0];
      end
    end
  end

  always @(*) begin
    myArea_shifted_d_11 = 34'h0;
    if(io_calc_en_i) begin
      myArea_shifted_d_11 = _zz_myArea_shifted_d_11[33:0];
      if(when_itarequantizer_l68_11) begin
        myArea_shifted_d_11 = _zz_myArea_shifted_d_11_1[33:0];
      end
    end
  end

  always @(*) begin
    myArea_shifted_d_12 = 34'h0;
    if(io_calc_en_i) begin
      myArea_shifted_d_12 = _zz_myArea_shifted_d_12[33:0];
      if(when_itarequantizer_l68_12) begin
        myArea_shifted_d_12 = _zz_myArea_shifted_d_12_1[33:0];
      end
    end
  end

  always @(*) begin
    myArea_shifted_d_13 = 34'h0;
    if(io_calc_en_i) begin
      myArea_shifted_d_13 = _zz_myArea_shifted_d_13[33:0];
      if(when_itarequantizer_l68_13) begin
        myArea_shifted_d_13 = _zz_myArea_shifted_d_13_1[33:0];
      end
    end
  end

  always @(*) begin
    myArea_shifted_d_14 = 34'h0;
    if(io_calc_en_i) begin
      myArea_shifted_d_14 = _zz_myArea_shifted_d_14[33:0];
      if(when_itarequantizer_l68_14) begin
        myArea_shifted_d_14 = _zz_myArea_shifted_d_14_1[33:0];
      end
    end
  end

  always @(*) begin
    myArea_shifted_d_15 = 34'h0;
    if(io_calc_en_i) begin
      myArea_shifted_d_15 = _zz_myArea_shifted_d_15[33:0];
      if(when_itarequantizer_l68_15) begin
        myArea_shifted_d_15 = _zz_myArea_shifted_d_15_1[33:0];
      end
    end
  end

  always @(*) begin
    myArea_requant_oup_d_0 = 8'h0;
    if(io_calc_en_q_i) begin
      myArea_requant_oup_d_0 = myArea_shifted_added_0[7 : 0];
      if(when_itarequantizer_l79) begin
        myArea_requant_oup_d_0 = 8'h7f;
      end else begin
        if(when_itarequantizer_l81) begin
          myArea_requant_oup_d_0 = 8'h80;
        end
      end
    end
  end

  always @(*) begin
    myArea_requant_oup_d_1 = 8'h0;
    if(io_calc_en_q_i) begin
      myArea_requant_oup_d_1 = myArea_shifted_added_1[7 : 0];
      if(when_itarequantizer_l79_1) begin
        myArea_requant_oup_d_1 = 8'h7f;
      end else begin
        if(when_itarequantizer_l81_1) begin
          myArea_requant_oup_d_1 = 8'h80;
        end
      end
    end
  end

  always @(*) begin
    myArea_requant_oup_d_2 = 8'h0;
    if(io_calc_en_q_i) begin
      myArea_requant_oup_d_2 = myArea_shifted_added_2[7 : 0];
      if(when_itarequantizer_l79_2) begin
        myArea_requant_oup_d_2 = 8'h7f;
      end else begin
        if(when_itarequantizer_l81_2) begin
          myArea_requant_oup_d_2 = 8'h80;
        end
      end
    end
  end

  always @(*) begin
    myArea_requant_oup_d_3 = 8'h0;
    if(io_calc_en_q_i) begin
      myArea_requant_oup_d_3 = myArea_shifted_added_3[7 : 0];
      if(when_itarequantizer_l79_3) begin
        myArea_requant_oup_d_3 = 8'h7f;
      end else begin
        if(when_itarequantizer_l81_3) begin
          myArea_requant_oup_d_3 = 8'h80;
        end
      end
    end
  end

  always @(*) begin
    myArea_requant_oup_d_4 = 8'h0;
    if(io_calc_en_q_i) begin
      myArea_requant_oup_d_4 = myArea_shifted_added_4[7 : 0];
      if(when_itarequantizer_l79_4) begin
        myArea_requant_oup_d_4 = 8'h7f;
      end else begin
        if(when_itarequantizer_l81_4) begin
          myArea_requant_oup_d_4 = 8'h80;
        end
      end
    end
  end

  always @(*) begin
    myArea_requant_oup_d_5 = 8'h0;
    if(io_calc_en_q_i) begin
      myArea_requant_oup_d_5 = myArea_shifted_added_5[7 : 0];
      if(when_itarequantizer_l79_5) begin
        myArea_requant_oup_d_5 = 8'h7f;
      end else begin
        if(when_itarequantizer_l81_5) begin
          myArea_requant_oup_d_5 = 8'h80;
        end
      end
    end
  end

  always @(*) begin
    myArea_requant_oup_d_6 = 8'h0;
    if(io_calc_en_q_i) begin
      myArea_requant_oup_d_6 = myArea_shifted_added_6[7 : 0];
      if(when_itarequantizer_l79_6) begin
        myArea_requant_oup_d_6 = 8'h7f;
      end else begin
        if(when_itarequantizer_l81_6) begin
          myArea_requant_oup_d_6 = 8'h80;
        end
      end
    end
  end

  always @(*) begin
    myArea_requant_oup_d_7 = 8'h0;
    if(io_calc_en_q_i) begin
      myArea_requant_oup_d_7 = myArea_shifted_added_7[7 : 0];
      if(when_itarequantizer_l79_7) begin
        myArea_requant_oup_d_7 = 8'h7f;
      end else begin
        if(when_itarequantizer_l81_7) begin
          myArea_requant_oup_d_7 = 8'h80;
        end
      end
    end
  end

  always @(*) begin
    myArea_requant_oup_d_8 = 8'h0;
    if(io_calc_en_q_i) begin
      myArea_requant_oup_d_8 = myArea_shifted_added_8[7 : 0];
      if(when_itarequantizer_l79_8) begin
        myArea_requant_oup_d_8 = 8'h7f;
      end else begin
        if(when_itarequantizer_l81_8) begin
          myArea_requant_oup_d_8 = 8'h80;
        end
      end
    end
  end

  always @(*) begin
    myArea_requant_oup_d_9 = 8'h0;
    if(io_calc_en_q_i) begin
      myArea_requant_oup_d_9 = myArea_shifted_added_9[7 : 0];
      if(when_itarequantizer_l79_9) begin
        myArea_requant_oup_d_9 = 8'h7f;
      end else begin
        if(when_itarequantizer_l81_9) begin
          myArea_requant_oup_d_9 = 8'h80;
        end
      end
    end
  end

  always @(*) begin
    myArea_requant_oup_d_10 = 8'h0;
    if(io_calc_en_q_i) begin
      myArea_requant_oup_d_10 = myArea_shifted_added_10[7 : 0];
      if(when_itarequantizer_l79_10) begin
        myArea_requant_oup_d_10 = 8'h7f;
      end else begin
        if(when_itarequantizer_l81_10) begin
          myArea_requant_oup_d_10 = 8'h80;
        end
      end
    end
  end

  always @(*) begin
    myArea_requant_oup_d_11 = 8'h0;
    if(io_calc_en_q_i) begin
      myArea_requant_oup_d_11 = myArea_shifted_added_11[7 : 0];
      if(when_itarequantizer_l79_11) begin
        myArea_requant_oup_d_11 = 8'h7f;
      end else begin
        if(when_itarequantizer_l81_11) begin
          myArea_requant_oup_d_11 = 8'h80;
        end
      end
    end
  end

  always @(*) begin
    myArea_requant_oup_d_12 = 8'h0;
    if(io_calc_en_q_i) begin
      myArea_requant_oup_d_12 = myArea_shifted_added_12[7 : 0];
      if(when_itarequantizer_l79_12) begin
        myArea_requant_oup_d_12 = 8'h7f;
      end else begin
        if(when_itarequantizer_l81_12) begin
          myArea_requant_oup_d_12 = 8'h80;
        end
      end
    end
  end

  always @(*) begin
    myArea_requant_oup_d_13 = 8'h0;
    if(io_calc_en_q_i) begin
      myArea_requant_oup_d_13 = myArea_shifted_added_13[7 : 0];
      if(when_itarequantizer_l79_13) begin
        myArea_requant_oup_d_13 = 8'h7f;
      end else begin
        if(when_itarequantizer_l81_13) begin
          myArea_requant_oup_d_13 = 8'h80;
        end
      end
    end
  end

  always @(*) begin
    myArea_requant_oup_d_14 = 8'h0;
    if(io_calc_en_q_i) begin
      myArea_requant_oup_d_14 = myArea_shifted_added_14[7 : 0];
      if(when_itarequantizer_l79_14) begin
        myArea_requant_oup_d_14 = 8'h7f;
      end else begin
        if(when_itarequantizer_l81_14) begin
          myArea_requant_oup_d_14 = 8'h80;
        end
      end
    end
  end

  always @(*) begin
    myArea_requant_oup_d_15 = 8'h0;
    if(io_calc_en_q_i) begin
      myArea_requant_oup_d_15 = myArea_shifted_added_15[7 : 0];
      if(when_itarequantizer_l79_15) begin
        myArea_requant_oup_d_15 = 8'h7f;
      end else begin
        if(when_itarequantizer_l81_15) begin
          myArea_requant_oup_d_15 = 8'h80;
        end
      end
    end
  end

  assign when_itarequantizer_l57 = (io_mode_i == RequantModeE_Unsigned_1);
  always @(*) begin
    if(when_itarequantizer_l57) begin
      myArea_mult_signed_0 = {1'b0,io_result_i_values_0};
    end else begin
      myArea_mult_signed_0 = {{1{io_result_i_values_0[25]}}, io_result_i_values_0};
    end
  end

  assign _zz_when_itarequantizer_l68 = (io_right_shift_i_value - 8'h01);
  assign _zz_when_itarequantizer_l68_1 = 6'h22;
  assign when_itarequantizer_l68 = ((8'h0 < io_right_shift_i_value) && myArea_product_0[_zz_when_itarequantizer_l68_32]);
  assign when_itarequantizer_l79 = ((! myArea_shifted_added_0[33]) && (|_zz_when_itarequantizer_l79));
  assign when_itarequantizer_l81 = (myArea_shifted_added_0[33] && (! (&_zz_when_itarequantizer_l81)));
  assign when_itarequantizer_l57_1 = (io_mode_i == RequantModeE_Unsigned_1);
  always @(*) begin
    if(when_itarequantizer_l57_1) begin
      myArea_mult_signed_1 = {1'b0,io_result_i_values_1};
    end else begin
      myArea_mult_signed_1 = {{1{io_result_i_values_1[25]}}, io_result_i_values_1};
    end
  end

  assign _zz_when_itarequantizer_l68_2 = (io_right_shift_i_value - 8'h01);
  assign _zz_when_itarequantizer_l68_3 = 6'h22;
  assign when_itarequantizer_l68_1 = ((8'h0 < io_right_shift_i_value) && myArea_product_1[_zz_when_itarequantizer_l68_1_1]);
  assign when_itarequantizer_l79_1 = ((! myArea_shifted_added_1[33]) && (|_zz_when_itarequantizer_l79_1));
  assign when_itarequantizer_l81_1 = (myArea_shifted_added_1[33] && (! (&_zz_when_itarequantizer_l81_1)));
  assign when_itarequantizer_l57_2 = (io_mode_i == RequantModeE_Unsigned_1);
  always @(*) begin
    if(when_itarequantizer_l57_2) begin
      myArea_mult_signed_2 = {1'b0,io_result_i_values_2};
    end else begin
      myArea_mult_signed_2 = {{1{io_result_i_values_2[25]}}, io_result_i_values_2};
    end
  end

  assign _zz_when_itarequantizer_l68_4 = (io_right_shift_i_value - 8'h01);
  assign _zz_when_itarequantizer_l68_5 = 6'h22;
  assign when_itarequantizer_l68_2 = ((8'h0 < io_right_shift_i_value) && myArea_product_2[_zz_when_itarequantizer_l68_2_1]);
  assign when_itarequantizer_l79_2 = ((! myArea_shifted_added_2[33]) && (|_zz_when_itarequantizer_l79_2));
  assign when_itarequantizer_l81_2 = (myArea_shifted_added_2[33] && (! (&_zz_when_itarequantizer_l81_2)));
  assign when_itarequantizer_l57_3 = (io_mode_i == RequantModeE_Unsigned_1);
  always @(*) begin
    if(when_itarequantizer_l57_3) begin
      myArea_mult_signed_3 = {1'b0,io_result_i_values_3};
    end else begin
      myArea_mult_signed_3 = {{1{io_result_i_values_3[25]}}, io_result_i_values_3};
    end
  end

  assign _zz_when_itarequantizer_l68_6 = (io_right_shift_i_value - 8'h01);
  assign _zz_when_itarequantizer_l68_7 = 6'h22;
  assign when_itarequantizer_l68_3 = ((8'h0 < io_right_shift_i_value) && myArea_product_3[_zz_when_itarequantizer_l68_3_1]);
  assign when_itarequantizer_l79_3 = ((! myArea_shifted_added_3[33]) && (|_zz_when_itarequantizer_l79_3));
  assign when_itarequantizer_l81_3 = (myArea_shifted_added_3[33] && (! (&_zz_when_itarequantizer_l81_3)));
  assign when_itarequantizer_l57_4 = (io_mode_i == RequantModeE_Unsigned_1);
  always @(*) begin
    if(when_itarequantizer_l57_4) begin
      myArea_mult_signed_4 = {1'b0,io_result_i_values_4};
    end else begin
      myArea_mult_signed_4 = {{1{io_result_i_values_4[25]}}, io_result_i_values_4};
    end
  end

  assign _zz_when_itarequantizer_l68_8 = (io_right_shift_i_value - 8'h01);
  assign _zz_when_itarequantizer_l68_9 = 6'h22;
  assign when_itarequantizer_l68_4 = ((8'h0 < io_right_shift_i_value) && myArea_product_4[_zz_when_itarequantizer_l68_4_1]);
  assign when_itarequantizer_l79_4 = ((! myArea_shifted_added_4[33]) && (|_zz_when_itarequantizer_l79_4));
  assign when_itarequantizer_l81_4 = (myArea_shifted_added_4[33] && (! (&_zz_when_itarequantizer_l81_4)));
  assign when_itarequantizer_l57_5 = (io_mode_i == RequantModeE_Unsigned_1);
  always @(*) begin
    if(when_itarequantizer_l57_5) begin
      myArea_mult_signed_5 = {1'b0,io_result_i_values_5};
    end else begin
      myArea_mult_signed_5 = {{1{io_result_i_values_5[25]}}, io_result_i_values_5};
    end
  end

  assign _zz_when_itarequantizer_l68_10 = (io_right_shift_i_value - 8'h01);
  assign _zz_when_itarequantizer_l68_11 = 6'h22;
  assign when_itarequantizer_l68_5 = ((8'h0 < io_right_shift_i_value) && myArea_product_5[_zz_when_itarequantizer_l68_5_1]);
  assign when_itarequantizer_l79_5 = ((! myArea_shifted_added_5[33]) && (|_zz_when_itarequantizer_l79_5));
  assign when_itarequantizer_l81_5 = (myArea_shifted_added_5[33] && (! (&_zz_when_itarequantizer_l81_5)));
  assign when_itarequantizer_l57_6 = (io_mode_i == RequantModeE_Unsigned_1);
  always @(*) begin
    if(when_itarequantizer_l57_6) begin
      myArea_mult_signed_6 = {1'b0,io_result_i_values_6};
    end else begin
      myArea_mult_signed_6 = {{1{io_result_i_values_6[25]}}, io_result_i_values_6};
    end
  end

  assign _zz_when_itarequantizer_l68_12 = (io_right_shift_i_value - 8'h01);
  assign _zz_when_itarequantizer_l68_13 = 6'h22;
  assign when_itarequantizer_l68_6 = ((8'h0 < io_right_shift_i_value) && myArea_product_6[_zz_when_itarequantizer_l68_6_1]);
  assign when_itarequantizer_l79_6 = ((! myArea_shifted_added_6[33]) && (|_zz_when_itarequantizer_l79_6));
  assign when_itarequantizer_l81_6 = (myArea_shifted_added_6[33] && (! (&_zz_when_itarequantizer_l81_6)));
  assign when_itarequantizer_l57_7 = (io_mode_i == RequantModeE_Unsigned_1);
  always @(*) begin
    if(when_itarequantizer_l57_7) begin
      myArea_mult_signed_7 = {1'b0,io_result_i_values_7};
    end else begin
      myArea_mult_signed_7 = {{1{io_result_i_values_7[25]}}, io_result_i_values_7};
    end
  end

  assign _zz_when_itarequantizer_l68_14 = (io_right_shift_i_value - 8'h01);
  assign _zz_when_itarequantizer_l68_15 = 6'h22;
  assign when_itarequantizer_l68_7 = ((8'h0 < io_right_shift_i_value) && myArea_product_7[_zz_when_itarequantizer_l68_7_1]);
  assign when_itarequantizer_l79_7 = ((! myArea_shifted_added_7[33]) && (|_zz_when_itarequantizer_l79_7));
  assign when_itarequantizer_l81_7 = (myArea_shifted_added_7[33] && (! (&_zz_when_itarequantizer_l81_7)));
  assign when_itarequantizer_l57_8 = (io_mode_i == RequantModeE_Unsigned_1);
  always @(*) begin
    if(when_itarequantizer_l57_8) begin
      myArea_mult_signed_8 = {1'b0,io_result_i_values_8};
    end else begin
      myArea_mult_signed_8 = {{1{io_result_i_values_8[25]}}, io_result_i_values_8};
    end
  end

  assign _zz_when_itarequantizer_l68_16 = (io_right_shift_i_value - 8'h01);
  assign _zz_when_itarequantizer_l68_17 = 6'h22;
  assign when_itarequantizer_l68_8 = ((8'h0 < io_right_shift_i_value) && myArea_product_8[_zz_when_itarequantizer_l68_8_1]);
  assign when_itarequantizer_l79_8 = ((! myArea_shifted_added_8[33]) && (|_zz_when_itarequantizer_l79_8));
  assign when_itarequantizer_l81_8 = (myArea_shifted_added_8[33] && (! (&_zz_when_itarequantizer_l81_8)));
  assign when_itarequantizer_l57_9 = (io_mode_i == RequantModeE_Unsigned_1);
  always @(*) begin
    if(when_itarequantizer_l57_9) begin
      myArea_mult_signed_9 = {1'b0,io_result_i_values_9};
    end else begin
      myArea_mult_signed_9 = {{1{io_result_i_values_9[25]}}, io_result_i_values_9};
    end
  end

  assign _zz_when_itarequantizer_l68_18 = (io_right_shift_i_value - 8'h01);
  assign _zz_when_itarequantizer_l68_19 = 6'h22;
  assign when_itarequantizer_l68_9 = ((8'h0 < io_right_shift_i_value) && myArea_product_9[_zz_when_itarequantizer_l68_9_1]);
  assign when_itarequantizer_l79_9 = ((! myArea_shifted_added_9[33]) && (|_zz_when_itarequantizer_l79_9));
  assign when_itarequantizer_l81_9 = (myArea_shifted_added_9[33] && (! (&_zz_when_itarequantizer_l81_9)));
  assign when_itarequantizer_l57_10 = (io_mode_i == RequantModeE_Unsigned_1);
  always @(*) begin
    if(when_itarequantizer_l57_10) begin
      myArea_mult_signed_10 = {1'b0,io_result_i_values_10};
    end else begin
      myArea_mult_signed_10 = {{1{io_result_i_values_10[25]}}, io_result_i_values_10};
    end
  end

  assign _zz_when_itarequantizer_l68_20 = (io_right_shift_i_value - 8'h01);
  assign _zz_when_itarequantizer_l68_21 = 6'h22;
  assign when_itarequantizer_l68_10 = ((8'h0 < io_right_shift_i_value) && myArea_product_10[_zz_when_itarequantizer_l68_10_1]);
  assign when_itarequantizer_l79_10 = ((! myArea_shifted_added_10[33]) && (|_zz_when_itarequantizer_l79_10));
  assign when_itarequantizer_l81_10 = (myArea_shifted_added_10[33] && (! (&_zz_when_itarequantizer_l81_10)));
  assign when_itarequantizer_l57_11 = (io_mode_i == RequantModeE_Unsigned_1);
  always @(*) begin
    if(when_itarequantizer_l57_11) begin
      myArea_mult_signed_11 = {1'b0,io_result_i_values_11};
    end else begin
      myArea_mult_signed_11 = {{1{io_result_i_values_11[25]}}, io_result_i_values_11};
    end
  end

  assign _zz_when_itarequantizer_l68_22 = (io_right_shift_i_value - 8'h01);
  assign _zz_when_itarequantizer_l68_23 = 6'h22;
  assign when_itarequantizer_l68_11 = ((8'h0 < io_right_shift_i_value) && myArea_product_11[_zz_when_itarequantizer_l68_11_1]);
  assign when_itarequantizer_l79_11 = ((! myArea_shifted_added_11[33]) && (|_zz_when_itarequantizer_l79_11));
  assign when_itarequantizer_l81_11 = (myArea_shifted_added_11[33] && (! (&_zz_when_itarequantizer_l81_11)));
  assign when_itarequantizer_l57_12 = (io_mode_i == RequantModeE_Unsigned_1);
  always @(*) begin
    if(when_itarequantizer_l57_12) begin
      myArea_mult_signed_12 = {1'b0,io_result_i_values_12};
    end else begin
      myArea_mult_signed_12 = {{1{io_result_i_values_12[25]}}, io_result_i_values_12};
    end
  end

  assign _zz_when_itarequantizer_l68_24 = (io_right_shift_i_value - 8'h01);
  assign _zz_when_itarequantizer_l68_25 = 6'h22;
  assign when_itarequantizer_l68_12 = ((8'h0 < io_right_shift_i_value) && myArea_product_12[_zz_when_itarequantizer_l68_12_1]);
  assign when_itarequantizer_l79_12 = ((! myArea_shifted_added_12[33]) && (|_zz_when_itarequantizer_l79_12));
  assign when_itarequantizer_l81_12 = (myArea_shifted_added_12[33] && (! (&_zz_when_itarequantizer_l81_12)));
  assign when_itarequantizer_l57_13 = (io_mode_i == RequantModeE_Unsigned_1);
  always @(*) begin
    if(when_itarequantizer_l57_13) begin
      myArea_mult_signed_13 = {1'b0,io_result_i_values_13};
    end else begin
      myArea_mult_signed_13 = {{1{io_result_i_values_13[25]}}, io_result_i_values_13};
    end
  end

  assign _zz_when_itarequantizer_l68_26 = (io_right_shift_i_value - 8'h01);
  assign _zz_when_itarequantizer_l68_27 = 6'h22;
  assign when_itarequantizer_l68_13 = ((8'h0 < io_right_shift_i_value) && myArea_product_13[_zz_when_itarequantizer_l68_13_1]);
  assign when_itarequantizer_l79_13 = ((! myArea_shifted_added_13[33]) && (|_zz_when_itarequantizer_l79_13));
  assign when_itarequantizer_l81_13 = (myArea_shifted_added_13[33] && (! (&_zz_when_itarequantizer_l81_13)));
  assign when_itarequantizer_l57_14 = (io_mode_i == RequantModeE_Unsigned_1);
  always @(*) begin
    if(when_itarequantizer_l57_14) begin
      myArea_mult_signed_14 = {1'b0,io_result_i_values_14};
    end else begin
      myArea_mult_signed_14 = {{1{io_result_i_values_14[25]}}, io_result_i_values_14};
    end
  end

  assign _zz_when_itarequantizer_l68_28 = (io_right_shift_i_value - 8'h01);
  assign _zz_when_itarequantizer_l68_29 = 6'h22;
  assign when_itarequantizer_l68_14 = ((8'h0 < io_right_shift_i_value) && myArea_product_14[_zz_when_itarequantizer_l68_14_1]);
  assign when_itarequantizer_l79_14 = ((! myArea_shifted_added_14[33]) && (|_zz_when_itarequantizer_l79_14));
  assign when_itarequantizer_l81_14 = (myArea_shifted_added_14[33] && (! (&_zz_when_itarequantizer_l81_14)));
  assign when_itarequantizer_l57_15 = (io_mode_i == RequantModeE_Unsigned_1);
  always @(*) begin
    if(when_itarequantizer_l57_15) begin
      myArea_mult_signed_15 = {1'b0,io_result_i_values_15};
    end else begin
      myArea_mult_signed_15 = {{1{io_result_i_values_15[25]}}, io_result_i_values_15};
    end
  end

  assign _zz_when_itarequantizer_l68_30 = (io_right_shift_i_value - 8'h01);
  assign _zz_when_itarequantizer_l68_31 = 6'h22;
  assign when_itarequantizer_l68_15 = ((8'h0 < io_right_shift_i_value) && myArea_product_15[_zz_when_itarequantizer_l68_15_1]);
  assign when_itarequantizer_l79_15 = ((! myArea_shifted_added_15[33]) && (|_zz_when_itarequantizer_l79_15));
  assign when_itarequantizer_l81_15 = (myArea_shifted_added_15[33] && (! (&_zz_when_itarequantizer_l81_15)));
  always @(posedge io_clk_i or negedge io_rst_ni) begin
    if(!io_rst_ni) begin
      myArea_shifted_q_0 <= 34'h0;
      myArea_shifted_q_1 <= 34'h0;
      myArea_shifted_q_2 <= 34'h0;
      myArea_shifted_q_3 <= 34'h0;
      myArea_shifted_q_4 <= 34'h0;
      myArea_shifted_q_5 <= 34'h0;
      myArea_shifted_q_6 <= 34'h0;
      myArea_shifted_q_7 <= 34'h0;
      myArea_shifted_q_8 <= 34'h0;
      myArea_shifted_q_9 <= 34'h0;
      myArea_shifted_q_10 <= 34'h0;
      myArea_shifted_q_11 <= 34'h0;
      myArea_shifted_q_12 <= 34'h0;
      myArea_shifted_q_13 <= 34'h0;
      myArea_shifted_q_14 <= 34'h0;
      myArea_shifted_q_15 <= 34'h0;
      myArea_add_q1_0 <= 8'h0;
      myArea_add_q1_1 <= 8'h0;
      myArea_add_q1_2 <= 8'h0;
      myArea_add_q1_3 <= 8'h0;
      myArea_add_q1_4 <= 8'h0;
      myArea_add_q1_5 <= 8'h0;
      myArea_add_q1_6 <= 8'h0;
      myArea_add_q1_7 <= 8'h0;
      myArea_add_q1_8 <= 8'h0;
      myArea_add_q1_9 <= 8'h0;
      myArea_add_q1_10 <= 8'h0;
      myArea_add_q1_11 <= 8'h0;
      myArea_add_q1_12 <= 8'h0;
      myArea_add_q1_13 <= 8'h0;
      myArea_add_q1_14 <= 8'h0;
      myArea_add_q1_15 <= 8'h0;
      myArea_requant_oup_q_0 <= 8'h0;
      myArea_requant_oup_q_1 <= 8'h0;
      myArea_requant_oup_q_2 <= 8'h0;
      myArea_requant_oup_q_3 <= 8'h0;
      myArea_requant_oup_q_4 <= 8'h0;
      myArea_requant_oup_q_5 <= 8'h0;
      myArea_requant_oup_q_6 <= 8'h0;
      myArea_requant_oup_q_7 <= 8'h0;
      myArea_requant_oup_q_8 <= 8'h0;
      myArea_requant_oup_q_9 <= 8'h0;
      myArea_requant_oup_q_10 <= 8'h0;
      myArea_requant_oup_q_11 <= 8'h0;
      myArea_requant_oup_q_12 <= 8'h0;
      myArea_requant_oup_q_13 <= 8'h0;
      myArea_requant_oup_q_14 <= 8'h0;
      myArea_requant_oup_q_15 <= 8'h0;
    end else begin
      if(io_rst_ni) begin
        myArea_shifted_q_0 <= myArea_shifted_d_0;
        myArea_shifted_q_1 <= myArea_shifted_d_1;
        myArea_shifted_q_2 <= myArea_shifted_d_2;
        myArea_shifted_q_3 <= myArea_shifted_d_3;
        myArea_shifted_q_4 <= myArea_shifted_d_4;
        myArea_shifted_q_5 <= myArea_shifted_d_5;
        myArea_shifted_q_6 <= myArea_shifted_d_6;
        myArea_shifted_q_7 <= myArea_shifted_d_7;
        myArea_shifted_q_8 <= myArea_shifted_d_8;
        myArea_shifted_q_9 <= myArea_shifted_d_9;
        myArea_shifted_q_10 <= myArea_shifted_d_10;
        myArea_shifted_q_11 <= myArea_shifted_d_11;
        myArea_shifted_q_12 <= myArea_shifted_d_12;
        myArea_shifted_q_13 <= myArea_shifted_d_13;
        myArea_shifted_q_14 <= myArea_shifted_d_14;
        myArea_shifted_q_15 <= myArea_shifted_d_15;
        myArea_requant_oup_q_0 <= myArea_requant_oup_d_0;
        myArea_requant_oup_q_1 <= myArea_requant_oup_d_1;
        myArea_requant_oup_q_2 <= myArea_requant_oup_d_2;
        myArea_requant_oup_q_3 <= myArea_requant_oup_d_3;
        myArea_requant_oup_q_4 <= myArea_requant_oup_d_4;
        myArea_requant_oup_q_5 <= myArea_requant_oup_d_5;
        myArea_requant_oup_q_6 <= myArea_requant_oup_d_6;
        myArea_requant_oup_q_7 <= myArea_requant_oup_d_7;
        myArea_requant_oup_q_8 <= myArea_requant_oup_d_8;
        myArea_requant_oup_q_9 <= myArea_requant_oup_d_9;
        myArea_requant_oup_q_10 <= myArea_requant_oup_d_10;
        myArea_requant_oup_q_11 <= myArea_requant_oup_d_11;
        myArea_requant_oup_q_12 <= myArea_requant_oup_d_12;
        myArea_requant_oup_q_13 <= myArea_requant_oup_d_13;
        myArea_requant_oup_q_14 <= myArea_requant_oup_d_14;
        myArea_requant_oup_q_15 <= myArea_requant_oup_d_15;
        myArea_add_q1_0 <= io_add_i_values_0;
        myArea_add_q1_1 <= io_add_i_values_1;
        myArea_add_q1_2 <= io_add_i_values_2;
        myArea_add_q1_3 <= io_add_i_values_3;
        myArea_add_q1_4 <= io_add_i_values_4;
        myArea_add_q1_5 <= io_add_i_values_5;
        myArea_add_q1_6 <= io_add_i_values_6;
        myArea_add_q1_7 <= io_add_i_values_7;
        myArea_add_q1_8 <= io_add_i_values_8;
        myArea_add_q1_9 <= io_add_i_values_9;
        myArea_add_q1_10 <= io_add_i_values_10;
        myArea_add_q1_11 <= io_add_i_values_11;
        myArea_add_q1_12 <= io_add_i_values_12;
        myArea_add_q1_13 <= io_add_i_values_13;
        myArea_add_q1_14 <= io_add_i_values_14;
        myArea_add_q1_15 <= io_add_i_values_15;
      end
    end
  end


endmodule
