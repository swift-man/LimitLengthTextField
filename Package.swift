// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LimitLengthTextField",
    platforms: [
      .macOS(.v12),
      .iOS(.v15)
    ],
    products: [
        .library(
            name: "LimitLengthTextField",
            targets: ["LimitLengthTextField"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "LimitLengthTextField",
            dependencies: [],
            path: "Sources/LimitLengthTextField",
            exclude: ["Info.plist"]),
    ]
)
