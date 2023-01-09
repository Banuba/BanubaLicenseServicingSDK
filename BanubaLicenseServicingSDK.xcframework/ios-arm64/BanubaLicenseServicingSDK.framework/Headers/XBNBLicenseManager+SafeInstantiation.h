//
//  XBNBLicenseManager+SafeInstantiation.h
//  BanubaLicenseServicingSDK
//
//  Created by Rostyslav Dovhaliuk on 16.12.2022.
//

#import <Foundation/Foundation.h>
#import <BNBLicenseUtils/BNBLicenseUtils.h>

@interface XBNBLicenseManager (SafeInstantiation)

/// XBNBLicenseManager throws NSException, if malformed token is passed. This initializer wrapper helps to mitigate this side effect.
+ (nullable XBNBLicenseManager *)createSafely:(nonnull NSString *)clientToken;

@end
