// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "AppleDevices",
	platforms: [
		.iOS(.v13),
		.macOS(.v10_15),
		.tvOS(.v13),
		.watchOS(.v6),
	],
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
