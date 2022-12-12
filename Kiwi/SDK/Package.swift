// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SDK",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "FlightsSDK",
      targets: ["FlightsSDK"]
    ),
  ],
  dependencies: [
    .package(path: "../Infrastructure")
  ],
  targets: [
    .target(
      name: "FlightsSDK",
      dependencies: [
        .product(name: "InstanceProvider", package: "Infrastructure"),
        .product(name: "Networking", package: "Infrastructure"),
      ]
    ),
    .testTarget(
      name: "FlightsSDKTests",
      dependencies: ["FlightsSDK"]
    ),
  ]
)
