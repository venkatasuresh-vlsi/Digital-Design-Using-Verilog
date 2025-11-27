module floor_EC_5 (clk, rst, ra, rb, rc, rd, re, floor);
     input clk, rst, ra, rb, rc, rd, re;
     output reg [2:0] floor;	 
	 
	 enum {A, BU, BD, CU, CD, DU, DD, E} state;
	 
	 always @* begin
	     case(state) 
		     A : floor = 0;
			 BU, BD : floor = 1;
			 CU, CD : floor = 2;
			 DU, DD : floor = 3;
			 E : floor = 4;
			 default : floor = 0;
			endcase
		end 
		
	 `ifdef OTPOUG
		 assign a2a = ra;
		 assign a2b = !ra & rb;
		 assign a2c = !ra & !rb & rc;
		 assign a2d = !ra & !rb & !rc & rd;
		 assign a2e = !ra & !rb & !rc & !rd & re;
		 
		 assign bu2a = ra & !rb & !rc & !rd & !re;
		 assign bu2b = rb;
		 assign bu2c = !rb & rc;
		 assign bu2d = !rb & !rc & rd;
		 assign bu2e = !rb & !rc & !rd & re;
		 
		 assign bd2a = ra & !rb;
		 assign bd2b = rb;
		 assign bd2c = !ra & !rb & rc;
		 assign bd2d = !ra & !rb & !rc & rd;
		 assign bd2e = !ra & !rb & !rc & !rd & re;
		 
		 assign cu2a = ra & !rb & !rc & !rd & !re;
		 assign cu2b = rb & !rc & !rd & !re;
		 assign cu2c = rc;
		 assign cu2d = !rc & rd;
		 assign cu2e = !rc & !rd & re;
		 
		 assign cd2a = !rc & !rb & ra;
		 assign cd2b = !rc & rb;
		 assign cd2c = rc;
		 assign cd2d = !rc & !rb & !ra & rd;
		 assign cd2e = !rc & !rb & !ra & !rd & re;
		 
		 assign du2a = !rd & !re & !rc & !rb & ra;
		 assign du2b = !rd & !re & !rc & rb;
		 assign du2c = !rd & !re & rc;
		 assign du2d = rd;
		 assign du2e = !rd & re;
		 
		 assign dd2a = !rd & !rc & !rb & ra;
		 assign dd2b = !rd & !rc & rb;
		 assign dd2c = !rd & rc;
		 assign dd2d = rd;
		 assign dd2e = !rd & !rc & !rb & !ra & re;
		 
		 assign e2a = ra & !rb & !rc & !rd & !re;
		 assign e2b = rb & !rc & !rd & !re;
		 assign e2c = rc & !rd & !re;
		 assign e2d = rd & !re;
		 assign e2e = re;
		 
		 always @(posedge clk or posedge rst) begin
			 if (rst) state <= A;
			 else 
				 case(state) 
					 A : case(1)
						 a2a : state <= A;
						 a2b : state <= BU;
						 a2c : state <= CU;
						 a2d : state <= DU;
						 a2e : state <= E;
						endcase
					 BU : case(1)
						 bu2a : state <= A;
						 bu2b : state <= BU;
						 bu2c : state <= CU;
						 bu2d : state <= DU;
						 bu2e : state <= E;
						endcase
					 BD : case(1)
						 bd2a : state <= A;
						 bd2b : state <= BD;
						 bd2c : state <= CU;
						 bd2d : state <= DU;
						 bd2e : state <= E;
						endcase
					 CU : case(1)
						 cu2a : state <= A;
						 cu2b : state <= BD;
						 cu2c : state <= CU;
						 cu2d : state <= DU;
						 cu2e : state <= E;
						endcase
					 CD : case(1)
						 cd2a : state <= A;
						 cd2b : state <= BD;
						 cd2c : state <= CD;
						 cd2d : state <= DU;
						 cd2e : state <= E;
						endcase
					 DU : case(1)
						 du2a : state <= A;
						 du2b : state <= BD;
						 du2c : state <= CD;
						 du2d : state <= DU;
						 du2e : state <= E;
						endcase
					 DD : case(1)
						 dd2a : state <= A;
						 dd2b : state <= BD;
						 dd2c : state <= CD;
						 dd2d : state <= DD;
						 dd2e : state <= E;
						endcase
					 E : case(1)
						 e2a : state <= A;
						 e2b : state <= BD;
						 e2c : state <= CD;
						 e2d : state <= DD;
						 e2e : state <= E;
						endcase 
					endcase
			end
	 `endif
	
	 `ifdef IMPROVED1
	     always @(posedge clk or posedge rst) begin
		     if (rst) state <= A;
			 else 
			     case(state)
				     A : casex ({ra, rb, rc, rd, re})
					         5'b1xxxx : state <= A;
						     5'b01xxx : state <= BU;
						     5'b001xx : state <= CU;
						     5'b0001x : state <= DU;
						     5'b00001 : state <= E;
						    endcase 
					 BU : casex ({rb, rc, rd, re, ra})
					         5'b1xxxx : state <= BU;
						     5'b01xxx : state <= CU;
						     5'b001xx : state <= DU;
						     5'b0001x : state <= E;
						     5'b00001 : state <= A;
						    endcase 
					 BD : casex ({rb, ra, rc, rd, re})
					         5'b1xxxx : state <= BD;
						     5'b01xxx : state <= A;
						     5'b001xx : state <= CU;
						     5'b0001x : state <= DU;
						     5'b00001 : state <= E;
						    endcase 
					 CU : casex ({rc, rd, re, rb, ra})
					         5'b1xxxx : state <= CU;
						     5'b01xxx : state <= DU;
						     5'b001xx : state <= E;
						     5'b0001x : state <= BD;
						     5'b00001 : state <= A;
						    endcase 
					 CD : casex ({rc, rb, ra, rd, re})
					         5'b1xxxx : state <= CD;
						     5'b01xxx : state <= BD;
						     5'b001xx : state <= A;
						     5'b0001x : state <= DU;
						     5'b00001 : state <= E;
						    endcase 
					 DU : casex ({rd, re, rc, rb, ra})
					         5'b1xxxx : state <= DU;
						     5'b01xxx : state <= E;
						     5'b001xx : state <= CD;
						     5'b0001x : state <= BD;
						     5'b00001 : state <= A;
						    endcase 
					 DD : casex ({rd, rc, rb, ra, re})
					         5'b1xxxx : state <= DD;
						     5'b01xxx : state <= CD;
						     5'b001xx : state <= BD;
						     5'b0001x : state <= A;
						     5'b00001 : state <= E;
						    endcase 
					 E : casex ({re, rd, rc, rb, ra})
					         5'b1xxxx : state <= E;
						     5'b01xxx : state <= DD;
						     5'b001xx : state <= CD;
						     5'b0001x : state <= BD;
						     5'b00001 : state <= A;
						    endcase 
					endcase
			end 
	 `endif
	 
	 `ifdef IMPROVED2	 
	      always @(posedge clk or posedge rst) begin
		     if (rst) state <= A;
			 else 
			     case(state)
				     A : case(1)
					     ra : state <= A;
						 rb : state <= BU;
						 rc : state <= CU;
						 rd : state <= DU;
						 re : state <= E;
						endcase 
					 BU : case(1)
					     rb : state <= BU;
						 rc : state <= CU;
						 rd : state <= DU;
						 re : state <= E;
						 ra : state <= A;
						endcase 
					 BD : case(1)
					     rb : state <= BD;
						 ra : state <= A;
						 rc : state <= CU;
						 rd : state <= DU;
						 re : state <= E;
						endcase 
					 CU : case(1)
					     rc : state <= CU;
						 rd : state <= DU;
						 re : state <= E;
						 rb : state <= BD;
						 ra : state <= A;
						endcase 
					 CD : case(1)
					     rc : state <= CD;
						 rb : state <= BD;
						 ra : state <= A;
						 rd : state <= DU;
						 re : state <= E;
						endcase 
					 DU : case(1)
					     rd : state <= DU;
						 re : state <= E;
						 rc : state <= CD;
						 rb : state <= BD;
						 ra : state <= A;
						endcase 
					 DD : case(1)
					     rd : state <= DD;
						 rc : state <= CD;
						 rb : state <= BD;
						 ra : state <= A;
						 re : state <= E;
						endcase 
					 E : case(1)
					     re : state <= E;
						 rd : state <= DD;
						 rc : state <= CD;
						 rb : state <= BD;
						 ra : state <= A;
						endcase 
					endcase 					
			end
	 `endif
	endmodule