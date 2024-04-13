#include <cuda.h>
#include <cuda_runtime.h>
#include <stdio.h>

__global__ void cudatest(void);

class AXPYGPU
{
public:

    void hellocuda(void);
};
