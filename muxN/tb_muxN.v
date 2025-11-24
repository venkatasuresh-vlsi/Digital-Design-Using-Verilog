module tb;
     parameter N = 5;
	 reg [N-1:0] a, b;
	 reg s;
	 wire [N-1:0] y;
	 
	 muxN #(.N(N)) Suresh (a, b, s, y);
	 
	 initial begin
	     repeat (40) begin
		     s = $random;
		     a = $random;
			 b = $random;
			 #1;
			 $display("%b %b  %b  %b",a,b,s,y);
			end
		end
	endmodule