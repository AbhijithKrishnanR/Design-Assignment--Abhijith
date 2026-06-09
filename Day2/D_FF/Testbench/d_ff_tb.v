module d_ff_tb;
    reg d,clk;
    wire q,qbar;
    d_ff df(q,qbar,d,clk);
    initial
    begin
    clk=1'b0;
    forever #5 clk=~clk;
    end
    initial
    begin
    d=1'b0; #10;
    d=1'b1; #10;
    d=1'b0; #10;
    d=1'b1; #10;
    d=1'b0; #10;
    $stop;
    end
endmodule
