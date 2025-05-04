// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "maplibre-navigation-ios",
    defaultLocalization: "en",
    platforms: [.iOS(.v12)],
    products: [
        // Branded bundle that re-exports MapboxCoreNavigation & MapboxNavigation
        .library(
            name: "Fribe",
            targets: ["Fribe"]
        ),
        // Existing modules for backward compatibility
        .library(
            name: "MapboxCoreNavigation",
            targets: ["MapboxCoreNavigation"]
        ),
        .library(
            name: "MapboxNavigation",
            targets: ["MapboxNavigation"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/flitsmeister/mapbox-directions-swift", exact: "0.23.3"),
        .package(url: "https://github.com/mapbox/turf-swift.git", from: "2.8.0"),
        .package(url: "https://github.com/maplibre/maplibre-gl-native-distribution.git", from: "6.0.0"),
        .package(url: "https://github.com/ceeK/Solar.git", exact: "3.0.1"),
        .package(url: "https://github.com/nicklockwood/SwiftFormat.git", from: "0.53.6")
    ],
    targets: [
        // Wrapper target for your branded module
        .target(
            name: "Fribe",
            dependencies: [
                "MapboxCoreNavigation",
                "MapboxNavigation"
            ],
            path: "Sources/Fribe"
        ),
        .target(
            name: "MapboxCoreNavigation",
            dependencies: [
                .product(name: "Turf", package: "turf-swift"),
                .product(name: "MapboxDirections", package: "mapbox-directions-swift"),
                "MapboxCoreNavigationObjC"
            ],
            path: "MapboxCoreNavigation",
            resources: [.process("resources")]
        ),
        .target(
            name: "MapboxCoreNavigationObjC",
            path: "MapboxCoreNavigationObjC"
        ),
        .target(
            name: "MapboxNavigation",
            dependencies: [
                "MapboxCoreNavigation",
                "MapboxNavigationObjC",
                .product(name: "Solar", package: "Solar")
            ],
            path: "MapboxNavigation",
            resources: [
                .copy("Resources/Assets.xcassets")
            ]
        ),
        .target(
            name: "MapboxNavigationObjC",
            dependencies: [
                .product(name: "MapLibre", package: "maplibre-gl-native-distribution")
            ],
            path: "MapboxNavigationObjC"
        ),
        .testTarget(
            name: "MapboxNavigationTests",
            dependencies: [
                "MapboxNavigation",
                "MapboxCoreNavigation",
                "Solar"
            ],
            path: "MapboxNavigationTests",
            resources: [
                .process("Assets.xcassets"),
                .copy("Fixtures/EmptyStyle.json"),
                .copy("Fixtures/route.json"),
                .copy("Fixtures/route-for-lane-testing.json"),
                .copy("Fixtures/route-with-banner-instructions.json"),
                .copy("Fixtures/route-with-instructions.json"),
                .copy("Fixtures/route-with-lanes.json")
            ]
        ),
        .testTarget(
            name: "MapboxCoreNavigationTests",
            dependencies: [
                "MapboxNavigation",
                "MapboxCoreNavigation"
            ],
            path: "MapboxCoreNavigationTests",
            resources: [
                .copy("Resources")
            ]
        )
    ]
)
