// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "sdk_api",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "sdk_api",
            targets: [
                "sdk_api",
                "sdk_api_sdk_core"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "sdk_api",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/sdk_api.zip",
            checksum: "b433a1351cd9f3035689a294f8eaf0b7283427e046ae235a3cbb0d222ecf7db2"
        ),
        .target(
            name: "sdk_api_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
    ]
)
