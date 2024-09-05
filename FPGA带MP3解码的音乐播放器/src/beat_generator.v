
module beat_generator(
   clk,
   reset,
   en,
   beat
   );
      parameter WIDTH = 10;
      parameter STOP = 999;
  
   input clk;
   input reset;
   input en;
   output beat;
   

   
   wire [WIDTH-1:0] count;
   D_FFRE #(WIDTH) counter (
      .clk(clk),
      .en(en),
      .r(reset | (count == STOP)),
      .d(count + 1'b1),
      .q(count)
    );
    
    assign beat = (count == STOP);
    
endmodule