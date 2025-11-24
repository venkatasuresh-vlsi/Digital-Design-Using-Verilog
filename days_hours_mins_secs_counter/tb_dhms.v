module tb;
     reg clk, rst;
	 wire [4:0] day, hrs;
     wire [5:0] min, sec;
	 
	 dhms Suresh (clk, rst, day, hrs, min, sec);
	 
	 initial clk = 0;
	 always #5 clk = !clk; //5 = half 10 = full 
	 
	 initial begin
	     rst = 1;
		 #5;
		 rst = 0;
		 #259200000;
		 $finish;
		end
	 
	endmodule