// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "w3w-swift-themes",
  
    products: [.library(name: "W3WSwiftThemes", targets: ["W3WSwiftThemes"])],

    targets: [
      .target(name: "W3WSwiftThemes", resources: [.process("Resources")]),
      .testTarget(name: "w3w-swift-themesTests", dependencies: ["W3WSwiftThemes"])
    ]
)
