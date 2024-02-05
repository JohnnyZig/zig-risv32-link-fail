# Example of LLVM linking error on RISC-V

This is minimal example of linking fail with zig build/LLVM ld.  
zig 0.11, LLVM17  
This builds fine with riscv32-esp-elf-gcc without changes.  

```
zig build-exe link_fail_example.elf Debug riscv32-freestanding-eabi: error: warning(link): unexpected LLD stderr:
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x0): has non-ABS relocation R_RISCV_JAL against symbol 'exception_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x4): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x8): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0xc): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x10): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x14): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x18): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x1c): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x20): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x24): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x28): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x2c): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x30): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x34): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x38): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x3c): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x40): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x44): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x48): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x4c): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x50): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x54): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x58): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x5c): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x60): has non-ABS relocation R_RISCV_JAL against symbol 'exception_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x64): has non-ABS relocation R_RISCV_JAL against symbol 'exception_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x68): has non-ABS relocation R_RISCV_JAL against symbol 'exception_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x6c): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x70): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x74): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x78): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
ld.lld: warning: zig-cache/o/9671268fc9fe5e658f0f10e7868e40b7/vectors.o:(.ram.vector_table+0x7c): has non-ABS relocation R_RISCV_JAL against symbol 'interrupt_handler'
```

## Fix
Problem occurs when something in the code is jumping to the address which has offset more than +-1MB.  
My ESP32 program is much less than 2 MB of code, but vector_table and/or interrupt/exception handlers (or other functions) could be in RAM.  
```
diff --git a/src/vectors.S b/src/vectors.S
index 642a887..1b3d41e 100644
--- a/src/vectors.S
+++ b/src/vectors.S
@@ -1,4 +1,4 @@
- .section .ram.vector_table
+ .section .ram.vector_table, "ax", %progbits
```
