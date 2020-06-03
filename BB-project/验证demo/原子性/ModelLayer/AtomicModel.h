//
//  AtomicReformer.h
//  BB-project
//
//  Created by dingbinbin on 2020/6/2.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AtomicModel : NSObject

@property (strong, atomic) NSString *nameStr;

@property (assign, atomic) NSInteger count;


@end

NS_ASSUME_NONNULL_END
