// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-language-codes",
    products: [
        .library(
            name: "SwiftLanguageCodes",
            targets: ["SwiftLanguageCodes"]
        ),
    ],
    targets: [
        .target(
            name: "SwiftLanguageCodes",
            path: "Sources/swift-language-codes"
        ),
        .testTarget(
            name: "swift-language-codesTests",
            dependencies: ["SwiftLanguageCodes"]
        ),
    ]
)
