//
//  AtomicTestObject.h
//  BB-project
//
//  Created by dingbinbin on 2020/6/2.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AtomicTestObject : NSObject

@property (strong, atomic) NSString *nameStr;

+ (void)atomicTestMethod;

@end

NS_ASSUME_NONNULL_END
