file(GLOB sources *.swift */*.swift)
add_library(swiftCore ${sources})
set_target_properties(swiftCore PROPERTIES Swift_MODULE_NAME Swift)
target_compile_options(swiftCore PRIVATE -parse-stdlib -Xfrontend -enable-resilience)
target_link_libraries(swiftCore PRIVATE swiftRuntime)
target_link_options(swiftCore PRIVATE -Xclang-linker -nostdlib)
