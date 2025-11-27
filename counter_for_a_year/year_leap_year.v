module year_leap_year (
     input clk, rst, leap,
	 output reg [4:0] day, hrs,
	 output reg [5:0] min, sec
	 );
	 
	 enum {jan, feb, mar, apr, may, june, july, aug, sep, oct, nov, dec} month;
	 
	 always @(posedge clk or posedge rst) begin
	     if (rst) sec <= 0;
		 else begin
		     if (sec == 59) sec <= 0;
			 else sec <= sec + 1;
			end
		end
	 always @(posedge clk or posedge rst) begin
	     if (rst) min <= 0;
		 else begin
		     if (sec == 59) begin
			     if (min == 59) min <= 0;
				 else min <= min + 1;
				end
			 else min <= min;
			end
		end
	 always @(posedge clk or posedge rst) begin
	     if (rst) hrs <= 0;
		 else begin
		     if (min == 59 && sec == 59) begin
			     if (hrs == 23) hrs <= 0;
				 else hrs <= hrs + 1;
				end
			 else hrs <= hrs;
			end
		end
	 always @(posedge clk or posedge rst) begin
	     if (rst) month <= jan;
		 else begin
		     case (month)
			     jan : begin
				     if (day == 31 && hrs == 23 && min == 59 && sec == 59) month <= feb;
					 else month <= jan;
					end
			     feb : begin 
                     if ((day == (leap ? 29 : 28)) && hrs == 23 && min == 59 && sec == 59) month <= mar;
					 else month <= feb;
					end
			     mar : begin 
				     if (day == 31 && hrs == 23 && min == 59 && sec == 59) month <= apr;
					 else month <= mar;
					end 
			     apr : begin 
				     if (day == 30 && hrs == 23 && min == 59 && sec == 59) month <= may; 
					 else month <= apr;
					end
			     may : begin 
				     if(day == 31 && hrs == 23 && min == 59 && sec == 59) month <= june;
					 else month <= may;
					end
			     june : begin 
				     if(day == 30 && hrs == 23 && min == 59 && sec == 59) month <= july;
					 else month <= june;
					end
			     july : begin 
				     if (day == 31 && hrs == 23 && min == 59 && sec == 59) month <= aug;
					 else month <= july;
					end
			     aug : begin
				     if (day == 31 && hrs == 23 && min == 59 && sec == 59) month <= sep;
					 else month <= aug;
					end
			     sep : begin 
				     if (day == 30 && hrs == 23 && min == 59 && sec == 59) month <= oct;
					 else month <= sep;
					end
			     oct : begin
				     if (day == 31 && hrs == 23 && min == 59 && sec == 59) month <= nov;
					 else month <= oct;
					end
			     nov : begin
				     if (day == 30 && hrs == 23 && min == 59 && sec == 59) month <= dec;
					 else month <= nov;
					end
			     dec : begin 
				     if (day == 31 && hrs == 23 && min == 59 && sec == 59) month <= jan;
					 else month <= dec;
					end
				endcase
			end			
		end
	 always @(posedge clk or posedge rst) begin
         if (rst) day <= 1;
         else begin
        case (month)
            jan, mar, may, july, aug, oct, dec: begin
                if (day == 31 && hrs == 23 && min == 59 && sec == 59)
                    day <= 1;
                else if (hrs == 23 && min == 59 && sec == 59)
                    day <= day + 1;
            end
            apr, june, sep, nov: begin
                if (day == 30 && hrs == 23 && min == 59 && sec == 59)
                    day <= 1;
                else if (hrs == 23 && min == 59 && sec == 59)
                    day <= day + 1;
            end
            feb: begin
                if ((day == (leap ? 29 : 28)) && hrs == 23 && min == 59 && sec == 59)
                    day <= 1;
                else if (hrs == 23 && min == 59 && sec == 59)
                    day <= day + 1;
            end
		endcase
	 end
	 end
	endmodule