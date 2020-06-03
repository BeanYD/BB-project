//
//  AtomicViewController.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/2.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "AtomicViewController.h"
#import "AtomicTestObject.h"

@interface AtomicViewController ()

@property (strong, nonatomic) UITextView *codeView;

@property (strong, nonatomic) UIButton *runButton;

@end

@implementation AtomicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.title = @"原子性";
}

#pragma mark - event response
- (void)runButtonClick:(UIButton *)button {
    [AtomicTestObject atomicTestMethod];
}

#pragma mark - getter and setter
- (UITextView *)codeView {
    if (!_codeView) {
        _codeView = [[UITextView alloc] init];
    }
    
    return _codeView;
}

- (UIButton *)runButton {
    if (!_runButton) {
        _runButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_runButton setTitle:NSLocalizedString(@"运行", nil) forState:UIControlStateNormal];
        [_runButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _runButton.titleLabel.font = [UIFont systemFontOfSize:14.];
        [_runButton addTarget:self action:@selector(runButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        _runButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        
    }
    
    return _runButton;
}


@end
