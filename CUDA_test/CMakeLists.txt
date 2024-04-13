cmake_minimum_required(VERSION 3.10)
project(cudatest LANGUAGES CXX CUDA)

set(CUDA_SOURCES axpygpu.cu)
set(CPP_SOURCES main.cpp)

add_library(cudatestlib STATIC ${CUDA_SOURCES})
set_target_properties(cudatestlib PROPERTIES CUDA_ARCHITECTURES "75")

add_executable(cudatest ${CPP_SOURCES})
target_link_libraries(cudatest PRIVATE cudatestlib)

# Set CUDA include directories
target_include_directories(cudatestlib PRIVATE ${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES})
target_include_directories(cudatest PRIVATE ${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES})

set_target_properties(cudatest PROPERTIES CUDA_ARCHITECTURES "75")
