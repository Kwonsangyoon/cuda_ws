#include "axpygpu.h"


//_global__ void cudatest2(void)
//{
//    printf("cuda test!\n");
//}


int main(){
    AXPYGPU axpy_gpu;
    axpy_gpu.hellocuda(); // Make sure this matches the kernel name
    cudaDeviceSynchronize();  // This waits for the kernel to finish, and checks for any errors.
    return 0;
}