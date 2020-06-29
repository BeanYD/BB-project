//
//  BBPerformOptiModelLayer.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/29.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "BBPerformOptiModelLayer.h"

NSString * const kPerformOptiTypeName = @"kPerformOptiTypeName";
NSString * const kPerformOptiTargetColName = @"kPerformOptiTargetColName";

@implementation BBPerformOptiModelLayer

+ (NSArray *)getPerformOptiTypeArray {
	return @[
		@{
			kPerformOptiTypeName : @"启动优化",
			kPerformOptiTargetColName : @"BBPerformOptiStartViewController",
		},
		@{
			kPerformOptiTypeName : @"卡顿优化",
			kPerformOptiTargetColName : @"BBPerformOptiCatonViewController",
		},
		@{
			kPerformOptiTypeName : @"耗电优化",
			kPerformOptiTargetColName : @"BBPerformOptiPowerViewController",
		},
		@{
			kPerformOptiTypeName : @"网络优化",
			kPerformOptiTargetColName : @"BBPerformOptiNetViewController",
		}
	];
}

@end
