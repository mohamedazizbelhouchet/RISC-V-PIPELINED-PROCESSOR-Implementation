# RISC-V PIPELINED PROCESSOR Implementation
This project aims to implement a pipelined processor based on the RISC-V instruction set architecture (ISA) using Vivado and Verilog. The RISC-V ISA is a free and open standard ISA designed for all types of computing devices, from embedded systems to supercomputers.

# Project Overview
The pipelined processor is a key component of modern CPUs, allowing for improved performance by overlapping the execution of multiple instructions. In this project, we implement a basic 5-stage pipelined processor for the RISC-V ISA, consisting of the following stages:

Instruction Fetch (IF): Fetches the next instruction from memory.
Instruction Decode (ID): Decodes the instruction and reads register operands.
Execution (EX): Performs arithmetic or logic operations.
Memory Access (MEM): Accesses memory for load and store instructions.
Write Back (WB): Writes the result back to registers.

# Implementation Details
The processor is implemented in Verilog, a hardware description language (HDL) widely used for designing digital systems. Vivado is used as the development environment, providing tools for simulation and synthesis.

Key features of the implementation include:

Support for a subset of RISC-V instructions.
Forwarding and hazard detection mechanisms to handle data hazards.
Stall mechanism to handle control hazards.

# Simulation and Testing
The project includes test benches to simulate the pipelined processor and verify its functionality. Test programs written in assembly language are used to test different aspects of the processor, such as data forwarding, hazard detection, and branch prediction.

# Future Work
Future enhancements to the project could include:

Adding support for more RISC-V instructions.
Implementing branch prediction to improve performance.
Optimizing the design for speed or area efficiency.

# Conclusion
By implementing a pipelined processor for the RISC-V ISA, this project provides a hands-on learning experience in digital design and computer architecture. The project code can serve as a valuable resource for students and enthusiasts interested in learning about processor design and implementation.
