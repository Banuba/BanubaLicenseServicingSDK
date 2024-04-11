// swift-tools-version:5.9

import PackageDescription

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
  targets: [
    .binaryTarget(
      name: "BanubaLicenseServicingSDK",
      path: "BanubaLicenseServicingSDK.xcframework"
    )
  ]
)
