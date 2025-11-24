module tb;
     reg [15:0] a;
	 wire [3:0] y;
	 
	 find_101_non_overlap Suresh (
	     .a(a),
		 .y(y)
		 );
	
	 initial begin
	     repeat (40) begin
		     a = $random;
			 #1;
			 $display("%b %d", a, y);
			end
		 a = 16'b1010101010101010;
			 #1;
			 $display("%b %d", a, y);
		end
	endmodule