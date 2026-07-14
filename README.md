🚀 SPI Master Controller using Verilog HDL

High-Speed Serial Communication Protocol | RTL Design | Digital Electronics | FPGA Implementation

<p align="center"> <img src="https://img.shields.io/badge/Language-Verilog-blue?style=for-the-badge"/> <img src="https://img.shields.io/badge/Protocol-SPI-success?style=for-the-badge"/> <img src="https://img.shields.io/badge/RTL-Design-orange?style=for-the-badge"/> <img src="https://img.shields.io/badge/Verification-ModelSim-red?style=for-the-badge"/> <img src="https://img.shields.io/badge/FPGA-Quartus-blueviolet?style=for-the-badge"/> </p>
📖 Overview

The SPI (Serial Peripheral Interface) Master Controller is a synthesizable RTL design implemented in Verilog HDL. It enables reliable full-duplex serial communication between a master device and SPI-compatible slave peripherals.

The controller manages:

Serial Clock Generation (SCLK)
Master Out Slave In (MOSI)
Master In Slave Out (MISO)
Chip Select (CS)
FSM-based Data Transfer
8-bit Serial Communication

Designed for FPGA implementation and digital hardware verification.

✨ Features

✅ Fully Synthesizable RTL

✅ FSM Based Architecture

✅ 8-bit Serial Transfer

✅ Full Duplex Communication

✅ Configurable Clock Divider

✅ Active-Low Chip Select

✅ MOSI Transmission

✅ MISO Reception

✅ Quartus Compatible

✅ ModelSim Verified

🏗 Architecture
                 +----------------------+
                 |     SPI MASTER       |
                 |                      |
 CLK ----------->| Clock Divider        |
 RESET --------->| FSM Controller       |
 START --------->| Shift Register       |
 DATA_IN ------->|                      |
                 |                MOSI ---------->
                 |<--------------- MISO
                 |                SCLK ---------->
                 |                CS ----------->|
                 +----------------------+
🔄 FSM Diagram
            +-------+
            | IDLE  |
            +-------+
                |
                |
                ▼
         +---------------+
         |   TRANSFER    |
         +---------------+
                |
                |
                ▼
          +-----------+
          |  FINISH   |
          +-----------+
                |
                ▼
             IDLE
📡 SPI Signals
Signal	Direction	Description
CLK	Input	System Clock
RESET	Input	Active High Reset
START	Input	Start Transaction
DATA_IN	Input	Parallel Data
MOSI	Output	Serial Output
MISO	Input	Serial Input
SCLK	Output	SPI Clock
CS	Output	Slave Select
DATA_OUT	Output	Received Data
⚙ Working Flow
System Reset

↓

Wait for START

↓

CS goes LOW

↓

Generate SPI Clock

↓

Shift Data through MOSI

↓

Receive Data through MISO

↓

Complete 8-bit Transfer

↓

CS goes HIGH

↓

Return to IDLE
📂 Repository Structure
SPI-Master-Verilog/

│── rtl/
│     spi_master.v

│── testbench/
│     spi_master_tb.v

│── simulation/
│     waveform.png

│── rtl_view/
│     rtl.png

│── docs/
│     spi_block_diagram.png

│── README.md
🧪 Verification

✔ Functional Simulation

✔ RTL Viewer

✔ Technology Map Viewer

✔ Compilation Successful

✔ No Syntax Errors

✔ Waveform Verification

📊 Results
RTL Viewer
📷 Add rtl.png
Simulation Waveform
📷 Add waveform.png
Technology Map
📷 Add technology_map.png
💻 Tools
Tool	Purpose
Verilog HDL	RTL Design
Quartus Prime Lite	Synthesis
ModelSim	Simulation
FPGA	Hardware Implementation
📚 Applications
Flash Memory
EEPROM
ADC
DAC
Temperature Sensors
OLED Display
LCD
SD Card
FPGA Communication
Embedded Systems
🎯 Learning Outcomes
SPI Protocol
FSM Design
Shift Registers
Serial Communication
Digital Logic Design
RTL Coding
FPGA Design Flow
Functional Verification
🚀 Future Improvements
SPI Mode 0/1/2/3 Support
Variable Data Width
Configurable Clock Divider
Multiple Slave Support
Interrupt Generation
FIFO Integration
Wishbone / AXI Interface
📜 License

MIT License

👨‍💻 Author
Tamil Kumaran

RTL Design | Verilog HDL | Digital Design | FPGA | VLSI

🌐 GitHub
https://github.com/tamilkumaran-DV

💼 LinkedIn
https://linkedin.com/in/tamilkumaran06

<p align="center">
⭐ If you found this project useful, don't forget to Star this repository!
</p>
