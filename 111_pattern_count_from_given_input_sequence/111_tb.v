module tb;
     reg [31:0] I;
	 wire [3:0] Y;
	 
	 non_overlap_111 Suresh(I, Y);
	 
	 initial begin
	     repeat (40) begin
		    I = $random;
			#1;
			$display("%b %d",I,Y);	
         end			
			I = 32'b11111111111111111111111111111111;
			#1;
			$display("%b %d",I,Y);
			
		end
	endmodule


