//
//  BBWeakDetailViewController.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/3.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "BBWeakDetailViewController.h"
#import <WebKit/WebKit.h>

@interface BBWeakDetailViewController ()

@property (strong, nonatomic) WKWebView *webView;

@end

@implementation BBWeakDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:self.webView];
    
    [self layoutSubviews];
    
    NSString * path = [[NSBundle mainBundle] pathForResource:@"propertyWeak" ofType:@"html"];
    // 创建URL
    NSURL * url = [NSURL fileURLWithPath:path];
    // 创建NSURLRequest
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    // 加载
    [self.webView loadRequest:request];
}

- (void)layoutSubviews {
    [self.webView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

#pragma mark - getter and setter
- (WKWebView *)webView {
    if (!_webView) {
        _webView = [[WKWebView alloc] init];
    }
    
    return _webView;
}

@end
