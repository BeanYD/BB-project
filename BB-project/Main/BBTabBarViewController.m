//
//  BBTabBarViewController.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/2.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "BBTabBarViewController.h"

@interface BBTabBarViewController ()

@end

@implementation BBTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupViewControllers];
}

- (void)setupViewControllers {
    
    NSArray *tabBarInfos = @[@{@"vcName" : @"BBiOSBasicViewController", @"title" : @"iOS基础", @"icon" : @"..."},
                             @{@"vcName" : @"BBDesignViewController", @"title" : @"设计模式", @"icon" : @"..."},
                             @{@"vcName" : @"BBNetworkViewController", @"title" : @"网络基础", @"icon" : @"..."},
                             @{@"vcName" : @"BBOtherViewController", @"title" : @"其他", @"icon" : @"..."}];
    
    NSMutableArray *subVCs = [NSMutableArray array];
    for (NSDictionary *vcDict in tabBarInfos) {
        UIViewController *vc = [[NSClassFromString(vcDict[@"vcName"]) alloc] init];
        vc.title = vcDict[@"title"];
        vc.tabBarItem.title = vcDict[@"title"];
        
        UINavigationController *navCol = [[NSClassFromString(@"BaseNavViewController") alloc] initWithRootViewController:vc];
        
        [subVCs addObject:navCol];
    }
    
    self.viewControllers = subVCs;
    
}

@end
