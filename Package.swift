// swift-tools-version:5.8

import PackageDescription

func attributes(module: String) -> [SwiftSetting] {
    [.unsafeFlags([
        //"-parse-as-library",
        "-module-name", module,
        "-nostdimport", "-parse-stdlib",
        "-Xfrontend", "-enable-resilience",
        "-Xfrontend", "-disable-objc-interop"
    ])]
}

func linker(library: String) -> [LinkerSetting] {
    [.unsafeFlags(["-L", library]), .unsafeFlags(["-Xclang-linker", "-nostdlib"])]
}

let package = Package(
    name: "uswift",
    products: [
        .library(name: "uswift", targets: ["_Concurrency", "Core", "Onone"])
    ],
    targets: [
        .target(name: "_Concurrency", swiftSettings: attributes(module: "_Concurrency"), linkerSettings: linker(library: "Core")),
        .target(name: "Core", swiftSettings: attributes(module: "Swift"), linkerSettings: linker(library: "Runtime")),
        .target(name: "Onone", swiftSettings: attributes(module: "SwiftOnoneSupport"), linkerSettings: linker(library: "Core")),
        .systemLibrary(name: "Runtime")
    ]
)
