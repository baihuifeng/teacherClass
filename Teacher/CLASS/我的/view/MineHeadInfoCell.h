//
//  MineHeadInfoCell.h
//  Teacher
//
//  Created by 白慧峰 on 2017/4/14.
//  Copyright © 2017年 白慧峰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MineHeadInfoCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *backImg;
@property (strong, nonatomic) IBOutlet UIImageView *headImg;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *headImgW;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *heightBack;

@property (strong, nonatomic) IBOutlet NSLayoutConstraint *headImgH;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *top;

@property (nonatomic,copy) NSString *title;

@property (strong, nonatomic) IBOutlet UIImageView *backHeadImg;
@property (strong, nonatomic) IBOutlet UIView *backView;

@end
