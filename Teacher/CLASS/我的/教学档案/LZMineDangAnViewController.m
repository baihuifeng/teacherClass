//
//  LZMineDangAnViewController.m
//  Teacher
//
//  Created by 白慧峰 on 2017/4/16.
//  Copyright © 2017年 白慧峰. All rights reserved.
//

#import "LZMineDangAnViewController.h"
#import "LZMinedangAnCell.h"

@interface LZMineDangAnViewController () <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) NSArray *titleArr;
@property (nonatomic,strong) NSArray *imgArr;
@property (nonatomic,strong) NSArray *placeholderArr;

@end

@implementation LZMineDangAnViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"教学档案";
    _titleArr = @[@"学习内容",@"学习总结",@"下期规划",@"对家长说的话"];
    _imgArr = @[@"order_neirong_icon",@"order_zongjie_icon",@"order_guihua_icon",@"order_jianyi_icon"];
    
    _placeholderArr = @[@"填写学习内容",@"填写学习总结",@"填写下期规划",@"写下教学体会和对学生的评价~~"];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 1;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
        return 140;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    LZMinedangAnCell *cell = [tableView dequeueReusableCellWithIdentifier:@"LZMinedangAnCell"];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"LZMinedangAnCell" owner:self options:nil] lastObject];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.titleLabel.text = _titleArr[indexPath.section];
    cell.img.image = [UIImage imageNamed:_imgArr[indexPath.section]];
    cell.contText.placeholder = _placeholderArr[indexPath.section];
    return cell;

    
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
