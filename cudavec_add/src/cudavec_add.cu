#include "cudavec_add.cuh"

__global__ void vecAdd(int* _a, int* _b, int* _c)
{
    int tID = threadIdx.x;
    _c[tID] = _a[tID] + _b[tID];
}


int main()
{
    int *a, *b, *c, *hc;
    int *da, *db, *dc;


    int memSize = sizeof(int) * NUM_DATA;

    a = new int[memSize];
    b = new int[memSize];
    c = new int[memSize];
    hc = new int[memSize];
    memset(a,0x00,memSize);
    memset(b,0x00,memSize);
    memset(c,0x00,memSize);
    memset(hc,0x00,memSize);


    for(int i = 0 ; i < NUM_DATA ; i ++)
    {
        a[i] = rand() % 10;
        b[i] = rand() % 10;
        hc[i] = a[i] + b[i];
    }

    cudaMalloc(&da,memSize);
    cudaMalloc(&db,memSize);
    cudaMalloc(&dc,memSize);

    cudaMemset(da,0x00,memSize);
    cudaMemset(db,0x00,memSize);
    cudaMemset(dc,0x00,memSize);


    cudaMemcpy(da,a,memSize,cudaMemcpyHostToDevice);
    cudaMemcpy(db,b,memSize,cudaMemcpyHostToDevice);

    vecAdd<<<1,NUM_DATA>>>(da,db,dc);

    cudaMemcpy(c,dc,memSize,cudaMemcpyDeviceToHost);

    cudaFree(da);
    cudaFree(db);
    cudaFree(dc);
    
    bool result = true;

    for(int i = 0; i < NUM_DATA; i++)
    {
        if(hc[i] != c[i])
        {
            printf("[%d] The result is not matched (%d, %d)\n", i, hc[i], c[i]);
            result = false;
        }
    }
    if(result)
    {printf("GPU work well\n");}

    delete[] a;
    delete[] b;
    delete[] c;

    return 0;
}