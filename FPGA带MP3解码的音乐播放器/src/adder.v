module adder(a,b,s);
	parameter N=1;
	input [N-1:0] a;
	input [N-1:0] b;
	output [N:0] s;
	integer i;
	reg [N-1:0] s;
	reg [N:0] c;
	assign s[n]=c[N];
	always@(a or b)
		begin
			c[0]=0;
			for(i=0;i<=N-1;i=i+1)
				begin
					s[i]=a[i]^b[i]^c[i];
					c[i+1]=a[i] && b[i] || a[i] && c[i] || b[i] && c[i];
				end
		end
endmodule
		
