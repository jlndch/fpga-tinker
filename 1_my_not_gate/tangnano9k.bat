 yosys -p "read_verilog my_not_gate.v; synth_gowin -json my_not_gate.json"
 nextpnr-himbaechel --json my_not_gate.json --write pnr.json --device GW1NR-LV9QN88PC6/I5 --vopt family=GW1N-9C --vopt cst=my_not_gate.cst
 gowin_pack -d GW1N-9C -o pack.fs pnr.json
 openFPGALoader -b tangnano9k pack.fs