module TEN (
     input a, b, c, d, e, f, g, h, i, j,
	 output sum, cout0, cout1, cout2
	 );
	 wire s0, c0, c1, c2, c3, c4, c5;
	 
	 NINE inst_1 (a, b, c, d, e, f, g, h, i, s0, c0, c1, c2);
	 half_adder inst_2 (s0, j, sum, c3);
	 half_adder inst_3 (c0, c3, cout0, c4);
	 half_adder inst_4 (c1, c4, cout1, c5);
	 half_adder inst_5 (c2, c5, cout2, unused);
	 
	endmodule