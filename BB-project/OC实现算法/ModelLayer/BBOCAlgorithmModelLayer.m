//
//  BBOCAlgorithmModelLayer.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/3.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "BBOCAlgorithmModelLayer.h"

NSString * const kOCAlgorithmTypeName = @"kOCAlgorithmTypeName";
NSString * const kOCAlgorithmTargetColName = @"kOCAlgorithmTargetColName";

@implementation BBOCAlgorithmModelLayer

+ (NSArray *)getOCAlgorithmTypeArray {
    return @[
        @{
            kOCAlgorithmTypeName : @"排序算法",
            kOCAlgorithmTargetColName : @"BBSortAlgViewController",
        },
        @{
            kOCAlgorithmTypeName : @"链表",
            kOCAlgorithmTargetColName : @"BBLinkListViewController",
        },
    ];
}

@end
