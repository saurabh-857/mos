# MOS

![MOS Kernel](https://img.shields.io/badge/MOS-Minimal_Operating_System-orange.svg)
![License](https://img.shields.io/badge/license-MIT-purple.svg)

MOS is a kernel built for fun.

It is a 16-bit kernel, shows how a kernel boots.

## Compatibility

- Legacy BIOS
- MBR
- Runs in 16-bit (real mode)

## Prerequisites  
- **NASM** (Netwide Assembler)
- **QEMU** (emulator)

## How to boot

Step 1: Clone the repo & navigate to the project directory

```bash
git clone https://github.com/saurabh-857/mos.git
cd mos
```

Step 2: Build the Kernel

```bash
nasm -f bin boot.asm -o boot.bin
```

Step 3: Run in QEMU
```bash
qemu-system-i386 -drive format=raw,file=boot.bin
```

## LICENSE

This project is licensed under the MIT License - see the [LICENSE](./LICENSE) file for details.


