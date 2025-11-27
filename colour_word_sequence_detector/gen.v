module tb;

    integer i;
	
	initial begin
	     for (i = 65; i<=90; i= i + 1) begin
		     $display ("parameter %s = %0d;", i, i);
			end
		end
	endmodule