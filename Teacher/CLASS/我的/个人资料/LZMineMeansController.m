//
//  LZMineMeansController.m
//  Teacher
//
//  Created by 白慧峰 on 2017/4/17.
//  Copyright © 2017年 白慧峰. All rights reserved.
//

#import "LZMineMeansController.h"
#import "LZEditMeansController.h"

@interface LZMineMeansController ()

@end

@implementation LZMineMeansController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _mineTableView.tableFooterView = [[UIView alloc] init];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 10;
    }
    
    return 20;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    if (indexPath.section == 0) {
//        if (indexPath.row == 0) {
//            UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"LZMineMeansController" bundle:nil];
//            LZEditMeansController *wvc = [storyboard instantiateViewControllerWithIdentifier:@"LZEditMeansController"];//
//            [self.navigationController pushViewController:wvc animated:YES];
//        }
//    }
}

@end
