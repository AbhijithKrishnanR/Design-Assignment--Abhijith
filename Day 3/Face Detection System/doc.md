# Face Processing Pipeline with FIFO Buffer and FSM Output Control

## Aim

To design and simulate a digital data processing pipeline using Verilog HDL consisting of a Face Processing Module, FIFO Buffer, and FSM-based Output Control Module.

## Objective

The objective of this project is to demonstrate the transfer, buffering, and controlled output of 8-bit data through multiple hardware modules connected in a pipeline architecture.

## Theory

A data processing pipeline allows information to pass through multiple stages before reaching the final output. In this design, the pipeline consists of three main modules:

1. Face Processing Module
2. FIFO (First In First Out) Buffer
3. FSM-Based Output Module

The input data first enters the Face Processing Module, then gets stored in the FIFO memory, and finally reaches the output through a finite state machine-controlled output module.

## System Architecture

```text
Input Data (s_in)
        │
        ▼
+----------------+
|  FACE MODULE   |
+----------------+
        │
        ▼
+----------------+
|      FIFO      |
+----------------+
        │
        ▼
+----------------+
|    MOD_OUT     |
+----------------+
        │
        ▼
Output Data (d_out)
```

## Module Description

### 1. Face Processing Module

The Face Processing Module receives 8-bit input data and forwards it to the next stage.

#### Function

* Accepts input data.
* Synchronizes data with the clock.
* Sends processed data to the FIFO.

#### Inputs

* Clock (`clk`)
* Reset (`rst`)
* 8-bit Input Data (`s_in`)

#### Output

* 8-bit Processed Data (`s_out`)

---

### 2. FIFO Buffer

FIFO (First-In First-Out) memory stores data temporarily before forwarding it to the output stage.

#### Features

* 8-bit data width
* 8 memory locations
* Separate read and write pointers
* Full and Empty status indicators

#### Operations

##### Write Operation

Data is continuously written into the FIFO whenever the write enable signal is active.

##### Read Operation

Data is read from the FIFO only when:

* Read enable is active.
* FIFO is not empty.

#### Status Signals

| Signal | Description                    |
| ------ | ------------------------------ |
| Full   | Indicates FIFO memory is full  |
| Empty  | Indicates FIFO memory is empty |

---

### 3. Output Control Module (MOD_OUT)

The MOD_OUT module uses a Finite State Machine (FSM) to control when data is transferred to the final output.

#### FSM States

| State | Description        |
| ----- | ------------------ |
| S0    | Initial State      |
| S1    | Intermediate State |
| S2    | Output State       |

The output data is updated only when the FSM reaches State S2.

---

### 4. Delay Counter

A delay counter is implemented in the top module to prevent FIFO reading immediately after reset.

#### Purpose

* Avoid reading invalid data.
* Ensure FIFO contains data before read operations begin.

The read enable signal becomes active only after a predefined delay period.

## Simulation Procedure

1. Initialize the system using the reset signal.
2. Release reset after initialization.
3. Apply random 8-bit input values.
4. Store incoming data into the FIFO.
5. Enable FIFO reading after the delay period.
6. Observe data transfer through the pipeline.
7. Verify output generation through the FSM.

##  Output
<img width="1918" height="1018" alt="image" src="https://github.com/user-attachments/assets/576ffbb8-829f-4371-8a77-d186d07f504b" />


## Synsthesis
<img width="1917" height="991" alt="image" src="https://github.com/user-attachments/assets/a26181d7-1a91-4da2-90db-526c4b30901e" />

## Result

The Face Processing Pipeline incorporating a Face Processing Module, FIFO Buffer, Delay Controller, and FSM-Based Output Module was successfully designed and simulated using Verilog HDL. The simulation verified correct data storage, buffering, synchronization, and controlled output generation throughout the pipeline.

