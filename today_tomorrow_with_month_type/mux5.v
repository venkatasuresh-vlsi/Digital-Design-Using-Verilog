module mux5 (
     input [4:0] a, b,
	 input sel,
	 output [4:0] y
	 );
	 mux inst_1 (a[0], b[0], sel, y[0]);
	 mux inst_2 (a[1], b[1], sel, y[1]);
	 mux inst_3 (a[2], b[2], sel, y[2]);
	 mux inst_4 (a[3], b[3], sel, y[3]);
	 mux inst_5 (a[4], b[4], sel, y[4]);
	 
	endmodule