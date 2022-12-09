// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Core",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "Root",
      targets: ["Root"]
    ),
  ],
  dependencies: [
    .package(path: "../Feature")
  ],
  targets: [
    .target(
      name: "Root",
      dependencies: []
    ),
    .testTarget(
      name: "RootTests",
      dependencies: ["Root"]
    ),
  ]
)
