# FIFO Transaction Class — SystemVerilog OOP

## Overview

A two-level class hierarchy used to model transactions for an 8-bit, 8-depth FIFO system.
This implementation demonstrates core SystemVerilog OOP concepts such as inheritance, constructors, use of the `super` keyword, and constraint-driven randomization.

---

## Files

| File                     | Description                                   |
| ------------------------ | --------------------------------------------- |
| `fifo_transaction.sv`    | Contains base and derived transaction classes |
| `fifo_trans_console.png` | Simulation output captured from TCL console   |

---

## Class Hierarchy

```
fifo_base_transaction
└── fifo_transaction
```

---

## fifo_base_transaction

### Fields

| Field     | Type             | Description                           |
| --------- | ---------------- | ------------------------------------- |
| `data_in` | `rand bit [7:0]` | 8-bit input data for write operations |
| `wrenb`   | `rand bit`       | Write enable control signal           |
| `rdenb`   | `rand bit`       | Read enable control signal            |

### Methods

| Method      | Description                                               |
| ----------- | --------------------------------------------------------- |
| `new(data)` | Constructor that initializes all fields to default values |
| `display()` | Displays `data_in`, `wrenb`, and `rdenb`                  |

---

## fifo_transaction

Derived class extending `fifo_base_transaction`.

### Additional Fields

| Field      | Type        | Description                                  |
| ---------- | ----------- | -------------------------------------------- |
| `clk`      | `rand bit`  | Clock signal (for synchronization reference) |
| `rst`      | `rand bit`  | Reset signal                                 |
| `data_out` | `bit [7:0]` | Output data during read operations           |
| `full`     | `bit`       | Indicates FIFO full condition                |
| `empty`    | `bit`       | Indicates FIFO empty condition               |

### Constraints

| Constraint   | Description                                       |
| ------------ | ------------------------------------------------- |
| `valid_ctrl` | Prevents simultaneous assertion of write and read |
| `valid_rst`  | Forces `wrenb` and `rdenb` to 0 during reset      |

### Methods

| Method            | Description                                             |
| ----------------- | ------------------------------------------------------- |
| `new(data, rst)`  | Calls base constructor and initializes extended members |
| `display()`       | Extends base display to include all FIFO signals        |
| `set_write(data)` | Configures transaction for write operation              |
| `set_read()`      | Configures transaction for read operation               |
| `set_reset()`     | Configures transaction for reset condition              |

---

## Simulation Console Output

<img width="232" height="610" alt="image" src="https://github.com/user-attachments/assets/81a3d5bb-c013-4432-be36-d3943c13ce05" />


---

## Transaction Summary

| Transaction | wrenb | rdenb | rst | data_in    | data_out   |
| ----------- | ----- | ----- | --- | ---------- | ---------- |
| Write       | 1     | 0     | 0   | 171 (0xAB) | 0          |
| Read        | 0     | 1     | 0   | 0          | 171 (0xAB) |
| Reset       | 0     | 0     | 1   | 0          | 0          |
| Randomized  | 0     | 0     | 0   | 41         | 0          |

---

## Constraint Validation

| Scenario                        | Expected Behavior          | Result                 |
| ------------------------------- | -------------------------- | ---------------------- |
| `wrenb` and `rdenb` both active | Disallowed by `valid_ctrl` | ✅ Constraint satisfied |
| `rst=1` with active controls    | Disallowed by `valid_rst`  | ✅ Constraint satisfied |

---

## Tool Used

Xilinx Vivado Simulator (xsim)

---

## Notes

* This model represents **transaction-level abstraction**, not an actual FIFO hardware implementation.
* Useful for **stimulus generation, verification planning, and understanding control behavior**.

