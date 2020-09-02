//
//  TopObject+cate1.m
//  BB-project
//
//  Created by dingbinbin on 2020/9/1.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "TopObject+cate1.h"

@implementation TopObject (cate1)

+ (void)load {
    NSLog(@"%@ invoke %s", [self class], __func__);
}

+ (void)initialize {
    NSLog(@"%@ invoke %s", [self class], __func__);
}

+ (void)testMethod {
    NSLog(@"%@ invoke %s", [self class], __func__);
}

- (void)testMethod {
    NSLog(@"%@ invoke %s", [self class], __func__);
}


@end
