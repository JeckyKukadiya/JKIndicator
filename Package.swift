// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JKIndicator",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v14),
        .watchOS(.v6),
        .tvOS(.v13)
    ],
    products: [
        .library(
            name: "JKIndicator",
            targets: ["JKIndicator"]
        )
    ],
    targets: [
        .target(
            name: "JKIndicator"
//            path: "Source"
        )
    ],
    swiftLanguageVersions: [.v5]
)
