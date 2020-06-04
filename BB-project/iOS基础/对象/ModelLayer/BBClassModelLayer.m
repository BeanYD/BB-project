//
//  BBClassModelLayer.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/4.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "BBClassModelLayer.h"

NSString * const kClassTypeName = @"kClassTypeName";
NSString * const kClassTargetColName = @"kClassTargetColName";

@implementation BBClassModelLayer

+ (NSArray *)getClassTypeArray {
    return @[
        @{
            kClassTypeName : @"OC对象的实质",
            kClassTargetColName : @"BBClassNatureViewController",
        },
        @{
            kClassTypeName : @"OC对象的分类",
            kClassTargetColName : @"BBOCClassTypeViewController",
        },
    ];
}

@end
