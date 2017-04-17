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

//    _title = title;
    
    
    NSLog(@"%f",kScreen_Width);
//    
    _backImg.image = kScreen_Width == 320 ? [UIImage imageNamed:@"mine_info_640"] : kScreen_Width == 750 ? [UIImage imageNamed:@"Mine_info_back_icon"] : [UIImage imageNamed:@"12"];
    _headImgW.constant = kScreen_Width > 400 ? 86 : kScreen_Width == 375 ? 78 : 66;
//
    _headImgH.constant = kScreen_Width > 400 ? 86 : kScreen_Width == 375 ? 78 : 66;
    _top.constant = kScreen_Width > 400 ? -13  : -8;
//    _heightBack.constant = kScreen_Width > 750 ? kScreen_Width/320*114 : 114;
    _backHeadImg.transform = CGAffineTransformScale(_headImg.transform, 10, 10);
    
//
    [self layoutIfNeeded];
    
    _headImg.layer.cornerRadius = kScreen_Width > 400 ? 80/2 : kScreen_Width == 375 ? 78/2 : 66/2;
    
    UIBlurEffect *beffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleExtraLight];
    UIVisualEffectView *view = [[UIVisualEffectView alloc] initWithEffect:beffect];
    view.alpha = 0.7;
    view.frame = CGRectMake(0, 0, kScreen_Width, 160);
    
    [self.backView addSubview:view];
    
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
