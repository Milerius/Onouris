
## error settings
add_library(onouris_error_settings INTERFACE)
target_compile_options(onouris_error_settings INTERFACE
        $<$<AND:$<PLATFORM_ID:Linux>,$<CXX_COMPILER_ID:Clang>>:-Wall -Wextra -Wfatal-errors>
        $<$<AND:$<PLATFORM_ID:Darwin>,$<CXX_COMPILER_ID:Clang>>:-Wall -Wextra -Wfatal-errors>
        $<$<AND:$<PLATFORM_ID:Darwin>,$<CXX_COMPILER_ID:AppleClang>>:-Wall -Wextra -Wfatal-errors>
        $<$<AND:$<PLATFORM_ID:Emscripten>,$<CXX_COMPILER_ID:Clang>>:-Wall -Wextra -Wfatal-errors>)
add_library(onouris::error_settings ALIAS onouris_error_settings)

#features
add_library(onouris_feature_settings INTERFACE)
target_compile_features(onouris_feature_settings INTERFACE cxx_std_20)
target_compile_options(onouris_feature_settings INTERFACE
        $<$<AND:$<PLATFORM_ID:Emscripten>,$<CXX_COMPILER_ID:Clang>>:-s USE_SDL=2>)
add_library(onouris::feature_settings ALIAS onouris_feature_settings)

#default
add_library(onouris_default_settings INTERFACE)
target_link_libraries(onouris_default_settings INTERFACE
        onouris::error_settings onouris::feature_settings)
add_library(onouris::default_settings ALIAS onouris_default_settings)

message(STATUS "System Name: ${CMAKE_SYSTEM_NAME}")
message(STATUS "Platform Id: ${CMAKE_CXX_PLATFORM_ID}")
message(STATUS "Compiler Id: ${CMAKE_CXX_COMPILER_ID}")