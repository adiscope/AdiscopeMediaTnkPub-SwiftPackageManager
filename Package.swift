// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaTnkPub",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaTnkPub",
            targets: ["AdiscopeMediaTnkPubTarget"]
        ),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaTnkPubTarget",
            dependencies: [
                .target(name: "AdiscopeMediaTnkPub"),
                .target(name: "TnkPubSdk"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaTnkPub",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.6.0/AdiscopeMediaTnkPub.zip",
            checksum: "1973b6c15313cf759430726d8dd7ba36851858716e67753bad7c898323d730c8"
        ),
        .binaryTarget(
            name: "TnkPubSdk",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.6.0/TnkPubSdk.xcframework.zip",
            checksum: "8a3325b8dd1a782dedf84175a52f19858a2ba78ab963d266e100a1c0405f676b"
        ),
    ]
)
