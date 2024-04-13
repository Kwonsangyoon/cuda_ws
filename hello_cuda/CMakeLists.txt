cmake_minimum_required(VERSION 3.10)
project(hellocuda LANGUAGES CXX CUDA)  # Added CUDA to the project languages

set(SOURCES hellocuda.cu)

# Add CUDA library (as a regular library, now that CUDA is a first-class language)
add_library(hellocudalib STATIC ${SOURCES})

# Set CUDA architecture options
set_target_properties(hellocudalib PROPERTIES CUDA_ARCHITECTURES "75")

# Executable
add_executable(hellocuda ${SOURCES})
target_link_libraries(hellocuda PRIVATE hellocudalib)

# Set CUDA architecture options for the executable as well
set_target_properties(hellocuda PROPERTIES CUDA_ARCHITECTURES "75")
