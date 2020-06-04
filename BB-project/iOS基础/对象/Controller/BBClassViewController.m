//
//  BBClassViewController.m
//  BB-project
//
//  Created by dingbinbin on 2020/6/4.
//  Copyright © 2020 dingbinbin. All rights reserved.
//

#import "BBClassViewController.h"
#import "BBClassModelLayer.h"

@interface BBClassViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) NSArray *dataSource;

@end

@implementation BBClassViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self.view addSubview:self.tableView];
    
    [self layoutSubviews];
    
    
    
}

- (void)layoutSubviews {

    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

// subview的bounds变动的时候，才会调用
- (void)viewWillLayoutSubviews {
    
}

- (void)viewDidLayoutSubviews {
    
}

- (void)dealloc {
    
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCellId"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCellId"];
    }
    
    NSDictionary *infoDict = self.dataSource[indexPath.row];
    cell.textLabel.text = infoDict[kClassTypeName];
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSDictionary *infoDict = self.dataSource[indexPath.row];
    UIViewController *vc = [NSClassFromString(infoDict[kClassTargetColName]) new];
    vc.title = infoDict[kClassTypeName];
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - event response


#pragma mark - private methods

#pragma mark - getters and setters

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [UIView new];
    }
    
    return _tableView;
}

- (NSArray *)dataSource {
    if (!_dataSource) {
        _dataSource = [BBClassModelLayer getClassTypeArray];
    }
    
    return _dataSource;
}

@end
