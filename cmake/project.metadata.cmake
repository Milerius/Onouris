## Project Name / Binary Name
set(PROJECT_BINARY_NAME "onouris")

##! Project Name
set(PROJECT_NAME "onouris")

##! Project Version
set(PROJECT_VERSION_MAJOR 0)
set(PROJECT_VERSION_MINOR 0)
set(PROJECT_VERSION_PATCH 1)
set(PROJECT_VERSION 0.0.1)

##! Project METADATA Json file
set(PROJECT_JSON_METADATA "{
    \"project_binary_name\": \"${PROJECT_BINARY_NAME}\",
    \"project_version\": \"${PROJECT_VERSION}\"
}")

macro(generate_project_metafiles)
    message(STATUS "Generating project.metadata.json with:\n${PROJECT_JSON_METADATA}")
    file(WRITE ${CMAKE_SOURCE_DIR}/project.metadata.json ${PROJECT_JSON_METADATA})
    configure_file(${CMAKE_SOURCE_DIR}/vcpkg.json.in ${CMAKE_SOURCE_DIR}/vcpkg.json)
endmacro()