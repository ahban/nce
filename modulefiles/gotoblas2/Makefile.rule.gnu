#
#  Beginning of user configuration 
#

# This library's version
VERSION = 1.13

# You can specify the target architecture, otherwise it's
# automatically detected.
# TARGET = PENRYN

# If you want to support multiple architecture in one binary
# DYNAMIC_ARCH = 1

# C compiler including binary type(32bit / 64bit). Default is gcc.
# Don't use Intel Compiler or PGI, it won't generate right codes as I expect.
CC = gcc

# Fortran compiler. Default is g77.
FC = gfortran

# Even you can specify cross compiler
# CC = x86_64-w64-mingw32-gcc
# FC = x86_64-w64-mingw32-gfortran

# If you need 32bit binary, define BINARY=32, otherwise define BINARY=64
#BINARY=64

# About threaded BLAS. It will be automatically detected if you don't
# specify it.
# For force setting for single threaded, specify USE_THREAD = 0
# For force setting for multi  threaded, specify USE_THREAD = 1
# USE_THREAD = 0

# If you're going to use this library with OpenMP, please comment it in.
USE_OPENMP = 1

# You can define maximum number of threads. Basically it should be
# less than actual number of cores. If you don't specify one, it's
# automatically detected by the the script.
NUM_THREADS = 48

# If you don't need CBLAS interface, please comment it in.
# NO_CBLAS = 1

# If you want to use legacy threaded Level 3 implementation.
# USE_SIMPLE_THREADED_LEVEL3 = 1

# If you want to drive whole 64bit region by BLAS. Not all Fortran
# compiler supports this. It's safe to keep comment it out if you
# are not sure(equivalent to "-i8" option).
# INTERFACE64 = 1

# Unfortunately most of kernel won't give us high quality buffer.
# BLAS tries to find the best region before entering main function,
# but it will consume time. If you don't like it, you can disable one.
# NO_WARMUP = 1

# If you want to disable CPU/Memory affinity on Linux.
# NO_AFFINITY = 1

# If you would like to know minute performance report of GotoBLAS.
# FUNCTION_PROFILE = 1

# Support for IEEE quad precision(it's *real* REAL*16)( under testing)
# QUAD_PRECISION = 1

# Theads are still working for a while after finishing BLAS operation
# to reduce thread activate/deactivate overhead. You can determine
# time out to improve performance. This number should be from 4 to 30
# which corresponds to (1 << n) cycles. For example, if you set to 26,
# thread will be running for (1 << 26) cycles(about 25ms on 3.0GHz
# system). Also you can control this mumber by GOTO_THREAD_TIMEOUT
# CCOMMON_OPT	+= -DTHREAD_TIMEOUT=26

# Using special device driver for mapping physically contigous memory
# to the user space. If bigphysarea is enabled, it will use it.
# DEVICEDRIVER_ALLOCATION = 1

# If you need to synchronize FP CSR between threads (for x86/x86_64 only).
# CONSISTENT_FPCSR = 1

# If you need santy check by comparing reference BLAS. It'll be very
# slow (Not implemented yet).
# SANITY_CHECK = 1

# Common Optimization Flag; -O2 is enough.
COMMON_OPT += -O2

# Profiling flags
COMMON_PROF = -pg

#
#  End of user configuration 
#
