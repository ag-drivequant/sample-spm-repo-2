// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "DriveKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "DriveKitTripAnalysis",
            targets: ["DriveKitTripAnalysisWrapper"]
        ),
        .library(
            name: "DriveKitDriverData",
            targets: ["DriveKitDriverDataWrapper"]
        ),
        .library(
            name: "DriveKitCore",
            targets: ["DriveKitCoreWrapper"]
        ),
        .library(
            name: "DriveKitTripSimulator",
            targets: ["DriveKitTripSimulatorWrapper"]
        ),
        .library(
            name: "DriveKitTripSimulatorNoop",
            targets: ["DriveKitTripSimulatorNoopWrapper"]
        ),
        .library(
            name: "DriveKitVehicle",
            targets: ["DriveKitVehicleWrapper"]
        ),
        .library(
            name: "DriveKitDriverAchievement",
            targets: ["DriveKitDriverAchievementWrapper"]
        ),
        .library(
            name: "DriveKitCoaching",
            targets: ["DriveKitCoachingWrapper"]
        ),
        .library(
            name: "DriveKitChallenge",
            targets: ["DriveKitChallengeWrapper"]
        ),
        .library(
            name: "DriveKitGroup",
            targets: ["DriveKitGroupWrapper"]
        ),
    ],
    targets: [
        .target(
            name: "DriveKitBeaconUtilsWrapper",
            dependencies: [
                .target(name: "DriveKitBeaconUtils"),
                .target(name: "DriveKitCoreWrapper"),
            ]
        ),
        .target(
            name: "DriveKitChallengeWrapper",
            dependencies: [
                .target(name: "DriveKitChallenge"),
                .target(name: "DriveKitDBChallengeAccessWrapper"),
                .target(name: "DriveKitDBTripAccessWrapper"),
            ]
        ),
        .target(
            name: "DriveKitCoachingWrapper",
            dependencies: [
                .target(name: "DriveKitCoaching"),
                .target(name: "DriveKitDBCoachingAccessWrapper"),
            ]
        ),
        .target(
            name: "DriveKitCoreWrapper",
            dependencies: [
                .target(name: "DriveKitCore"),
                .target(name: "DriveKitNetworkingWrapper"),
            ]
        ),
        .target(
            name: "DriveKitDBAchievementAccessWrapper",
            dependencies: [
                .target(name: "DriveKitDBAchievementAccess"),
                .target(name: "DriveKitCoreWrapper"),
            ]
        ),
        .target(
            name: "DriveKitDBChallengeAccessWrapper",
            dependencies: [
                .target(name: "DriveKitDBChallengeAccess"),
                .target(name: "DriveKitCoreWrapper"),
            ]
        ),
        .target(
            name: "DriveKitDBCoachingAccessWrapper",
            dependencies: [
                .target(name: "DriveKitDBCoachingAccess"),
                .target(name: "DriveKitCoreWrapper"),
            ]
        ),
        .target(
            name: "DriveKitDBGroupAccessWrapper",
            dependencies: [
                .target(name: "DriveKitDBGroupAccess"),
                .target(name: "DriveKitCoreWrapper"),
            ]
        ),
        .target(
            name: "DriveKitDBTripAccessWrapper",
            dependencies: [
                .target(name: "DriveKitDBTripAccess"),
                .target(name: "DriveKitCoreWrapper"),
            ]
        ),
        .target(
            name: "DriveKitDBVehicleAccessWrapper",
            dependencies: [
                .target(name: "DriveKitBeaconUtilsWrapper"),
                .target(name: "DriveKitDBVehicleAccess"),
                .target(name: "DriveKitCoreWrapper"),
            ]
        ),
        .target(
            name: "DriveKitDriverAchievementWrapper",
            dependencies: [
                .target(name: "DriveKitDriverAchievement"),
                .target(name: "DriveKitDBAchievementAccessWrapper"),
            ]
        ),
        .target(
            name: "DriveKitDriverDataWrapper",
            dependencies: [
                .target(name: "DriveKitDriverData"),
                .target(name: "DriveKitDBTripAccessWrapper"),
            ]
        ),
        .target(
            name: "DriveKitGroupWrapper",
            dependencies: [
                .target(name: "DriveKitGroup"),
                .target(name: "DriveKitDBGroupAccessWrapper"),
            ]
        ),
        .target(
            name: "DriveKitNetworkingWrapper",
            dependencies: [
                .target(name: "DriveKitNetworking"),
            ]
        ),
        .target(
            name: "DriveKitTripAnalysisWrapper",
            dependencies: [
                .target(name: "DriveKitTripAnalysis"),
                .target(name: "DriveKitCoreWrapper"),
                .target(name: "DriveKitDBTripAccessWrapper"),
                .target(name: "DriveKitDBVehicleAccessWrapper"),
                .target(name: "DriveKitBeaconUtilsWrapper"),
            ]
        ),
        .target(
            name: "DriveKitTripSimulatorApiWrapper",
            dependencies: [
                .target(name: "DriveKitTripSimulatorApi"),
            ]
        ),
        .target(
            name: "DriveKitTripSimulatorNoopWrapper",
            dependencies: [
                .target(name: "DriveKitTripSimulatorNoop"),
                .target(name: "DriveKitTripSimulatorApiWrapper"),
                .target(name: "DriveKitCoreWrapper"),
            ]
        ),
        .target(
            name: "DriveKitTripSimulatorWrapper",
            dependencies: [
                .target(name: "DriveKitTripSimulator"),
                .target(name: "DriveKitTripSimulatorApiWrapper"),
                .target(name: "DriveKitTripAnalysisWrapper"),
            ]
        ),
        .target(
            name: "DriveKitVehicleWrapper",
            dependencies: [
                .target(name: "DriveKitVehicle"),
                .target(name: "DriveKitDBVehicleAccessWrapper"),
                .target(name: "DriveKitBeaconUtilsWrapper"),
            ]
        ),
        .binaryTarget(
            name: "DriveKitBeaconUtils",
            path: "DriveKitBeaconUtilsModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitChallenge",
            path: "DriveKitChallengeModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitCoaching",
            path: "DriveKitCoachingModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitCore",
            path: "DriveKitCoreModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDBAchievementAccess",
            path: "DriveKitDBAchievementAccessModule.xcframework"
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
        ),
        .binaryTarget(
            name: "DriveKitDBTripAccess",
            path: "DriveKitDBTripAccessModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDBVehicleAccess",
            path: "DriveKitDBVehicleAccessModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDriverAchievement",
            path: "DriveKitDriverAchievementModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitDriverData",
            path: "DriveKitDriverDataModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitGroup",
            path: "DriveKitGroupModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitNetworking",
            path: "DriveKitNetworkingModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitTripAnalysis",
            path: "DriveKitTripAnalysisModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitTripSimulator",
            path: "DriveKitTripSimulatorModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitTripSimulatorApi",
            path: "DriveKitTripSimulatorApiModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitTripSimulatorNoop",
            path: "DriveKitTripSimulatorNoopModule.xcframework"
        ),
        .binaryTarget(
            name: "DriveKitVehicle",
            path: "DriveKitVehicleModule.xcframework"
        ),
    ]
)
