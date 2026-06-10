# 4-to-2 Encoder Using Verilog

## Aim

To design and simulate a 4-to-2 Encoder and verify its operation using a testbench.

## Theory

An encoder is a combinational logic circuit that converts one active input line into a binary code at the output. A 4-to-2 encoder has four input lines and two output lines. At any given time, only one input should be active (logic 1).

The encoder generates a 2-bit binary code corresponding to the active input.

### Truth Table

| Input (I3 I2 I1 I0) | Output (Y1 Y0) |
| ------------------- | -------------- |
| 0001                | 00             |
| 0010                | 01             |
| 0100                | 10             |
| 1000                | 11             |

## Simulation Procedure

1. Design a 4-to-2 encoder using combinational logic.
2. Create a testbench to apply different input combinations.
3. Activate one input line at a time.
4. Run the behavioral simulation.
5. Observe the corresponding binary output for each active input.

## Observations

* When Input `0001` is applied, the output is `00`.
* When Input `0010` is applied, the output is `01`.
* When Input `0100` is applied, the output is `10`.
* When Input `1000` is applied, the output is `11`.

## Expected Output

The encoder should generate the correct 2-bit binary code corresponding to the active input line. Only one input must be active at a time for proper operation.

## Applications

* Digital communication systems
* Data compression
* Keyboard encoding
* Address encoding in memory systems
* Interrupt handling circuits

## Result

The 4-to-2 Encoder was successfully designed and simulated. The simulation results verified that the encoder correctly converts the active input line into its corresponding 2-bit binary output.

