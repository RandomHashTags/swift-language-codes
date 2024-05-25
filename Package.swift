// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-language-codes",
    products: [
        .library(
            name: "swift-language-codes",
            targets: ["swift-language-codes"]),
    ],
    targets: [
        .target(
            name: "swift-language-codes"),
        .testTarget(
            name: "swift-language-codesTests",
            dependencies: ["swift-language-codes"]),
    ]
)
