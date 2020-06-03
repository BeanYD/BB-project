//
//  AtomicTestObject.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/2.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "AtomicTestObject.h"
#import "AtomicModel.h"

@implementation AtomicTestObject

+ (void)atomicTestMethod {
    
        
    dispatch_queue_t queue = dispatch_queue_create("com.queue", DISPATCH_QUEUE_CONCURRENT);
    
    
    AtomicModel *reformer1 = [AtomicModel new];

    dispatch_async(queue, ^{
        for (int i = 0; i < 1000; i++) {
            reformer1.nameStr = [NSString stringWithFormat:@"%ld", reformer1.nameStr.integerValue + 1];
        }

        NSLog(@"reformer1:%@ nameStr:%@", reformer1, reformer1.nameStr);

    });

    dispatch_async(queue, ^{
        for (int i = 0; i < 1000; i++) {
            reformer1.nameStr = [NSString stringWithFormat:@"%ld", reformer1.nameStr.integerValue + 1];
        }

        NSLog(@"reformer1:%@ nameStr:%@", reformer1, reformer1.nameStr);

    });
    
    
//    AtomicReformer *reformer2 = [AtomicReformer new];
//
//    dispatch_async(queue, ^{
//        for (int i = 0; i < 1000; i++) {
//            sleep(0.001);
//            reformer2.count = reformer2.count + 1;
//        }
//        
//        NSLog(@"reformer2:%@ count:%ld", reformer2, (long)reformer2.count);
//        
//    });
//    
//    dispatch_async(queue, ^{
//        for (int i = 0; i < 1000; i++) {
//            sleep(0.001);
//            reformer2.count = reformer2.count + 1;
//        }
//        
//        NSLog(@"reformer2:%@ count:%ld", reformer2, (long)reformer2.count);
//        
//    });
}


@end
