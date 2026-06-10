module mod_out(
    input clk,
    input rst,
    input [7:0] d_in,
    output reg [7:0] d_out
);

reg [1:0] state;

parameter S0 = 2'd0,
          S1 = 2'd1,
          S2 = 2'd2;

always @(posedge clk or posedge rst)
begin
    if (rst)
        state <= S0;
    else
        state <= state + 1;  // cycles 0→1→2
end

always @(posedge clk or posedge rst)
begin
    if (rst)
        d_out <= 0;
    else if (state == S2)
        d_out <= d_in;   // output only at 3rd clock
end

endmodule
