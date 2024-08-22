# RISC-V PIPELINED PROCESSOR Implementation
# Overview
This project focuses on the implementation of a pipelined processor based on the RISC-V instruction set architecture (ISA) using Vivado and Verilog. The RISC-V ISA is a free and open standard ISA designed for various computing devices.

In this project, we are implementing a pipelined 32-bit RISC-V ISA-based processor in Verilog. The circuit below illustrates the sub-modules used and their interactions:

![Full circuit](https://github.com/mohamedazizbelhouchet/RISC-V-PIPELINED-PROCESSOR-Implementation/assets/127042008/8f224078-4991-4b8f-83ec-385747c98e29)

# Project Details
The pipelined processor is a fundamental component of modern CPUs, enhancing performance by executing multiple instructions simultaneously. This project implements a basic 5-stage pipelined processor for the RISC-V ISA, including stages such as Instruction Fetch (IF), Instruction Decode (ID), Execution (EX), Memory Access (MEM), and Write Back (WB).

The following circuit represents the RTL Analysis circuit as modeled in Vivado.
![image](https://github.com/mohamedazizbelhouchet/RISC-V-PIPELINED-PROCESSOR-Implementation/assets/161772847/d7086495-947c-45b8-9be8-b5d3f4ed409e)
# Implementation
The processor is designed in Verilog, a hardware description language (HDL), and developed using Vivado, which provides tools for simulation and synthesis. The implementation includes support for a subset of RISC-V instructions, data hazard handling with forwarding and hazard detection mechanisms, and control hazard management with stall mechanisms.

# Simulation and Testing
The project includes test benches for simulating the processor and verifying its functionality. Test programs written in assembly language are used to test different aspects of the processor, including data forwarding, hazard detection, and branch prediction.

# Future Enhancements
Future improvements to the project could involve adding support for more RISC-V instructions, implementing branch prediction to enhance performance, and optimizing the design for speed or area efficiency.

# Conclusion
By implementing a pipelined processor for the RISC-V ISA, this project provides a practical learning experience in digital design and computer architecture. The project's code can be a valuable resource for individuals interested in studying processor design and implementation.
Here's a refined version of your sentence:

For more details, I recommend this book, which can serve as a valuable guide to help you gain a deeper understanding of this project.
![image](https://github.com/user-attachments/assets/fdfaea16-7002-4065-9e66-8f3d6c47177f)

