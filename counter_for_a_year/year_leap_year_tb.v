module tb;
     reg clk, rst, leap;
	 wire [4:0] day, hrs;
	 wire [5:0] min, sec;
	 
	 year_leap_year Suresh (clk, rst, leap, day, hrs, min, sec);
	 
	 initial begin
	      rst = 1; leap = 0;
		  #10;
		  rst = 0;
		  #321408000;
		  leap = 1;
		  #321408000;
		  $finish;
		end
	 always #5 clk = !clk;
	 initial clk = 0;
	
	endmodule