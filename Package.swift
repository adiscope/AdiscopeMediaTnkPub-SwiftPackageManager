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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.2/AdiscopeMediaTnkPub.zip",
            checksum: "d7e90bd5ca8d958f5e2429cd2bcc8634437e66d2e26f4287c337f078eaf7ae4b"
        ),
        .binaryTarget(
            name: "TnkPubSdk",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.2/TnkPubSdk.xcframework.zip",
            checksum: "d7e90bd5ca8d958f5e2429cd2bcc8634437e66d2e26f4287c337f078eaf7ae4b"
        ),
    ]
)
