module tb;
     reg [7:0] a, b, c, d, e;
	 wire [7:0] max, midH, mid, midL, min;
	 
	 MMMMM Venkata_Suresh (a, b, c, d, e, max, midH, mid, midL, min);
	 
	 initial begin
	     repeat (40) begin
		     a = $random;
		     b = $random;
		     c = $random;
		     d = $random;
		     e = $random;
	         #1;
			 $display(a,,,b,,,c,,,d,,,e,,,max,,,midH,,,mid,,,midL,,,min);
			end
		end
	endmodule