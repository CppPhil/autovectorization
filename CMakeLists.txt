cmake_minimum_required(VERSION 3.22)

project(ExampleProject)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

if(CMAKE_CXX_COMPILER_ID STREQUAL "GNU" AND CMAKE_BUILD_TYPE STREQUAL "Release")
  message(
    STATUS "Using GNU compiler in Release mode: enabling vectorization flags.")

  # -O3: Enables aggressive optimization, including auto-vectorization.
  # -ftree-vectorize: Explicitly enables loop vectorization (already implied by
  # -O3). -march=native: Enables instructions specific to your CPU (e.g., AVX2
  # or SSE4). -fopt-info-vec: Reports which loops were vectorized (output goes
  # to stdout).
  set(CMAKE_CXX_FLAGS
      "${CMAKE_CXX_FLAGS} -O3 -ftree-vectorize -march=native -fopt-info-vec")
endif()

add_executable(example_executable src/main.cpp)
target_include_directories(example_executable
                           PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include)

set_target_properties(example_executable PROPERTIES LINKER_LANGUAGE CXX)
