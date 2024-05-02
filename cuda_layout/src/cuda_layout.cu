#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdio.h>

__global__ void checkIndex(void)
{
    printf("thread Idx:(%d, %d, %d)\n blockIdx: (%d, %d, %d)\n blockDim:(%d, %d, %d)\n Grid:(%d, %d, %d)\n",
    threadIdx.x,threadIdx.y,threadIdx.z,
    blockIdx.x,blockIdx.y,blockIdx.z,
    blockDim.x,blockDim.y,blockDim.z,
    gridDim.x,gridDim.y,gridDim.z
);
}

int main(){
    dim3 dimblock(2,1,16);
    dim3 dimgrid(1,1,1);

    checkIndex<<<dimgrid,dimblock>>>();
    cudaDeviceSynchronize(); 
    return 0;
}