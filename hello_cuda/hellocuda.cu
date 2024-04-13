#include <cuda.h>
#include <cuda_runtime.h>
#include <stdio.h>
#include <assert.h>

__global__ void hellocuda()
{
    printf("cuda test!\n");
}

int main(void)
{
    int device;
    cudaGetDevice(&device);
    cudaDeviceProp props;
    cudaGetDeviceProperties(&props, device);

    printf("Running on GPU %d: %s\n", device, props.name);

    hellocuda<<<10, 1>>>();
    cudaError_t error = cudaGetLastError();
    if (error != cudaSuccess) {
        fprintf(stderr, "CUDA error after kernel launch: %s\n", cudaGetErrorString(error));
        return -1;
    }

    error = cudaDeviceSynchronize();
    if (error != cudaSuccess) {
        fprintf(stderr, "CUDA error after synchronization: %s\n", cudaGetErrorString(error));
        return -1;
    }

    return 0;
}
