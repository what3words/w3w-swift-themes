// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "w3w-swift-themes",

    platforms: [.watchOS(.v6)],

    products: [.library(name: "W3WSwiftThemes", targets: ["W3WSwiftThemes"])],
    // W3WString conditionally imports W3WSwiftCore; explicit modules reject that import unless it is declared.
    dependencies: [
      .package(url: "https://github.com/what3words/w3w-swift-core.git", "1.3.0"..<"2.0.0")
    ],
    targets: [
      .target(
        name: "W3WSwiftThemes",
        dependencies: [.product(name: "W3WSwiftCore", package: "w3w-swift-core")],
        resources: [.process("Resources")]
      ),
      .testTarget(name: "w3w-swift-themesTests", dependencies: ["W3WSwiftThemes"])
    ]
)
