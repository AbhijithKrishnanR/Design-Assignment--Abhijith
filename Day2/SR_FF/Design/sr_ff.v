module sr_flipflop(q,qbar,s,r,clk);
    input s,r,clk;
    output reg q;
    output qbar;
    assign qbar=~q;
    always@(posedge clk)begin
    if(s==1'b0&&r==1'b0)
    begin
    q<=q;
    end
    else if(s==1'b0 && r==1'b1)
    begin
    q<=1'b0;
    end
    else if(s==1'b1&&r==1'b0)
    begin
    q<=1'b1;
    end
    else
    begin
    q<=1'bx;
    end
    end
endmodule
