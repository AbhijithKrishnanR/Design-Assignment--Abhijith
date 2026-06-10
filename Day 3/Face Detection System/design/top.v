module top_module(
    input clk,
    input rst,
    input [7:0] s_in,
    output [7:0] d_out
);

wire [7:0] s_out;
wire [7:0] fifo_out;
wire full, empty;

// Delay counter (to avoid reading empty FIFO initially)
reg [2:0] delay;

always @(posedge clk or posedge rst)
begin
    if (rst)
        delay <= 0;
    else
        delay <= delay + 1;
end

wire rd_enable = (delay > 2);

// FACE MODULE
face_mod u1 (
    .clk(clk),
    .rst(rst),
    .s_in(s_in),
    .s_out(s_out)
);

// FIFO
fifo u2 (
    .clk(clk),
    .rst(rst),
    .wrenb(1'b1),      // always write
    .rdenb(rd_enable), // ✅ FIXED
    .data_in(s_out),
    .data_out(fifo_out),
    .full(full),
    .empty(empty)
);

// MOD_OUT
mod_out u3 (
    .clk(clk),
    .rst(rst),
    .d_in(fifo_out),
    .d_out(d_out)
);

endmodule
