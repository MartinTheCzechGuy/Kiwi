// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Feature",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "FlightOffers",
      targets: ["FlightOffers"]
    ),
  ],
  dependencies: [
    .package(path: "../SDK"),
    .package(path: "../Infrastructure")
  ],
  targets: [
    .target(
      name: "FlightOffers",
      dependencies: [
        .product(name: "CoreToolkit", package: "Infrastructure"),
        .product(name: "FlightsSDK", package: "SDK"),
        .product(name: "InstanceProvider", package: "Infrastructure"),
        .product(name: "Loading", package: "Infrastructure"),
        .product(name: "UIToolkit", package: "Infrastructure")
      ]
    ),
    .testTarget(
      name: "FlightOffersTests",
      dependencies: ["FlightOffers"]
    ),
  ]
)
