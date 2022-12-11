// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Infrastructure",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "CoreToolkit",
      targets: ["CoreToolkit"]
    ),
    .library(
      name: "Loading",
      targets: ["Loading"]
    ),
    .library(
      name: "Networking",
      targets: ["Networking"]
    ),
    .library(
      name: "UIToolkit",
      targets: ["UIToolkit"]
    ),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "CoreToolkit",
      dependencies: []
    ),
    .testTarget(
      name: "CoreToolkitTests",
      dependencies: [
        "CoreToolkit"
      ]
    ),
    .target(
      name: "Loading",
      dependencies: []
    ),
    .target(
      name: "Networking",
      dependencies: []
    ),
    .testTarget(
      name: "NetworkingTests",
      dependencies: [
        "Networking"
      ]
    ),
    .target(
      name: "UIToolkit",
      dependencies: [
        "Loading"
      ]
    ),
  ]
)
