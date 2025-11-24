module MMM (
     input [7:0] a, b, c,
	 output [7:0] max, mid, min
	 );
	 wire [7:0] max1, min1, min2;
	 
	 MM inst_1 (a, b, max1, min1);
	 MM inst_2 (max1, c, max, min2);
	 MM inst_3 (min1, min2, mid, min);
	 
	endmodule