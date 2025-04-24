// swift-tools-version:6.1
import PackageDescription

let package = Package(
    name: "DriveKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "DriveKitBeaconUtils",
            targets: ["DriveKitBeaconUtilsWrapper"]
        ),
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
        .target(name: "DriveKitBeaconUtilsWrapper",
                dependencies: [
                    .target(name: "DriveKitBeaconUtils"),
                    .target(name: "DriveKitCoreWrapper"),
                ]),
        .target(name: "DriveKitCoreWrapper",
                dependencies: [
                    .target(name: "DriveKitCore"),
                    .target(name: "DriveKitNetworkingWrapper")
                ]),
        .target(name: "DriveKitNetworkingWrapper",
                dependencies: [
                    .target(name: "DriveKitNetworking")
                ]),
        .binaryTarget(
            name: "DriveKitNetworking",
            path: "DriveKitNetworkingModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitCore",
            path: "DriveKitCoreModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitBeaconUtils",
            path: "DriveKitBeaconUtilsModule.xcframework"
        )
    ]
)
