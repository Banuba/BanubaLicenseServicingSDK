// swift-tools-version:5.9

import PackageDescription

let utilsVersion: Version = "1.39.0"

let package = Package(
  name: "BanubaLicenseServicingSDK",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "BanubaLicenseServicingSDK",
      targets: ["BanubaLicenseServicingSDK"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/Banuba/BNBLicenseUtils-iOS.git", from: utilsVersion),
  ],
  targets: [
    .binaryTarget(
      name: "BanubaLicenseServicingSDK",
      path: "BanubaLicenseServicingSDK.xcframework"
    )
  ]
)
