#include "cuda.h"
#include "cuda_runtime.h"
//#include "device_launch_parameters.h"

#include <stdio.h>

void checkDeviceMemory(void)
{
    size_t free, total;
    cudaMemGetInfo(&free,&total);
    printf("Device Momory(free/total) = %lld/%lld bytes\n", free, total);
}