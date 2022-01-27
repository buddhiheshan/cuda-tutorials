#include <stdio.h>

__global__ void helloFromGPU(void)
{
    int tid = threadIdx.x;
    printf("Hello world form GPU thread %d!\n", tid);
}

int main(void)
{
    printf("Hello world form CPU!\n");

    helloFromGPU<<<1, 10>>>();
    cudaDeviceReset();
    // cudaDeviceSynchronize();
    return 0;
}