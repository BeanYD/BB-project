//
//  BBDesignModelLayer.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/3.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "BBDesignModelLayer.h"

NSString * const kDesignTypeName = @"kDesignTypeName";
NSString * const kDesignTargetColName = @"kDesignTargetColName";

@implementation BBDesignModelLayer

+ (NSArray *)getDesignTypeArray {
    return @[
        @{
            kDesignTypeName : @"6大基本原则",
            kDesignTargetColName : @"BBBasicRuleViewController",
        },
        @{
            kDesignTypeName : @"24种设计模式",
            kDesignTargetColName : @"BBDesignModelViewController",
        },
        @{
            kDesignTypeName : @"设计模式的应用",
            kDesignTargetColName : @"BBDesignUseViewController",
        },
    ];
}

@end
