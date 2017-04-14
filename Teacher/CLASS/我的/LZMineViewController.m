//
//  LZMineViewController.m
//  Teacher
//
//  Created by 葬花桥 on 2017/3/17.
//  Copyright © 2017年 白慧峰. All rights reserved.
//

#import "LZMineViewController.h"
#import "MineHeadInfoCell.h"

@interface LZMineViewController () <UITableViewDataSource,UITableViewDelegate>

@end

@implementation LZMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    return kScreen_Width/320 * 211;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MineHeadInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MineHeadInfoCell"];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"MineHeadInfoCell" owner:self options:nil] lastObject];
    }
    cell.title = @"111";
    return cell;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
