module tb;

   integer i;
   
   initial begin
         for (i = 31; i >=2; i = i - 1) 
		     $display("assign r[%0d] = I[%0d:%0d] == 3'b111;", i, i, i-2); 
		 for (i = 29; i >=2; i = i - 1) 
			 $display("assign n[%0d] = (n[%0d] | n[%0d]) ? 0 : r[%0d];", i, i+2, i+1, i);
		 for (i = 31; i >=2; i = i - 1) 
		     $display("n[%0d] + ", i);
		end	 
	endmodule