# FIFO (First In First Out)

## Overview

A FIFO (First In First Out) is a type of memory buffer used for temporary data storage in which the first piece of data written is the first one to be read out. FIFOs are widely used in digital systems for buffering, data transfer, and communication between different hardware modules.

This implementation represents a synchronous FIFO that includes write and read control signals, along with status indicators such as `full` and `empty` flags to reflect the current condition of the buffer. The simulation demonstrates proper data storage and retrieval while preserving the FIFO ordering principle.

## Waveform

The waveform illustrates the sequence of write and read operations within the FIFO. Data is written into the buffer when the `wr_en` signal is active and is read out in the same sequence when `rd_en` is enabled. The `full` and `empty` signals accurately represent the FIFO status throughout the operation.

<img width="1558" height="797" alt="image" src="https://github.com/user-attachments/assets/a95faa2c-61b6-408a-b1ff-c33e41fa63f5" />

## Console Output

The console output shows the order of write and read transactions along with corresponding input data, output data, and FIFO status indicators. These results validate that the FIFO correctly maintains data order and operates as expected.

<img width="437" height="312" alt="Screenshot 2026-06-14 233147" src="https://github.com/user-attachments/assets/366de646-d77a-4e80-8847-55c99c4adf82" />

## Conclusion

The simulation results verify that the FIFO design functions correctly. Data is written and read in the same sequence it was received, confirming proper First In First Out behavior. Additionally, the `full` and `empty` flags operate correctly under all tested conditions.

