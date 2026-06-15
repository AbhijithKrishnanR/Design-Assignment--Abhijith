BCD Adder
Overview

A BCD (Binary Coded Decimal) Adder is a digital circuit designed to add two decimal digits represented in BCD form. Since valid BCD values range only from 0000 (0) to 1001 (9), a direct binary addition may produce an invalid result when the sum is greater than 9. To handle this, the circuit identifies such cases and adds 0110 (decimal 6) to correct the result into a valid BCD representation.

In this design, two 4-bit BCD inputs (A and B) along with a carry input (Cin) are provided. The circuit first computes the binary sum and then applies the required BCD correction logic when necessary. The final output includes a corrected 4-bit BCD sum (Sum) and a carry output (Cout) indicating overflow to the next higher decimal digit.

The simulation confirms that the BCD Adder operates correctly for both standard additions and scenarios requiring correction and carry generation.

Inputs
A[3:0] – First BCD digit
B[3:0] – Second BCD digit
Cin – Carry input
Outputs
Sum[3:0] – BCD result
Cout – Carry output
Verification
<img width="381" height="246" alt="Screenshot 2026-06-14 231809" src="https://github.com/user-attachments/assets/adf647cd-7940-47e6-a5eb-70bffebc4fc9" />

Waveform

The waveform obtained from simulation demonstrates the correct behavior of the BCD Adder. Whenever the computed binary sum exceeds 9, the circuit performs BCD correction and asserts the carry output accordingly.

<img width="1920" height="1080" alt="Screenshot (94)" src="https://github.com/user-attachments/assets/de8da504-1c6a-4ae0-aceb-187c24c6ca64" />
