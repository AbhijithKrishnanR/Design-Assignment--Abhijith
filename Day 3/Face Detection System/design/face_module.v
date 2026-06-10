module face_mod(
    input clk,
    input rst,
    input [7:0] s_in,
    output reg [7:0] s_out
);

always @(posedge clk or posedge rst)
begin
    if (rst)
        s_out <= 0;
    else
        s_out <= s_in;   // you can replace with real logic
end

endmodule
