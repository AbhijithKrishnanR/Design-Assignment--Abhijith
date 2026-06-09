`timescale 1ns/1ps

module tb_rca4;

reg [3:0] A, B;
reg Cin;
wire [3:0] Sum;
wire Cout;

ripple_carry_adder_4bit DUT(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

    A = 4'b0011; B = 4'b0101; Cin = 0;
    #10;

    A = 4'b1111; B = 4'b0001; Cin = 0;
    #10;

    A = 4'b1010; B = 4'b0110; Cin = 0;
    #10;

    A = 4'b1001; B = 4'b1001; Cin = 1;
    #10;

    $finish;
end

initial begin
    $monitor("Time=%0t A=%b B=%b Cin=%b Sum=%b Cout=%b",
              $time,A,B,Cin,Sum,Cout);
end

endmodule
