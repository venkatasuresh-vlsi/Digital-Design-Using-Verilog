module addN #(parameter N = 3)(
     input [N-1:0] a, b, 
	 output [N:0] sum
	 );
	 wire [N-1:0] c;
	 
	 
	 genvar i;
	 
	 if (N == 1)
	     half_adder inst (a[0], b[0], sum[0], sum[1]);
		 
	 else begin
	     for (i = 0; i < N; i = i + 1) begin
		     if (i == 0)
			     half_adder inst_1 (a[0], b[0], sum[0], c[0]);
			 else if (i == N-1)
			     full_adder inst_2 (a[i], b[i], c[i-1], sum[i], sum[i+1]);
			 else 
			     full_adder inst_3 (a[i], b[i], c[i-1], sum[i], c[i]);
			
			end
		end
	endmodule
	
				 