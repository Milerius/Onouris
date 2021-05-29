cmake_minimum_required(VERSION 3.19)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)
include(helpers)
include(project.metadata)
generate_project_metafiles()
include(vcpkg.prerequisites)

project(${PROJECT_NAME} LANGUAGES CXX VERSION ${PROJECT_VERSION})

#include(emscripten.prerequisites)
include(compiler.targets)

add_executable(${PROJECT_BINARY_NAME})
target_sources(${PROJECT_BINARY_NAME}
        PRIVATE src/main.cpp)

if (NOT EMSCRIPTEN)
    find_package(imgui CONFIG REQUIRED)
    find_package(glad CONFIG REQUIRED)
    find_package(SDL2 CONFIG REQUIRED)
    target_link_libraries(${PROJECT_BINARY_NAME} PRIVATE imgui::imgui)
endif ()

target_link_libraries(${PROJECT_BINARY_NAME} PRIVATE onouris::default_settings)