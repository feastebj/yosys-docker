#!/bin/sh
apt install npm -y && git clone https://github.com/nturley/netlistsvg
cd netlistsvg
npm install && npm install -g . && npm install elkjs --force
cd examples
yosys -p 'synth -auto-top ; abc -g cmos2,-NOR; write_verilog output.v' carry4bits.v carry4whole.v -p 'write_json answer.json'
netlistsvg answer.json
