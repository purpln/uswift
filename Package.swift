// swift-tools-version:5.8

import PackageDescription

let attributes: [String] = [
    "-parse-as-library",
    "-module-name", "Swift",
    "-nostdimport", "-parse-stdlib",
    "-Xfrontend", "-enable-resilience"
]

let package = Package(
    name: "Swift",
    products: [
        .library(name: "Swift", targets: ["Core"])
    ],
    targets: [
        .target(name: "Core", dependencies: [.target(name: "Runtime")], swiftSettings: [.unsafeFlags(attributes)], linkerSettings: [.unsafeFlags(["-Xclang-linker -nostdlib"])]),
        .systemLibrary(name: "Runtime")
    ]
)
