`default_nettype none

module top (
	input clk_25mhz,
  output [3:0] gpdi_dp, gpdi_dn,
  output led_o
  );

  // assign led_o = 1'b0;
  blink blink_instance(
      .clk_25mhz(clk_25mhz),
      .led_o(led_o)
  );

  wire clk_25MHz, clk_250MHz;
  clock clock_instance(
      .clkin_25MHz(clk_25mhz),
      .clk_25MHz(clk_25MHz),
      .clk_250MHz(clk_250MHz)
  );

  wire [7:0] red, grn, blu;
  wire [23:0] pixel;
  assign red= pixel[23:16];
  assign grn= pixel[15:8];
  assign blu= pixel[7:0];

  wire o_red;
  wire o_grn;
  wire o_blu;
  wire o_rd, o_newline, o_newframe;

  // A reset line that goes low after 16 ticks
  reg [2:0] reset_cnt = 0;
  wire reset = ~reset_cnt[2];
  always @(posedge clk_25mhz)
    if (reset) reset_cnt <= reset_cnt + 1;


  llhdmi llhdmi_instance(
    .i_tmdsclk(clk_250MHz), .i_pixclk(clk_25MHz),
    .i_reset(reset), .i_red(red), .i_grn(grn), .i_blu(blu),
    .o_rd(o_rd), .o_newline(o_newline), .o_newframe(o_newframe),
    .o_red(o_red), .o_grn(o_grn), .o_blu(o_blu));

  reg	[11:0] hcount, vcount;

  always @(posedge clk_25MHz)
  if (reset || o_newframe)
    vcount <= 0;
  else if (o_newline)
    vcount <= vcount + 1'b1;

  always @(posedge clk_25MHz)
  if (reset || o_newline)
    hcount <= 0;
  else if (o_rd)
    hcount <= hcount + 1'b1;

  shader shader_instance(
    .hcount(hcount),
    .vcount(vcount),
    .red(pixel[23:16]),
    .green(pixel[15:8]),
    .blue(pixel[7:0])
  );

  OBUFDS OBUFDS_red(.I(o_red), .O(gpdi_dp[2]), .OB(gpdi_dn[2]));
  OBUFDS OBUFDS_grn(.I(o_grn), .O(gpdi_dp[1]), .OB(gpdi_dn[1]));
  OBUFDS OBUFDS_blu(.I(o_blu), .O(gpdi_dp[0]), .OB(gpdi_dn[0]));
  OBUFDS OBUFDS_clock(.I(clk_25MHz), .O(gpdi_dp[3]), .OB(gpdi_dn[3]));

endmodule
