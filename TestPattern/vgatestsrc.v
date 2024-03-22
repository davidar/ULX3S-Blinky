////////////////////////////////////////////////////////////////////////////////
//
// Filename: 	vgatestsrc.v
//
// Project:	vgasim, a Verilator based VGA simulator demonstration
//
// Purpose:	To create a series of colorbars, as a testing pattern.
//
// Creator:	Dan Gisselquist, Ph.D.
//		Gisselquist Technology, LLC
//
////////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2017-2018, Gisselquist Technology, LLC
//
// This program is free software (firmware): you can redistribute it and/or
// modify it under the terms of  the GNU General Public License as published
// by the Free Software Foundation, either version 3 of the License, or (at
// your option) any later version.
//
// This program is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTIBILITY or
// FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
// for more details.
//
// You should have received a copy of the GNU General Public License along
// with this program.  (It's in the $(ROOT)/doc directory.  Run make with no
// target there if the PDF file isn't present.)  If not, see
// <http://www.gnu.org/licenses/> for a copy.
//
// License:	GPL, v3, as defined and found on www.gnu.org,
//		http://www.gnu.org/licenses/gpl.html
//
//
////////////////////////////////////////////////////////////////////////////////
//
//
`default_nettype	none
//
module	vgatestsrc(i_pixclk, i_reset,
		// External connections
		i_width, i_height,
		i_rd, i_newline, i_newframe,
		// i_blink,
		// VGA connections
		o_pixel);
	parameter	BITS_PER_COLOR = 4,
			HW=12, VW=12;
		//HW=13,VW=11;
	localparam	BPC = BITS_PER_COLOR,
			BITS_PER_PIXEL = 3 * BPC,
			BPP = BITS_PER_PIXEL;
	//
	input	wire			i_pixclk, i_reset;
	input	wire	[HW-1:0]	i_width;
	input	wire	[VW-1:0]	i_height;
	//
	input	wire		i_rd, i_newline, i_newframe;//, i_blink;
	//
	output	reg	[(BPP-1):0]	o_pixel;



	wire	[BPP-1:0]	white;//, black, purplish_blue, purple, dark_gray,
	// 			darkest_gray, mid_white, mid_cyan, mid_magenta,
	// 			mid_red, mid_green, mid_blue, mid_yellow;
	// wire	[BPC-1:0]	midv, mid_off;

	// assign	midv    = { 2'b11, {(BPC-2){1'b0}} };
	// assign	mid_off = { (BPC){1'b0} };

	assign	white = {(BPP){1'b1}};
	// assign	black = {(BPP){1'b0}};
	// assign	purplish_blue = {
	// 			{(BPC){1'b0}},
	// 			3'b001,  {(BPC-3){1'b0}},
	// 			2'b01, {(BPC-2){1'b0}} };
	// assign	purple = { {2'b00, {(BPC-2){1'b1}} }, {(BPC){1'b0}},
	// 		{ 1'b0, {(BPC-1){1'b1}} } };

	// assign	dark_gray    = {(3){  { 4'b0010, {(BPC-4){1'b0}} } }};
	// assign	darkest_gray = {(3){  { 4'b0001, {(BPC-4){1'b0}} } }};

	// assign	mid_white   = { midv,    midv,    midv    };
	// assign	mid_yellow  = { midv,    midv,    mid_off };
	// assign	mid_red     = { midv,    mid_off, mid_off };
	// assign	mid_green   = { mid_off, midv,    mid_off };
	// assign	mid_blue    = { mid_off, mid_off, midv    };
	// assign	mid_cyan    = { mid_off, midv,    midv    };
	// assign	mid_magenta = { midv,    mid_off, midv    };

	reg	[HW-1:0]	hpos, hedge;
	reg	[VW-1:0]	ypos, yedge;
	reg	[3:0]		yline, hbar;
	//
	//
	// 1 Border
	// 8 BARS
	// 1 short bar
	// 3 fat bars
	// 1 border
	// 1 gradient bar
	// 1 border
	//
	reg	dline;
	always @(posedge i_pixclk)
	if ((i_reset)||(i_newframe)||(i_newline))
		dline <= 1'b0;
	else if (i_rd)
		dline <= 1'b1;
	
	always @(posedge i_pixclk)
	if ((i_reset)||(i_newframe))
	begin
		ypos  <= 0;
		yline <= 0;
		yedge <= { 4'h0, i_height[(VW-1):4] };
	end else if (i_newline)
	begin
		ypos <= ypos + { {(VW-1){1'h0}}, dline };
		if (ypos >= yedge)
		begin
			yline <= yline + 1'b1;
			yedge <= yedge + { 4'h0, i_height[(VW-1):4] };
		end
	end

	initial	hpos  = 0;
	initial	hbar  = 0;
	initial	hedge = 0; // { 4'h0, i_width[(HW-1):4] };
	always @(posedge i_pixclk)
	if ((i_reset)||(i_newline))
	begin
		hpos <= 0;
		hbar <= 0;
		hedge <= { 4'h0, i_width[(HW-1):4] };
	end else if (i_rd)
	begin
		hpos <= hpos + 1'b1;
		if (hpos >= hedge)
		begin
			hbar <= hbar + 1'b1;
			hedge <= hedge + { 4'h0, i_width[(HW-1):4] };
		end
	end

	// reg	[BPP-1:0]	topbar, midbar, fatbar, gradient, pattern;
	// always @(posedge i_pixclk)
	// case(hbar[3:0])
	// 4'h0: topbar <= black;
	// 4'h1: topbar <= mid_white;
	// 4'h2: topbar <= mid_white;
	// 4'h3: topbar <= mid_yellow;
	// 4'h4: topbar <= mid_yellow;
	// 4'h5: topbar <= mid_cyan;
	// 4'h6: topbar <= mid_cyan;
	// 4'h7: topbar <= mid_green;
	// 4'h8: topbar <= mid_green;
	// 4'h9: topbar <= mid_magenta;
	// 4'ha: topbar <= mid_magenta;
	// 4'hb: topbar <= mid_red;
	// 4'hc: topbar <= mid_red;
	// 4'hd: topbar <= mid_blue;
	// 4'he: topbar <= mid_blue;
	// 4'hf: topbar <= black;
	// endcase

	// always @(posedge i_pixclk)
	// case(hbar[3:0])
	// 4'h0: midbar <= black;
	// 4'h1: midbar <= mid_blue;
	// 4'h2: midbar <= mid_blue;
	// 4'h3: midbar <= black;
	// 4'h4: midbar <= black;
	// 4'h5: midbar <= mid_magenta;
	// 4'h6: midbar <= mid_magenta;
	// 4'h7: midbar <= black;
	// 4'h8: midbar <= black;
	// 4'h9: midbar <= mid_cyan;
	// 4'ha: midbar <= mid_cyan;
	// 4'hb: midbar <= black;
	// 4'hc: midbar <= black;
	// 4'hd: midbar <= mid_white;
	// 4'he: midbar <= mid_white;
	// 4'hf: midbar <= black;
	// endcase

	// always @(posedge i_pixclk)
	// case(hbar[3:0])
	// 4'h0: fatbar <= black;
	// 4'h1: fatbar <= purplish_blue;
	// 4'h2: fatbar <= purplish_blue;
	// 4'h3: fatbar <= purplish_blue;
	// 4'h4: fatbar <=	white;
	// 4'h5: fatbar <= white;
	// 4'h6: fatbar <= white;
	// 4'h7: fatbar <= purple;
	// 4'h8: fatbar <= purple;
	// 4'h9: fatbar <= purple;
	// 4'ha: fatbar <= darkest_gray;
	// 4'hb: fatbar <= black;
	// 4'hc: fatbar <= dark_gray;
	// 4'hd: fatbar <= darkest_gray;
	// 4'he: fatbar <= black;
	// 4'hf: fatbar <= black;
	// endcase

	// reg	[(HW-1):0]	last_width;
	// always @(posedge i_pixclk)
	// 	last_width <= i_width;

	// // Attempt to discover 1/i_width in h_step
	// localparam	FRACB=16;
	// //
	// reg	[(FRACB-1):0]	hfrac, h_step;
	// always @(posedge i_pixclk)
	// if ((i_reset)||(i_newline))
	// 	hfrac <= 0;
	// else if (i_rd)
	// 	hfrac <= hfrac + h_step;

	// always @(posedge i_pixclk)
	// if ((i_reset)||(i_width != last_width))
	// 	h_step <= 1;
	// else if ((i_newline)&&(hfrac > 0))
	// begin
	// 	if (hfrac < {(FRACB){1'b1}} - { {(FRACB-HW){1'b0}}, i_width })
	// 		h_step <= h_step + 1'b1;
	// 	else if (hfrac < { {(FRACB-HW){1'b0}}, i_width })
	// 		h_step <= h_step - 1'b1;
	// end

	// always @(posedge i_pixclk)
	// case(hfrac[FRACB-1:FRACB-4])
	// 4'h0: gradient <= black;
	// // Red
	// 4'h1: gradient <= { i_blink, hfrac[(FRACB-5):(FRACB-3-BPC)], {(2){mid_off}} };
	// 4'h2: gradient <= { 1'b1, hfrac[(FRACB-5):(FRACB-3-BPC)], {(2){mid_off}} };
	// 4'h3: gradient <= black;
	// // Green
	// 4'h4: gradient <= { mid_off, 1'b0, hfrac[(FRACB-5):(FRACB-3-BPC)], mid_off };
	// 4'h5: gradient <= { mid_off, 1'b1, hfrac[(FRACB-5):(FRACB-3-BPC)], mid_off };
	// 4'h6: gradient <= black;
	// // Blue
	// 4'h7: gradient <= { {(2){mid_off}}, 1'b0, hfrac[(FRACB-5):(FRACB-3-BPC)] };
	// 4'h8: gradient <= { {(2){mid_off}}, 1'b1, hfrac[(FRACB-5):(FRACB-3-BPC)] };
	// 4'h9: gradient <= black;
	// // Gray
	// 4'ha: gradient <= {(3){ 2'b00, hfrac[(FRACB-5):(FRACB-2-BPC)] }};
	// 4'hb: gradient <= {(3){ 2'b01, hfrac[(FRACB-5):(FRACB-2-BPC)] }};
	// 4'hc: gradient <= {(3){ 2'b10, hfrac[(FRACB-5):(FRACB-2-BPC)] }};
	// 4'hd: gradient <= {(3){ 2'b11, hfrac[(FRACB-5):(FRACB-2-BPC)] }};
	// 4'he: gradient <= black;
	// //
	// 4'hf: gradient <= black;
	// endcase

	// always @(posedge i_pixclk)
	// case(yline)
	// 4'h0: pattern <= black;
	// 4'h1: pattern <= topbar; //
	// 4'h2: pattern <= topbar;
	// 4'h3: pattern <= topbar;
	// 4'h4: pattern <= topbar;
	// 4'h5: pattern <= topbar;
	// 4'h6: pattern <= topbar;
	// 4'h7: pattern <= topbar;
	// 4'h8: pattern <= topbar;
	// 4'h9: pattern <= midbar; //
	// 4'ha: pattern <= fatbar; //
	// 4'hb: pattern <= fatbar;
	// 4'hc: pattern <= fatbar;
	// 4'hd: pattern <= black;
	// 4'he: pattern <= gradient;
	// 4'hf: pattern <= black;
	// endcase


reg  signed  [15:0] B0 = 16'd0;
reg  signed  [15:0] B1 = 16'd0;
reg  signed  [15:0] B2 = 16'd0;
reg  signed  [15:0] B3 = 16'd0;
reg  signed  [15:0] Bm = 16'd0;
reg  signed  [15:0] Bo = 16'd0;
/* verilator lint_off UNUSEDSIGNAL */
wire signed  [15:0] Go;
/* verilator lint_on UNUSEDSIGNAL */
reg  signed  [15:0] R0 = 16'd0;
reg  signed  [15:0] R1 = 16'd0;
reg  signed  [15:0] R2 = 16'd0;
reg  signed  [15:0] R3 = 16'd0;
reg  signed  [15:0] Rm = 16'd0;
reg  signed  [15:0] Ro = 16'd0;
reg  signed  [15:0] c = 16'd0;
reg  signed  [15:0] c1 = 16'd0;
reg  signed  [15:0] d = 16'd0;
wire signed  [15:0] h;
reg  signed  [15:0] o = 16'd0;
reg  signed  [15:0] o1 = 16'd0;
reg  signed  [15:0] o2 = 16'd0;
reg  signed  [15:0] p = 16'd0;
reg  signed  [15:0] p1 = 16'd0;
reg  signed  [15:0] q = 16'd0;
reg  signed  [15:0] r = 16'd0;
reg  signed  [15:0] t = 16'd0;
wire signed  [15:0] u;
wire signed  [15:0] u2;
wire signed  [15:0] v;
wire signed  [15:0] v2;
reg  signed  [15:0] w0 = 16'd0;
reg  signed  [15:0] w1 = 16'd0;
wire signed  [15:0] x;
wire signed  [15:0] y;


// assign video_colorbars_reset = (~video_colorbars_enable0);
assign x = hpos[10:3];
assign y = ypos[10:3];
assign u = (x - $signed({1'd0, 6'd36}));
assign v = ($signed({1'd0, 5'd18}) - y);
assign u2 = (u * u);
assign v2 = (v * v);
assign h = (u2 + v2);
always @(*) begin
    B0 <= 16'd0;
    B1 <= 16'd0;
    B2 <= 16'd0;
    B3 <= 16'd0;
    Bo <= 16'd0;
    R0 <= 16'd0;
    R1 <= 16'd0;
    R2 <= 16'd0;
    R3 <= 16'd0;
    Ro <= 16'd0;
    c <= 16'd0;
    c1 <= 16'd0;
    d <= 16'd0;
    o <= 16'd0;
    o1 <= 16'd0;
    o2 <= 16'd0;
    p <= 16'd0;
    p1 <= 16'd0;
    q <= 16'd0;
    r <= 16'd0;
    t <= 16'd0;
    w0 <= 16'd0;
    w1 <= 16'd0;
    if ((h < $signed({1'd0, 8'd200}))) begin  // sphere
        t <= ($signed({1'd0, 13'd5200}) + (h * $signed({1'd0, 4'd8})));
        p <= ((t * u) >>> 3'd7);
        q <= ((t * v) >>> 3'd7);

		// bounce light
        w0 <= ($signed({1'd0, 5'd18}) + (((p * $signed({1'd0, 3'd5})) - (q * $signed({1'd0, 4'd13}))) >>> 4'd9));
        if ((w0 > $signed({1'd0, 1'd0}))) begin
            R0 <= ($signed({1'd0, 9'd420}) + (w0 * w0));
        end else begin
            R0 <= 9'd420;
        end
        B0 <= 10'd520;

		// sky light / ambient occlusion
        o <= (q + $signed({1'd0, 10'd900}));
        R1 <= ((R0 * o) >>> 4'd12);
        B1 <= ((B0 * o) >>> 4'd12);

		// sun/key light
        if ((p > (-q))) begin
            w1 <= ((p + q) >>> 2'd3);
            Ro <= (R1 + w1);
            Bo <= (B1 + w1);
        end else begin
            Ro <= R1;
            Bo <= B1;
        end
		Ro <= 0;
		Bo <= 0;
    end else begin
        if ((v < $signed({1'd0, 1'd0}))) begin  // ground
            R2 <= ($signed({1'd0, 8'd150}) + ($signed({1'd0, 2'd2}) * v));
            B2 <= 6'd50;
            p1 <= (h + ($signed({1'd0, 4'd8}) * v2));
            c <= (($signed({1'd0, 8'd240}) * (-v)) - p1);

			// sky light / ambient occlusion
            if ((c > $signed({1'd0, 11'd1200}))) begin
                o1 <= (($signed({1'd0, 5'd25}) * c) >>> 2'd3);
                o2 <= (((c * ($signed({1'd0, 13'd7840}) - o1)) >>> 4'd9) - $signed({1'd0, 14'd8560}));
                R3 <= ((R2 * o2) >>> 4'd10);
                B3 <= ((B2 * o2) >>> 4'd10);
            end else begin
                R3 <= R2;
                B3 <= B2;
            end

			// sun/key light with soft shadow
            r <= (c + (u * v));
            d <= (($signed({1'd0, 12'd3200}) - h) - ($signed({1'd0, 2'd2}) * r));
            if ((d > $signed({1'd0, 1'd0}))) begin
                Ro <= (R3 + d);
            end else begin
                Ro <= R3;
            end
            Bo <= B3;
        end else begin  // sky
            c1 <= (x + ($signed({1'd0, 3'd4}) * y));
            Ro <= ($signed({1'd0, 8'd132}) + c1);
            Bo <= ($signed({1'd0, 8'd192}) + c1);
        end
    end
end
always @(*) begin
    Rm <= 16'd0;
    if ((Ro > $signed({1'd0, 8'd255}))) begin
        Rm <= 8'd255;
    end else begin
        Rm <= Ro;
    end
end
always @(*) begin
    Bm <= 16'd0;
    if ((Bo > $signed({1'd0, 8'd255}))) begin
        Bm <= 8'd255;
    end else begin
        Bm <= Bo;
    end
end
assign Go = (((Rm * $signed({1'd0, 4'd11})) + ($signed({1'd0, 3'd5}) * Bm)) >>> 3'd4);
// assign video_colorbars_source_payload_r = Rm[7:0];
// assign video_colorbars_source_payload_g = Go[7:0];
// assign video_colorbars_source_payload_b = Bm[7:0];

reg	[BPP-1:0]	pattern;
assign pattern = {Rm[7:0], Go[7:0], Bm[7:0]};


	always @(posedge i_pixclk)
	if (i_newline)
		o_pixel <= white;
	else if (i_rd)
	begin
		if (hpos == i_width-12'd3)
			o_pixel <= white;
		else if ((ypos == 0)||(ypos == i_height-1))
			o_pixel <= white;
		else
			o_pixel <= pattern;
	end

endmodule

