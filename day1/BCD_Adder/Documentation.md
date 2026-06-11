# BCD Adder Using Verilog HDL

## Aim

To design and simulate a Binary Coded Decimal (BCD) Adder using Verilog HDL and verify its operation through simulation.

## Theory

A BCD Adder is a combinational circuit used to add two BCD digits along with an optional carry input. Since each BCD digit can represent decimal values from 0 to 9, the binary sum must be corrected whenever the result exceeds 9.

The addition process is performed in two stages:

1. Add the two BCD digits using a 4-bit Ripple Carry Adder.
2. If the binary result is greater than 9 or if a carry is generated, add binary 0110 (decimal 6) to obtain a valid BCD result.

### Correction Condition

BCD correction is required when:

* Carry output from the first addition is 1.
* The binary sum is greater than 1001 (decimal 9).

The correction logic detects this condition and adds 0110 to the intermediate sum.

## Inputs and Outputs

### Inputs

| Signal | Description      |
| ------ | ---------------- |
| A[3:0] | First BCD digit  |
| B[3:0] | Second BCD digit |
| Cin    | Carry input      |

### Outputs

<img width="1457" height="707" alt="image" src="https://github.com/user-attachments/assets/b3fdcfcd-4fed-44c7-92b3-d0c6347d7eae" />



## Operation

### Case 1: Sum Less Than or Equal to 9

When the binary sum is between 0 and 9, no correction is required and the result is directly used as the BCD output.

### Case 2: Sum Greater Than 9

When the binary sum exceeds 9, the correction logic becomes active and binary 0110 is added to the intermediate result to obtain a valid BCD output.

### Case 3: Carry Generated

If a carry is generated during the first addition, correction is automatically applied and the carry output becomes active.

## Test Cases

| A | B | Cin | Decimal Result |
| - | - | --- | -------------- |
| 5 | 4 | 0   | 9              |
| 7 | 5 | 0   | 12             |
| 8 | 8 | 0   | 16             |
| 9 | 9 | 0   | 18             |

## Simulation Procedure

1. Design the BCD Adder using two 4-bit Ripple Carry Adders.
2. Implement correction logic to detect invalid BCD sums.
3. Apply different combinations of BCD inputs.
4. Run behavioral simulation.
5. Observe the Sum and Carry outputs.
6. Verify that all outputs represent valid BCD values.

## Applications

* Digital calculators
* Electronic counters
* Digital clocks
* Financial and accounting systems
* Seven-segment display interfaces
* Embedded digital systems

## Advantages

* Produces valid BCD outputs
* Suitable for decimal arithmetic
* Easy FPGA implementation
* Modular design using Ripple Carry Adders

## Result

The BCD Adder was successfully designed and simulated using Verilog HDL. The simulation results verified correct decimal addition and proper BCD correction whenever the binary sum exceeded the valid BCD range.

