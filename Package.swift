// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "InternationalizedVapor",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "InternationalizedVapor",
            targets: [
                "InternationalizedVapor"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/vapor/vapor.git",
            from: "4.0.0"
        ),
        .package(
            url: "https://github.com/kkiermasz/SwiftLocale.git",
            from: "2.0.0"
        )
    ],
    targets: [
        .target(
            name: "InternationalizedVapor",
            dependencies: [
                .product(
                    name: "Vapor",
                    package: "vapor"
                ),
                .product(
                    name: "SwiftLocale",
                    package: "SwiftLocale"
                )
            ]
        )
    ]
)
