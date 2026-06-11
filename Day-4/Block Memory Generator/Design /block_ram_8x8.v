`timescale 1ns / 1ps

module block_ram_8x8 (
    input  clk, 
    input  arstn, 
    input  wr_enb, 
    input  [2:0] wr_address,   // 3-bit for 8 locations
    input  [2:0] rd_address, 
    input  [7:0] data_in, 
    output reg [7:0] data_out 
);

    // 8 locations, each 8-bit
    reg [7:0] ram [0:7];
    integer i;

    always @(posedge clk or negedge arstn) begin
        if (!arstn) begin
            data_out <= 8'b0;

            // reset memory
            for (i = 0; i < 8; i = i + 1)
                ram[i] <= 8'b0;
        end 
        else begin
            // write
            if (wr_enb)
                ram[wr_address] <= data_in;

            // read (independent)
            data_out <= ram[rd_address];
        end
    end

endmodule
