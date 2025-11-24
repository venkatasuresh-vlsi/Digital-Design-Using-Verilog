module tb;
     reg [2:0] a, b, c;
	 wire [2:0] sum;
	 wire [1:0]cout;
	 
	 penta_full_adder Venkata_Suresh (a, b, c, sum, cout);
	 
	 initial begin
	     repeat (40) begin
		      a = $urandom_range(0, 4);
		      b = $urandom_range(0, 4);
		      c = $urandom_range(0, 4);
			  #1;
			  $display(a,,,b,,,c,,,cout,,,sum);
			end
		end
	endmodule