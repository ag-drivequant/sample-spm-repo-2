// swift-tools-version:6.1
import PackageDescription

let package = Package(
    name: "DriveKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "DriveKitCore",
            targets: ["DriveKitCoreWrapper"]
        ),
        .library(
            name: "DriveKitNetworking",
            targets: ["DriveKitNetworkingWrapper"]
        ),
    ],
    targets: [
        .target(name: "DriveKitCoreWrapper",
                dependencies: [
                    .target(name: "DriveKitCore"),
                    .target(name: "DriveKitNetworking")
                ]),
        .target(name: "DriveKitNetworkingWrapper",
                dependencies: [
                    .target(name: "DriveKitNetworking")
                ]),
        .binaryTarget(
            name: "DriveKitNetworking",
            path: "DriveKitNetworking/DriveKitNetworkingModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitCore",
            path: "DriveKitCore/DriveKitCoreModule.xcframework"
        )
    ]
)
