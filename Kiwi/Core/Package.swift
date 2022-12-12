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
    .package(path: "../Feature"),
    .package(path: "../SDK"),
    .package(path: "../Infrastructure"),
  ],
  targets: [
    .target(
      name: "Root",
      dependencies: [
        .product(name: "FlightOffers", package: "Feature"),
        .product(name: "FlightsSDK", package: "SDK"),
        .product(name: "InstanceProvider", package: "Infrastructure"),
        .product(name: "Networking", package: "Infrastructure"),

      ]
    )
  ]
)
