cmake_minimum_required(VERSION 3.22)

project(ExampleProject)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_executable(
  example_executable
  include/001_new_delete.hpp
  include/002_raii.hpp
  include/003_unique_ptr.hpp
  include/004_vector.hpp
  include/005_file.hpp
  include/006_raiile.hpp
  include/007_file_stream.hpp
  src/001_new_delete.cpp
  src/002_raii.cpp
  src/003_unique_ptr.cpp
  src/004_vector.cpp
  src/005_file.cpp
  src/006_raiile.cpp
  src/007_file_stream.cpp
  src/main.cpp)
target_include_directories(example_executable
                           PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include)

set_target_properties(example_executable PROPERTIES LINKER_LANGUAGE CXX)
