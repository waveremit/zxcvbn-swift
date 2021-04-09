// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "zxcvbn-swift",
    products: [
        .library(
            name: "zxcvbn-swift",
            targets: ["ZxcvbnSwift"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ZxcvbnSwift",
            dependencies: [],
            exclude: ["Info.plist", "generated"],
            resources: [
                .copy("adjacency_graphs.json"),
                .copy("frequency_lists.json")
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("Public"),
                .headerSearchPath("Internal")
            ]
        )
    ]
)
