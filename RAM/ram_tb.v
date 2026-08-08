`timescale 1ns/1ps

module ram_tb;

    reg        clk;
    reg        we;
    reg [3:0]  addr;
    reg [7:0]  data_in;
    wire [7:0] data_out;

    // Instantiate RAM
    ram uut (
        .clk(clk),
        .we(we),
        .addr(addr),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        we = 0;
        addr = 0;
        data_in = 0;

        // Write 25 to address 0
        #10;
        we = 1;
        addr = 4'd0;
        data_in = 8'd25;

        // Write 50 to address 1
        #10;
        addr = 4'd1;
        data_in = 8'd50;

        // Write 100 to address 2
        #10;
        addr = 4'd2;
        data_in = 8'd100;

        // Read address 0
        #10;
        we = 0;
        addr = 4'd0;

        // Read address 1
        #10;
        addr = 4'd1;

        // Read address 2
        #10;
        addr = 4'd2;

        #10;
        $finish;
    end

    initial begin
        $monitor("Time=%0t | WE=%b | Address=%d | Data_In=%d | Data_Out=%d",
                 $time, we, addr, data_in, data_out);
    end

endmodule