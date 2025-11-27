module tb;
     reg clk, rst, start, startNBA;
	 reg [7:0] din;
	 wire dout;
	 
	 piso_br_2 Suresh (clk, rst, start, din, dout);
	 
	 initial clk = 0;
	 always #5 clk = !clk;
	 
	 initial begin
	      rst = 1;
		  start = 0;
		  startNBA = 0;
		  #2;
		  rst = 0;
		end
	 
	 initial begin
	     repeat (5) @(posedge clk);
	     start = 1; din = 8'b1010_1010;
		 @(posedge clk); start = 0;
		 repeat (55) @(posedge clk);
		 
		 repeat (5) @(posedge clk);
	     start = 1; din = 8'b0101_0101;
		 @(posedge clk); start = 0;
		 repeat (55) @(posedge clk);
		 $finish;
		end
	endmodule