module hrs_min_sec #(parameter N = 9, parameter M = 9, parameter O = 6, parameter P = 5)(
     input clk, rst, 
	 output reg [O-1:0] min, sec,
	 output reg [P-1:0] hrs
	 );
	 always @(posedge clk or posedge rst) 
	 begin
	     if (rst) 
		     sec <= 0;
		 else 
		 begin 
		     if (sec == M) 
			     sec <= 0;
			 else 
			     sec <= sec + 1;
		 end
		end
	 always @(posedge clk or posedge rst) 
	 begin
	     if (rst) 
		     min <= 0;
		 else 
		 begin
		     if (sec == M)
			 begin  
			     if (min == M)
				     min <= 0;
				 else 
				     min <= min + 1;
				end
			 else 
			     min <= min;
		 end
		     
	    end 
	 always @(posedge clk or posedge rst) 
	 begin
	     if (rst)
		     hrs <= 0;
		 else 
		 begin
		     if (min == M && sec == M)
			 begin
			     if (hrs == N)
				     hrs <= 0;
				 else 
				     hrs <= hrs + 1;
				end
			 else 
			     hrs <= hrs;
		    end
	    end
	endmodule