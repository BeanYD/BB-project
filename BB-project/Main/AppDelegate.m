//
//  AppDelegate.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/2.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "AppDelegate.h"
#import "BBTabBarViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[BBTabBarViewController alloc] init];
    [self.window makeKeyAndVisible];
    
    
    [self customizeInterface];
    
    return YES;
}


- (void)customizeInterface {
    UINavigationBar *navigationBarAppearance = [UINavigationBar appearance];
//    UIImage *backgroundImage = [GTControlTool createImageWithColor:kNavigationBackgroundColor];
    NSDictionary *textAttributes = @{
                                     NSFontAttributeName: [UIFont systemFontOfSize:18],
                                     NSForegroundColorAttributeName: [UIColor blackColor],
                                     };
    
//    [navigationBarAppearance setBackgroundImage:backgroundImage
//                                  forBarMetrics:UIBarMetricsDefault];
    [navigationBarAppearance setShadowImage:[UIImage new]];
    [navigationBarAppearance setTitleTextAttributes:textAttributes];
    
    NSArray *ver = [[UIDevice currentDevice].systemVersion componentsSeparatedByString:@"."];
    if ([[ver objectAtIndex:0] intValue] >= 7) {
//        navigationBarAppearance.barTintColor = kNavigationBackgroundColor;
        navigationBarAppearance.translucent = NO;
    }
}


@end
