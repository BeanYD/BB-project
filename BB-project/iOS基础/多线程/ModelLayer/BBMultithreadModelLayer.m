//
//  BBMultithreadModelLayer.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/3.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "BBMultithreadModelLayer.h"

NSString * const kMultithreadTypeName = @"kMultithreadTypeName";
NSString * const kMultithreadTargetColName = @"kMultithreadTargetColName";

@implementation BBMultithreadModelLayer

+ (NSArray *)getMultithreadTypeArray {
    return @[
        @{
            kMultithreadTypeName : @"NSThread",
            kMultithreadTargetColName : @"BBNSThreadViewController",
        },
        @{
            kMultithreadTypeName : @"GCD",
            kMultithreadTargetColName : @"BBGCDViewController",
        },
        @{
            kMultithreadTypeName : @"NSOperation",
            kMultithreadTargetColName : @"BBNSOperationViewController",
        },
        @{
            kMultithreadTypeName : @"iOS中的锁",
            kMultithreadTargetColName : @"BBLocksViewController",
        },
        @{
            kMultithreadTypeName : @"线程同步方案",
            kMultithreadTargetColName : @"BBThreadSyncViewController",
        }
    ];
}

@end
