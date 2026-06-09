`timescale 1ns/1ps

module tb_bcd_adder;

reg [3:0] A, B;
reg Cin;

wire [3:0] Sum;
wire Cout;

bcd_adder DUT(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

    // 5 + 4 = 9
    A = 4'd5; B = 4'd4; Cin = 0;
    #10;

    // 7 + 5 = 12 -> BCD = 0001 0010
    A = 4'd7; B = 4'd5; Cin = 0;
    #10;

    // 8 + 8 = 16 -> BCD = 0001 0110
    A = 4'd8; B = 4'd8; Cin = 0;
    #10;

    // 9 + 9 = 18 -> BCD = 0001 1000
    A = 4'd9; B = 4'd9; Cin = 0;
    #10;

    $finish;
end

initial begin
    $monitor("Time=%0t A=%d B=%d Cin=%b => Sum=%d Cout=%b",
              $time, A, B, Cin, Sum, Cout);
end

endmodule
