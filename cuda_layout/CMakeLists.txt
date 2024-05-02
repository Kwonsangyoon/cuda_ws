cmake_minimum_required(VERSION 3.10)
project(layout_test LANGUAGES CXX CUDA)  # Added CUDA to the project languages

include_directories(include)


set(SOURCES src/cuda_layout.cu)




# Executable
add_executable(layout_test ${SOURCES})

# Set CUDA architecture options for the executable as well
set_target_properties(layout_test PROPERTIES CUDA_ARCHITECTURES "75")