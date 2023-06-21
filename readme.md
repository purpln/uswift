# uswift
cmake -B .build -D BUILD_SHARED_LIBS=NO -D CMAKE_BUILD_TYPE=Release -D CMAKE_Swift_COMPILER_TARGET=thumbv7em-unknown-none-eabihf -D CMAKE_Swift_COMPILER_WORKS=YES -D CMAKE_Swift_COMPILER=/Users/purpln/github/sdk/toolchain/usr/bin/swiftc -D CMAKE_C_COMPILER=/Users/purpln/github/sdk/toolchain/usr/bin/clang -G Ninja -S .
ninja -C .build
