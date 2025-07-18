// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SharedMovieModule",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "SharedMovieModule",
            targets: ["SharedMovieModule"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "8.0.0")
    ],
    targets: [
        .target(
            name: "SharedMovieModule",
            dependencies: ["Kingfisher"],
            path: "Sources/Shared"
        )
    ]
)
