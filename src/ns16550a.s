.global uart_put_char
.global uart_get_char

uart_get_char:
    .cfi_startproc
    # move the stack pointer down 16 bytes to 
    # "allocate" space for our stack frame
    addi sp,sp,-16
    # save the caller's frame pointer onto the stack
    sd s0,8(sp)
    # move the frame pointer to the base address of this stack frame
    addi s0,sp,16
    .cfi_endproc

uart_put_char:
    .cfi_startproc
    # create 32 bytes of space on stack
    addi sp,sp,-32 
    # store caller's frame pointer inside the newly created stack frame
    sd fp,24(sp)
    # set the frame pointer to the beginning of the stack frame
    addi fp,sp,32
    # copies register a0 into register a5 to sign-extend our single byte input
    # this is required by the RISC-V calling convention
    # https://github.com/riscv/riscv-elf-psabi-doc/blob/master/riscv-elf.md#-integer-calling-convention
    # mv is a pseudoinstruction that expands to: addi a5,a0,0
    mv a5,a0
    # copies least-significant byte of register a5 onto the stack at 
    # address (frame pointer - 17 bytes)
    sb a5,-17(s0) 
    .cfi_endproc

.end
