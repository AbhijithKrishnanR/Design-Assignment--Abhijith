module usr (
    input clk,
    input rst,
    input sin,
    input [3:0] pin,
    input [1:0] mode,
    output reg sout,
    output reg [3:0] pout
);
always @(posedge clk or posedge rst)
begin
    if (rst)
    begin
        pout <= 4'b0000;
        sout <= 0;
    end
    else
    begin
        case(mode)
        2'b00:
        begin
            sout <= pout[3];
            pout <= {pout[2:0], sin};
        end
        2'b01:
        begin
            pout <= {pout[2:0], sin};
        end
        2'b10:
        begin
            sout <= pout[3];
            pout <= {pout[2:0], 1'b0};
        end
        2'b11:
        begin
            pout <= pin;
        end
        endcase
    end
end

endmodule
