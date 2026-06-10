module top_tb;

reg clk;
reg rst;
reg [7:0] s_in;
wire [7:0] d_out;

top_module uut (
    .clk(clk),
    .rst(rst),
    .s_in(s_in),
    .d_out(d_out)
);

// Clock generation
always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    s_in = 0;

    #10 rst = 0;

    // Apply inputs
    repeat (20)
    begin
        #10 s_in = $random;
    end

    #300 $finish;
end

endmodule
