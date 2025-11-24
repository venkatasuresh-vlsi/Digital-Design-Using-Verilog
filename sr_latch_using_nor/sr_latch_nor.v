module sr_latch_using_nor (
     input m, n,
	 output q, q_bar
	 );
	 
	 not G1 (mbar, m);
	 not  G2 (nbar, n);
	 and G3 (s, m, nbar);
	 and G4 (r, n, mbar);
	 nor #1 G5 (q, s, q_bar);
	 nor G6 (q_bar, r, q);
	
	endmodule