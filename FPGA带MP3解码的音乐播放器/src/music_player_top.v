module music_player_top(
	 // Push button interface
	 play_button,  //left_button���͵�ƽ��Ч
	 next_button,  //right_button���͵�ƽ��Ч
	 reset_n,      //enter_butter���͵�ƽ��Ч
	
	 // Clock
	 clk,
    // AC97 interface
    AC97Clk,
    SData_In,
    AC97Reset_n,
    SData_Out,
    Sync,
	 // LEDs
	 play_led,
	 song_led
	);
	
	// System inputs
	input 	clk;
	input 	play_button;
	input 	next_button;
	input    reset_n;

	
	// AC97 interface
	input  AC97Clk;            // AC97 clock (~12 Mhz)
	input  SData_In;           // Serial data in (record data and status)
	output AC97Reset_n;        // Reset signal for AC97 controller/clock
	output SData_Out;          // Serial data out (control and playback data)
	output Sync;               // AC97 sync signal
	
	// Our reset is inverted.
	wire reset = ~reset_n;

	// 4 LED outputs.
	output [1:0] song_led;
	output play_led;
   
//   
//	******************************************************************************
//  	Button processor units
//	******************************************************************************
	
	wire next;
	button_press_unit next_button_press_unit(
	   .clk(clk),
	   .reset(reset),
	   .in(next_button),
	   .out(next)     //�ߵ�ƽ����
	   );
	   
//   
//	******************************************************************************
//  	The music player
//	******************************************************************************
//		   
 	wire	[15:0]codec_sample;	   
	//	wire new_sample;//?
	music_player music_player(
      .clk(clk),
      .reset(reset),
      .play_button(play_button),
      .next_button(next),//(next),
      .new_frame(new_frame), 
      .sample_out(codec_sample),
      .new_sample_generated(),//(new_sample),
  	   .play_led(play_led),
		.song_led(song_led)
   );	 
  // assign leds_out_n = ~note[3:0];

   
//   
//	******************************************************************************
//  	Codec interface
//	******************************************************************************
//	
   	ac97_if ac97_if_01(
		.ClkIn(clk),
		.PCM_Playback_Left (codec_sample),  // play data
		.PCM_Playback_Right(codec_sample), // play data
		.PCM_Record_Left(),
		.PCM_Record_Right(),
		.New_Frame(new_frame),          // Asserted each sample
		.AC97Reset_n(AC97Reset_n),
		.AC97Clk(AC97Clk),
		.Sync(Sync),
		.SData_Out(SData_Out),
		.SData_In(SData_In)
		);
   



   endmodule