cmake_minimum_required(VERSION 3.10)
project(cuda_memory LANGUAGES CXX CUDA)  # Added CUDA to the project languages

set(SOURCES src/cuda_memory.cu)

# Add CUDA library (as a regular library, now that CUDA is a first-class language)
add_library(cuda_memorylib STATIC ${SOURCES})

# Set CUDA architecture options
set_target_properties(cuda_memorylib PROPERTIES CUDA_ARCHITECTURES "75")

# Executable
add_executable(cuda_memory ${SOURCES})
target_link_libraries(cuda_memory PRIVATE cuda_memorylib)

# Set CUDA architecture options for the executable as well
set_target_properties(cuda_memory PROPERTIES CUDA_ARCHITECTURES "75")