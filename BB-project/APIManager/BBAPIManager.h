//
//  BaseAPIManager.h
//  BB-project
//
//  Created by dingbinbin on 2020/6/2.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BBReformerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BBAPIManager : NSObject

- (NSDictionary *)fetchDataWithReformer:(id<BBReformerProtocol>)reformer;


@end

NS_ASSUME_NONNULL_END
