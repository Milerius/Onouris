cmake_minimum_required(VERSION 3.19)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)
include(project.metadata)
generate_project_metafiles()

project(${PROJECT_NAME} LANGUAGES CXX VERSION ${PROJECT_VERSION})

add_executable(${PROJECT_BINARY_NAME})
target_sources(${PROJECT_BINARY_NAME}
        PRIVATE src/main.cpp)
target_compile_features(${PROJECT_BINARY_NAME} PRIVATE cxx_std_20)