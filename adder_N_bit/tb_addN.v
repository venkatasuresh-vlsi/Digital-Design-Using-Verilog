module tb;
     parameter N = 5;
	 reg [N-1:0] a, b;
	 wire [N:0] sum;
	 
	 addN #(.N(N)) Suresh (a, b, sum);
	 
	 initial begin
	     repeat (40) begin
		     a = $random;
			 b = $random;
			 #1;
			 $display(a,,b,,sum);
			end
		end
	endmodule