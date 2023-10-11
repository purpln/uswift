cmake_minimum_required(VERSION 3.18)

project(uSwift LANGUAGES C Swift)

set(BUILD_SHARED_LIBS NO)
set(toolchain /Users/purpln/github/sdk/toolchain/usr)
set(build     /Users/purpln/github/uswift/.build/swift)

set(CMAKE_Swift_COMPILER ${toolchain}/bin/swiftc)
set(CMAKE_Swift_COMPILER_TARGET thumbv7em-unknown-none-eabihf)
set(CMAKE_Swift_COMPILER_WORKS YES)
set(CMAKE_BUILD_TYPE Release)
set(CMAKE_BUILD_DIR ~/.build)

set(CMAKE_INSTALL_PREFIX ${toolchain})
set(CMAKE_C_COMPILER   ${toolchain}/bin/clang)
set(CMAKE_CXX_COMPILER ${toolchain}/bin/clang++)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${build})

add_subdirectory(Sources)
