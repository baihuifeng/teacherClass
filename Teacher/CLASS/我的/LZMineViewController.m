//
//  LZMineViewController.m
//  Teacher
//
//  Created by 葬花桥 on 2017/3/17.
//  Copyright © 2017年 白慧峰. All rights reserved.
//

#import "LZMineViewController.h"
#import "MineHeadInfoCell.h"
#import "MineSecondCell.h"
#import "LZYJViewController.h"
#import "LZMineDangAnViewController.h"
#import "LZMineTeacherViewController.h"

@interface LZMineViewController () <UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) NSArray *secondArr;
@property (nonatomic,strong) NSArray *secondImgArr;
@end

@implementation LZMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _secondArr = @[@[@"教学任务",@"学习档案",@"认证中心",@"投诉建议",@"客服电话",@"推荐奖励规则介绍"],@[@"分享给好友",@"老师招募"],@[@"设置"]];
    
    _secondImgArr = @[@[@"mine_renwu",@"mine_dangan",@"mine_renzheng",@"mine_tousu",@"mine_kefu",@"mine_tuijian"],@[@"mine_fenxiang",@"mine_zhaomu"],@[@"Mine_shezhi"]];
    
    _mineTableView.tableFooterView = [[UIView alloc] init];
    self.edgesForExtendedLayout = UIRectEdgeNone;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 2) {
        return [_secondArr[section-2] count];
    } else if (section == 3) {
        return [_secondArr[section-2] count];
    }
    return 1;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        return 211;
    } else if (indexPath.section == 1){
        return 60;
    } else {
        return 45;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        
        MineHeadInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MineHeadInfoCell"];
        if (!cell) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"MineHeadInfoCell" owner:self options:nil] lastObject];
        }
        cell.title = @"111";
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    } else if (indexPath.section == 1) {
        MineSecondCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MineSecondCell"];
        if (!cell) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"MineSecondCell" owner:self options:nil] lastObject];
        }
        return cell;
    } else {
        static NSString *str = @"qqq";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:str];
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:str];
        }
        
        cell.textLabel.text = _secondArr[indexPath.section-2][indexPath.row];
        cell.imageView.image =  [UIImage imageNamed:_secondImgArr[indexPath.section-2][indexPath.row]];
        cell.textLabel.font = [UIFont systemFontOfSize:13.0];
        cell.textLabel.textColor = UICOLOR_RGB_Alpha(0x6a6a6a, 1);
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
    }
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if (section == 0 || section == 5) {
        return 0;
    }
    
    return 5;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 2) {
        if (indexPath.row == 3) {
            LZYJViewController *jy = [[LZYJViewController alloc] init];
            [self.navigationController pushViewController:jy animated:YES];
        } else if (indexPath.row == 1) {
        
            LZMineDangAnViewController *jy = [[LZMineDangAnViewController alloc] init];
            [self.navigationController pushViewController:jy animated:YES];
        }
    }
    
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
