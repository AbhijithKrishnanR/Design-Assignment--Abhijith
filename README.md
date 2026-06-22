# Portfolio — VLSI Design & Verification Internship 2026

## Overview

This repository serves as a comprehensive archive of digital design implementations, SystemVerilog-based verification environments, and simulation results developed during hands-on VLSI training and academic practice.

The work emphasizes RTL design, constrained random verification, and testbench architecture using industry-relevant methodologies.

---

## 👤 Trainee Profile

* **Name:** Abhijith Krishnan R
* **Discipline:** Electronics and Communication Engineering
* Institution: TKM College of Engineering (TKMCE)
* **Focus Area:** VLSI Design & Verification
* **Development Tools:** Xilinx Vivado (XSim), SystemVerilog
* **Languages Used:** Verilog HDL, SystemVerilog

---

## Program Timeline & Work Highlights

### Core Details

| Parameter       | Description                                 |
| :-------------- | :------------------------------------------ |
| **Domain**      | Digital Design & Verification               |
| **Tools Used**  | Vivado Simulator (XSim)                     |
| **Methodology** | RTL Design + SystemVerilog OOP Verification |

---

## 📂 Design & Verification Logs

### 📅 Phase 1: RTL Design Fundamentals

* **Full Adder Design**

  * Behavioral and structural modeling
  * Truth table validation via testbench

* **Multiplexer Design (2:1)**

  * Functional verification using looping constructs

* **Dynamic Array Handling**

  * Memory allocation and deletion in SystemVerilog

---

### 📅 Phase 2: Sequential & Control Logic

* **Flip-Flop Designs**

  * SR and D Flip-Flops
  * Edge-triggered behavior verification

* **Counter Designs**

  * BCD Counter implementation and simulation

* **Custom Sequential Logic**

  * Clock-based event control and timing validation

---

### 📅 Phase 3: Advanced Verification Concepts

* **Constrained Randomization**

  * Weighted distribution using `dist`
  * Conditional constraints using `if` and implication (`->`)
  * Debugging solver issues in Vivado

* **Transaction-Level Modeling**

  * FIFO Transaction Class using OOP
  * Use of inheritance, constructors, and constraints

---

### 📅 Phase 4: Protocol-Level Verification

* **APB Protocol Verification**

  * Driver, Monitor, Scoreboard architecture
  * Transaction generation and checking

* **AES-128 Verification**

  * Functional validation based on specification
  * Testcase development and coverage concepts

---

## 📁 Repository Structure

```text
VLSI-Portfolio/
├── README.md
├── rtl_designs/
│   ├── full_adder/
│   ├── mux/
│   ├── counters/
│   └── flipflops/
├── systemverilog/
│   ├── constraints/
│   ├── dynamic_arrays/
│   └── randomization/
├── verification/
│   ├── fifo/
│   │   ├── transaction/
│   │   ├── testbench/
│   ├── apb/
│   │   ├── driver/
│   │   ├── monitor/
│   │   ├── scoreboard/
│   └── aes/
│       ├── testcases/
│       └── verification_docs/
```

---

## 🛠 Core Skills & Competencies

### 🔹 RTL Design

* Combinational and sequential circuit modeling
* Modular and scalable Verilog coding practices

### 🔹 SystemVerilog OOP

* Class-based testbench development
* Inheritance, constructors, and encapsulation

### 🔹 Constrained Random Verification

* Writing effective constraints
* Debugging solver issues in simulators
* Functional validation through randomized testing

### 🔹 Verification Components

* Driver, Monitor, Scoreboard architecture
* Transaction-level modeling (TLM)

### 🔹 Simulation & Debugging

* Vivado XSim waveform analysis
* TCL console debugging
* Identifying constraint failures

---

## 📊 Key Learning Outcomes

* Developed strong understanding of RTL design principles
* Built reusable and scalable verification components
* Gained hands-on experience with constrained random verification
* Learned limitations of simulation tools (Vivado XSim) and practical workarounds
* Improved debugging skills in SystemVerilog environments

---

## 📌 Notes

* All designs are verified using simulation outputs and console logs
* Emphasis is given to **functional correctness and constraint validation**
* Repository is continuously updated with new experiments and improvements

---

*This portfolio reflects practical learning in VLSI design and verification, focusing on real-world debugging, structured coding, and simulation-based validation.*

