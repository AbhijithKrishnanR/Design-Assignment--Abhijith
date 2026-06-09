`timescale 1ns/1ps

module usr_tb;

reg clk;
reg rst;
reg sin;
reg [3:0] pin;
reg [1:0] mode;

wire sout;
wire [3:0] pout;

usr uut (
    .clk(clk),
    .rst(rst),
    .sin(sin),
    .pin(pin),
    .mode(mode),
    .sout(sout),
    .pout(pout)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    rst = 1;
    sin = 0;
    pin = 4'b0000;
    mode = 2'b00;

    #10 rst = 0;

    mode = 2'b11;
    pin  = 4'b1011;
    #10;

    mode = 2'b10;
    #40;

    mode = 2'b01;
    sin = 1; #10;
    sin = 0; #10;
    sin = 1; #10;
    sin = 1; #10;

    mode = 2'b00;
    sin = 1; #10;
    sin = 0; #10;
    sin = 1; #10;
    sin = 0; #10;

    #20;
    $finish;
end

initial
begin
    $monitor("Time=%0t Mode=%b Sin=%b Pin=%b Pout=%b Sout=%b",
              $time, mode, sin, pin, pout, sout);
end

endmodule
