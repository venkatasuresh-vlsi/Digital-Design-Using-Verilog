module mux_4x1 (
     input a, b, c, d, 
	 input [1:0] sel,
	 output y
	 );
	 mux inst_1 (a, b, sel[0], y1);
	 mux inst_2 (c, d, sel[0], y2);
	 mux inst_3 (y1, y2, sel[1], y);
	 
	endmodule