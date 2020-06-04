//
//  BBClassViewController.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/4.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "BBClassNatureViewController.h"
#import <WebKit/WebKit.h>

@interface BBClassNatureViewController ()

@property (strong, nonatomic) WKWebView *webView;

@end

@implementation BBClassNatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:self.webView];
    
    [self layoutSubviews];
    
    NSString * path = [[NSBundle mainBundle] pathForResource:@"classInstance" ofType:@"html"];
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
