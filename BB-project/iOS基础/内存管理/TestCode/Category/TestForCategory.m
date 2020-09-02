//
//  TestForCategory.m
//  BB-project
//
//  Created by dingbinbin on 2020/9/1.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "TestForCategory.h"

#import "TopObject.h"

#import <objc/runtime.h>
#include <objc/message.h>

@implementation TestForCategory

- (instancetype)init {
    if (self = [super init]) {
        
        TopObject *top = [TopObject new];
        [top testMethod];
        [TopObject testMethod];
        
        unsigned int count = 0;
        // 获取所有的实例方法列表
        Method *methodList = class_copyMethodList([TopObject class], &count);
        
        for (int i = 0; i < count; i++) {
            Method method = methodList[i];
            IMP imp = method_getImplementation(method);
            SEL sel = method_getName(method);
            const char *name_s = sel_getName(sel);
            // 执行method
            ((void (*)(id, SEL))(void *)imp)((id)top, sel);
            NSLog(@"%s, %p", name_s, imp);
        }
        
        free(methodList);
        
    }
    
    return self;
}



@end
