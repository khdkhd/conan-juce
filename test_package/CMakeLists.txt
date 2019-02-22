cmake_minimum_required(VERSION 2.8.12)
project(JUCETest CXX)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup(TARGETS)

add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} CONAN_PKG::JUCE)
target_compile_features(${PROJECT_NAME} PUBLIC cxx_std_17)

# CTest is a testing tool that can be used to test your project.
enable_testing()
add_test(
  NAME ${PROJECT_NAME}
  WORKING_DIRECTORY ${CMAKE_BINARY_DIR}/bin
  COMMAND $<TARGET_FILE:${PROJECT_NAME}>
)
