module hw35(
     input  [7:0] i1,i2,i3,i4,i5,i6,i7,i8,
     output [7:0] y1,y2,y3,y4,y5,y6,y7,y8
     );
     `include "capital_letters.txt"

     wire [7:0] temp [7:0];
     reg [7:0] out [7:0];
     integer i, j;

     assign temp[0] = (i1==A||i1==E||i1==I||i1==O||i1==U) ? 8'd0 : i1;
     assign temp[1] = (i2==A||i2==E||i2==I||i2==O||i2==U) ? 8'd0 : i2;
     assign temp[2] = (i3==A||i3==E||i3==I||i3==O||i3==U) ? 8'd0 : i3;
     assign temp[3] = (i4==A||i4==E||i4==I||i4==O||i4==U) ? 8'd0 : i4;
     assign temp[4] = (i5==A||i5==E||i5==I||i5==O||i5==U) ? 8'd0 : i5;
     assign temp[5] = (i6==A||i6==E||i6==I||i6==O||i6==U) ? 8'd0 : i6;
     assign temp[6] = (i7==A||i7==E||i7==I||i7==O||i7==U) ? 8'd0 : i7;
     assign temp[7] = (i8==A||i8==E||i8==I||i8==O||i8==U) ? 8'd0 : i8;

    always @* begin
        j = 0;
        for (i = 0; i < 8; i = i + 1)
            if (temp[i] != 8'd0) begin
                out[j] = temp[i];
                j = j + 1;
            end
        for (; j < 8; j = j + 1)
            out[j] = 8'd95; 
    end

    assign y1 = out[0];
    assign y2 = out[1];
    assign y3 = out[2];
    assign y4 = out[3];
    assign y5 = out[4];
    assign y6 = out[5];
    assign y7 = out[6];
    assign y8 = out[7];

endmodule
