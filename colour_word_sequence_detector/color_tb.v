module tb;  
     reg clk, rst;
	 reg [6:0] letter;
	 wire HIT;
	 
	 colour Suresh (clk, rst, letter, HIT);
	 
	 `include "ascii.txt"
	 
	 initial begin
	     rst = 1; letter = A;
		 #10;
		 rst = 0;
		 letter = C; #10;
		 letter = O; #10;
		 letter = L; #10;
		 letter = O; #10;
		 letter = U; #10;
		 letter = R; #10;
		 letter = C; #10;
		 letter = O; #10;
		 letter = L; #10;
		 letter = O; #10;
		 letter = R; #10;
		 letter = C; #10;
		 letter = O; #10;
		 letter = C; #10;
		 letter = O; #10;
		 letter = L; #10;
		 letter = O; #10;
		 letter = R; #10;
		 letter = C; #10;
		 $finish;
		end
     always #5 clk = !clk;
	 initial clk = 0;
	 
	endmodule