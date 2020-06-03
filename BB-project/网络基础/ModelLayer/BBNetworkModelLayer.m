//
//  BBNetworkModelLayer.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/3.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "BBNetworkModelLayer.h"

NSString * const kNetworkTypeName = @"kNetworkTypeName";
NSString * const kNetworkTargetColName = @"kNetworkTargetColName";

@implementation BBNetworkModelLayer

+ (NSArray *)getNetworkTypeArray {
    return @[
        @{
            kNetworkTypeName : @"TCP/UDP",
            kNetworkTargetColName : @"BBTcpUdpViewController",
        },
        @{
            kNetworkTypeName : @"http/https",
            kNetworkTargetColName : @"BBHttpsViewController",
        },
        @{
            kNetworkTypeName : @"对称/非对称加密",
            kNetworkTargetColName : @"BBEncryptionViewController",
        },
    ];
}

@end
