//
//  MineHeadInfoCell.m
//  Teacher
//
//  Created by 白慧峰 on 2017/4/14.
//  Copyright © 2017年 白慧峰. All rights reserved.
//

#import "MineHeadInfoCell.h"

@implementation MineHeadInfoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    

}

- (void)setTitle:(NSString *)title {

    _title = title;
    
    _backImg.image = kScreen_Width == 320 ? [UIImage imageNamed:@"mine_info_640"] : kScreen_Width == 750 ? [UIImage imageNamed:@"Mine_info_back_icon"] : [UIImage imageNamed:@"12"];
    _headImgW.constant = kScreen_Width > 750 ? kScreen_Width/320*78 : 320/750*78;
    
    _headImgH.constant = kScreen_Width > 750 ? kScreen_Width/320*78 : 320/750*78;
        _top.constant = kScreen_Width > 750 ? kScreen_Width/320*-37 : -37;
    _heightBack.constant = kScreen_Width > 750 ? kScreen_Width/320*114 : 114;
    _headImg.layer.cornerRadius = kScreen_Width > 750 ? kScreen_Width/320*78/2 : 750/320*78/2;
    
    [self layoutIfNeeded];
    
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
