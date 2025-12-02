// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "AppleDevices",
    products: [
        .library(
            name: "AppleDevices",
            targets: [
				"AppleDevices"
			]
        ),
    ],
    targets: [
        .target(
            name: "AppleDevices"
        ),
    ]
)
