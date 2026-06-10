# SR Flip-Flop Using Verilog

## Aim

To design and simulate a clocked SR (Set-Reset) Flip-Flop using Verilog HDL and verify its operation through simulation.

## Theory

An SR Flip-Flop is a sequential logic circuit used to store one bit of information. It has two inputs, **S (Set)** and **R (Reset)**, and two outputs, **Q** and **Q̅ (Qbar)**. The output changes only on the positive edge of the clock signal.

Depending on the values of S and R, the flip-flop can set, reset, hold its previous state, or enter an invalid condition.

### Truth Table

| S | R | Q(next)     | Operation       |
| - | - | ----------- | --------------- |
| 0 | 0 | Q(previous) | No Change       |
| 0 | 1 | 0           | Reset           |
| 1 | 0 | 1           | Set             |
| 1 | 1 | Invalid     | Undefined State |

## Inputs and Outputs

### Inputs

* **clk** : Clock signal
* **S** : Set input
* **R** : Reset input

### Outputs

* **Q** : Main output
* **Q̅ (Qbar)** : Complement of Q

## Operation

### Hold Condition (S = 0, R = 0)

The flip-flop retains its previous state.

### Reset Condition (S = 0, R = 1)

The output Q becomes 0 and Q̅ becomes 1.

### Set Condition (S = 1, R = 0)

The output Q becomes 1 and Q̅ becomes 0.

### Invalid Condition (S = 1, R = 1)

Both inputs are active simultaneously, resulting in an undefined state.

## Simulation Procedure

1. Design the SR Flip-Flop using Verilog HDL.
2. Create a testbench to generate the clock signal.
3. Apply all possible combinations of S and R inputs.
4. Run the behavioral simulation.
5. Observe the outputs Q and Q̅ for each clock cycle.
6. Verify the flip-flop operation according to the truth table.

## Expected Output

* For S=0 and R=0, the previous state should be retained.
* For S=1 and R=0, the output should be set to logic 1.
* For S=0 and R=1, the output should be reset to logic 0.
* For S=1 and R=1, the output should enter an undefined state.

## Applications

* Memory storage elements
* Digital counters
* Shift registers
* Control circuits
* Sequential logic systems

## Result

The clocked SR Flip-Flop was successfully designed and simulated using Verilog HDL. The simulation results verified the correct Set, Reset, Hold, and Invalid operations according to the SR Flip-Flop truth table.

