APB Protocol Design and Verification
Overview

This project implements an APB Slave Design in Verilog and verifies it using a SystemVerilog layered testbench.

The verification environment includes:

Generator
Driver
Monitor
Scoreboard
Environment

It validates read/write operations and checks data correctness using a scoreboard.

Project Structure
Design Files
top.sv
Top module connecting DUT and interface
apb_slave.sv
Implements APB slave
Supports:
Read operation
Write operation
PREADY and PRDATA generation
Verification Files
apb_if.sv
Interface connecting DUT and testbench
apb_transaction.sv
Defines address, data, read/write fields
generator.sv
Generates random transactions
driver.sv
Drives APB signals to DUT
monitor.sv
Captures DUT activity
scoreboard.sv
Compares expected vs actual data
environment.sv
Connects all components
tb.sv
Top testbench
Generates clock & reset
Runs environment
Verification Flow
Generator → Driver → Interface → DUT
                       ↓
                    Monitor → Scoreboard
Simulation Procedure
Compile
vlog apb_transaction.sv
vlog generator.sv
vlog driver.sv
vlog monitor.sv
vlog scoreboard.sv
vlog environment.sv
vlog apb_if.sv
vlog apb_slave.sv
vlog top.sv
vlog tb.sv
Run
vsim tb
add wave *
run -all
Verification Results

1️⃣ Scoreboard Output

<img width="572" height="418" alt="image" src="https://github.com/user-attachments/assets/2335c359-1a82-433b-878a-90b29cecb815" />


2️⃣ Waveform Output

<img width="890" height="717" alt="image" src="https://github.com/user-attachments/assets/1310e73d-815d-456c-997f-908fcf0dbdac" />


Result:

Clock toggling correctly
Simulation running properly
Signals synchronized with clock
Conclusion
APB read/write operations verified successfully
Scoreboard confirms correct data transfer
Design works as expected
