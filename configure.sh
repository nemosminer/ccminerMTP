# To change the cuda arch, edit Makefile.am and run ./build.sh

## march=native is for local build.
## to make a build that will work across all machines use march=x86-64

extracflags="-march=native -D_REENTRANT -falign-functions=16 -falign-jumps=16 -falign-labels=16"

CUDA_CFLAGS="-O3 -lineno -Xcompiler -Wall  -D_FORCE_INLINES" \
	./configure CXXFLAGS="-O3 $extracflags" --with-cuda=/usr/local/cuda-10.0 --with-nvml=libnvidia-ml.so
											##--with-cuda=/usr/local/cuda is an alternative (Cuda 9.2)
