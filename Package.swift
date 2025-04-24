// swift-tools-version:6.1
import PackageDescription

let package = Package(
    name: "DriveKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "DriveKitDBGroupAccess",
            targets: ["DriveKitDBGroupAccessWrapper"]
        ),
        .library(
            name: "DriveKitDBCoachingAccess",
            targets: ["DriveKitDBCoachingAccessWrapper"]
        ),
        .library(
            name: "DriveKitDBChallengeAccess",
            targets: ["DriveKitDBChallengeAccessWrapper"]
        ),
        .library(
            name: "DriveKitDBVehicleAccess",
            targets: ["DriveKitDBVehicleAccessWrapper"]
        ),
        .library(
            name: "DriveKitDBAchievementAccess",
            targets: ["DriveKitDBAchievementAccessWrapper"]
        ),
        .library(
            name: "DriveKitDBTripAccess",
            targets: ["DriveKitDBTripAccessWrapper"]
        ),
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
        .target(name: "DriveKitDBGroupAccessWrapper",
                dependencies: [
                    .target(name: "DriveKitDBGroupAccess"),
                    .target(name: "DriveKitCoreWrapper")
                ]),
        .target(name: "DriveKitDBCoachingAccessWrapper",
                dependencies: [
                    .target(name: "DriveKitDBCoachingAccess"),
                    .target(name: "DriveKitCoreWrapper")
                ]),
        .target(name: "DriveKitDBChallengeAccessWrapper",
                dependencies: [
                    .target(name: "DriveKitDBChallengeAccess"),
                    .target(name: "DriveKitCoreWrapper")
                ]
               ),
        .target(name: "DriveKitDBVehicleAccessWrapper",
                dependencies: [
                    .target(name: "DriveKitDBVehicleAccess"),
                    .target(name: "DriveKitCoreWrapper")
                ]
               ),
        .target(name: "DriveKitDBAchievementAccessWrapper",
                dependencies: [
                    .target(name: "DriveKitDBAchievementAccess"),
                    .target(name: "DriveKitCoreWrapper")
                ]
               ),
        .target(name: "DriveKitDBTripAccessWrapper",
                dependencies: [
                    .target(name: "DriveKitDBTripAccess"),
                    .target(name: "DriveKitCoreWrapper")
                ]),
        .target(name: "DriveKitBeaconUtilsWrapper",
                dependencies: [
                    .target(name: "DriveKitBeaconUtils"),
                    .target(name: "DriveKitCoreWrapper")
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
        ),
        .binaryTarget(
            name: "DriveKitDBTripAccess",
            path: "DriveKitDBTripAccessModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDBAchievementAccess",
            path: "DriveKitDBAchievementAccessModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDBVehicleAccess",
            path: "DriveKitDBVehicleAccessModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDBChallengeAccess",
            path: "DriveKitDBChallengeAccessModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDBCoachingAccess",
            path: "DriveKitDBCoachingAccessModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDBGroupAccess",
            path: "DriveKitDBGroupAccessModule.xcframework"
        )
    ]
)
