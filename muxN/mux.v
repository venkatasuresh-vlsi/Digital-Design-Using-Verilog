module mux (
     input a, b, 
	 input s, 
	 output y
	 );
	 not G1 (s_bar, s);
	 and G2 (y1, a, s_bar);
	 and G3 (y2, b, s);
	 or G4 (y, y1, y2);
	
	endmodule