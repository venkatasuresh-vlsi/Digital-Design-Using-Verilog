module FIVE (
     input a, b, c, d, e,
	 output sum, cout0, cout1
	 );
	 wire s0, c0, c1, c2, c3;
	 
	 XTRA_full_adder inst_1 (a, b, c, d, s0, c0, c1);
	 half_adder inst_2 (s0, e, sum, c2);
	 half_adder inst_3 (c0, c2, cout0, c3);
	 half_adder inst_4 (c1, c3, cout1, unused);
	 
	endmodule