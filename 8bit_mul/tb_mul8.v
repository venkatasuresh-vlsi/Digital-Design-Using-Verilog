module tb;
     reg [7:0] a, b;
	 wire [16:0] y;
	 
	 mul8 Venkata_Suresh (a, b, y);
	 
	 initial begin
	     repeat (40) begin
		     a = $random;
			 b = $random;
			 #1;
			 $display(a,,,b,,,y);
			end
		end
	endmodule