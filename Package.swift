// swift-tools-version:5.9

import PackageDescription

let bnbLicenseUtilsVersionRange: Range<Version> = "1.53.1"..<"1.59.99"

let package = Package(
  name: "BanubaLicenseServicingSDK",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "BanubaLicenseServicingSDK",
      targets: ["BanubaLicenseServicingSDKTarget"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/Banuba/BNBLicenseUtils-iOS.git", bnbLicenseUtilsVersionRange),
  ],
  targets: [
    .target(
      name: "BanubaLicenseServicingSDKWrapper",
      dependencies: [
        "BanubaLicenseServicingSDK",
        .product(name: "BNBLicenseUtils", package: "BNBLicenseUtils-iOS")
      ],
      path: "BanubaLicenseServicingSDKWrapper"
    ),
    .target(
      name: "BanubaLicenseServicingSDKTarget",
      dependencies: [
        .target(name: "BanubaLicenseServicingSDKWrapper")
      ],
      path: "BanubaLicenseServicingSDKTarget"
    ),
    .binaryTarget(
      name: "BanubaLicenseServicingSDK",
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaLicenseServicingSDK/1.54.4/BanubaLicenseServicingSDK-1.54.4.xcframework.zip",
      checksum: "97956c83adb37d520b01d85df749cf6dcc25142efbe92f96e8dca52b16ead6e6"
    )
  ]
)
