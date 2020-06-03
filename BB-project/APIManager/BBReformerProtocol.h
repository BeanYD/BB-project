//
//  BBReformerProtocol.h
//  BB-project
//
//  Created by dingbinbin on 2020/6/2.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#ifndef BBReformerProtocol_h
#define BBReformerProtocol_h

@class BBAPIManager;
@protocol BBReformerProtocol <NSObject>

- (NSDictionary *)reformDataWithManager:(BBAPIManager *)manager;

@end

#endif /* BBReformerProtocol_h */
