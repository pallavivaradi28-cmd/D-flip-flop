# D Flip-Flop using Verilog

## Description

This project implements a D (Data) flip-flop using Verilog HDL.

The D flip-flop stores the value of the D input at the positive
edge of the clock and transfers it to the Q output.

The design contains:

- Clock input (clk)
- Reset input (reset)
- Data input (D)
- Output (Q)
- Complementary output (Qbar)

## Truth Table

| Reset | D | Q(next) | Operation |
|-------|---|---------|-----------|
| 1     | X | 0       | Reset     |
| 0     | 0 | 0       | Store 0   |
| 0     | 1 | 1       | Store 1   |

## Files

```text
d_flipflop/
├── README.md
├── d_flipflop.v
└── tb_d_flipflop.v