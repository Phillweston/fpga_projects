module key(clk,rst,key,keyout);
input clk,rst;
input[2:0]key;
output [2:0]keyout;
reg[2:0]key1,key2;
reg[19:0]cnt;
always@(posedge clk or negedge rst)
   begin
       if(!rst)
           begin
              cnt<=0;
              key1<=3'b111;
            end
        else
             begin
                 cnt<=cnt+1;
                  if(cnt==20'hf_ffff)
                        key1<=key;
            end
    end
always@(posedge clk or negedge rst)
     begin
         if(!rst)
                key2<=3'b111;
          else
                key2<=key1;
           end
    assign keyout[0]=(~key1[0])&key2[0];
    assign keyout[1]=(~key1[1])&key2[1];
    assign keyout[2]=(~key1[2])&key2[2];
endmodule

