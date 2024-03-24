`default_nettype none

module pattern(
  input i_tmdsclk,
  input i_pixclk,
  output [7:0] red,
  output [7:0] grn,
  output [7:0] blu,
  output o_rd,
	output [9:0] o_TMDS_red,
  output [9:0] o_TMDS_grn,
  output [9:0] o_TMDS_blu
  );

  wire [23:0] pixel;
  assign red= pixel[23:16];
  assign grn= pixel[15:8];
  assign blu= pixel[7:0];

/* verilator lint_off UNUSED */
  wire o_red;
  wire o_grn;
  wire o_blu;
/* verilator lint_on UNUSED */
  wire o_newline, o_newframe;

  // A reset line that goes low after 16 ticks
  reg [2:0] reset_cnt = 0;
  wire reset = ~reset_cnt[2];
  always @(posedge i_pixclk)
    if (reset) reset_cnt <= reset_cnt + 1;


  llhdmi llhdmi_instance(
    .i_tmdsclk(i_tmdsclk), .i_pixclk(i_pixclk),
    .i_reset(reset), .i_red(red), .i_grn(grn), .i_blu(blu),
    .o_rd(o_rd), .o_newline(o_newline), .o_newframe(o_newframe),
    .o_TMDS_red(o_TMDS_red), .o_TMDS_grn(o_TMDS_grn), .o_TMDS_blu(o_TMDS_blu),
    .o_red(o_red), .o_grn(o_grn), .o_blu(o_blu));


  reg	[11:0] hcount, vcount;

  always @(posedge i_pixclk)
  if (reset || o_newframe)
    vcount <= 0;
  else if (o_newline)
    vcount <= vcount + 1'b1;

  always @(posedge i_pixclk)
  if (reset || o_newline)
    hcount <= 0;
  else if (o_rd)
    hcount <= hcount + 1'b1;

  // shader shader_instance(
  //   .hcount(hcount),
  //   .vcount(vcount),
  //   .red(pixel[23:16]),
  //   .green(pixel[15:8]),
  //   .blue(pixel[7:0])
  // );

  // module PanoCore (
  //     input  [11:0] io_pix_x,
  //     input  [10:0] io_pix_y,
  //     output [7:0] io_pixel_out_r,
  //     output [7:0] io_pixel_out_g,
  //     output [7:0] io_pixel_out_b,
  //     input   clk,
  //     input   reset);
  PanoCore PanoCore_instance(
    .io_pix_x(hcount),
    .io_pix_y(480 - vcount - 1),
    .io_pixel_out_r(pixel[23:16]),
    .io_pixel_out_g(pixel[15:8]),
    .io_pixel_out_b(pixel[7:0]),
    .clk(i_pixclk),
    .reset(reset)
  );

endmodule
