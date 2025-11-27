module tb;
     reg [31:0] I;
	 reg overlap;
	 wire [3:0] Y;
	 
	 overlap_non_overlap_101 Suresh (I, overlap, Y);
	 
	 initial begin
	     $display("overlap");
	     repeat (20) begin
		     overlap = 1;
			 I = $random;
			 #1;
			 $display("%b %b %d",overlap,I,Y);
			end
			 I = 32'b10101010101010101010101010101010;
			 #1;
			 $display("%b %b %d",overlap,I,Y);
		 $display("------------------------");
	     $display("non overlap");
		 repeat (20) begin
		     overlap = 0;
			 I = $random;
			 #1;
			 $display("%b %b %d",overlap,I,Y);
			end
			 I = 32'b10101010101010101010101010101010;
			 #1;
			 $display("%b %b %d",overlap,I,Y);
			 I = 32'b10110110110110110110110110110110;
			 #1;
			 $display("%b %b %d",overlap,I,Y);
		end
	endmodule
	
