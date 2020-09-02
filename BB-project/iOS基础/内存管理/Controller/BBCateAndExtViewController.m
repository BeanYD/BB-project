//
//  BBCateAndExtViewController.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/8.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "BBCateAndExtViewController.h"

#import "TestForCategory.h"

@interface BBCateAndExtViewController ()

@end

@implementation BBCateAndExtViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /**
     1.创建一个单例收集当前的nslog，并保存，界面展示时，进行读取
     2.针对需要进行代码验证的一些内容
     */
    
    // 验证分类执行的顺序已经执行分类本类的同名方法
    [[TestForCategory alloc] init];
    
    
}



@end
