	#!/usr/bin/env bash
	# How to get it working on any PC in about 8 bash commands:
	
	```console
	$ sudo docker pull benipoo/yosys:latest
	$ sudo docker run --name yosys -it --rm -v HOME_DIRECTORY:/yosys/docker-stuff \benipoo/yosys:latest
	$ source ./environment
	$ apt install npm -y && git clone https://github.com/nturley/netlistsvg
	$ cd netlistsvg
	$ npm install && npm install -g . && npm install elkjs --force
	$ cd examples
	```
	# Heres a sample NAND-optimized circuit output script. The netlistsvg command outputs an svg schematic image.
	yosys -p 'synth -auto-top ; abc -g cmos2,-NOR; write_verilog output.v' carry4bits.v carry4whole.v -p 'write_json answer.json'
	netlistsvg answer.json
	
	
	
