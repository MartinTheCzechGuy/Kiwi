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
      name: "Flights",
      targets: ["Flights"]
    ),
  ],
  dependencies: [
    .package(path: "../Infrastructure")
  ],
  targets: [
    .target(
      name: "Flights",
      dependencies: []
    ),
    .testTarget(
      name: "FlightsTests",
      dependencies: ["Flights"]
    ),
  ]
)
