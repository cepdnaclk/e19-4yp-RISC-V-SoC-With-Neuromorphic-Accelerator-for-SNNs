# RISC-V SoC with Neuromorphic Accelerator

This project focuses on designing a RISC-V System-on-Chip (SoC) integrated with a neuromorphic accelerator, for small-scale Spiking Neural Network (SNN) applications. The system is optimized for use in edge devices with an emphasis on low-power and low-latency applications. The RISC-V processor controls the accelerator, enabling efficient processing for small SNN modules, making it ideal for resource-constrained environments.

## Features

- **RISC-V Processor**: Acts as the central processing unit for the SoC, controlling the SIB neuromorphic accelerator.
- **Accelerator**: A neuromorphic accelerator designed for small-scale SNN applications, providing efficient processing for spiking neural networks.
- **Edge Device Optimization**: The system is optimized for low-power and low-latency applications, making it suitable for deployment in edge devices.
- **Small-Scale SNN Modules**: Ideal for small-scale neuromorphic SNN applications, such as real-time processing on resource-constrained hardware.

## Research Focus

This project aims to enable efficient small-scale SNN processing with the integration of a neuromorphic accelerator into a RISC-V SoC. The primary research areas are:
1. **Optimizing Power Consumption**: Low-power design for edge devices.
2. **Low-Latency Processing**: Ensuring minimal delay for real-time SNN operations.
3. **Seamless Integration of RISC-V Processor with SIB Accelerator**: Enabling smooth communication and control between the processor and accelerator.

## Project Setup

### Prerequisites

- **FPGA Development Environment** (e.g., Vivado, Quartus)
- **RISC-V Toolchain** for SoC development and integration
- **Python 3.x** for simulation and data collection

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/riscv-soc-neuromorphic-accelerator.git
   cd riscv-soc-neuromorphic-accelerator
