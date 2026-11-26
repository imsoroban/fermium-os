 bits 32
 section .multiboot
 dd 0x1BADB002
 dd 0x0
 dd -0x1BADB002

 section .text
 global start
 extern kernel_main

 start:
 cli
 mov esp, stack top
 call kernel_main
 hlt

 section .bss
 align 16
 stack_bottom:
 resb 16384
 stack_top: