## RISC-V from scratch

This repository contains the code for the *RISC-V from scratch* blog post series, which can be found here: [https://github.com/twilco/twilco.github.io](https://github.com/twilco/twilco.github.io)

*RISC-V from scratch* details my personal exploration of various low-level concepts including compilation and linking, primitive runtimes, assembly, and more, typically through the lens of RISC-V and its ecosystem.  If this sounds interesting, here is a summary of each post released so far:

1. [RISC-V from scratch 1: Introduction, toolchain setup, and hello world!](https://twilco.github.io/riscv-from-scratch/2019/03/10/riscv-from-scratch-1.html)<br/>
**Branch:** No code prerequisites<br/>
An introduction to RISC-V, RISC-V GNU toolchain setup, and the running of a simple program on an emulated RISC-V processor.
2. [RISC-V from scratch 2: Hardware layouts, linker scripts, and C runtimes](https://twilco.github.io/riscv-from-scratch/2019/04/27/riscv-from-scratch-2.html)<br/>
**Branch:** [master](https://github.com/twilco/riscv-from-scratch/tree/master) <br/>
A review of the devicetree layout of the `virt` QEMU virtual machine, linker scripts, basic RISC-V assembly, a minimal C runtime, and more, all in an effort to understand how we get to the `main` function.
3. [RISC-V from scratch 3: Writing a UART driver in assembly (1 / 3)](https://twilco.github.io/riscv-from-scratch/2019/07/08/riscv-from-scratch-3.html)<br/>
**Branch:** [pre-uart-driver-skeleton](https://github.com/twilco/riscv-from-scratch/tree/pre-uart-driver-skeleton)<br/>
Begins implementation of a driver for the `virt` onboard UART, discussing the basics of UART functionality and doing additional linker script and devicetree layout exploration along the way.
4. [RISC-V from scratch 4: Creating a function prologue for our UART driver (2 / 3)](https://twilco.github.io/riscv-from-scratch/2019/07/28/riscv-from-scratch-4.html)<br/>
**Branch:** [pre-function-prologue-impl](https://github.com/twilco/riscv-from-scratch/tree/pre-function-prologue-impl)<br/>
Continues implementation of a driver for the `virt` onboard UART, diagramming instruction-by-instruction the what, why, and how of function prologues.  Also discusses other topics such as ABIs, more RISC-V assembly instructions, and function epilogues.

The code necessary to begin each post is stored in a named branch.  As an example, the code required to begin [RISC-V from scratch 3: Writing a UART driver in assembly (1 / 3)](https://twilco.github.io/riscv-from-scratch/2019/07/08/riscv-from-scratch-3.html) is located in the branch named [pre-uart-driver-skeleton](https://github.com/twilco/riscv-from-scratch/tree/pre-uart-driver-skeleton).  Each post contains a "Setup" section that will inform you, if necessary, which branch you'll need to check out and what things need to be installed, so feel free to jump right into any post that sounds interesting.

There are two directories present in this project: `src` and `work`.  In each branch, `src` will contain the code needed to begin following along with the specific post.  `work` can be used as your personal working directory as you progress through the series, allowing you to move from branch to branch and pull from or compare with `src` as you please.

If you have any questions, comments, or corrections, feel free to [open an issue](https://github.com/twilco/twilco.github.io/issues) or leave a comment on the posts themselves.

