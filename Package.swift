// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "WechatOpenSDK",
                      platforms: [.iOS(.v11)],
                      products: [
                        .library(name: "WechatOpenSDK", targets: [ "WechatOpenSDKSetting", "WechatOpenSDK" ]),
                      ],
                      targets: [
                        .target(name: "WechatOpenSDKSetting",
                                linkerSettings: [
                                    .linkedFramework("Security"),
                                    .linkedFramework("UIKit"),
                                    .linkedFramework("CoreGraphics"),
                                    .linkedFramework("WebKit"),
                                    .linkedLibrary("z"),
                                    .linkedLibrary("sqlite3.0"),
                                    .linkedLibrary("c++"),
                                    .unsafeFlags(["-ObjC", "-all_load"]),
                                ]),
                        .binaryTarget(name: "WechatOpenSDK",
                                      path: "WechatOpenSDK.xcframework"),
                      ])
