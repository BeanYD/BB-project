//
//  TestViewController.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/2.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (strong, nonatomic) UIButton *atomicButton;


@end

@implementation MainViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.atomicButton];
    
    [self layoutSubviews];
}

- (void)layoutSubviews {
    [self.atomicButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(20);
    }];
}

#pragma mark - event response
- (void)atomicButtonClick:(UIButton *)button {
    UIViewController *atomicVC = [NSClassFromString(@"AtomicViewController") new];
    [self.navigationController pushViewController:atomicVC animated:YES];
}

#pragma mark - getter and setter

- (UIButton *)atomicButton {
    if (!_atomicButton) {
        _atomicButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_atomicButton setTitle:NSLocalizedString(@"atomic属性测试", nil) forState:UIControlStateNormal];
        [_atomicButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _atomicButton.titleLabel.font = [UIFont systemFontOfSize:14.];
        [_atomicButton addTarget:self action:@selector(atomicButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        _atomicButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        
    }
    
    return _atomicButton;
}


@end
