#  8×8 Simple Dual-Port Block RAM

##  What is this?

This project implements an **8×8 Simple Dual-Port RAM** using Verilog.
It is designed for FPGA applications and allows **separate read and write operations** using different addresses.

---

##  Description

The RAM consists of **8 memory locations**, each storing **8-bit data**.

* Data is written into memory when `wr_enb = 1`
* Data is read from memory when `wr_enb = 0`
* Read operation is **synchronous**, so output appears after one clock cycle
* Reset (`arstn = 0`) clears memory and output

This design is simulated and verified using **Xilinx Vivado**.

---

##  Simulation Result

> <img width="1562" height="848" alt="Screenshot 2026-06-11 224015" src="https://github.com/user-attachments/assets/a7c4c8d5-642c-4a01-9c78-ab5b883252bb" />


---

##  Resource Utilization (LUT Report)

> <img width="560" height="275" alt="Screenshot 2026-06-11 224643" src="https://github.com/user-attachments/assets/74da6918-9c32-4979-8006-5614128ad254" />

---

## ✅ Result

The RAM works correctly:

* Data is written and read as expected
* Output follows synchronous behavior
* Resource utilization is very low

---

