# Visualizing negative numbers

This program (written in aarch64) will accept a single command line argument. The argument must be a relatively small positive or negative integer. Keeping to less than 3 digits is best.
This program is useful for visualizing two's complement negative numbers.

## Build for disassembly

```text
gcc -O3 test.s
objdump -d a.out
```

