module floor_EC_5 (clk, rst, ra, rb, rc, rd, re, floor);
     input clk, rst, ra, rb, rc, rd, re;
     output reg [2:0] floor;
	 
	 enum {A, B, C, D, E} state;	 
	 enum {UP, DOWN} dir;
	 
	 always @(posedge clk or posedge rst) begin
	      if (rst) state <= A;
		  else 
		      case(state)
			      A : case(1)
				     ra : state <= A;
					 rb : state <= B;
					 rc : state <= C;
					 rd : state <= D;
					 re : state <= E;
					endcase 
				 B : if (rb) state <= B;
				     else 
					     case(dir)
						     UP : case(1)
						     rc : state <= C;
							 rd : state <= D;
							 re : state <= E;
							 ra : state <= A;
							 endcase 
						     DOWN : case(1)
						     ra : state <= A;
							 rc : state <= C;
							 rd : state <= D;
							 re : state <= E;
							 endcase 
						endcase 
				 C : if (rc) state <= C;
				     else 
					     case(dir)
						     UP : case(1)
						     rd : state <= D;
							 re : state <= E;
							 rb : state <= B;
							 ra : state <= A;
							 endcase 
						     DOWN : case(1)
						     rb : state <= B;
							 ra : state <= A;
							 rd : state <= D;
							 re : state <= E;
							 endcase 
						endcase
				 D : if (rd) state <= D;
				     else 
					     case(dir)
						     UP : case(1)
						     re : state <= E;
							 rc : state <= C;
							 rb : state <= B;
							 ra : state <= A;
							 endcase 
						     DOWN : case(1)
						     rc : state <= C;
							 rb : state <= B;
							 ra : state <= A;
							 re : state <= E;
							 endcase 
						endcase
				 E : case (1)
				     re : state <= E;
					 rd : state <= D;
					 rc : state <= C;
					 rb : state <= B;
					 ra : state <= A;
					endcase 
				endcase 
		end
	 always @(posedge clk or posedge rst) begin
	     if (rst) dir <= UP;		 
		 else 
		     case(state)
			     A : case(1)
				     ra, rb, rc, rd : dir <= UP;
					 re : dir <= DOWN;
					endcase 
				 B : case(dir)
				         UP : case(1)
						     rb : dir <= UP;
						     rc : dir <= UP;
						     rd : dir <= UP;
						     re : dir <= DOWN;
						     ra : dir <= UP;
					        endcase 
						 DOWN : case (1)
							 rb : dir <= DOWN;
						     ra : dir <= UP;
							 rc : dir <= UP;
							 rd : dir <= UP;
							 re : dir <= DOWN;
							endcase 
						endcase 
				 C : case(dir)
				         UP : case(1)
						     rc : dir <= UP;
						     rd : dir <= UP;
						     re : dir <= DOWN;
						     rb : dir <= DOWN;
						     ra : dir <= UP;
					        endcase 
						 DOWN : case (1)
							 rc : dir <= DOWN;
						     rb : dir <= DOWN;
							 ra : dir <= UP;
							 rd : dir <= UP;
							 re : dir <= DOWN;
							endcase 
						endcase 
				 D : case(dir)
				         UP : case(1)
						     rd : dir <= UP;
						     re : dir <= UP;
						     rc : dir <= DOWN;
						     rb : dir <= DOWN;
						     ra : dir <= UP;
					        endcase 
						 DOWN : case (1)
							 rd : dir <= DOWN;
						     rc : dir <= DOWN;
							 rb : dir <= DOWN;
							 ra : dir <= UP;
							 re : dir <= DOWN;
							endcase 
						endcase 
				 E : case(1)
				     re : dir <= DOWN;
					 rd : dir <= DOWN;
					 rc : dir <= DOWN;
					 rb : dir <= DOWN;
					 ra : dir <= UP;
					endcase 
				endcase 
		end 
     always @(*) begin
		 case(state)
			 A : floor = 0;
			 B : floor = 1;
			 C : floor = 2;
			 D : floor = 3;
			 E : floor = 4;
			 default : floor = 0;
			endcase 
		end 
	endmodule
							 