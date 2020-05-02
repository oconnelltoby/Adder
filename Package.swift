// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Adder",
    products: [
        .library(
            name: "Adder",
            targets: ["Adder"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CAdder",
            dependencies: []),
        .target(
            name: "Adder",
            dependencies: ["CAdder"]),
        .testTarget(
            name: "AdderTests",
            dependencies: ["Adder"]),
    ]
)
