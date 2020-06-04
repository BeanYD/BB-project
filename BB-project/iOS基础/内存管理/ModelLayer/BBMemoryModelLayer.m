//
//  BBMemoryModelLayer.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/3.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "BBMemoryModelLayer.h"

NSString * const kMemoryTypeName = @"kMemoryTypeName";
NSString * const kMemoryTargetColName = @"kMemoryTargetColName";
NSString * const kPropertyQuestionName = @"kPropertyQuestionName";
NSString * const kPropertyTargetColName = @"kPropertyTargetColName";

@implementation BBMemoryModelLayer

+ (NSArray *)getMemoryTypeArray {
    return @[
        @{
            kMemoryTypeName : @"属性",
            kMemoryTargetColName : @"BBPropertyViewController",
        },
        @{
            kMemoryTypeName : @"关联对象",
            kMemoryTargetColName : @"BBAssociateViewController",
        },
        @{
            kMemoryTypeName : @"深浅拷贝",
            kMemoryTargetColName : @"BBCopyTypeViewController",
        },
        @{
            kMemoryTypeName : @"Autoreleasepool",
            kMemoryTargetColName : @"BBAutoRelPoolViewController",
        },
        @{
            kMemoryTypeName: @"内存泄漏",
            kMemoryTargetColName : @"BBMemoryLeakViewController",
        },
        @{
            kMemoryTypeName : @"MRC->ARC",
            kMemoryTargetColName : @"BBMRCToARCViewController",
        },
        @{
            kMemoryTypeName : @"分类和拓展",
            kMemoryTargetColName : @"BBCateAndExtViewController",
        },
    ];
}

+ (NSArray *)getPropertyQuestionArray {
    return @[
        @{
            kPropertyQuestionName : @"copy详解",
            kPropertyTargetColName : @"BBCopyDetailViewController"
        },
        @{
            kPropertyQuestionName : @"weak详解",
            kPropertyTargetColName : @"BBWeakDetailViewController"
        },
        @{
            kPropertyQuestionName : @"属性修饰符描述",
            kPropertyTargetColName : @"BBDescViewController"
        },
        @{
            kPropertyQuestionName : @"属性修饰符对比",
            kPropertyTargetColName : @"BBDescCompareViewController"
        },
    ];
}

@end
