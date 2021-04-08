cmake_minimum_required(VERSION 3.19)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)
include(project.metadata)
generate_project_metafiles()

project(${PROJECT_NAME} LANGUAGES CXX VERSION ${PROJECT_VERSION})
