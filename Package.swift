// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "T21KeyboardState",
    products: [
        .library(
            name: "T21KeyboardState",
            targets: ["T21KeyboardState"]),
    ],
    dependencies: [
        .package(url: "https://github.com/worldline-spain/T21Notifier-iOS.git", from: "2.1.0"),
    ],
    targets: [
        .target(
            name: "T21KeyboardState",
            dependencies: ["T21Notifier"],
            path: "./src"),
    ]
)
