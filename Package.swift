// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "Swift",
    products: [
        .library(name: "Swift", targets: ["_Concurrency", "Core", "Onone", "Runtime"])
    ],
    targets: [
        .target(name: "_Concurrency"),
        .target(name: "Core"),
        .target(name: "Onone"),
        .target(name: "Runtime")
    ]
)
