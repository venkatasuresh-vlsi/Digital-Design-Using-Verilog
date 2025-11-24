module mux_4x1_5 (
     input [4:0] a, b, c, d, 
	 input [1:0] sel, 
	 output [4:0] y
	 );
	 mux_4x1 inst_1 (a[0], b[0], c[0], d[0], sel, y[0]);
	 mux_4x1 inst_2 (a[1], b[1], c[1], d[1], sel, y[1]);
	 mux_4x1 inst_3 (a[2], b[2], c[2], d[2], sel, y[2]);
	 mux_4x1 inst_4 (a[3], b[3], c[3], d[3], sel, y[3]);
	 mux_4x1 inst_5 (a[4], b[4], c[4], d[4], sel, y[4]);
	 
	endmodule