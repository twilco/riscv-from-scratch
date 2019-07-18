## RISC-V from scratch

The `src` directory in this branch contains the code necessary to follow along with [RISC-V from scratch 3: Writing a UART driver in assembly (1 / 3)](https://twilco.github.io/riscv-from-scratch/2019/07/08/riscv-from-scratch-3.html).  In this post, we begin implementation of a driver for the `virt` onboard UART, discussing the basics of UART functionality and additional linker script and devicetree layout exploration along the way.

You'll also notice a directory in this repository called `work`, which is intended to be your working directory should you choose to follow along with the post.  This directory has been added to the [.gitignore](.gitignore) file.  Since this directory and its contents are ignored, you can freely move from branch to branch without your changes getting clobbered, and then pull things from `src` into `work` as you please.

