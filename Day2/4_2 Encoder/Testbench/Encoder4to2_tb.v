module encoder_4x2_tb;
reg [3:0] I;
wire [1:0] Y;

encoder_4x2 uut (
    .I(I),
    .Y(Y)
);
initial
begin
    I = 4'b0001; #10;
    I = 4'b0010; #10;
    I = 4'b0100; #10;
    I = 4'b1000; #10;
    #10;
    $finish;
end
initial
begin
    $monitor("Time=%0t I=%b Y=%b", $time, I, Y);
end
endmodule
