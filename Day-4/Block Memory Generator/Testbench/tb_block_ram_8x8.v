`timescale 1ns / 1ps

module tb_block_ram_8x8;

    reg clk;
    reg arstn;
    reg wr_enb;
    reg [2:0] wr_address;
    reg [2:0] rd_address;
    reg [7:0] data_in;
    wire [7:0] data_out;

    block_ram_8x8 uut (
        .clk(clk),
        .arstn(arstn),
        .wr_enb(wr_enb),
        .wr_address(wr_address),
        .rd_address(rd_address),
        .data_in(data_in),
        .data_out(data_out)
    );

    // clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        arstn = 1;
        wr_enb = 0;
        wr_address = 0;
        rd_address = 0;
        data_in = 0;

        // reset
        #2 arstn = 0;
        #15 arstn = 1;

        // WRITE
        @(posedge clk);
        wr_enb = 1; wr_address = 3'd1; data_in = 8'hAA;

        @(posedge clk);
        wr_address = 3'd2; data_in = 8'hBB;

        @(posedge clk);
        wr_address = 3'd3; data_in = 8'h0C;

        // READ
        @(posedge clk);
        wr_enb = 0;

        rd_address = 3'd1;
        @(posedge clk);

        rd_address = 3'd2;
        @(posedge clk);

        rd_address = 3'd3;
        @(posedge clk);

        rd_address = 3'd5; // not written → expect 0
        @(posedge clk);

        #10 $stop;
    end

endmodule
