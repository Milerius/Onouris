set(CMAKE_TOOLCHAIN_FILE
        "${CMAKE_CURRENT_SOURCE_DIR}/vendor/vcpkg/scripts/buildsystems/vcpkg.cmake"
        CACHE STRING "")

if (CMAKE_SYSTEM_NAME MATCHES "Emscripten")
    set(VCPKG_TARGET_TRIPLET "wasm32-emscripten")
endif()

if (WIN32)
    set(VCPKG_TARGET_TRIPLET "x64-windows" CACHE STRING "")
endif ()

if (APPLE)
    set(VCPKG_APPLOCAL_DEPS OFF CACHE BOOL "")
endif ()