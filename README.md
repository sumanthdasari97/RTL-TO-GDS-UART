
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
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

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



