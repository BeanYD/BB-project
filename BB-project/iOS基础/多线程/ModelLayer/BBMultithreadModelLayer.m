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

NSString * const kMultrdGcdTypeName = @"kMultrdGcdTypeName";
NSString * const kMultrdGcdTargetColName = @"kMultrdGcdTargetName";
NSString * const kMultrdGcdCategoryList = @"kMultrdGcdCategoryList";

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

+ (NSArray *)getGCDTypeArray {
    return @[
        @{
            kMultithreadTypeName : @"同步、异步",
            kMultrdGcdTargetColName : @"BBSyncTypeViewController",
            kMultrdGcdCategoryList : @[
                    @"同步",
                    @"异步"
            ],
        },
        @{
            kMultithreadTypeName : @"串行、并行",
            kMultrdGcdTargetColName : @"BBRunTypeViewController",
            kMultrdGcdCategoryList : @[
                    @"串行",
                    @"并行"
            ],
        },
        @{
            kMultithreadTypeName : @"常用方法",
            kMultrdGcdTargetColName : @"BBUsualMethodsViewController",
            kMultrdGcdCategoryList : @[
                    @"dispatch_sync",
                    @"dispatch_async",
                    @"dispatch_after",
                    @"dispatch_once",
                    @"dispatch_queue_t",
                    @"dispatch_group_t",
                    @"dispatch_notify",
                    @"dispatch_barrier",
            ],
        },
        @{},
    ];
}

@end
