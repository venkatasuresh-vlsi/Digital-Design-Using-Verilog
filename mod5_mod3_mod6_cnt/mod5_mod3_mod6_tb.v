module tb;
     reg clk, rst;
	 wire [2:0] cnt;
	 
	 mod5_mod3_mod6 Suresh (clk, rst, cnt);
	 
	 initial begin
	     rst = 1; #5;
		 rst = 0;
		 #300;
		 $finish;
		end
	
	 initial clk = 0;
	 always #5 clk = !clk;
	 
	endmodule