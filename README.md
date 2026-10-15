# remoteLAB

A single-board platform based on the STM32H5 family for evaluating Ethernet, USB, Bluetooth Low Energy with a custom antenna, operational-amplifier and buffer stages, and an I2C OLED display. The board is also intended to serve as a SCPI-controlled measurement node in a home laboratory.

## Overview

| Area | Specification |
|---|---|
| MCU | STM32H5 family (H563/H573); exact device and package to be confirmed after pin budget analysis in CubeMX |
| Power | USB-C, 5 V only (sink); no external supply input |
| Analog | 2 input and 2 output channels built around operational amplifiers, using the MCU's internal ADC and DAC; ranges and component selection to be defined by the designer |
| USB | USB-TMC (SCPI); proposed: CDC console and DFU |
| Ethernet | RMII with external PHY (proposed: LAN8742A), magnetics, RJ45; proposed: SCPI over TCP (port 5025) and UDP sample streaming |
| BLE | Custom PCB antenna with pi-matching network and a VNA measurement pad; proposed: BlueNRG-2 over SPI |
| Display | OLED over I2C (not SPI); model to be determined |
| Firmware | Proposed: a common SCPI command core shared by USB and Ethernet; BLE and the display act as additional views of the same data |

## Design Decisions

- The STM32H5 family does not provide an LTDC peripheral. RGB displays and LVDS display links are therefore excluded, and LVDS has been removed from the scope.
- The display was changed from a TFT (16-bit 8080 over FMC) to an I2C OLED. The FMC peripheral is not used.
- A previously considered BTL power amplifier for a function generator has been cancelled.

## Version 1 Scope

**Required:** Ethernet, USB-C with USB-TMC, BLE with a custom antenna, operational-amplifier sections (2 inputs, 2 outputs), I2C OLED.
**Desirable:** Test points and jumpers allowing individual analog stages to be bypassed; a common SCPI core.
**Future (optional):** External power input, symmetric supply rails, USB isolation, external ADC.

## Open Items

1. OLED model (resolution, controller, I2C address, supply voltage, connector).
2. MCU variant and package, following the CubeMX pin budget.
3. Analog ranges and component selection (operational amplifiers, filters, any converters).
4. Confirmation of the PHY and BLE devices.
5. USB-C current budget.
6. BLE antenna variants for comparison with a VNA.
