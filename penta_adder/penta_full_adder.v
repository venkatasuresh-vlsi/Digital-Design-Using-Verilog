module penta_full_adder (
     input [2:0] a, b, c,
	 output [2:0] sum, 
	 output [1:0] cout
	 );
	 wire [2:0] s0;
	 wire cout1, cout2;
	 
	 penta inst_1 (a, b, s0, cout1);
	 penta inst_2 (s0, c, sum, cout2);
	 
	 assign cout = cout1 + cout2;
	 
	endmodule