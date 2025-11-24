module mux (
     input a, b, sel,
	 output y
	 );
	 
	 not G1 (sel_bar, sel);
	 and G2 (y1, a, sel_bar);
	 and G3 (y2, b, sel);
	 or G4 (y, y1, y2);
	 
	endmodule