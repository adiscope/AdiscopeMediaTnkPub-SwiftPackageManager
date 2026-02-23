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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaTnkPub.zip",
            checksum: "63bdb060d1aa7c4d17aab5241ada6394ee9ecb925cc94c6fac00742483e5d374"
        ),
        .binaryTarget(
            name: "TnkPubSdk",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/TnkPubSdk.xcframework.zip",
            checksum: "d96cccf26eff04f2b3df845124638f3facf7703b298abaac586a4ff636a5040c"
        ),
    ]
)
