module led(led1,led2,led3,clk, high,med,low);
input clk;
input [3:0] high,med,low;
output led1,led2,led3;
reg led1,led2,led3;
always@(posedge clk)
begin
if({high,med,low}=='b000000000011)
   begin  led3 <= 0;led2 <= 1;led1 <= 1;end
	
  if({high,med,low}=='b000000000101)
  begin  led3 <= 1;led2 <= 0;led1 <= 1;end
 
 if({high,med,low}=='b000000000110)
  begin  led3 <= 1;led2 <= 1;led1 <= 0;end

 if({high,med,low}=='b000000000111)
  begin  led3 <= 1;led2 <= 1;led1 <= 1;end

 if({high,med,low}=='b000000010000)
  begin  led3 <= 0;led2 <= 1;led1 <= 0;end
 if({high,med,low}=='b000000100000)
 begin  led3 <= 1;led2 <= 0;led1 <= 0;end;
 
 if({high,med,low}=='b000000110000)
  begin  led3 <= 1;led2 <= 1;led1 <= 0;end
 if({high,med,low}=='b000001010000)
 begin  led3 <= 0;led2 <= 1;led1 <= 0;end
 if({high,med,low}=='b000001100000)
  begin  led3 <= 0;led2 <= 1;led1 <= 1;end
 if({high,med,low}=='b000001110000)
  begin  led3 <= 1;led2 <= 1;led1 <= 0;end
  if({high,med,low}=='b000100000000)
  begin  led3 <= 0;led2 <= 1;led1 <= 1;end
  if({high,med,low}=='b000000000000)
  begin  led3 <= 0;led2 <= 0;led1 <= 0;end
 end
endmodule


