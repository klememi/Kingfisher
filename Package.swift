// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Kingfisher",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "Kingfisher", targets: ["Kingfisher"]),
        .plugin(name: "BundleCurrent", targets: ["BundleCurrent"]),
        .executable(name: "BundleCurrentCLI", targets: ["BundleCurrentCLI"])
    ],
    targets: [
        .target(
            name: "Kingfisher",
            path: "Sources",
            plugins: ["BundleCurrent"]
        ),
        .plugin(
            name: "BundleCurrent",
            capability: .buildTool(),
            dependencies: ["BundleCurrentCLI"]
        ),
        .executableTarget(
            name: "BundleCurrentCLI"
        )
    ]
)