📘 Sequence Detector (1110) – Documentation
🔹 Objective

Design a Mealy sequence detector to detect the binary sequence 1110 in a serial input stream.

🔹 Design Overview
Input: din
Clock: clk
Reset: rst
Output: detected

The detector outputs 1 whenever the sequence 1110 is detected.

🔹 State Diagram

States used:

IDLE → No match
S1 → Detected 1
S2 → Detected 11
S3 → Detected 111
🔹 State Encoding
State	Binary
IDLE	00
S1	01
S2	10
S3	11
🔹 Working Logic
From IDLE, if input = 1 → move to S1
From S1, if input = 1 → move to S2
From S2, if input = 1 → move to S3
From S3, if input = 0 → sequence detected


<img width="1913" height="992" alt="Screenshot 2026-06-10 211904" src="https://github.com/user-attachments/assets/86fdc5fc-b225-4c67-aff5-45d8790fbb01" />



🔹 Observation
When input sequence 1110 is applied,
Output detected = 1 is generated.
Detection occurs immediately (Mealy output).
🔹 Conclusion

The designed FSM successfully detects the sequence 1110 using a Mealy model, with minimal states and efficient transition logic.
