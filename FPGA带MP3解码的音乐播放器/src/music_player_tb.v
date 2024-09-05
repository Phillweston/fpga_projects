`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: zju
// Engineer:qmj
////////////////////////////////////////////////////////////////////////////////

module music_player_tb_v;
   parameter delay=10; 
	// Inputs
	reg clk;
	reg reset;
	reg play_button;
	reg next_button;
	reg new_frame;

	// Outputs
	wire [15:0] sample_out;
	wire new_sample_generated;
	wire play_led;
	wire [1:0] song_led;

	// Instantiate the Unit Under Test (UUT)
	music_player uut (
		.clk(clk), 
		.reset(reset), 
		.play_button(play_button), 
		.next_button(next_button), 
		.new_frame(new_frame), 
		.sample_out(sample_out), 
		.new_sample_generated(new_sample_generated), 
		.play_led(play_led), 
		.song_led(song_led)
	);

	initial 
	  begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		play_button = 1;
		next_button = 0;
		new_frame = 0;

		// 
		#(delay+1)  reset=0;
		#(delay)  play_button = 0;
		#(delay)  play_button = 1;
		repeat (200_000)
		 begin
			#(delay*5)  new_frame = 1;
			#(delay) 	new_frame = 0;
		 end
	  #(delay*10) $stop;
         
    end
	
	//clock
  always 		#(delay/2) clk=~clk;
endmodule

