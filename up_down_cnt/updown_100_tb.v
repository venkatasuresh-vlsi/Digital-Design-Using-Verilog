module tb;
     reg clk, rst;
	 wire [6:0] cnt;
	 
	 up_down_100 Suresh (clk, rst, cnt);
	 
	 initial begin
	     rst = 1;
		 #5;
		 rst = 0;
		 #4020;
		 $finish;
		end
		
	 initial clk = 0;
	 always #5 clk = !clk;
	
	endmodule
	