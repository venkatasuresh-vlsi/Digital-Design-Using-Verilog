module tb;
     reg clk, rst;
	 wire [6:0] cnt;
	 
	 mod99_down_counter Suresh (
	     .clk(clk),
		 .rst(rst),
		 .cnt(cnt)
		);
		
	 initial clk = 0;
	 always #5 clk = !clk;
	 
	 initial begin
	     $monitor ("%0t %b %b %d", $time, rst, clk, cnt);
		     rst = 1; #5;
			 rst = 0;
			 #1200;
			$finish;
		end
	endmodule