`timescale 1ns/1ps

module tb_d_flipflop;

    reg clk;
    reg reset;
    reg D;

    wire Q;
    wire Qbar;

    // Instantiate D flip-flop
    d_flipflop uut (
        .clk   (clk),
        .reset (reset),
        .D     (D),
        .Q     (Q),
        .Qbar  (Qbar)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        clk   = 1'b0;
        reset = 1'b1;
        D     = 1'b0;

        $display("Time\tReset\tD\tQ\tQbar");

        $monitor("%0t\t%b\t%b\t%b\t%b",
                 $time, reset, D, Q, Qbar);

        // Reset
        #10;
        reset = 1'b0;

        // D = 0
        #10;
        D = 1'b0;

        // D = 1
        #10;
        D = 1'b1;

        // D = 0
        #10;
        D = 1'b0;

        // D = 1
        #10;
        D = 1'b1;

        #10;

        $finish;
    end

endmodule