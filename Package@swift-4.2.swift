// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "ReactiveSwift",
    products: [
        .library(name: "ReactiveSwift", targets: ["ReactiveSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/antitypical/Result.git", from: "4.1.0"),
        .package(url: "https://github.com/Quick/Quick.git", from: "2.0.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "8.0.0"),
    ],
    targets: [
        .target(name: "ReactiveSwift", dependencies: ["Result"], path: "Sources"),
        .testTarget(name: "ReactiveSwiftTests", dependencies: ["ReactiveSwift", "Quick", "Nimble"]),
    ],
    swiftLanguageVersions: [.v4, .v4_2]
)
