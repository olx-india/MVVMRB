// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MVVMRB",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "MVVMRB",
            targets: ["MVVMRB"])
    ],
    targets: [
        .target(
            name: "MVVMRB",
            path: "MVVMRB"
        )
    ]
)
