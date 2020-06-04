//
//  BBiOSBasicModelLayer.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/3.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "BBiOSBasicModelLayer.h"

NSString * const kiOSBasicTypeName = @"kiOSBasicTypeName";
NSString * const kiOSBasicTargetColName = @"kiOSBasicTargetColName";

@implementation BBiOSBasicModelLayer

+ (NSArray *)getiOSBasicTypeArray {
    return @[
        @{
            kiOSBasicTypeName : @"内存管理",
            kiOSBasicTargetColName : @"BBMemoryViewController",
        },
        @{
            kiOSBasicTypeName : @"对象的底层",
            kiOSBasicTargetColName : @"BBClassViewController",
        },
        @{
            kiOSBasicTypeName : @"多线程",
            kiOSBasicTargetColName : @"BBMultithreadViewController",
        },
        @{
            kiOSBasicTypeName : @"runloop",
            kiOSBasicTargetColName : @"BBRunloopViewController",
        },
        @{
            kiOSBasicTypeName : @"runtime 运行时",
            kiOSBasicTargetColName : @"BBRuntimeViewController",
        },
        @{
            kiOSBasicTypeName : @"KVO 观察者模式",
            kiOSBasicTargetColName : @"BBKVOViewController",
        },
        @{
            kiOSBasicTypeName : @"KVC 键值编码",
            kiOSBasicTargetColName : @"BBKVCViewController",
        },
        @{
            kiOSBasicTypeName : @"通知Notification",
            kiOSBasicTargetColName : @"BBNotiViewController",
        },
        @{
            kiOSBasicTypeName : @"Block代码块",
            kiOSBasicTargetColName : @"BBBlockViewController",
        },
        @{
            kiOSBasicTypeName : @"视图 & 图像相关",
            kiOSBasicTargetColName : @"BBViewKnowViewController",
        },
        @{
            kiOSBasicTypeName : @"性能优化",
            kiOSBasicTargetColName : @"BBXingNengViewController",
        },
        @{
            kiOSBasicTypeName : @"打包 & 证书相关",
            kiOSBasicTargetColName : @"BBPackageViewController",
        },
        @{
            kiOSBasicTypeName : @"本地化方案",
            kiOSBasicTargetColName : @"BBDBPramViewController",
        },
        @{
            kiOSBasicTypeName : @"第三方框架学习",
            kiOSBasicTargetColName : @"BBThirdFounViewController",
        },
        @{
            kiOSBasicTypeName : @"iOS相关设计模式",
            kiOSBasicTargetColName : @"BBDesignViewController",
        },
        @{
            kiOSBasicTypeName : @"音视频/多媒体",
            kiOSBasicTargetColName : @"BBMediaViewController",
        },
        @{
            kiOSBasicTypeName : @"动画",
            kiOSBasicTargetColName : @"BBAnimationViewController",
        },
        @{
            kiOSBasicTypeName : @"绘图",
            kiOSBasicTargetColName : @"BBDrawViewController",
        },
        @{
            kiOSBasicTypeName : @"JS交互",
            kiOSBasicTargetColName : @"BBJSMutuallyViewController",
        },
        @{
            kiOSBasicTypeName : @"历史版本重要特性",
            kiOSBasicTargetColName : @"BBHisVersionViewController",
        },
        @{
            kiOSBasicTypeName : @"基础框架学习",
            kiOSBasicTargetColName : @"BBFoundationViewController",
        },
        @{
            kiOSBasicTypeName : @"App之间的通信",
            kiOSBasicTargetColName : @"BBSignComtViewController",
        },
    ];
}

@end
