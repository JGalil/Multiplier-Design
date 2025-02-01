# Multiplier-Design

## Overview  
This repository contains the Verilog implementation of a **multi-cycle multiplier**. The project is designed to implement multiplication using sequential logic, incorporating a control unit, data path, and various supporting modules.

## Files and Modules  

### Core Modules  
- **`robsmult.sv`** - Top-level multiplier module integrating the control and data paths.  
- **`robs_control_unit_micro.sv`** - Control unit implementing the finite state machine (FSM) for the multiplier.  
- **`robs_data_path.sv`** - Data path containing registers, arithmetic logic, and interconnections.  

### Supporting Modules  
- **`rom.sv`** - Read-Only Memory (ROM) storing predefined instruction sequences.  
- **`upc_reg.sv`** - Program counter register for micro-instructions.  
- **`addsub.sv`** - Arithmetic unit performing addition and subtraction.  
- **`counter_down.sv`** - Down counter used for cycle control.  
- **`mux2.sv`** - 2-to-1 multiplexer for selecting input sources.  
- **`mux3.sv`** - 3-to-1 multiplexer for selecting data path inputs.  
- **`mux5.sv`** - 5-to-1 multiplexer for additional data selection.  
- **`register.sv`** - General-purpose register for storing values.  
- **`register_hl.sv`** - High-Low register pair used for storing intermediate multiplication results.  
- **`right_shift_register.sv`** - Shift register performing right shifts for iterative multiplication.  

### Testbench  
- **`robertsonstest.sv`** - Testbench for verifying the correctness of the multiplier design.  

## Requirements  
- **Quartus Prime** for RTL simulation and synthesis.  
- **ModelSim** for functional simulation.  
- **Verilog** for hardware description and implementation.  

## Simulation and Testing  
1. **Compile the Verilog files** in **ModelSim**.  
2. **Run the testbench (`robertsonstest.sv`)** to verify output correctness.  
3. **Capture the following screenshots** for documentation:  
   - ModelSim output comparison with expected results.  
   - Waveform for an entire multiplication cycle (reset = 1 to done = 1).  
   - RTL diagrams for:  
     - Top-level multiplier  
     - Control unit  
     - Data path  

## How to Run  
1. Clone the repository:  
2. Use ModelSim and compile verilog files
3. run testbench to observe behavior
4. Run in Quartus to view RTL

Acknowledgements:

Project Partner: Sean King
