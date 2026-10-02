
# Problem 001: 8-bit Priority Encoder

**Difficulty:** Beginner–Intermediate  
**Category:** Combinational Logic

## Problem Statement

Design an 8-bit priority encoder.

Given an 8-bit input `req[7:0]`, output the index
of the highest asserted bit.

Bit 7 has the highest priority, and bit 0 has
the lowest priority.

## Interface

| Signal | Direction | Width |
|---|---|---|
| req | Input | 8 bits |
| valid | Output | 1 bit |
| index | Output | 3 bits |

## Requirements

- `valid = 1` if any request bit is asserted.
- `index` indicates the highest asserted bit.
- If no request is asserted, `valid = 0` and `index = 0`.
- The design must be combinational and synthesizable.
- No inferred latches.

## Example

Input: `req = 8'b00001010`

Output:
- `valid = 1`
- `index = 3`

## Verification

Test all 256 possible input combinations
using a self-checking testbench.
