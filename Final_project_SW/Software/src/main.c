#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"

// Define the base addresses/device ID's for the AXI_GPIOs in the RTL design.
#define GPIO_BASEADDR_0 XPAR_AXI_GPIO_0_BASEADDR
#define GPIO_BASEADDR_1 XPAR_AXI_GPIO_1_BASEADDR

// Define offsets for GPIO channels
#define GPIO_DATA_OFFSET 0x00  // Offset for GPIO data register
#define GPIO_DIRECTION_OFFSET 0x04  // Offset for GPIO direction register

// Define masks for direction and data, in this case 32 bits where all 32 bits of data are flowing into the processor
#define GPIO_DATA_MASK 0xFFFFFFFF

int main() {
    // two 32 bit variables
    u32 Data_0, Data_1;

    // Set direction for GPIO pins (channel 1 as input) for both GPIOs
    Xil_Out32(GPIO_BASEADDR_0 + GPIO_DIRECTION_OFFSET, GPIO_DATA_MASK);
    Xil_Out32(GPIO_BASEADDR_1 + GPIO_DIRECTION_OFFSET, GPIO_DATA_MASK);

    while (1) {
        // Read 32-bit data from GPIO data register for both GPIOs
        Data_0 = Xil_In32(GPIO_BASEADDR_0 + GPIO_DATA_OFFSET);
        Data_1 = Xil_In32(GPIO_BASEADDR_1 + GPIO_DATA_OFFSET);

        // Print the data from both GPIOs
        xil_printf("Voltage Data: %08X\n", Data_0);
        xil_printf("Threshold value: %08X\n", Data_1);

        // Delay for a while
        for (int i = 0; i < 1000000; i++);
    }

    return 0;
}
