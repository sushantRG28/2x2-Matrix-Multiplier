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

## Modules

The design is broken down into several modules, each responsible for a specific part of the matrix multiplication:

- [3-bit counter](#3-bit_counter)
- [3x8 decoder](#threexeightdecoder)
- [4-bit register](#fourbitregister)
- [2x1 MUX](#twoxonemux_fourbit)
- [4-bit multiplier](#fourbitmultiplier)
- [8-bit adder](#eightbitadder)
- [Custom counter](#customcounter)

 ## 3-bit_counter


## threexeightdecoder


## fourbitregister


## twoxonemux_fourbit


## fourbitmultiplier


## eightbitadder


## customcounter


## Testbench

A custom testbench is included to provide the necessary inputs to the matrix multiplier. The testbench provides 8 inputs sequentially, corresponding to the elements of the 2x2 matrices, and observes the output after processing all inputs.

## Results

After running the simulation, the output of the 2x2 matrix multiplier is obtained. The output is verified to ensure correct multiplication of the input matrices.



