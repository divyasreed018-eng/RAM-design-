# 16×8 RAM Design Using Verilog

## 📌 Project Description

This project implements a **16×8-bit Single-Port RAM (Random Access Memory)** using Verilog HDL.
The RAM contains **16 memory locations**, with each location capable of storing **8 bits of data**.

## 🚀 Features

* 16 memory locations
* 8-bit data width
* 4-bit address bus
* Synchronous read and write operation
* Write Enable (`we`) control
* Verilog testbench included
* Simulation waveform can be generated using ModelSim, Vivado, or Icarus Verilog

## 🔌 Inputs and Outputs

| Signal     | Direction |  Width | Description           |
| ---------- | --------- | -----: | --------------------- |
| `clk`      | Input     |  1 bit | Clock signal          |
| `we`       | Input     |  1 bit | Write Enable          |
| `addr`     | Input     | 4 bits | Memory address        |
| `data_in`  | Input     | 8 bits | Data to be written    |
| `data_out` | Output    | 8 bits | Data read from memory |

## ⚙️ Working Principle

* When `we = 1`, the input data is written to the selected memory address.
* When `we = 0`, data is read from the selected memory address.
* The read/write operation occurs on the **positive edge of the clock**.
* Since there are 4 address bits, the RAM can access:

```text
2⁴ = 16 memory locations
```

Each location stores 8 bits, giving a total memory capacity of:

```text
16 × 8 = 128 bits
```

## 📂 Project Structure

```text
RAM-Verilog/
│
├── ram.v
├── ram_tb.v
├── README.md
└── simulation/
    └── ram_waveform.png
```

## 🧪 Simulation

The testbench performs the following operations:

1. Write `25` to address `0`
2. Write `50` to address `1`
3. Write `100` to address `2`
4. Read data from address `0`
5. Read data from address `1`
6. Read data from address `2`

### Expected Read Results

```text
Address 0 → Data 25
Address 1 → Data 50
Address 2 → Data 100
```

## 🛠️ Tools Used

* Verilog HDL
* Icarus Verilog
* ModelSim / QuestaSim
* Xilinx Vivado

## 🎯 Applications

RAM is widely used in:

* Microprocessors
* Microcontrollers
* FPGA designs
* Digital systems
* Cache and memory subsystems
* Embedded systems

## 📚 Learning Outcomes

Through this project, you can learn:

* Verilog memory arrays
* Read/write operations
* Address and data buses
* Synchronous digital design
* Testbench development
* RTL simulation

## 👩‍💻 Author

**D. Divyasree**

ECE 
