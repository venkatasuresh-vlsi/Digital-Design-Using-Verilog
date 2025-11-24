module tb;
     parameter N = 9;
	 parameter M = 9;
	 parameter O = 4;
	 parameter P = 4;
	 
     reg clk, rst;
	 wire [O-1:0] min, sec;
	 wire [P-1:0] hrs;
	 
	 hrs_min_sec #(.N(N), .M(M), .O(O), .P(P)) Suresh (clk, rst, min, sec, hrs);
	 
	 initial clk = 0;
	 always #5 clk = !clk; //5 = half 10 = full 
	 
	 initial begin
	     rst = 1;
		 #5;
		 rst = 0;
		 #1296000;
		 $finish;
		end
	 
	endmodule