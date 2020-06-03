//
//  BBOtherModelLayer.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/3.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "BBOtherModelLayer.h"

NSString * const kOtherTypeName = @"kOtherTypeName";
NSString * const kOtherTargetColName = @"kOtherTargetColName";

@implementation BBOtherModelLayer

+ (NSArray *)getOtherTypeArray {
    return @[
        @{
            kOtherTypeName : @"大牛博客",
            kOtherTargetColName : @"BBNPBolgViewController",
        },
        @{
            kOtherTypeName : @"个人博客",
            kOtherTargetColName : @"BBPersonalViewController",
        },
        @{
            kOtherTypeName : @"Flutter相关",
            kOtherTargetColName : @"BBFlutterViewController",
        },
        @{
            kOtherTypeName : @"Swift相关",
            kOtherTargetColName : @"BBSwiftViewController",
        },
        @{
            kOtherTypeName : @"Git相关",
            kOtherTargetColName : @"BBGitViewController",
        }
    ];
}

@end
