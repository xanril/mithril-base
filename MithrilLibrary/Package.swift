// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MithrilLibrary",
    platforms: [
            .iOS(.v15)
        ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MithrilLibrary",
            targets: [
                "MithrilLibrary",
                "MRLBusinessModels",
                "MRLDataServiceProtocols",
                "MRLDataServices",
                "MRLControllerProtocols",
                "MRLControllers"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/xanril/MithrilCore.git", branch: "main"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MithrilLibrary",
            dependencies: []),
        .target(
            name: "MRLBusinessModels",
            dependencies: []),
        .target(
            name: "MRLDataServiceProtocols",
            dependencies: ["MithrilCore", "MRLBusinessModels"]),
        .target(
            name: "MRLDataServices",
            dependencies: ["MithrilCore", "Alamofire", "MRLDataServiceProtocols", "MRLBusinessModels"]),
        .target(
            name: "MRLControllerProtocols",
            dependencies: ["MithrilCore", "MRLDataServiceProtocols", "MRLBusinessModels"]),
        .target(
            name: "MRLControllers",
            dependencies: ["MithrilCore", "MRLControllerProtocols", "MRLDataServiceProtocols", "MRLBusinessModels"]),
        .testTarget(
            name: "MithrilLibraryTests",
            dependencies: ["MithrilLibrary"]),
    ]
)
