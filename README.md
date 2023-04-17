# yosys-docker
Getting this to work took hours, now I'm putting it in a docker container so I don't have to deal with the pain again
YOSYS:	
	yosys
	read_verilog carry4bits.v carry4whole.v
	proc
	write_blif -param blif.blif
	# write_blif -param blif.blif tests/simple/fiedler-cooley.v
	dump
	design -reset
	#prep -auto-top -flatten
	#write_blif blif_design_file.blif
ABC:
	abc -g cmos2
	
	
	
	#yosys -p 'synth -auto-top; write_verilog -noattr output.v' carry4bits.v carry4whole.v
	#yosys-abc -c 'read_verilog output.v; strash; write_blif output.blif'








YOSYS:
		yosys
		read_verilog carry4bits.v carry4whole.v
		synth -auto-top
		#proc
		#opt
		#techmap
		#opt
		#abc -g cmos2 -nocleanup
		write_verilog output.v
		#write_verilog -noattr output.v
YOSYS-ABC
		yosys-abc -c 'read_verilog output.v; -g cmos2; write_blif -param blif.blif
		dump
		design -reset
		#abc -g cmos2
		#write_blif blif.blif'
YOSYS:		read_blif blif.blif
		#read_blif -wideports blif.blif
		write_verilog -noattr answer.v
	
	
	
	
	
	
	
	
	
USEFUL CODE SNIPPETS	
	
	yosys-abc -c 'read_verilog output.v; abc -g cmos2; write_blif blif.blif
	
	yosys -p 'proc; opt; show
	
	yosys -p 'prep -auto-top -flatten; write_verilog -noattr output.v' carry4bits.v carry4whole.v
	yosys-abc -c 'read_verilog output.v; strash; write_blif blif.blif'
	yosys -p 'read_blif -wideports blif.blif; write_verilog -noattr answer.v; write_json answer.json'
	netlistsvg answer.json
	
	
	

	
	
	
	SOLUTION!
	##################
	yosys -p 'synth -auto-top ; abc -g cmos2,-NOR; write_verilog output.v' carry4bits.v carry4whole.v -p 'write_json answer.json'
	netlistsvg answer.json
	#####################
	
	
