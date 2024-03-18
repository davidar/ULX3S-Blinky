.PHONY: all clean prog

all: colorlight_i9.bit

clean:
	rm -f top.ys top.json colorlight_i9.config colorlight_i9.bit

prog: colorlight_i9.bit
	openFPGALoader -b colorlight-i9 colorlight_i9.bit

top.json: top.v llhdmi.v vgatestsrc.v TMDS_encoder.v clock.v OBUFDS.v blink.v rst_gen.v
	yosys -p "synth_ecp5 -json $@" $^

colorlight_i9.config: top.json
	nextpnr-ecp5 --45k --package CABGA381 --json top.json --lpf colorlight_i5.lpf --textcfg colorlight_i9.config

colorlight_i9.bit: colorlight_i9.config
	ecppack --input colorlight_i9.config --bit colorlight_i9.bit
