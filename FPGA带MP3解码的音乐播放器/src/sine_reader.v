module sine_reader(step_size,clk,generate,reset,sample_out,new_sample_ready)
	input [21:0] step_size;
	input clk;
	input reset;
	input generate;
	output [15:0] sample_out;
	output new_sample_ready;