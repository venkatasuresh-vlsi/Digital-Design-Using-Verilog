module penta (
     input [2:0] a, b, 
	 output [2:0] sum, 
	 output cout
	 );
	 wire [3:0] s0;
	 wire [1:0] s1;
	 
	 assign s0 = a + b;
	 assign cout = (s0 > 3'd4);
	 assign s1 = (s0 - 3'd5);
	 assign sum = cout ? s1 : s0;
	 
	endmodule