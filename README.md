# Intro to Processor Architecture - Project (Spring 2024)

## 1.Overall Goal 

To develop a processor architecture design based on the Y86 ISA using Verilog. The design
should be thoroughly tested to satisfy all the specification requirements using simulations. Includes:

- A report describing the design details of the various stages of the processor architecture and the supported features
(including simulation snapshots of the features supported)
- Verilog code for processor design and testbench

## 2.Specifications

The required specifications in the processor design are as follows:

- A bare minimum processor architecture implementing a sequential design 
- A full fledged processor architecture implementation with 5 stage pipeline as discussed in Sections 4.4 and 4.5
of textbook, which includes support for eliminating pipeline hazards.

### Important points to notice:
- Both the above implementations executes all the instructions from Y86 ISA 


## 3.Design Approach
The design approach should is modular, each stage has been coded as separate modules and tested independently
in order to help the integration without too many issues.


## 5.Suggestions for Design Verification
- You can individually test each stage/module for its intended functionality by creating module specific test
inputs.
- Please write an assembly program for any algorithm (e.g., sorting algorithm) using Y86 ISA and the corresponding encoded instructions and use the encoded instructions to test your integrated design.
- If possible, you can also think of an automated testbench that will help you to verify your design efficiently, i.e., automatically verify the state of the processor and memory after execution of each instruction in the program.
