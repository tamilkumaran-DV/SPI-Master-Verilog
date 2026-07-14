🚀 SPI Master Controller using Verilog HDL
> **Professional RTL Design Project | Verilog HDL | FPGA | Digital Design**
<p align="center">
<img src="https://capsule-render.vercel.app/api?type=waving&color=0:0f2027,100:2c5364&height=220&section=header&text=SPI%20Master&fontColor=00F5FF&fontSize=50"/>
</p>
<p align="center">
<img src="https://readme-typing-svg.demolab.com?font=Poppins&weight=700&size=24&duration=1500&pause=300&color=00F5FF&center=true&vCenter=true&width=900&lines=SPI+Master+Controller;RTL+Design;Verilog+HDL;Digital+Communication;FPGA+Implementation"/>
</p>
<p align="center">
<img src="https://img.shields.io/badge/Verilog-HDL-blue?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Protocol-SPI-success?style=for-the-badge"/>
<img src="https://img.shields.io/badge/RTL-Design-orange?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Quartus-Prime-blueviolet?style=for-the-badge"/>
<img src="https://img.shields.io/badge/Simulation-ModelSim-red?style=for-the-badge"/>
</p>
---
📖 Overview
This project implements a synthesizable SPI Master Controller in Verilog HDL. It supports full-duplex serial communication through MOSI, MISO, SCLK and CS using an FSM-based architecture.
✨ Features
FSM Based Controller
8-bit Serial Transfer
Configurable Clock Divider
MOSI Transmission
MISO Reception
Active-Low Chip Select
Synthesizable RTL
ModelSim Verification
Quartus Compatible
<details>
<summary><b>🏗 Architecture</b></summary>
```text
+-----------------------------+
|         SPI MASTER          |
| Clock Divider               |
| FSM Controller              |
| Shift Registers             |
|                             |
| MOSI --->                   |
| <--- MISO                   |
| SCLK --->                   |
| CS   --->                   |
+-----------------------------+
```
</details>
<details>
<summary><b>🔄 FSM</b></summary>
```text
IDLE
 |
 v
TRANSFER
 |
 v
FINISH
 |
 +--> IDLE
```
</details>
📂 Project Structure
```text
SPI-Master-Verilog/
├── rtl/
│   └── spi_master.v
├── testbench/
│   └── spi_master_tb.v
├── simulation/
│   └── waveform.png
├── rtl_view/
│   └── rtl.png
└── README.md
```
📸 Results
RTL Viewer
> Add `rtl.png`
Simulation Waveform
> Add `waveform.png`
🛠 Tools
Verilog HDL
Intel Quartus Prime Lite
ModelSim
🚀 Future Enhancements
SPI Modes 0–3
Variable Data Width
FIFO Interface
Multiple Slave Support
---
👨‍💻 Author
Tamil Kumaran
GitHub: https://github.com/tamilkumaran-DV
LinkedIn: https://linkedin.com/in/tamilkumaran06
---
<p align="center">
⭐ If you like this project, please give it a Star!
</p>
