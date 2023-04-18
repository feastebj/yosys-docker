# Setup:

```console
$ ./build1.sh
$ source ./environment
$ ./build2.sh
```
## Here's a sample NAND-optimized circuit using the example files from netlistsvg. It outputs an svg image called "out.svg".
```console
$ yosys -p 'synth -auto-top ; abc -g cmos2,-NOR; write_verilog output.v' carry4bits.v carry4whole.v -p 'write_json answer.json'
$ netlistsvg answer.json
```	
## Here is the resulting out.svg:	
	![out](https://user-images.githubusercontent.com/55043306/232677319-31842191-5a68-43c7-96dc-f88eeab7a54c.svg)

