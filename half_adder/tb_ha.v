module tb_half_adder;
     reg a, b;
	 wire sum, cout;
	 
	 integer i;
	 
	 half_adder Venkata_Suresh (a, b, sum, cout);
		 
	 initial begin
	     $monitor("Time=%0t | a=%b | b=%b | sum=%b | cout=%b", $time, a, b, sum, cout);
		     for (i = 0; i < 4; i = i + 1) begin
			     {a, b} = i;
				 #1;
				end
			$finish;
		end
	endmodule