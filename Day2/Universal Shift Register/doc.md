# Universal Shift Register (USR) Using Verilog

## Aim

To design and simulate a 4-bit Universal Shift Register (USR) and verify its various modes of operation using a testbench.

## Theory

A Universal Shift Register is a sequential logic circuit capable of performing multiple data operations such as parallel loading, serial shifting, and data storage. It combines the functionality of different types of shift registers into a single circuit.

The register operates according to the selected mode and updates its contents on the positive edge of the clock signal.

### Mode Selection Table

| Mode | Operation                     |
| ---- | ----------------------------- |
| 00   | Serial In Serial Out (SISO)   |
| 01   | Serial In Parallel Out (SIPO) |
| 10   | Parallel In Serial Out (PISO) |
| 11   | Parallel Load                 |

## Inputs and Outputs

### Inputs

* **clk** : Clock signal
* **rst** : Reset signal
* **sin** : Serial input
* **pin[3:0]** : Parallel input
* **mode[1:0]** : Mode selection input

### Outputs

* **sout** : Serial output
* **pout[3:0]** : Parallel output
  <img width="1260" height="681" alt="image" src="https://github.com/user-attachments/assets/9c286830-d843-41c5-9f47-280eafc6b015" />


## Operation

### Reset Operation

When the reset signal is active, the register is cleared and all output bits become zero.

### Parallel Load (Mode = 11)

The 4-bit data applied at the parallel input is loaded directly into the register.

### Parallel In Serial Out (Mode = 10)

The data stored in the register is shifted out one bit at a time through the serial output.

### Serial In Parallel Out (Mode = 01)

Serial data is entered one bit at a time and accumulated in the register. The complete data can be observed at the parallel output.

### Serial In Serial Out (Mode = 00)

Data enters through the serial input and shifts through the register. The shifted-out bit appears at the serial output.

## Simulation Procedure

1. Apply the reset signal to initialize the register.
2. Load a 4-bit value into the register using Parallel Load mode.
3. Select PISO mode and observe serial data being shifted out.
4. Select SIPO mode and apply serial input bits.
5. Select SISO mode and observe both serial input and serial output operations.
6. Verify the output values after each clock pulse.

## Expected Output

* After reset, all register bits should become `0000`.
* In Parallel Load mode, the applied 4-bit input should appear at the register output.
* In PISO mode, data should be shifted out serially.
* In SIPO mode, serially entered data should accumulate in the register and appear at the parallel output.
* In SISO mode, data should shift through the register and appear at the serial output after successive clock pulses.

## Applications

* Data storage and transfer
* Serial-to-parallel conversion
* Parallel-to-serial conversion
* Communication systems
* Digital signal processing
* Microprocessor interfacing

## Result

The 4-bit Universal Shift Register was successfully designed and simulated. The simulation verified correct operation in Parallel Load, PISO, SIPO, and SISO modes, demonstrating the versatility of the Universal Shift Register for data handling applications.

