module d_ff(q,qbar,d,clk);
    input d,clk;
    output reg q,qbar;
    always@(posedge clk)begin
        q<=d;
        qbar<=~d;
        end
endmodule
