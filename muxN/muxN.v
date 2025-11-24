module muxN #(parameter N = 3) (
     input [N-1:0] a, b, 
	 input s,
	 output [N-1:0] y
	 );
	 genvar i;
	 if (N == 1) 
	     assign y[0] = (~s & a[0]) | (s & b[0]);
	 else begin
	     for (i = 0; i < N; i = i + 1) 
		      mux inst (a[i], b[i], s, y[i]);
	 end
	endmodule