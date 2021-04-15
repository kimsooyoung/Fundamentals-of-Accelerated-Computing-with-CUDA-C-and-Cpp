#include <stdio.h>

/*
 * Refactor firstParallel so that it can run on the GPU.
 */

void firstParallel()
{
  printf("This should be running in parallel.\n");
}

__global__  void firstParallel_GPU()
{
  printf("This should be running in GPU parallel.\n");
}

int main()
{
  /*
   * Refactor this call to firstParallel to execute in parallel
   * on the GPU.
   */

  firstParallel();
  firstParallel_GPU<<<5, 5>>>();
  cudaDeviceSynchronize();

  /*
   * Some code is needed below so that the CPU will wait
   * for the GPU kernels to complete before proceeding.
   */

}
