//
//  LZHomeViewController.m
//  Student
//
//  Created by 葬花桥 on 2017/3/17.
//  Copyright © 2017年 葬花桥. All rights reserved.
//

#import "LZHomeViewController.h"
#import "LZHomeFirstCell.h"
#import "LZHomeTaskCell.h"
#import "LZHomeThirdCell.h"
#import "LZHomeItmesCell.h"
#import "LZHomeHeadView.h"

@interface LZHomeViewController ()
@property (nonatomic,strong) NSArray *titleArray;
@property (nonatomic,strong) NSArray *htmlArray;
@end

@implementation LZHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    LZHomeHeadView *headView = [[LZHomeHeadView alloc] initWithFrame:CGRectMake(0, 0, kScreen_Width, 64)];
    headView.frame = CGRectMake(0, 0, kScreen_Width, 64);
    headView.addressStr = @"111111111111";
    [self.view addSubview:headView];
    [_homeTableView reloadData];
    
    _titleArray = @[ @"我的订单",@"保险服务", @"商品中心", @"线上题库",@"使用帮助",@"请求协助"];
    _htmlArray = @[@"home_dindan_icon",@"home_baoxian_icon", @"home_shangpin_icon", @"home_tiku_icon", @"home_help_icon",@"home_xiezhu_icon"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 190;
    } else if (indexPath.section == 1) {
        return 134;
    } else if (indexPath.section == 2) {
        return 50;
    }
    
    return _titleArray.count/3*125.5;
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        LZHomeFirstCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LZHomeFirstCell"];
        if (!cell) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"LZHomeFirstCell" owner:self options:nil] lastObject];
        }
        cell.index = (int)indexPath.row;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
        
    } else if (indexPath.section == 1) {
        LZHomeTaskCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LZHomeTaskCell"];
        if (!cell) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"LZHomeTaskCell" owner:self options:nil] lastObject];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    } else if (indexPath.section == 2) {
        LZHomeThirdCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LZHomeThirdCell"];
        if (!cell) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"LZHomeThirdCell" owner:self options:nil] lastObject];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    } else {
        LZHomeItmesCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LZHomeItmesCell"];
        if (!cell) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"LZHomeItmesCell" owner:self options:nil] lastObject];
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell setDataArr:_titleArray imgArr:_htmlArray];
        return cell;
    }

}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {

    if (section == 2) {
        return 10;
    }
    
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 2) {
        return 10;
    }
    
    return 0;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
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
