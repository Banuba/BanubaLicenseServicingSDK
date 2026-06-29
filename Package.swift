// swift-tools-version:5.9

import PackageDescription

let bnbLicenseUtilsVersionRange: Range<Version> = "1.53.0-beta.0"..<"1.53.99"

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
    // Local development uses the path-based binaryTarget below.
    // Release flow (fastlane patch_package_swift_for_nexus) replaces it in the GitHub distribution repo with:
    // .binaryTarget(
    //   name: "BanubaLicenseServicingSDK",
    //   url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaLicenseServicingSDK/{version}/BanubaLicenseServicingSDK-{version}.xcframework.zip",
    //   checksum: "{computed at release}"
    // )
    .binaryTarget(
      name: "BanubaLicenseServicingSDK",
      url: "https://nexus.banuba.net/repository/ios-frameworks/ios/frameworks/BanubaLicenseServicingSDK/1.53.0/BanubaLicenseServicingSDK-1.53.0.xcframework.zip",
      checksum: "882b103f64f4c1970d1af45cceb6bd04d25c3cda007ada5713dc010c9f462ddc"
    )
  ]
)
