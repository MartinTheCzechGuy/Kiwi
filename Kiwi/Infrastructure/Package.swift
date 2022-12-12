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
      name: "InstanceProvider",
      targets: ["InstanceProvider"]
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
    .package(url: "https://github.com/Swinject/Swinject.git", .upToNextMajor(from: "2.8.0")),
    .package(url: "https://github.com/Swinject/SwinjectAutoregistration.git", .upToNextMajor(from: "2.7.0")),
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
      name: "InstanceProvider",
      dependencies: [
        "Swinject",
        "SwinjectAutoregistration"
      ]
    ),
    .target(
      name: "Loading",
      dependencies: []
    ),
    .target(
      name: "Networking",
      dependencies: [
        "InstanceProvider"
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
