/* Machine-generated using Migen */
module shader(
	input [11:0] hcount,
	input [11:0] vcount,
	output [7:0] red,
	output [7:0] green,
	output [7:0] blue
);

wire signed [31:0] x;
wire signed [31:0] y;
wire signed [31:0] u;
wire signed [31:0] v;
wire signed [31:0] u2;
wire signed [31:0] v2;
wire signed [31:0] h;
reg signed [31:0] t;
reg signed [31:0] p;
reg signed [31:0] q;
reg signed [31:0] w0;
reg signed [31:0] R0;
reg signed [31:0] B0;
reg signed [31:0] o;
reg signed [31:0] R1;
reg signed [31:0] B1;
reg signed [31:0] w1;
reg signed [31:0] r;
reg signed [31:0] d;
reg signed [31:0] R2;
reg signed [31:0] B2;
reg signed [31:0] p1;
reg signed [31:0] c;
reg signed [31:0] o1;
reg signed [31:0] o2;
reg signed [31:0] R3;
reg signed [31:0] B3;
reg signed [31:0] c1;
reg signed [31:0] Ro;
reg signed [31:0] Bo;
reg signed [31:0] Rm;
reg signed [31:0] Bm;
wire signed [31:0] Go;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign x = (hcount[11:3] - 3'd5);
assign y = (vcount[11:3] - 4'd10);
assign u = (x - $signed({1'd0, 6'd36}));
assign v = ($signed({1'd0, 5'd18}) - y);
assign u2 = (u * u);
assign v2 = (v * v);
assign h = (u2 + v2);

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	t <= 32'sd0;
	p <= 32'sd0;
	q <= 32'sd0;
	w0 <= 32'sd0;
	R0 <= 32'sd0;
	B0 <= 32'sd0;
	o <= 32'sd0;
	R1 <= 32'sd0;
	B1 <= 32'sd0;
	w1 <= 32'sd0;
	r <= 32'sd0;
	d <= 32'sd0;
	R2 <= 32'sd0;
	B2 <= 32'sd0;
	p1 <= 32'sd0;
	c <= 32'sd0;
	o1 <= 32'sd0;
	o2 <= 32'sd0;
	R3 <= 32'sd0;
	B3 <= 32'sd0;
	c1 <= 32'sd0;
	Ro <= 32'sd0;
	Bo <= 32'sd0;
	if ((h < $signed({1'd0, 8'd200}))) begin
		t <= ($signed({1'd0, 13'd5200}) + (h * $signed({1'd0, 4'd8})));
		p <= ((t * u) >>> 3'd7);
		q <= ((t * v) >>> 3'd7);
		w0 <= ($signed({1'd0, 5'd18}) + (((p * $signed({1'd0, 3'd5})) - (q * $signed({1'd0, 4'd13}))) >>> 4'd9));
		if ((w0 > $signed({1'd0, 1'd0}))) begin
			R0 <= ($signed({1'd0, 9'd420}) + (w0 * w0));
		end else begin
			R0 <= 9'd420;
		end
		B0 <= 10'd520;
		o <= (q + $signed({1'd0, 10'd900}));
		R1 <= ((R0 * o) >>> 4'd12);
		B1 <= ((B0 * o) >>> 4'd12);
		if ((p > (-q))) begin
			w1 <= ((p + q) >>> 2'd3);
			Ro <= (R1 + w1);
			Bo <= (B1 + w1);
		end else begin
			Ro <= R1;
			Bo <= B1;
		end
	end else begin
		if ((v < $signed({1'd0, 1'd0}))) begin
			R2 <= ($signed({1'd0, 8'd150}) + ($signed({1'd0, 2'd2}) * v));
			B2 <= 6'd50;
			p1 <= (h + ($signed({1'd0, 4'd8}) * v2));
			c <= (($signed({1'd0, 8'd240}) * (-v)) - p1);
			if ((c > $signed({1'd0, 11'd1200}))) begin
				o1 <= (($signed({1'd0, 5'd25}) * c) >>> 2'd3);
				o2 <= (((c * ($signed({1'd0, 13'd7840}) - o1)) >>> 4'd9) - $signed({1'd0, 14'd8560}));
				R3 <= ((R2 * o2) >>> 4'd10);
				B3 <= ((B2 * o2) >>> 4'd10);
			end else begin
				R3 <= R2;
				B3 <= B2;
			end
			r <= (c + (u * v));
			d <= (($signed({1'd0, 12'd3200}) - h) - ($signed({1'd0, 2'd2}) * r));
			if ((d > $signed({1'd0, 1'd0}))) begin
				Ro <= (R3 + d);
			end else begin
				Ro <= R3;
			end
			Bo <= B3;
		end else begin
			c1 <= (x + ($signed({1'd0, 3'd4}) * y));
			Ro <= ($signed({1'd0, 8'd132}) + c1);
			Bo <= ($signed({1'd0, 8'd192}) + c1);
		end
	end
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	Rm <= 32'sd0;
	if ((Ro > $signed({1'd0, 8'd255}))) begin
		Rm <= 8'd255;
	end else begin
		Rm <= Ro;
	end
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_2;
// synthesis translate_on
always @(*) begin
	Bm <= 32'sd0;
	if ((Bo > $signed({1'd0, 8'd255}))) begin
		Bm <= 8'd255;
	end else begin
		Bm <= Bo;
	end
// synthesis translate_off
	dummy_d_2 <= dummy_s;
// synthesis translate_on
end
assign Go = (((Rm * $signed({1'd0, 4'd11})) + ($signed({1'd0, 3'd5}) * Bm)) >>> 3'd4);
assign red = Rm[7:0];
assign green = Go[7:0];
assign blue = Bm[7:0];

endmodule


