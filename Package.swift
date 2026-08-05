// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "OneAppCordova",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "OneAppCordova",
            type: .dynamic,
            targets: ["OneAppCordova"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "OneAppCordova",
            path: "CordovaLib/",
            exclude: ["Cordova/Info.plist"],
            cSettings: [
                .headerSearchPath("Classes/Private")
            ]
        )
    ]
)
