module tb;
     reg clk, rst, i;
	 wire y;
	
	 OL_111_101 Suresh (clk, rst, i, y);
	
	 initial begin
	     rst = 1; i = 0;
		 #2;
		 rst = 0;
		 i = 1; #10;
		 i = 1; #10;
		 i = 1; #10;
		 i = 0; #10;
		 i = 0; #10;
		 i = 1; #10;
		 i = 0; #10;
		 i = 1; #10;
		 i = 0; #10;
		 i = 0; #10;
		 i = 1; #10;
		 i = 1; #10;
		 i = 1; #10;
		 i = 0; #10;
		 i = 0; #10;
		 i = 1; #10;
		 i = 0; #10;
		 i = 1; #10;
		 i = 1; #10;
		 i = 1; #10;
		 #10;
		 $finish;
		end
	 always #5 clk = !clk;
	 initial clk = 0;
	
	endmodule