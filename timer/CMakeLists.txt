cmake_minimum_required(VERSION 3.10)
project(timer LANGUAGES CXX CUDA)  # Added CUDA to the project languages

include_directories(include)


set(SOURCES src/timer_test.cu)




# Executable
add_executable(timer ${SOURCES})

# Set CUDA architecture options for the executable as well
set_target_properties(timer PROPERTIES CUDA_ARCHITECTURES "75")