module dhms (
     input clk, rst, 
	 output reg [4:0] day, hrs,
	 output reg [5:0] min, sec
	 );
	 always @(posedge clk or posedge rst) begin
	     if (rst) 
		     sec <= 0;
		 else 
		 begin 
		     if (sec == 59) 
			     sec <= 0;
			 else  
			     sec <= sec + 1;
		 end
		end
	 always @(posedge clk or posedge rst) begin
	     if (rst) 
		     min <= 0;
		 else 
		 begin
		     if (sec == 59)
			 begin  
			     if (min == 59)
				     min <= 0;
				 else 
				     min <= min + 1;
				end
			 else 
			     min <= min;
		 end
		     
	    end 
	 always @(posedge clk or posedge rst) begin
	     if (rst)
		     hrs <= 0;
		 else 
		 begin
		     if ({min, sec} == {6'd59, 6'd59})
			 begin
			     if (hrs == 23)
				     hrs <= 0;
				 else 
				     hrs <= hrs + 1;
				end
			 else 
			     hrs <= hrs;
		    end
	    end
	 always @(posedge clk or posedge rst) begin
	     if (rst)		 
		     day <= 1;
		 else begin
		     if ({hrs, min, sec} == {5'd23, 6'd59, 6'd59}) begin
			     if (day == 30)
				     day <= 1;
				 else 
				     day <= day + 1;
				end
			 else
     			 day <= day;
			end
		end
	endmodule