cmake_minimum_required(VERSION 3.10)
project(cuda_memcpy_kind LANGUAGES CXX CUDA)

set(SOURCES cuda_memcpy_kind.cu)

#add_library(cuda_memcpy_kindlib STATIC ${SOURCES})
#set_target_properties(cuda_memcpy_kindlib PROPERTIES CUDA_ARCHITECTURES "75")

add_executable(cuda_memcpy_kind ${SOURCES})
#target_link_libraries(cuda_memcpy_kind PRIVATE cuda_memcpy_kindlib)
set_target_properties(cuda_memcpy_kind PROPERTIES CUDA_ARCHITECTURES "75")