//
//  music_player module
//  26-Jan-2007 David Black-Schaffer
//
//  This music_player module connects up the MCU, song_reader, note_player, and codec_conditioner.
//  It provides an output that indicates a new sample (new_sample_generated) which will be used
//  in lab 5.
//

module music_player(
   clk,
   reset,
   play_button,//低电平有效
   next_button,
   new_frame, 
   sample_out,
   new_sample_generated,
	play_led,
	song_led

   );
   
// The BEAT_COUNT is parameterized so you can reduce this in simulation.
// If you reduce this to 100 your simulation will be 10x faster.
   parameter BEAT_COUNT = 1000;
   

//   
//	******************************************************************************
//  	Inputs and Outputs
//	******************************************************************************
//	

   input clk;
   input reset;

	// Our debounced and one-pulsed button inputs.
   input play_button;
   input next_button;

	// The raw new_frame signal from the ac97_if codec.
   input new_frame;

	// This output must go high for one cycle when a new sample is generated.
   output new_sample_generated;

	// Our final output sample to the codec. This needs to be synced to new_frame.
   output [15:0] sample_out;

	//
   //播放指示，曲目指示
   output play_led;
	output[1:0]song_led;
   
//   
//	******************************************************************************
//  	Master Control Unit（主控制器）
//	******************************************************************************
//	The reset_player output from the MCU is run only to the song_reader because we
//	don't need to reset any state in the note_player. If we do it may make a pop
//	when it resets the output sample.
//	
   
   wire play;
   wire reset_player;
   wire [1:0] current_song;
   wire song_done;
	//wire [1:0] mcu_state;
   mcu mcu(
      .clk(clk),
      .reset(reset),
      .play_button(play_button),
      .next_button(next_button),
      .play(play),
      .reset_play(reset_player),
      .song(current_song),
//测试时mcu模块时，可将下一行注释符去掉，下面第二行加上注释符。如有按键正常，初步认为mcu正常。		
	// .song_done(1'b0)
      .song_done(song_done)
      );
   assign play_led=~play;
	assign song_led= ~current_song;
//	
//	******************************************************************************
//  	Song Reader
//	******************************************************************************
//	   
   wire [5:0] note_to_play;
   wire [5:0] duration_for_note;
   wire new_note;
   wire note_done;
	//wire [2:0] song_reader_state;
   song_reader song_reader(
      .clk(clk),
      .reset(reset | reset_player),
      .play(play),
      .song(current_song),
      .song_done(song_done),
      .note(note_to_play),
      .duration(duration_for_note),
      .new_note(new_note),
      .note_done(note_done)
   // .current_note_and_song(current_note_and_song)
	//	.state(song_reader_state)
      );

//   
//	******************************************************************************
//  	Note Player
//	******************************************************************************
//	
   wire beat;
   wire generate_next_sample;
   wire [15:0] note_sample;
   wire note_sample_ready;
	//wire [5:0] note_player_state;
   note_player note_player(
      .clk(clk),
      .reset(reset),
      .play_enable(play),
      .note_to_load(note_to_play),
      .duration_to_load(duration_for_note),
      .load_new_note(new_note),
      .done_with_note(note_done),
      .beat(beat),
      .generate_next_sample(generate_next_sample),
      .sample_out(note_sample),
      .new_sample_ready(note_sample_ready)
	//	.state(note_player_state)
      );
      
//   
//	******************************************************************************
//  	Beat Generator
//	******************************************************************************
//	By default this will divide the generate_next_sample signal (48kHz from the 
//	codec's new_frame input) down by 1000, to 48Hz. If you change the BEAT_COUNT
//	parameter when instantiating this you can change it for simulation.
//	
   beat_generator beat_generator(
      .clk(clk),
      .reset(reset),
      .en(generate_next_sample),
      .beat(beat)
      );
    
//	
//	******************************************************************************
//  	Codec Conditioner
//	******************************************************************************
//	
    wire new_sample_generated = generate_next_sample;
    codec_conditioner codec_conditioner(
       .clk(clk),
       .reset(reset),
       .new_sample_in(note_sample),
       .latch_new_sample_in(note_sample_ready),
       .generate_next_sample(generate_next_sample),
       .new_frame(new_frame),
       .valid_sample(sample_out)
       );
    
 
endmodule


