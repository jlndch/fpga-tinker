 yosys -p "read_verilog bin_to_seven_segment.v; synth_gowin -json bin_to_seven_segment.json"
 nextpnr-himbaechel --json bin_to_seven_segment.json --write pnr.json --device GW1NR-LV9QN88PC6/I5 --vopt family=GW1N-9C --vopt cst=bin_to_seven_segment.cst
 gowin_pack -d GW1N-9C -o pack.fs pnr.json
 openFPGALoader -b tangnano9k pack.fs