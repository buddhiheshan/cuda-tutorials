#include <stdio.h>

__global__ void helloFromGPU(void)
{
    printf("Hello world form GPU!\n");
}

int main(void)
{
    printf("Hello world form CPU!\n");

    helloFromGPU<<<1, 10>>>();
    cudaDeviceReset();
    return 0;
}