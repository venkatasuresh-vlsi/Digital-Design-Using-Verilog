module tb_NINE;
     reg a, b, c, d, e, f, g, h, i;
	 wire sum, cout0, cout1, cout2;
	 
	 NINE Venkata_Suresh (a, b, c, d, e, f, g, h, i, sum, cout0, cout1, cout2);
	 
	 initial begin
	     $monitor("Time=%0t | {a, b, c, d, e, f, g, h, i}=%b | {cout2, cout1, cout0, sum}=%d", 
		 $time, {a, b, c, d, e, f, g, h, i}, {cout2, cout1, cout0, sum});
		      repeat (20) begin
			     {a, b, c, d, e, f, g, h, i} = $random;
				 #1;
				end
			$finish;
		end
	endmodule