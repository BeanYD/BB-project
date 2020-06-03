//
//  BaseAPIManager.h
//  BB-project
//
//  Created by dingbinbin on 2020/6/2.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class BBAPIManager;
@protocol BaseReformerProtocol <NSObject>

- (NSDictionary *)reformDataWithManager:(BBAPIManager *)manager;

@end

@interface BBAPIManager : NSObject

- (NSDictionary *)fetchDataWithReformer:(id<BaseReformerProtocol>)reformer;


@end

NS_ASSUME_NONNULL_END
