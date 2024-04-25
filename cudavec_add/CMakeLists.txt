cmake_minimum_required(VERSION 3.10)
project(cudavec_add LANGUAGES CXX CUDA)  # Added CUDA to the project languages

include_directories(include)


set(SOURCES src/cudavec_add.cu)




# Executable
add_executable(cudavec_add ${SOURCES})

# Set CUDA architecture options for the executable as well
set_target_properties(cudavec_add PROPERTIES CUDA_ARCHITECTURES "75")