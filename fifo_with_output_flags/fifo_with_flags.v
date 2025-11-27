module fifo (
     input clk, rst, wr, rd,
     input [7:0] din,
     output reg [7:0] dout,
     output reg [3:0] wrptr, rdptr,
     output reg FULL, ALMOST_FULL, EMPTY, ALMOST_EMPTY
     );
	 
	 reg [7:0] box[1:10];
	 reg [3:0] cnt;
	 wire [3:0] rdptrplus1;
	 wire [3:0] wrptrplus1;
	 wire splwr, splrd;
	 integer i;

	 enum {emp, par, full} state;

	 assign wrptrplus1 = (wrptr == 10) ? 1 : wrptr + 1;
	 assign rdptrplus1 = (rdptr == 10) ? 1 : rdptr + 1;

	 assign splwr = wr && (wrptrplus1 == rdptr);
	 assign splrd = rd && (rdptrplus1 == wrptr);

	 
	 always @(posedge clk or posedge rst) begin
	     if(rst) for (i = 1; i <= 10; i = i + 1)
		             box[i] <= 8'bxxxx_xxxx;
		 else begin
		     case(state)
			     emp, par : if (wr) box[wrptr] = din;
				endcase
			end
		end
	
	 always @(posedge clk or posedge rst) begin
	     if (rst) state <= emp;
		 else begin
		     case(state)
			     emp : state <= wr ? par : emp;
				 par : case(1)
				       splwr : state <= full;
					   splrd : state <= emp;
					   wr : state <= par;
					   rd : state <= par;
					   endcase
				 full : state <= rd ? par : full;
				endcase;
			end
		end
	
	 always @(posedge clk or posedge rst) begin
	     if (rst) wrptr <= 1;
		 else begin 
		     case(state)
			     emp, par : wrptr <= wr ? wrptrplus1 : wrptr;
				 full : wrptr <= wrptr;
				endcase
			end 
		end
	
	 always @(posedge clk or posedge rst) begin
	     if (rst) rdptr <= 1;
		 else begin
		     case(state)
			     full, par : rdptr <= rd ? rdptrplus1 : rdptr;
				 emp : rdptr <= rdptr;
				endcase
			end
		end
		
	 always @(posedge clk or posedge rst) begin
	     if (rst) dout <= 8'bxxxx_xxxx;
		 else begin
		     case(state)
			     emp : dout <= dout;
				 par, full : if (rd) dout <= box[rdptr];
							 else 
								 dout <= dout;									 
			    endcase
			end
		end	
		
	 always @(posedge clk or posedge rst) begin
	     if (rst)
		     cnt <= 0;
		 else begin
		     case ({wr && !FULL, rd && !EMPTY})
			     2'b10 : cnt <= cnt + 1;   
			     2'b01 : cnt <= cnt - 1;   
			     default : cnt <= cnt;     
		     endcase
		 end
	 end

	 always @(*) begin
		 FULL = 0; ALMOST_FULL = 0; EMPTY = 0; ALMOST_EMPTY = 0;
		 case (1)
		     (cnt == 0): begin
			     EMPTY = 1;
			 end
			 (cnt > 0 && cnt <= 2): begin
			     ALMOST_EMPTY = 1;
			 end
			 (cnt >= 8 && cnt < 10): begin
			     ALMOST_FULL = 1;
			 end
			 (cnt == 10): begin
			     FULL = 1;
			 end
		 endcase
	 end
					 
	endmodule 
		              