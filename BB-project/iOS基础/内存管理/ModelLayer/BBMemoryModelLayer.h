//
//  BBMemoryModelLayer.h
//  BB-project
//
//  Created by dingbinbin on 2020/6/3.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BBMemoryDataKeys.h"

NS_ASSUME_NONNULL_BEGIN

@interface BBMemoryModelLayer : NSObject

// 获取内存管理分类
+ (NSArray *)getMemoryTypeArray;

+ (NSArray *)getPropertyQuestionArray;


@end

NS_ASSUME_NONNULL_END
