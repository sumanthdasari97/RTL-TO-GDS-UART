
# UART Design RTL to GDS Flow

## Overview

This repository contains the design and implementation of a Universal Asynchronous Receiver-Transmitter (UART) module. The project showcases the complete flow from Register Transfer Level (RTL) design to GDSII (Graphic Data System II) layout.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
- [RTL Design](#rtl-design)
- [Synthesis](#synthesis)
- [Place and Route](#place-and-route)
- [GDS Generation](#gds-generation)


## Introduction

The UART design is a crucial component for serial communication in various applications. This project includes a comprehensive RTL implementation and follows standard EDA tools to achieve the GDS layout.

## Features

- Full-duplex communication
- Configurable baud rate
- Support for 8 data bits, 1 stop bit, and no parity
- Synthesis and layout optimized for low power and high performance

## Getting Started

### Prerequisites

- [Toolchain/EDA Tools](#) (e.g., Cadence Genus, Cadence Innovus)
- TCL (for any scripting needs)

## RTL Design
The RTL code is written in Verilog/VHDL and located in the RTL/ directory. The design includes the following modules:

\-[uart.v](RTL/Verilog) : UART Verilog File

## Synthesis
The synthesis of the RTL code can be done using Genus. After setting up the environment, run the synthesis script located in the synthesis/ directory:

\-[genus_script.tcl](synthesis/Genus_script.tcl) : UART Verilog File
```markdown

source genus_script.tcl

```

## Place and Route
Place and route can be performed using Cadence Innovus. The commands are included in the `innovus.cmd` script. To run the place and route, execute:

[innovus.cmd](PnR/innovus.cmd)

```markdown
source innovus.cmd
```

## GDS Generation

After resolving any DRC (Design Rule Check) issues, the GDSII file can be generated using the Innovus GUI. To do this:

1. Open the Innovus tool.
2. Load your design.
3. Navigate to the menu and select **File > Save > GDS**.
4. Follow the prompts to save your GDSII file.

The GDSII file will be available in your specified directory.



*Note: I have used a public GitHub repository for the RTL design and made modifications to it. *





