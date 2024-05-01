// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CatFactsNetworking",
    platforms: [
        .iOS(.v13), // Adjust the platform version as needed
    ],
    products: [
        .library(
            name: "CatFactsNetworking",
            targets: ["CatFactsNetworking"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0"),
    ],
    targets: [
        .target(
            name: "CatFactsNetworking",
            dependencies: ["Alamofire"]
        ),
        .testTarget(
            name: "CatFactsNetworkingTests",
            dependencies: ["CatFactsNetworking"]
        ),
    ]
)
