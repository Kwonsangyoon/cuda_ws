#include "axpygpu.h"

__global__ void cudatest(void)
{
    printf("cuda test!\n");
}


void AXPYGPU::hellocuda(void) {
    cudatest<<<1,10>>>();
}
