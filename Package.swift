// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "w3w-swift-themes",
  
    products: [.library(name: "W3WSwiftThemes", targets: ["W3WSwiftThemes"])],

    dependencies: [
      .package(url: "https://github.com/what3words/w3w-swift-core.git", branch: "staging"),
    ],
    
    targets: [
      .target(name: "W3WSwiftThemes",
              dependencies: [
                .product(name: "W3WSwiftCore", package: "w3w-swift-core")
              ],
              resources: [.process("Resources")]
             ),
      .testTarget(name: "w3w-swift-themesTests", dependencies: ["W3WSwiftThemes"])
    ]
)
