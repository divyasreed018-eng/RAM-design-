module ram (
    input  wire        clk,
    input  wire        we,
    input  wire [3:0]  addr,
    input  wire [7:0]  data_in,
    output reg  [7:0]  data_out
);

    // 16 locations, each 8 bits wide
    reg [7:0] memory [0:15];

    always @(posedge clk) begin
        if (we)
            memory[addr] <= data_in;
        else
            data_out <= memory[addr];
    end
