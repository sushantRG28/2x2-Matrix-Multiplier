# 2x2 Matrix Multiplier in Verilog HDL

This project implements a 2x2 matrix multiplier in Verilog HDL using Xilinx software. The design is created using gate-level modeling, which involves defining the structure of the logic circuit at the gate level, making it more intricate and detailed compared to behavioral modeling.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Design](#design)
- [Modules](#modules)
- [Testbench](#testbench)
- [Results](#results)

## Overview

The 2x2 matrix multiplier is designed by connecting various combinational and sequential blocks. This includes the use of counters, decoders, registers, multiplexers, multipliers, and adders, all modeled at the gate level. The main objective of this project is to showcase the complexity and detail involved in gate-level modeling.

## Features

- **Gate-Level Modeling**: Emphasizes the use of gate-level modeling for more detailed and precise control over the hardware design.
- **Sequential and Combinational Blocks**: Utilizes a combination of sequential and combinational logic blocks.
- **Custom Testbench**: Includes a custom testbench to provide inputs and observe outputs.

## Design

The design involves creating connections among various blocks to perform matrix multiplication. The modules used are listed below:

### Modules

The design is broken down into several modules, each responsible for a specific part of the matrix multiplication:

- **3-bit_counter**
As the name suggests, this module counts through states 0 to 7 in a repeating sequence. Along with a clock (clk) which helps in timing its counting patters, it also has control signals count enable (ce) ad master reset (mr). The counter increments with the clock only when 'ce' is active and it can be reset to 0 using the 'mr' signal.
The part it plays is that according to the count in the counter, the inputs are sent to appropriate register amongst the 8 registers.

- **3x8_decoder**
The decoder takes a 3-bit binary input and activates one of the eight outputs represented in an 8-bit output.
Each of the output bit of the decoder acts as a load signal to each of the registers in order to load the input flow.

- **4-bit_register**
This register stores a 4-bit input and latches on until a new input signal is provided with load control signal being active.
I designed 8 such registers in order to store the 8 inputs of the matrices' elements in each of them. The decoder output bit is selected as the load for each register.

- **2x1_MUX**
This multiplexer selects two inputs against a select line.
The 'mux' is designed to select amongst two 4-bit inputs, since all of our elements are 4-bits. The select signal is controlled by the count bits of the custom counter.

- **4-bit_multiplier**
Takes two 4-bit inputs and perfoms multiplication operation on both of them. Result is stored in a 8-bit register.
From the 8 registers, we appropriately select the matric elements to perform the multiplication operation.

- **8-bit_adder**
This takes two 8-bit inputs and adds them to give an output of 9-bits.
According to the principle of matrix multiplication of 2x2 matrices, after choosing a pair of 2 elements from each matrix, we add them to produce an element of output matrix. The selection is decided by the custom counter.

- **Custom_counter**
The logic of the custom counter is a crucial part in choosing the appropriate elements from the matrcies to perform the mutiplication operation on. I designed the counter such that, after its enable is activated - it starts counting and providing the select signal to the 2x1 mux. The logic is simple, I have loaded the one columns of the first matrix into one of the multiplexers and the second into another. Similarl for the second matrix, I have loaded the rows in a similar way. Now lets see how we get the first element output for the product matrix - we will need to multiply the first row of the first matrix with first column of the select. To do that I simply make the select line 0 for the fist two multiplexers (so that they would choose the first elements of the columns i.e. the first row) and 0 for the second two multiplexers (so that they choose the first elements of the rows i.e. the first column); similarly for the next element of the product (i.e the second element of the first row), I make the select lines for the pair of multiplexers 0 and 1; then 1 and 0; then 1 and 1. Hence the counter is based on this logic.

## Testbench

I have made a custom testbench in order to reset all the values initally and then enable the count signals for the first counter. Then we sequentially provide in the 8 inputs to the matrix with a periodic delay as per the clock so that they get synchronously loaded and operated on. According to the testbench, the output is observed after a bit of a delay when the values of the output change from X to the products. The outputs are then collected sequentially again with a similar period as per the clock.

## Results

After running the simulation, the output of the 2x2 matrix multiplier is obtained. The output is verified to ensure correct multiplication of the input matrices. 



