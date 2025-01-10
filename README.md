# VHDL Process Sensitivity List Error

This repository demonstrates a common error in VHDL: an incomplete sensitivity list in a process.  The `bug.vhd` file contains the erroneous code, while `bugSolution.vhd` provides the corrected version.

## Problem

The original code fails to list `data_in` in the sensitivity list of the process.  This means that changes to `data_in` will not trigger the process, leading to incorrect output.

## Solution

The solution involves adding `data_in` to the sensitivity list.  This ensures that the process is triggered whenever `data_in` changes, resulting in correct behavior.

## How to reproduce

1.  Synthesize and simulate `bug.vhd`.
2.  Observe that the output does not accurately reflect changes in `data_in`.
3.  Synthesize and simulate `bugSolution.vhd`.
4.  Observe that the output now correctly reflects changes in `data_in`.