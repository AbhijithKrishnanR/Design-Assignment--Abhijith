# D Flip-Flop Using Verilog

## Aim

To design and simulate a D Flip-Flop using Verilog HDL and verify its operation using a testbench.

## Theory

A D (Data) Flip-Flop is a sequential circuit that stores one bit of data. The output `Q` follows the input `D` only on the positive edge of the clock signal (`clk`). The complementary output `Qbar` always holds the inverse of `Q`.

### Truth Table

| Clock Edge | D | Q(next) | Qbar(next) |
| ---------- | - | ------- | ---------- |
| ↑          | 0 | 0       | 1          |
| ↑          | 1 | 1       | 0          |


## Result

The D Flip-Flop was successfully designed and simulated using Verilog HDL. The simulation results verified that the output `Q` follows the input `D` at every positive edge of the clock, while `Qbar` remains the complement of `Q`.

