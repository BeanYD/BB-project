//
//  BaseAPIManager.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/2.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "BBAPIManager.h"

@implementation BBAPIManager

- (NSDictionary *)fetchDataWithReformer:(id<BBReformerProtocol>)reformer {
    if (reformer == nil) {
        return @{};
    } else {
        return [reformer reformDataWithManager:self];
    }
}

@end
