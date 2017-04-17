//
//  MineSecondCell.m
//  Teacher
//
//  Created by 白慧峰 on 2017/4/16.
//  Copyright © 2017年 白慧峰. All rights reserved.
//

#import "MineSecondCell.h"
#import "LZMinePurseViewController.h"
#import "LZMineTeacherViewController.h"

@implementation MineSecondCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (IBAction)oreder:(UIButton *)sender {
}

- (IBAction)qianbao:(UIButton *)sender {
    
    HHTabbarViewController *tabar = (HHTabbarViewController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    LZMinePurseViewController *payVC = [[LZMinePurseViewController alloc] init];
    //    teacherVC.title = @"我的老师";
    [(UINavigationController *)tabar.selectedViewController pushViewController:payVC animated:YES];
}

    
//    HHTabbarViewController *tabar = (HHTabbarViewController *)[UIApplication sharedApplication].keyWindow.rootViewController;
////    LZBalancePayViewController *BalanceVC = [[LZBalancePayViewController alloc] init];
////    [(UINavigationController *)tabar.selectedViewController pushViewController:BalanceVC animated:YES];
//    
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"LZPayViewController" bundle:nil];
//    LZBalancePayViewController *wvc = [storyboard instantiateViewControllerWithIdentifier:@"LZBalancePayViewController"];
//    [(UINavigationController *)tabar.selectedViewController pushViewController:wvc animated:YES];}
- (IBAction)xuesheng:(UIButton *)sender {
    
    HHTabbarViewController *tabbar = (HHTabbarViewController *)[UIApplication sharedApplication].keyWindow.rootViewController;
    LZMineTeacherViewController *vc = [[LZMineTeacherViewController alloc] init];
    [(UINavigationController *)tabbar.selectedViewController pushViewController:vc animated:YES];
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
