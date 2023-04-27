// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyLibrary",
    products: [
        .library(
            name: "MyLibrary",
            targets: ["MyLibrary"]
        ),
        .library(
            name: "MyLibraryMocks",
            targets: ["MyLibraryMocks"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "MyLibrary",
            dependencies: []
        ),
        .target(
            name: "MyLibraryMocks",
            dependencies: [
                "MyLibrary"
            ]
        )
    ]
)
