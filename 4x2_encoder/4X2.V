module msb_4x2_priority_encoder (
     input f, m, y, s,
	 output y0, y1
	 );
	 wire f_bar, m_bar, s_bar, p1, p2;
	 
	 not G1 (f_bar, f);
	 not G2 (m_bar, m);
	 not G3 (s_bar, s);
	 and G4 (p1, m_bar, s_bar);
	 and G5 (p2, f_bar, m_bar, y);
	 or G6 (y0, p1, p2, f);
	 or G7 (y1, f, m);
	 
	endmodule