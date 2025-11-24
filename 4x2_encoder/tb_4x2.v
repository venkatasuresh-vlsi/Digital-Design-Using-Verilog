module tb_msb_4x2_priority_encoder;
     reg f, m, y, s;
	 wire y0, y1;
	 
	 msb_4x2_priority_encoder Venkata_Suresh (f, m, y, s, y0, y1);
	 
	 initial begin
	     $monitor("Time=%0t | %b | %b",$time, {f, m, y, s}, {y1, y0});
		     repeat (30) begin
			     {f, m, y, s} = $random;
				 #1;
				end
				 {f, m, y, s} = 4'b0000; #10;
			$finish;
		end
	endmodule