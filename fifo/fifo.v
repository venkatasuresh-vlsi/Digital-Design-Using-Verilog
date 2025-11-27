module fifo (
     input clk, rst, wr, rd,
	 input [15:0] din,
	 output reg [15:0] dout,
	 output reg [3:0] wrptr, rdptr
	 );
	 reg [15:0] box[0:15]; 
	 wire [3:0] rdptrplus1;
	 wire [3:0] wrptrplus1;
	 enum {emp, par, full} state;
	 assign wrptrplus1 = wrptr == 15 ? 0 : wrptr + 1;
	 assign rdptrplus1 = rdptr == 15 ? 0 : rdptr + 1;
	 assign splwr = wr && (wrptrplus1 == rdptr);
	 assign splrd = rd && (rdptrplus1 == wrptr);
	 integer i;
	 
	 always @(posedge clk or posedge rst) begin
	     if(rst) for (i = 0; i <= 15; i = i + 1)
		             box[i] <= 16'bxxxx_xxxx_xxxx_xxxx;
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
	     if (rst) wrptr <= 3;
		 else begin 
		     case(state)
			     emp, par : wrptr <= wr ? wrptrplus1 : wrptr;
				 full : wrptr <= wrptr;
				endcase
			end 
		end
	
	 always @(posedge clk or posedge rst) begin
	     if (rst) rdptr <= 3;
		 else begin
		     case(state)
			     full, par : rdptr <= rd ? rdptrplus1 : rdptr;
				 emp : rdptr <= rdptr;
				endcase
			end
		end
		
	 always @(posedge clk or posedge rst) begin
	     if (rst) dout <= 16'bxxxx_xxxx_xxxx_xxxx;
		 else begin
		     case(state)
			     emp : dout <= dout;
				 par, full : if (rd) dout <= box[rdptr];
							 else 
								 dout <= dout;									 
			    endcase
			end
		end	
	endmodule 
		              