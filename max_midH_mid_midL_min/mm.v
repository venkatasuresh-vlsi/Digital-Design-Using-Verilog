module MM (
     input [7:0] a, b,
	 output [7:0] max, min
	 );
	 wire gt;
	 
	 assign gt = (a > b);
	 assign {max, min} = gt ? {a, b} : {b, a};
	 
	endmodule