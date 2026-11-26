#include "../drivers/vga.h"

void kernel_main(void) {
    vga_clear();
    vga_print("Kernel online.\n");
    vga_print("Thank you for using. \n")
}