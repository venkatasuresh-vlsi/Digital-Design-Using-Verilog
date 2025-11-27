module hw34 (
    input  [4:0] date_in,
    input  [3:0] mon_in,
    input  [2:0] week_in,   
    output reg [2:0] week_out1,
    output reg [2:0] week_out2,
    output reg err           
);

    reg [2:0] b1, b2;
    reg [3:0] next_month, next_month_2;

    function [5:0] b3;
        input [3:0] month;
        begin
            case (month)
                1,3,5,7,8,10,12: b3 = 31;
                4,6,9,11:        b3 = 30;
                2:               b3 = 28;
                default:         b3 = 0;
            endcase
        end
    endfunction

    function [2:0] b4;
        input [3:0] month;
        begin
            case (month)
                1,3,5,7,8,10,12: b4 = 3; // +3
                4,6,9,11:        b4 = 2; // +2
                2:               b4 = 0; // +0
                default:         b4 = 0;
            endcase
        end
    endfunction

    function [3:0] next_mon;
        input [3:0] month;
        begin
            if (month == 12) 
                next_mon = 1;
            else 
                next_mon = month + 1;
        end
    endfunction

    always @(*) begin
        err = 0;

        if (mon_in < 1 || mon_in > 12)
            err = 1;

        if (date_in < 1 || date_in > b3(mon_in))
            err = 1;

        if (!err) begin
            next_month  = next_mon(mon_in);
            next_month_2 = next_mon(next_month);

            if (date_in > b3(next_month) || date_in > b3(next_month_2))
                err = 1;

            b1 = b4(mon_in);
            b2 = b4(next_month);

            week_out1 = week_in + b1;
            if (week_out1 >= 7)
                week_out1 = week_out1 - 7;

            week_out2 = week_out1 + b2;
            if (week_out2 >= 7)
                week_out2 = week_out2 - 7;
        end
        else begin
            week_out1 = 3'd7;  
            week_out2 = 3'd7;
        end
    end
endmodule
