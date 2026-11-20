// swift-tools-version:5.9

import PackageDescription

let bnbLicenseUtilsVersion: Version = "1.53.1"

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
    .package(url: "https://github.com/Banuba/BNBLicenseUtils-iOS.git", exact: bnbLicenseUtilsVersion),
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
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaLicenseServicingSDK/1.55.1/BanubaLicenseServicingSDK-1.55.1.xcframework.zip",
      checksum: "878bfe908df432161070a970b0a81f6d961143c4ffd2ce074803b04f40220c33"
    )
  ]
)
