module sr_flipflop_tb;
    reg s,r,clk;
    wire q,qbar;
    sr_flipflop sf(q,qbar,s,r,clk);
        initial
        begin
        clk=0;
        forever #5 clk=~clk;
        end
        initial
        begin 
        s=1'b0;r=1'b0; #10;
        s=1'b1;r=1'b0; #10;
        s=1'b0;r=1'b1; #10;
        s=1'b1;r=1'b1; #10;
        s=1'b0;r=1'b0; #10;
        $stop;
        end
        endmodule

