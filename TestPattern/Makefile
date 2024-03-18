YOSYS=yosys
NEXTPNR=nextpnr-ecp5
ECPPACK=ecppack

.PHONY: all clean prog

all: colorlight_i9.bit

clean:
	rm -f top.ys top.json colorlight_i9.config colorlight_i9.bit

prog: colorlight_i9.bit
	openFPGALoader -b colorlight-i9 -f colorlight_i9.bit

top.ys: top.v llhdmi.v vgatestsrc.v TMDS_encoder.v clock.v OBUFDS.v
	rm -f top.ys
	echo read_verilog top.v >> top.ys
	echo read_verilog llhdmi.v >> top.ys
	echo read_verilog vgatestsrc.v >> top.ys
	echo read_verilog TMDS_encoder.v >> top.ys
	echo read_verilog clock.v >> top.ys
	echo read_verilog OBUFDS.v >> top.ys
	echo "hierarchy -top top" >> top.ys
	echo "synth_ecp5 -json top.json" >> top.ys

top.json: top.ys
	$(YOSYS) -q top.ys

colorlight_i9.config: top.json
	$(NEXTPNR) --45k --package CABGA381 --json top.json --lpf colorlight_i5.lpf --textcfg colorlight_i9.config

colorlight_i9.bit: colorlight_i9.config
	$(ECPPACK) --input colorlight_i9.config --bit colorlight_i9.bit
