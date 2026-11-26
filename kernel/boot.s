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
 mov_esp, stack_top
 call kernel_main