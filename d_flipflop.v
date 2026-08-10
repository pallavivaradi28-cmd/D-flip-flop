`timescale 1ns/1ps

module d_flipflop (
    input  wire clk,
    input  wire reset,
    input  wire D,
    output reg Q,
    output wire Qbar
);

    assign Qbar = ~Q;

    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 1'b0;
        else
            Q <= D;
    end

endmodule