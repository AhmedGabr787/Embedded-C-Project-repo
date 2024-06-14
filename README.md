# Embedded C Baremetal Software Development on STM32F103C8
This is the documentation about my Embedded C Project !! 

## Table of Contents

- [STM32F103C8T6 Blue Pill](##STM32F103C8T6-BluePill)
- [Peripheral Initialization](##Peripheral-Initialization)
- [Makefile](##Makefile)
- [Startup-code](##Startup-code)
- [Linker-Script](##Linker-Script)
- [Contributing](#contributing)

## STM32F103C8T6-BluePill

The STM32F103C8T6 Blue Pill is a low-cost development board featuring an ARM Cortex-M3 microcontroller from STMicroelectronics.

## Peripheral-Initialization

- Initialize the necessary peripherals such as GPIO, UART, timers, etc., based on the project requirements.    
- Configure the clock settings for the microcontroller.

## Makefile

A Makefile is a script used by the make build automation tool to compile and link a program. It defines a set of rules and dependencies for building the project, allowing for efficient and consistent compilation.

Feel free to check it here ! [Makefile](Makefile)

**Key Components**

- Targets : Specifies the file or action to be created or executed.
- Dependencies : Files that the target depends on; if any dependency changes, the target is rebuilt.
- Commands : Shell commands to build the target from the dependencies.

## Startup-code 

Startup code is the initial code that runs when a microcontroller is powered on or reset. It prepares the hardware and environment for the main application, setting up the stack, initializing data segments, and configuring interrupt vectors.

**Key Components**

- Reset Handler: Entry point after reset; typically initializes the system.
- Vector Table: Defines the addresses of interrupt and exception handlers.
- Initialization Routines: Set up the stack pointer, initialize data and BSS segments, and call the main function.

## Linker-Script

A linker script controls the memory layout of the program. It defines the placement of code, data, stack, and other sections in the memory map, ensuring the program fits within the hardware constraints.

**Key Components**

- Memory Sections: Defines physical memory regions (e.g., flash, RAM).
- Sections: Describes how input sections (from object files) are mapped to output sections in memory.
- Symbols: Defines symbols for addresses and sizes used in the startup code and application.

